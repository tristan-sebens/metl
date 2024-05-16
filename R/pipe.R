#' Pipe class.
#'
#' Facilitates the automated identification and decoding of
#' tag data directories. Recursively traverses a directory tree, attempting to
#' process any data directories within.
#'
#' Implements some basic reporting to aid in diagnosing systemic decoding issues
#'
#' @field d Data directory.
#' @field decoders A list of Decoder objects which can be use to extract and load the data produced by different tags
#' @field overwrite Boolean flag. If set to TRUE, the Pipe will check if a tag is already present in the tag metadata table, and will not process the tag if it is.
#'
#' @export Pipe
#'
#' @examples
#' data_directory = here::here() # Root data directory
#'
#' # Initialize the object
#' p__ = Pipe(d = data_directory)
#'
#' # Process the directory
#' p__$process(con = con, overwrite = F)
#'
#' # Build the processing report
#' report = p__$build_report()
#' print(report)
Pipe =
  #----
  setRefClass(
    "Pipe",
    fields =
      list(
        d = "character", # The directory to process
        decoders = "list", # The list of decoders to use for processing data directories
        dir_tree__ = "Node", # The directory tree object. Private attribute, not intended to be set
        # List of FieldMap objects for all data which might come out of the underlying decoders
        output_fieldmaps = "list"
      ),

    methods =
      list(
        initialize =
          function(
            ...,
            d,
            output_fieldmaps =
              list(
                "meta" = ABLTAG_METADATA_TABLE_FIELDS,
                "instant" = ABLTAG_DATA_INSTANT_TABLE_FIELDS,
                "summary" = ABLTAG_DATA_SUMMARY_TABLE_FIELDS
              ),
            decoders =
              list(
                Decoder_Lotek_1000.1100.1250,
                Decoder_Lotek_1300,
                Decoder_Lotek_1400.1800,
                Decoder_MicrowaveTelemetry_XTag,
                Decoder_StarOddi_DST,
                Decoder_StarOddi_DSTmagnetic,
                Decoder_WildlifeComputers_MiniPAT,
                Decoder_WildlifeComputers_BenthicSPAT,
                Decoder_DesertStar_SeaTagMOD
              )
          ) {
            callSuper(
              ...,
              d = d,
              decoders = decoders,
              output_fieldmaps = output_fieldmaps
            )
            # Build datatree object from directory
            dir_tree__ <<- .self$build_datatree(d)
          },

        register_decoder =
          function(dc) {
            "Add one or more Decoder objects to the list of decoders used by this Pipe"
            decoders <<- unique(append(decoders, dc))
          },

        # Helper method. Used by reporting function
        # Recursively calculates the number of leaves on the tree
        num_leaves =
          function(node) {
            if(node$isLeaf) {
              return(1)
            } else {
              return(
                sum(sapply(node$children, num_leaves))
              )
            }
          },

        # Helper method. Used by reporting function
        # Recursively calculates the number of decoded data directories
        num_decoded =
          function(node) {
            if(node$isLeaf) {
              if(node$decoded) {
                return(1)
              } else {
                return(0)
              }
            } else {
              return(
                sum(sapply(node$children, num_decoded))
              )
            }
          },

        # Build a datatree from the directory structure, rooted at the passed directory
        build_datatree =
          function(d) {
            # Convert a directory tree into a data.tree object
            dt =
              data.frame(
                pathString =
                  list.dirs(d) %>%
                  Filter(
                    function(d) {
                      length(list.dirs(d, recursive=F)) == 0
                    },
                    .
                  )
              ) %>%
              # By default the tree is rooted at the drive root
              # Here we reset the root to the actual root of the data directory
              dplyr::mutate(
                pathString =
                  stringr::str_replace(pathString, dirname(d), '')
              ) %>%
              data.tree::as.Node()

            # Set some custom attributes on each node:
            dt$Do(
              function(node) {
                # fullPath: the full file path to the directory
                node$fullPath =
                  file.path(dirname(.self$d), node$pathString)
                # decoded: flag indicating if the directory was successfully uploaded
                node$decoded =
                  FALSE
                # decode error: placeholder for any error which occurs when processing a node
                node$decode_error =
                  ""
                # placeholder for the Decoder object which gets associated with this node
                node$decoder =
                  NULL
              },
              filterFun = function(node) {return(node$isLeaf)}
            )

            return(dt)
          },

        # Builds the report dataframe from the directory data tree
        build_report =
          function() {
            "Builds a report (data.frame) detailing the current state of the data directory"
            # Build a data.frame from the internal data.tree object (dir_tree__)
            data.tree::ToDataFrameTree(
              .self$dir_tree__,
              n_tags = .self$num_leaves,
              n_decoded = .self$num_decoded,
              decoder = function(self) {if(!is.null(self$decoder)) self$decoder$label},
              "decoded",
              "decode_error"
            ) %>%
              dplyr::mutate(
                pct_decoded = round(100 * n_decoded / n_tags, 1),
                pct_decoded = ifelse(!is.na(decoded), NA, pct_decoded)
              ) %>%
              dplyr::select(
                dir=levelName,
                pct_decoded,
                decoded,
                decoder,
                decode_error
              )
          },

        add_missing_fields =
          function(dat1, dat1_ip_fm, dat1_op_fm, dat2, dat2_ip_fm, dat2_op_fm) {
            "Add fields from one data frame to a second dataframe, based on their
            respective DataMaps. dat_1/dm_1 refer to the data which may be missing
            fields. dat_2/dm_2 refer to the data from which we MAY take data to
            put into dat_1. Any fields defined by dm_1$output_data_field_map which
            are missing from dat_1 but are present in dat_2 will be added to dat_1."
            # DM 1 is the DataMap which we are working on
            # DM 2 is the DataMap which we MAY take data from to put into the data for DM 1

            # If dat1 is emtpy, there's nothing to do.
            if(nrow(dat1) == 0) {return(dat1)}

            # First find any fields in dat1 which are present in the output FieldMap
            # but missing in the input FieldMap
            missing_fields = names(dat1_op_fm$uncommon_fields(dat1_ip_fm))

            # Next determine if any of the missing fields are references to fields in
            # the output FieldMap of dat2

            # Collect all of the UUIDs of the output FieldMap for dat2
            dat2_op_uids =
              dat2_op_fm$field_list %>%
              lapply(function(f) {f$uid}) %>%
              unlist(use.names = F)

            matching_fields =
              Filter(
                f =
                  function(e) {
                    dat1_op_fm$field_list[[e]]$uid %in% dat2_op_uids
                  },
                x =
                  missing_fields
              )

            # Finally, if there are matching fields, check if those fields are also
            # present in the input FieldMap of dat2. If they aren't then that means
            # these fields are the result of a prior completion just like this one.
            available_fields =
              Filter(
                f =
                  function(e) {
                    e %in% names(dat2_ip_fm$field_list)
                  },
                x =
                  matching_fields
              )

            # If such fields exist, this means that there are fields which are missing
            # from dat1, which it did not originally have access to (as indicated by
            # those fields being absent from the input FieldMap), but which it is
            # supposed to have (indicated by the presence of those fields in the
            # output FieldMap), and which are available from dat2, which dat2 was not
            # given from another source (as indicated by the presence of the field in
            # the input FieldMap of dat2).

            # Now we simply iterate through those available fields and add them from
            # dat2 to dat1. We assume that both datasets have been transformed at this
            # point, so fieldnames will be taken from the output FieldMaps for both

            # For each missing field which is available in the second DataMap, add the appropriate data
            for(f_ in available_fields) {
              dat1[dat1_op_fm$field_list[[f_]]$name] =
                dat2[dat2_op_fm$field_list[[f_]]$name]
            }

            return(dat1)
          },

        # Complete each dataframe with fields it is missing (according to its
        # FieldMap) which are available in the other dataframes
        complete_dataframes =
          function(dfs, ip_fms, op_fms) {
            # Calculate a comparison grid, identifying all distinct
            # pairings of the incoming datasets
            ix_mx =
              expand.grid(
                d1 = seq(1, length(dfs)),
                d2 = seq(1, length(dfs))
              ) %>%
              dplyr::filter(d1 != d2) %>%
              plyr::arrange(d1, d2) %>%
              as.matrix

            # For each pairing, execute the 'add_missing_fields'
            # method, completing the datasets
            for (i in seq(1, nrow(ix_mx))) {
              dat1_ix = ix_mx[[i, 1]]
              dat2_ix = ix_mx[[i, 2]]


              dfs[[dat1_ix]] =
                add_missing_fields(
                  dat1 = dfs[[dat1_ix]],
                  dat1_ip_fm = ip_fms[[dat1_ix]],
                  dat1_op_fm = op_fms[[dat1_ix]],
                  dat2 = dfs[[dat2_ix]],
                  dat2_ip_fm = ip_fms[[dat2_ix]],
                  dat2_op_fm = op_fms[[dat2_ix]]
                )
            }

            return(dfs)
          },

        get_node_data =
          function(dc, node) {
            # Initialize an empty list to hold data
            decoded_data_list = list()

            # Iterate over each data map in the decoder's data_maps list
            for (data_type in names(dc$data_maps)) {
              # Decode data according to the map type (metadata, instant, summary)
              decoded_data =
                dc$decode_datamap(
                  dm = dc$data_maps[[data_type]],
                  d = node$fullPath,
                  op_fm = .self$output_fieldmaps[[data_type]]
                )

              # Add the decoded data to the list
              decoded_data_list[[data_type]] = decoded_data
            }

            # Complete the dataframes with fields from each other as necessary
            completed_data =
              .self$complete_dataframes(
                dfs =
                  decoded_data_list,
                ip_fms =
                  lapply(dc$data_maps[names(dc$data_maps)], function(dm) dm$input_data_field_map),
                op_fms =
                  .self$output_fieldmaps[names(dc$data_maps)]
              )

            names(completed_data) = names(decoded_data_list)

            # Return the completed data
            return(completed_data)
          },

        #TODO Move this into a separate connection object (or something like that) which can decouple the
        # Perform an UPSERT operation on the target table. Insert any missing
        # rows, and update any rows which are already extant in the target table
        upsert =
          function(con, dat, output_data_field_map) {
            # If the incoming data.frame is empty, there is nothing to upsert
            if(nrow(dat) == 0) return()
            # Generate a temporary table name
            temp_table_name =
              paste0(
                output_data_field_map$table,
                "_temp_",
                stringi::stri_rand_strings(1, 12) # Random alphanumeric to avoid clobbering
              )

            # There's an odd message that keeps cropping up here. It seems to occur the first time that anything is loaded into the DB, and it occurs within this function call. The message says: Note: method with signature ‘Oracle#character’ chosen for function ‘odbcConnectionColumns_’, target signature ‘Oracle#SQL’.  "OdbcConnection#SQL" would also be valid. Some quick research indicates that this is a known issue buried somewhere within the dbplyr package (https://forum.posit.co/t/what-does-this-dbwritetable-message-mean/10690/1), and that, most importantly, it's probably not my fault, or the fault of my code. For now, I'm just wrapping the call in this suppression clause to prevent the message from messing up the package output.
            suppressMessages(
              {
                # Copy data to temporary table
                dbplyr::db_copy_to(
                  con = con,
                  table = dbplyr::ident(temp_table_name),
                  # All of these calls also produce the message, so it's unclear what to do to stop it
                  # table = dbplyr::sql(temp_table_name),
                  # table = I(temp_table_name),
                  # table = temp_table_name,
                  values = dat,
                  # Already in a transaction, so this should not start its own transaction
                  in_transaction = F,
                  # Typically this function writes to a temporary table which
                  # should then be automatically dropped when the connection is
                  # severed. However, at least in Oracle, this doesn't happen.
                  # Additionally, when a table has the TEMPORARY token
                  # it sort of locks it into appearing to be 'in use' so long
                  # as the original connection is still open. This problem
                  # isn't shared by standard tables, so I've elected to just
                  # use a standard table in a temporary manner, and that seems
                  # to solve the issue. All this really means is that we have to
                  # EXPLICITLY delete the table when we're done with it.
                  temporary = F
                )
              }
            )

            # Determine fields used to identify individual records
            id_fs = output_data_field_map$get_id_field_names()

            # UPSERT the new data into the target table
            DBI::dbExecute(
              con = con,
              statement =
                # Build the upsert sql statement
                dbplyr::sql_query_upsert(
                  con = con,
                  table = dplyr::ident(output_data_field_map$table),
                  from = dplyr::ident(temp_table_name),
                  # Fields used to find unique records
                  by = id_fs,
                  # Fields to be updated (non-id fields)
                  update_cols = names(dat)[!names(dat) %in% id_fs]
                )
            )

            # Delete the temporary table
            # See above note in db_copy_to function call on why this is done
            DBI::dbRemoveTable(con, temp_table_name)
          },

        # Decode all datamaps associated with a given decoder
        decode_node =
          function(con, dc, node) {
            completed_dfs = get_node_data(dc, node)

            # Finally, upload the data using the passed connection
            # Wrap all of the upserts in a single transaction, so that if
            # one of them fails we don't end up with hanging data
            DBI::dbWithTransaction(
              conn = con,
              {
                for (data_type in names(completed_dfs)) {
                  .self$upsert(
                    con = con,
                    dat = completed_dfs[[data_type]],
                    output_data_field_map = .self$output_fieldmaps[[data_type]]
                  )
                }
              }
            )

            # Indicate that the decoding was a success
            return(TRUE)
          },

        pre_process_node =
          function(node) {
            "Perform any necessary pre-processing on a directory"
            node$tag_identifier_results =
              # Instantiate the identifier object based on the list of Decoders held by this Pipe
              TagIdentifier(decoders = .self$decoders)$
              # Apply the identifier objects to this directory and record the results
              identify(node$fullPath)

            # Filter to those decoders which matched the data directory
            pos_id =
              node$tag_identifier_results %>%
              dplyr::filter(result == T)

            # If there is exactly one decoder which matches the data directory, use that
            # decoder to upload the tag data to the DB
            if(nrow(pos_id) == 1) {
              node$decoder = pos_id$dc[[1]]
            } else {
              node$decode_error = paste0("Matching decoders: ", nrow(pos_id))
            }
          },

        pre_process_nodes =
          function() {
            "Perform any necessary pre-processing on the nodes of the directory tree"
            .self$dir_tree__$Do(
              # Invoke the pre-processing function
              function(node) pre_process_node(node),
              # Only process nodes which are data directories
              filterFun = function(node) {node$isLeaf}
            )
          },

        process_node =
          function(node, con, overwrite = T) {
            "Attempt to process directory `d`. Pipe will first attempt to identify the make/model of the source tag, and if one is found will apply the corresponding decoder to the directory to extract, transform, and load the data."
            # Filter to those decoders which matched the data directory
            if(!is.null(node$decoder)) {
              tryCatch(
                {
                  node$decoded = .self$decode_node(con, node$decoder, node)
                },

                error =
                  function(cond) {
                    node$decode_error = cond
                  }
              )
            }
          },

        refresh_op_fm =
          function(...) {
            "Refresh each of the FieldMap objects"
            for(fieldmap in .self$output_fieldmaps)
              fieldmap$refresh(...)
          },

        # Process all tag data contained within the directory tree
        process_to_db =
          function(con, overwrite = T, silent = F) {
          "Recursively process a directory tree, attempting to process each directory."
            if(!silent) print("Processing directory.")
            .self$pre_process_nodes()
            # Traverse directory tree and process each data directory (leaf node)
            .self$dir_tree__$Do(
              function(node) {
                # Refresh all output Fields
                .self$refresh_op_fm(con = con)
                # If the current node is a leaf node, attempt to extract the data
                if(!silent) print(node$levelName)
                if (node$isLeaf) {
                  .self$process_node(node, con, overwrite = overwrite)
                }
              }
            )
          },

        process_to_dataframes =
          function(...) {
            "Extract tag data and return it as a list of dataframes"
            # Build a temporary DB
            con =
              build_temp_db()

            # Populate the temporary DB with the tag data as normal
            process_to_db(con, ...)

            dat = list()

            # Extract all data types out of the temp DB
            for (data_type in names(.self$output_fieldmaps)) {
              dat[[data_type]] =
                dplyr::tbl(
                  con,
                  .self$output_fieldmaps[[data_type]]$table
                ) %>%
                data.frame()
            }

            # Sever the connection to the temp DB
            DBI::dbDisconnect(con)

            return(dat)
          },

        process_to_csv =
          function(out_d, ...) {
            "Extract tag data and write it to csv files in `out_d`"
            # Generate the three output data.frames from the tag data
            dat = process_to_dataframes(...)


            # Write each datatype to a csv file
            for (data_type in names(dat)) {
              write.csv(
                x = dat[[data_type]],
                file =
                  file.path(
                    out_d,
                    paste0(data_type, '.csv')
                  ),
                row.names = F
              )
            }
          }
      )
  )
