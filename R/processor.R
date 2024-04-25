#' TagProcessor class.
#'
#' Facilitates the automated identification and decoding of
#' tag data directories. Recursively traverses a directory tree, attempting to
#' process any data directories within.
#'
#' Implements some basic reporting to aid in diagnosing systemic decoding issues
#'
#' @field d Data directory.
#' @field decoders A list of Decoder objects which can be use to extract and load the data produced by different tags
#' @field overwrite Boolean flag. If set to TRUE, the TagProcessor will check if a tag is already present in the tag metadata table, and will not process the tag if it is.
#'
#' @examples
#' data_directory = here::here() # Root data directory
#'
#' # Initialize the object
#' tp__ = TagProcessor(d = data_directory)
#'
#' # Process the directory
#' tp__$process(con = con, overwrite = F)
#'
#' # Build the processing report
#' report = tp__$build_report()
#' print(report)
TagProcessor =
  #----
  setRefClass(
    "TagProcessor",
    fields =
      list(
        d = "character", # The directory to process
        decoders = "list", # The list of decoders to use for processing data directories
        dir_tree__ = "Node", # The directory tree object. Private attribute, not intended to be set
        # The following parameters are the output FieldMap objects for the metadata, instant data, and summary tables, respectivey
        metadata_fieldmap = "FieldMap",
        instant_fieldmap = "FieldMap",
        summary_fieldmap = "FieldMap"
      ),

    methods =
      list(
        initialize =
          function(
            ...,
            d,
            metadata_fieldmap = ABLTAG_METADATA_TABLE_FIELDS,
            instant_fieldmap = ABLTAG_DATA_INSTANT_TABLE_FIELDS,
            summary_fieldmap = ABLTAG_DATA_SUMMARY_TABLE_FIELDS,
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
              metadata_fieldmap = metadata_fieldmap,
              instant_fieldmap = instant_fieldmap,
              summary_fieldmap = summary_fieldmap
            )
            # Build datatree object from directory
            dir_tree__ <<- .self$build_datatree(d)
          },

        register_decoder =
          function(dc) {
            "Add one or more Decoder objects to the list of decoders used by this TagProcessor"
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
              }
            )

            dt$Do(
              function(node) {
                # decoded: flag indicating if the directory was successfully uploaded
                node$decoded =
                  FALSE

                # decode error: placeholder for any error which occurs when processing a node
                node$decode_error =
                  ""

                node$identified_decoder =
                  ""
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
              "decoded",
              "identified_decoder",
              "decode_error"
            ) %>%
              dplyr::mutate(
                pct_decoded = round(100 * n_decoded / n_tags, 1),
                pct_decoded = ifelse(!is.na(decoded), NA, pct_decoded)
              ) %>%
              dplyr::select(dir=levelName, pct_decoded, decoded, identified_decoder, decode_error)
          },

        add_missing_fields =
          function(dat1, dat1_op_fm, dat2, dat2_op_fm) {
            "Add fields from one data frame to a second dataframe, based on their
            respective DataMaps. dat_1/dm_1 refer to the data which may be missing
            fields. dat_2/dm_2 refer to the data from which we MAY take data to
            put into dat_1. Any fields defined by dm_1$output_data_field_map which
            are missing from dat_1 but are present in dat_2 will be added to dat_1."
            # DM 1 is the DataMap which we are working on
            # DM 2 is the DataMap which we MAY take data from to put into the data for DM 1

            # If dat1 is emtpy, there's nothing to do.
            if(nrow(dat1) == 0) {return(dat1)}

            # Determine which fields are present in the output FieldMap of dm_1,
            # but missing from the input FieldMap of dm_1. These are the fields
            # which must be added from other sources.
            common_fields =
              names(dat1_op_fm$common_fields(dat2_op_fm))

            # List of fields which are missing from DM1s output datamap and are present in DM2s output datamap
            missing_fields_available =
              Filter(
                function(n) {
                  !dat1_op_fm$field_list[[n]]$name %in% names(dat1) &&
                    dat2_op_fm$field_list[[n]]$name %in% names(dat2)
                },
                common_fields
              )

            # For each missing field which is available in the second DataMap, add the appropriate data
            for(f_ in missing_fields_available) {
              dat1[dat1_op_fm$field_list[[f_]]$name] =
                dat2[dat2_op_fm$field_list[[f_]]$name]
            }

            return(dat1)
          },


        # Complete each dataframe with fields it is missing (according to its
        # FieldMap) which are available in the other dataframes
        complete_dataframes =
          function(dfs, op_fms) {
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
                  dat1_op_fm = op_fms[[dat1_ix]],
                  dat2 = dfs[[dat2_ix]],
                  dat2_op_fm = op_fms[[dat2_ix]]
                )
            }

            return(dfs)
          },

        get_node_data =
          function(dc, node) {
            # Decode metadata
            metadata =
              dc$decode_metadata_map(
                d = node$fullPath,
                op_fm = .self$metadata_fieldmap
              )

            # Decode instant data
            instant_data =
              dc$decode_instant_datamap(
                d = node$fullPath,
                op_fm = .self$instant_fieldmap
              )

            # Decode summary data
            summary_data =
              dc$decode_summary_datamap(
                d = node$fullPath,
                op_fm = .self$summary_fieldmap
              )

            # Add metadata to instant and summary data
            instant_data =
              add_missing_fields(
                instant_data,
                .self$instant_fieldmap,
                metadata,
                .self$metadata_fieldmap
              )

            summary_data =
              add_missing_fields(
                summary_data,
                .self$summary_fieldmap,
                metadata,
                .self$summary_fieldmap
              )

            # Return the decoded data
            return(
              list(
                metadata,
                instant_data,
                summary_data
              )
            )
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

            # Copy data to temporary table
            dbplyr::db_copy_to(
              con = con,
              table = dbplyr::ident(temp_table_name),
              values = dat,
              in_transaction = F,
              temporary = T # Means that the table is only visible from this connection, and will be deleted when this connection is severed
            )

            # Determine fields used to identify individual records
            id_fs = output_data_field_map$get_id_field_names()

            # UPSERT the new data into the target table
            DBI::dbExecute(
              con =
                con,
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
          },

        # Decode all datamaps associated with a given decoder
        decode_node =
          function(con, dc, node) {
            completed_dfs = get_node_data(dc, node)

            # Reassign the data.frame variables
            # The data.frames come out in the same order they went in
            metadata = completed_dfs[[1]]
            instant_data = completed_dfs[[2]]
            summary_data = completed_dfs[[3]]

            # Finally, upload the data using the passed connection
            upsert(con, metadata, .self$metadata_fieldmap)
            upsert(con, instant_data, .self$instant_fieldmap)
            upsert(con, summary_data, .self$summary_fieldmap)

            # Indicate that the decoding was a success
            return(TRUE)
          },

        process_node =
          function(node, con, overwrite = T) {
            "Attempt to process directory `d`. TagProcessor will first attempt to identify the make/model of the source tag, and if one is found will apply the corresponding decoder to the directory to extract, transform, and load the data."
            node$tag_identifier_results =
              # Instantiate the identifier object based on the list of Decoders held by this TagProcessor
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
              dc = pos_id$dc[[1]]
              tryCatch(
                {
                  node$decoded = .self$decode_node(con, dc, node)
                  node$identified_decoder = pos_id$name
                },
                error =
                  function(cond) {
                    node$decode_error = cond
                  }
              )
            } else {
              node$decode_error = paste0("Matching decoders: ", nrow(pos_id))
            }
          },

        # Process all tag data contained within the directory tree
        process_to_db =
          function(con, overwrite = T, silent = F) {
          "Recursively process a directory tree, attempting to process each directory."
            if(!silent) print("Processing directory.")
            # Traverse directory tree and process each data directory (leaf node)
            .self$dir_tree__$Do(
              function(node) {
                if(!silent) print(node$levelName)
                if (node$isLeaf) {
                  .self$process_node(node, con, overwrite = overwrite)
                }
              }
            )
          },

        process_to_dataframe =
          function(...) {
            "Extract tag data and return it as a list of dataframes"
            # Build a temporary DB
            con =
              build_temp_db()

            # Populate the temporary DB with the tag data as normal
            process_to_db(con, ...)

            # Extract the three data types out of the temp DB
            ret =
              list(
                meta =
                  dplyr::tbl(
                    con,
                    tp__$metadata_fieldmap$table
                  ) %>%
                  data.frame(),

                instant =
                  dplyr::tbl(
                    con,
                    tp__$instant_fieldmap$table
                  ) %>%
                  data.frame(),

                summary =
                  dplyr::tbl(
                    con,
                    tp__$summary_fieldmap$table
                  ) %>%
                  data.frame()
              )

            # Sever the connection to the temp DB
            DBI::dbDisconnect(con)

            return(ret)
          },

        process_to_csv =
          function(out_d, ...) {
            "Extract tag data and write it to csv files in `out_d`"
            # Generate the three output data.frames from the tag data
            res = process_to_dataframe(...)

            # Write the metadata to a csv file
            write.csv(
              x = res$meta,
              file =
                file.path(
                  out_d,
                  paste0(metadata_fieldmap$table, '.csv')
                ),
              row.names = F
            )
            # Write the instant data to a csv file
            write.csv(
              x = res$instant,
              file =
                file.path(
                  out_d,
                  paste0(instant_fieldmap$table, '.csv')
                ),
              row.names = F
            )
            # Write the summary data to a csv file
            write.csv(
              x = res$summary,
              file =
                file.path(
                  out_d,
                  paste0(summary_fieldmap$table, '.csv')
                ),
              row.names = F
            )

          }
      )
  )
