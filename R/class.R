
# Import the piping operator
# As a package, we are forbidden (by good practice) from directly importing any
# other packages (i.e. using library or require functions). However, this code base
# makes extensive use of the dplyr//magrittr 'piping' operator (i.e. hits the pipe),
# and to refactor that out would be a massive pain. Instead, we simply directly
# define the operator here for use in the rest of the package.
# TODO This probably doesn't belong here, but at the moment there really isn't a better place to put it
`%>%` = magrittr::"%>%"

# The TagProcessor class uses the data.tree data structure as an attribute, which
# has class 'Node'. Define it here so the constructor knows what we're talking about
setOldClass("Node")

#' Field class. Represents a single data field and its key metadata for future
#`  reference, including field name, units, and DB data type.
#'
#' @field name character. The name of the field
#' @field alternate_names list. Optional. Alternative names for the field.
#' @field units character. The SI units of the field
#' @field data_type character. The data type of this field in a DB
#' @field id_field logical. If set to TRUE this field will be used to identify unique records
#' @field trans_fn function. Applied to the data vector associated with this Field immediately prior to standard transformation of units and fieldnames. MUST be of the form function(v, ...) {<transformation here>}. Must return a data vector. If necessary, other fields can be accessed within the function by modifying the parameter signature to function(v, dat, ...) {<transformation here>}, where dat will contain the unstransformed data.frame
Field =
  setRefClass(
    "Field",
    fields =
      list(
        name = "character",
        alternate_names = "list",
        id_field = "logical", # Flag to indicate if this is a field used to identify unique records
        units = "character",
        data_type = "character", # Data type to be used for this field in the DB
        trans_fn = "function" # Function which will be applied to this field individually. Applied before all other transformations.
      ),
    methods =
      list(
        initialize =
          function(
            ...,
            alternate_names = list(),
            trans_fn = function(v, ...) {v}
          ) {
            callSuper(
              ...,
              alternate_names = alternate_names,
              trans_fn = trans_fn
            )
          }
      )
  )


  #' FieldMap class. Collection of Field objects, with some added functionality
  #' to facilitate the convenient use of said Field objects both within the package
  #' and when interfacing with a DB
  #'
  #' @field fields Field. The Field objects contained within this map/
FieldMap =
  setRefClass(
    "FieldMap",
    fields =
      list(
        # The DB table this FieldMap represents
        table = "character",
        # The list of fields
        field_list = "list"
      ),
    methods =
      list(
        # Generate a field data type list, in the format expected by the DBI package
        generate_data_type_list =
          function() {
            .self$field_list %>%
              purrr::reduce(
                .init =
                  list(),
                .f =
                  function(l, f) {
                    l[f$name] = f$data_type
                    return(l)
                  }
              )
          },

        # Helper function which generates a list of the Fields shared by this
        # FieldMap and the given FieldMap
        common_fields =
          function(fm) {
            "Generates a list of the Fields shared by this FieldMap and the given FieldMap"
            .self$field_list[names(.self$field_list) %in% names(fm$field_list)]
          },

        # Helper function which generates a list of the Fields NOT shared by this
        # FieldMap and the given FieldMap
        uncommon_fields =
          function(fm) {
            "Generate a list of the Fields NOT shared by this FieldMap and the given FieldMap"
            .self$field_list[!names(.self$field_list) %in% names(fm$field_list)]
          },

        # Return the subset of Fields in this FieldMap that are marked as ID fields
        get_id_fields =
          function() {
            "Return the subset of Fields in this FieldMap that are marked as ID fields"
            Filter(
              function(f) {f$id_field},
              .self$field_list
            )
          },

        # Get the names of the ID fields in this FieldMap
        get_id_field_names =
          function() {
            "Get the names of the ID fields in this FieldMap"
            .self$get_id_fields() %>%
              lapply(
                function(f) {
                  f$name
                }
              ) %>%
              unlist(use.names = F)
          },

        # Get the names of the ID fields in this FieldMap
        get_field_names =
          function() {
            "Get the names of the ID fields in this FieldMap"
            .self$field_list %>%
              lapply(
                function(f) {
                  f$name
                }
              ) %>%
              unlist(use.names = F)
          }
      )
  )

#' Identifier class. Used to identify if a given directory belongs to a particular make/model of tag, based on available metadata
#'
#' Base class. Not intended to be implemented directly.
Identifier =
  setRefClass(
    "Identifier",
    fields =
      list(
        identify_ = "function"
      ),
    methods =
      list(
        # Returns TRUE/FALSE indicating if the metadata in the passed directory matches the patterns expected of the tag type with which this Identifier child class is associated
        identify =
          function(d) {
            identify_(d)
          }
      )
  )

#' DataMap
#'
#' Provides base structure for all make/model specific tag data maps
#' Analagous to a table in the final DB. Desribes programatically how the data
#' to be inserted into that table should be collected from the disk, and
#' transformed.
#' Not intended to be implemented directly
#'
#' @field input_data_field_map FieldMap. Map of the data fields and their original format
#' @field extract_fn function(d) Function which extracts the appropriate data from the files in directory `d`
#'
#' @return An instance of the DataMap class
#'
#' @export
DataMap =
#----
  setRefClass(
    "DataMap",
    fields =
      list(
        # Field map for the incoming raw data
        input_data_field_map = "FieldMap",
        extract_fn = "function"
      ),
    methods =
      list(
        # Helper function to throw an error with a pre-appended message to help identify
        # the source of the error
        throw_error =
          function(msg) {
            stop(
              paste0(
                "ERROR - ",
                class(.self)[[1]],
                ": ",
                msg
              )
            )
          },

        get_static =
          function(n) {
            return(.self$static[[n]])
          },

        get_field_data =
          # Return the raw data from dat__ which is referred to by the input_field_obj__
          function(dat__, input_field_obj_) {
            if(input_field_obj_$name %in% names(dat__)) {
              return(dat__[[input_field_obj_$name]])
            }

            for (name_ in input_field_obj_$alternate_names) {
              if(name_ %in% names(dat__)) {
                return(dat__[[name_]])
              }
            }
          },

        # Transform the fields of the incoming tag data as dictated by the field maps
        transform_fields =
          function(dat__, output_data_field_map) {
            # Process each input field in turn
            # Limit conversion to those fields shared by both the input data field
            #   map and the output data field map
            common_fields =
              names(
                .self$input_data_field_map$common_fields(
                  fm = output_data_field_map
                )
              )

            for (field_ in common_fields) {
              # Identify relevant input/output field objects
              input_field_obj_ = .self$input_data_field_map$field_list[[field_]]
              output_field_obj_ = output_data_field_map$field_list[[field_]]

              # Isolate field data
              input_field_dat_ = .self$get_field_data(dat__, input_field_obj_)

              # Perform any specified pre-transformations
              input_field_dat_ =
                input_field_obj_$trans_fn(
                  v = input_field_dat_,
                  dat = dat__
                )

              # Make consideration for units
              if(!identical(output_field_obj_$units, character(0))) {
                # If units are specified on the output field, define and convert units
                input_field_dat_ =
                  units::set_units(
                    # Set initial units based on input field
                    units::set_units(
                      input_field_dat_,
                      input_field_obj_$units,
                      mode="standard"
                    ),
                    # Immediately convert units based on output field
                    output_field_obj_$units,
                    mode="standard"
                  )
              }

              # Re-append data to original object, with new name and (if applicable) units
              dat__[output_field_obj_$name] = input_field_dat_
            }

            return(
              dat__[
                lapply(
                  # Select the fields from the output field map that have
                  # corresponding entries in the input field map
                  output_data_field_map$field_list[common_fields],
                  function(f) {f$name}
                ) %>%
                unlist(use.names = F)
              ]
            )
          },

        extract =
          function(d) {
            "Extract data from directory `d`"
            .self$extract_fn(d)
          },

        # TODO: This function has become a wrapper function for 'transform_fields.'
        # Should it just be removed, and the wrapped function renamed?
        transform =
          function(dat, output_data_field_map) {
            # Standardize incoming fields, and save the result to the 'dat_' field
            return(.self$transform_fields(dat, output_data_field_map))
          }
      )
  )
  #----


#' Tag metadata map
#'
#' Base class for tag metadata DataMaps.
#'
#' @field make character. Tag manufacturer/brand
#' @field model character. Tag model
#' @field get_tag_id function(d). Function which returns the ID string of a tag based on the data-directory path `d`
#' @export
DataMap_TagMetaData =
  setRefClass(
    "DataMap_TagMetaData",
    contains = "DataMap",
    fields =
      list(
        make = "character",
        model = "character",
        get_tag_id = "function"
      ),
    methods =
      list(
        initialize =
          function(
            ...,
            # All of the tag meta DataMaps will produce dataframes of the same format
            input_data_field_map = DEFAULT_METADATA_FIELDS
          ) {
            callSuper(
              ...,
              input_data_field_map = input_data_field_map
            )
          },

        extract =
          function(d) {
            data.frame() %>%
              dplyr::summarize(
                "{.self$input_data_field_map$field_list$TAG_ID_FIELD$name}" := .self$get_tag_id(d),
                "{.self$input_data_field_map$field_list$TAG_MAKE_FIELD$name}" := .self$make,
                "{.self$input_data_field_map$field_list$TAG_MODEL_FIELD$name}" := .self$model
              )
          }
      )
  )

#' Decoder base class
#'
#' Logical representation of a single tag, which contains all necessary logic to parse and extract all required data from an appropriately formatted directory. Contains one or more [DataMap] objects, each of which the Decoder will apply in turn to the directory in order to extract the necessary data. Contains an [Identifier] object, which can be used to automatically determine if a given directory contains the data generated by a tag of the make/model to which this Decoder refers.
#'
#' @field metadata_map DataMap. The [DataMap] used to extract the tag metadata
#' @field data_maps list. The list of data maps used to map the data for this tag to the output tables in the DB
#'
#' @export
Decoder =
  #----
  setRefClass(
    "Decoder",
    fields =
      list(
        identifier = "Identifier",
        metadata_map = "DataMap",
        instant_datamap = "DataMap",
        summary_datamap = "DataMap"
      ),

    methods =
      list(
        initialize =
          function(
            ...,
            instant_datamap =
              DataMap(extract_fn = function(d) return(data.frame())),
            summary_datamap =
              DataMap(extract_fn = function(d) return(data.frame()))
          ) {
            callSuper(
              ...,
              instant_datamap = instant_datamap,
              summary_datamap = summary_datamap
            )
          },
        # Helper function to throw an error with a pre-appended message to help identify
        # the source of the error
        throw_error =
          function(msg) {
            stop(
              paste0(
                "ERROR - ",
                class(.self)[[1]],
                ": ",
                msg
              )
            )
          },

        # Execute all necessary steps to read and transform raw data for one DataMap
        decode_datamap =
          function(d, dm, op_fm) {
            "Execute all necessary steps to read and transform raw data for one DataMap"
            # Perform initial extraction
            dat =
              dm$extract(d)

            # Transform extracted data
            dat_t =
              dm$transform(dat, op_fm)

            # Return transformed data
            return(dat_t)
          },

        decode_metadata_map =
          function(d, op_fm) {
            .self$decode_datamap(
              d,
              .self$metadata_map,
              op_fm
            )
          },

        decode_instant_datamap =
          function(d, op_fm) {
            .self$decode_datamap(
              d,
              .self$instant_datamap,
              op_fm
            )
          },

        decode_summary_datamap =
          function(d, op_fm) {
            .self$decode_datamap(
              d,
              .self$summary_datamap,
              op_fm
            )
          }
      )
  )
  #----

#' Tag Identifier
#'
#' Maps raw tag data to the appropriate Decoder based on structure of the raw data. Used internally by the [TagProcessor] class.
#'
#' @details The logic implemented by this class makes decisions based on some pretty nitty-gritty details, like naming conventions, file-types present, number of files present, etc. As such, it's crucial that the data has not been altered by the user in any way since being extracted from the tag and/or run through any post-processing software, as even a very small change (by human standards) can result in a directory becoming un-identifiable.
#' @export
TagIdentifier =
  #----
  setRefClass(
    "TagIdentifier",
    fields =
      list(
        decoders = "list"
      ),
    methods =
      list(
        identify =
          function(d) {
            "Applies the Identifiers of all known Decoders to the directory. Returns results as a data.frame"
            # Initialize tibble
            t__ =
            # First field 'dc' is a list of all possible decoders
              tibble::tibble(dc = .self$decoders)

            # Update the tibble to include the name associated with each decoder
            t__['name'] =
              t__[['dc']] %>%
              lapply(
                function(dc) {
                  Filter(
                    function(c) {
                      stringr::str_detect(c, 'Decoder')
                    },
                    class(dc)
                  )
                }
              ) %>%
              unlist()

            # Apply the identifier of each decoder in the tibble to the directory in question
            # and record the results
            t__ =
              cbind(
                t__,
                t__[['dc']] %>%
                  lapply(
                    function(dc) {
                      tryCatch(
                        {
                          return(
                            c(
                              'result' = dc$identifier$identify(d),
                              'message' = ""
                            )
                          )
                        },
                        error =
                          function(cond) {
                            return(
                              c(
                                'result' = FALSE,
                                'message' = cond$message
                              )
                            )
                          }
                      )
                    }
                  ) %>%
                  do.call(rbind, .) %>%
                  as.data.frame() %>%
                  dplyr::mutate(
                    # For some reason the ID results get turned into characters
                    # Here we convert them back to Boolean values
                    result = ifelse(result == "TRUE", T, F)
                  )
              )

            # Return the dataframe
            return(t__)
          }
      )
  )


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
          function(d, ...) {
            callSuper(d = d, ...)
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
        process =
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
          }
      )
  )



