
# Import the piping operator
# As a package, we are forbidden (by good practice) from directly importing any
# other packages (i.e. using library or require functions). However, this code base
# makes extensive use of the dplyr//magrittr 'piping' operator (i.e. hits the pipe),
# and to refactor that out would be a massive pain. Instead, we simply directly
# define the operator here for use in the rest of the package.
# TODO This probably doesn't belong here, but at the moment there really isn't a better place to put it
`%>%` = magrittr::"%>%"
setOldClass("Node")


Field =
  #' Field class. Represents a single data field and its key metadata for future
  #`  reference, including field name, units, and DB data type.
  #'
  #' @field name character. The name of the field
  #' @field units character. The SI units of the field
  #' @field data_type character. The data type of this field in a DB
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
            trans_fn = function(v) {v}
          ) {
            callSuper(
              ...,
              alternate_names = alternate_names,
              trans_fn = trans_fn
            )
          }
      )
  )


FieldMap =
  #' FieldMap class. Collection of Field objects, with some added functionality
  #' to facilitate the convenient use of said Field objects both within the package
  #' and when interfacing with a DB
  #'
  #' @field fields Field. The Field objects contained within this map/
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
        #' Generate a field data type list, in the format expected by the DBI package
        #'
        #' @return A named list. Names are the field names, values are the data types
        generate_data_type_list =
          function() {
            .self$field_list %>%
              reduce(
                .init =
                  list(),
                .f =
                  function(l, f) {
                    l[f$name] = f$data_type
                    return(l)
                  }
              )
          },

        #' Helper function which generates a list of the Fields shared by this
        #' FieldMap and the given FieldMap
        #'
        #' @return Named list of the shared Field objects
        common_fields =
          function(fm) {
            .self$field_list[names(.self$field_list) %in% names(fm$field_list)]
          },

        #' Helper function which generates a list of the Fields NOT shared by this
        #' FieldMap and the given FieldMap
        #'
        #' @return Named list of the Field objects present in this FieldMap but not in the passed FieldMap
        uncommon_fields =
          function(fm) {
            .self$field_list[!names(.self$field_list) %in% names(fm$field_list)]
          },

        # Return the subset of Fields in this FieldMap that are marked as ID fields
        get_id_fields =
          function() {
            Filter(
              function(f) {f$id_field},
              .self$field_list
            )
          },

        # Get the names of the ID fields in this FieldMap
        get_id_field_names =
          function() {
            .self$get_id_fields() %>%
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
    methods =
      list(
        #' Returns TRUE/FALSE indicating if the metadata in the passed directory matches the patterns expected of the tag type with which this Identifier child class is associated
        identify =
          function(d) {
            stop("Inheritence error: Invocation of identify function on base class Identifier. Please implement child class instead.")
          },

        #' Check number of files in directory which match pattern
        #'
        #' Helper function to quickly determine if an expected number of files
        #' match the given pattern
        #'
        check_for_files =
          function(d, pattern, n=1, ignore.case = T) {
            # Check if the number of files which match the given pattern match the expected number
            if(
              length(
                list.files(
                  d,
                  pattern = pattern,
                  ignore.case = ignore.case
                )
              ) == n
            ) {
              return(TRUE)
            }
            return(FALSE)
          }
      )
  )

#' DataMap base class
#'
#'  Provides base structure for all make/model specific tag data maps
#'  Analagous to a table in the final DB. Desribes programatically how the data
#'  to be inserted into that table should be collected from the disk, and
#'  transformed
#'
#'  Not intended to be implemented directly
#'
#' @field d character. The directory in which the tag data can be found
#' @field input_data_field_map FieldMap. Map of the data fields and their original format
#' @field output_data_field_map FieldMap. Map of the data fields and their corresponding DB format
#'
#' @return
#' @export
#'
#' @examples
DataMap =
  #----
  setRefClass(
    "DataMap",
    fields =
      list(
        # Field map for the incoming raw data
        input_data_field_map = "FieldMap",
        # Field map for the target DB table
        output_data_field_map = "FieldMap"
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

        # Helper function to retrieve all csv files from a directory
        get_csv_files =
          function(d) {
            file.path(d, list.files(d, pattern = "\\.[C|c][S|s][V|v]$"))
          },

        #' Find a sensor specific data file based on a filename pattern
        #'
        #' @param d The directory to search in
        #' @param pattern The pattern to use to find the datafile
        #'
        #' @return The number of the first line in which the specified pattern occurs
        #' @export
        #'
        #' @examples
        get_data_file_path =
          function(d, pattern) {
            file.path(
              d,
              list.files(d, pattern = pattern)[[1]]
            )
          },

        #' Find the first line of the given file in which the specified pattern occurs
        #'
        #' @param fp The path of the file to read
        #' @param n The number of lines to search. Prevents excessive line reading
        #'
        #' @return The number of the first line in which the specified pattern occurs
        #' @export
        #'
        #' @examples
        find_line_in_file =
          function(fp, pattern, n=1000) {
            # Find all matches in the first n lines
            matches =
              readLines(fp, n=n, skipNul = F) %>%
              unlist %>%
              stringr::str_detect(pattern = pattern)

            # Check that any lines matched
            if (!any(matches)) {
              .self$throw_error(
                paste0(
                  "Parsing file - No matches of '",
                  pattern,
                  "' found in first ",
                  n,
                  " lines of ",
                  tail(stringr::str_split(fp, .Platform$file.sep)[[1]], 1)
                )
              )
            }

            # Return the line number of the first match
            return(which(matches)[[1]])
          },

        #' Helper function for calculating POSIXct timestamps. Able to handle multiple
        #' possible formats.
        #'
        #' If multiple formats are provided, it is implicitly assumed that each row will
        #' match only one of the provided formats. If a timestamp matches more than one
        #' passed format, the output will be meaningless
        #'
        #' @param ts_dat The raw timestamp data, of unknown format or of multiple formats
        #' @param formats The format string(s) to use ot
        #'
        #' @return
        #' @export
        #'
        #' @examples
        POSIXct_format =
          function(ts_dat, formats) {
            res =
              # Apply every conversion format to the timestamp field.
              # Produces a list of vectors, each the result of applying one of the formats
              formats %>%
              lapply(
                function(format) {
                  as.POSIXct(ts_dat, format=format, tz="UTC")
                }
              )

            ret =
              # Condense this list of columns into a data.frame
              as.data.frame(do.call(cbind, res)) %>%
              # Unite the values. This implicitly assumes there is only one non-NA
              # value in each row
              tidyr::unite(col = "ts", na.rm = T) %>%
              # Unite returns the united columns as character strings
              # Re-convert to POSIXct
              dplyr::pull(ts) %>%
              as.numeric() %>%
              as.POSIXct(tz = "UTC")

            return(ret)
          },

        #' Convert the date time data contained in the dataframe to POSIXct format
        #' Default behavior is to assume that the datetime field is already in
        #' POSIXct. If this is not the case, then the method should be overridden
        #'
        #' @return The input dataframe with the newly formatted POSIXct timestamp
        convert_datetime_to_posix_ct =
          function(dat) {
            return(dat)
          },

        get_field_data =
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

        #' Transform the fields of the incoming tag data as dictated by the field maps
        #'
        #' @param dat The incoming data
        #'
        #' @return The transformed data with renamed and united fields
        transform_fields =
          function(dat__) {
            # Process each input field in turn
            # Limit conversion to those fields shared by both the input data field
            #   map and the output data field map
            common_fields =
              names(
                .self$input_data_field_map$common_fields(
                  fm = .self$output_data_field_map
                )
              )

            for (field_ in common_fields) {
              # for (field_ in names(.self$input_data_field_map$field_list)) {
              # Identify relevant input/output field objects
              input_field_obj_ = .self$input_data_field_map$field_list[[field_]]
              output_field_obj_ = .self$output_data_field_map$field_list[[field_]]

              # Isolate field data
              input_field_dat_ = .self$get_field_data(dat__, input_field_obj_)

              # Perform any specified pre-transformations
              input_field_dat_ = input_field_obj_$trans_fn(input_field_dat_)

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
                  .self$output_data_field_map$field_list[common_fields],
                  function(f) {
                    f$name
                  }
                ) %>%
                  unlist(use.names = F)
              ]
            )
          },

        # Perform an UPSERT operation on the target table. Insert any missing
        # rows, and update any rows which are already extant in the target table
        upsert =
          function(con, dat) {
            # Generate a temporary table name
            temp_table_name =
              paste0(
                .self$output_data_field_map$table,
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

            # UPSERT the new data into the target table
            DBI::dbExecute(
              con =
                con,
              statement =
                # Build the upsert sql statement
                dbplyr::sql_query_upsert(
                  con = con,
                  table = dplyr::ident(.self$output_data_field_map$table),
                  from = dplyr::ident(temp_table_name),
                  by = .self$output_data_field_map$get_id_field_names(),
                  update_cols = names(dat)
                )
            )
          },

        #' Extract tag data from passed directory
        #'
        #' @param d The directory in which the tag data resides. Directory is
        #' expected to contain only files which relate to one common tag.
        #'
        #' @return The data contained in the tag data as a single dataframe
        extract =
          function(d) {
            throw_error(
              "Inheritence error: Invocation of 'extract' function of base
              class. Please implement a child class instead.")
          },

        # TODO: This function has become a wrapper function for 'transform_fields.'
        # Should it just be removed, and the wrapped function renamed?

        #' Transform extracted tag data to follow standardized format
        #'
        #' @param dat The incoming tag data
        #'
        #' @return The transformed data
        transform =
          function(dat) {
            # Standardize incoming fields, and save the result to the 'dat_' field
            return(.self$transform_fields(dat))
          },

        #' Load extracted and transformed tag data to DB
        #'
        #' @param con Connection to the target DB
        #' @param dat The incoming tag data
        #'
        #' @return The data contained in the tag data as a single dataframe
        load =
          function(con, dat) {
            # Perform an upsert call
            upsert(con, dat)
          }
      )
  )
  #----


#' Decoder base class
#'
#' Logical representation of a single tag
#'
#' @field d character. The directory in which the tag data can be found
#' @field data_maps list. The list of data maps used to map the data for this tag to the output tables in the DB
#'
#' The following fields should be set in initialization of child classes
#' @field tag_make character. The manufacturer of the tag
#' @field tag_model character. The model of the tag
#'
#' @return
#' @export
#'
#' @examples
Decoder =
  #----
  setRefClass(
    "Decoder",
    fields =
      list(
        d = "character",
        identifier = "Identifier",
        metadata_map = "DataMap",
        data_maps = "list"
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

        #' Add fields that are missing from a data frame
        #'
        #' Take in two data frames and their respective DataMaps
        #' Any fields which are missing from the first dataframe and present in the second dataframe are added to the first
        #'
        #' @param dat_1 The dataframe being altered
        #' @param dm_1 DataMap of the dataframe being altered
        #' @param dat_2 Dataframe from which data may be taken
        #' @param dm_2 DataMap of dataframe from which data may be taken
        #'
        #' @return dat_1 with any fields which were missing and were present in dat_2
        add_missing_fields =
          function(dat_1, dm_1, dat_2, dm_2) {
            # DM 1 is the DataMap which we are working on
            # DM 2 is the DataMap which we MAY take data from to put into the data for DM 1

            dm1_op_fm = dm_1$output_data_field_map
            dm1_ip_fm = dm_1$input_data_field_map
            dm2_op_fm = dm_2$output_data_field_map

            missing_output_fields =
              dm1_op_fm$uncommon_fields(dm1_ip_fm)

            # List of fields which are missing from DM1s output datamap and are present in DM2s output datamap
            missing_fields_available =
              names(missing_output_fields)[names(missing_output_fields) %in% names(dm2_op_fm$field_list)]

            # For each missing field which is available in the second DataMap, add the appropriate data
            for(f_ in missing_fields_available) {
              dat_1[dm1_op_fm$field_list[[f_]]$name] =
                dat_2[dm2_op_fm$field_list[[f_]]$name]
            }

            return(dat_1)
          },

        # Add requisite metadata to any outgoing datasets (typically tag id field)
        add_meta =
          function(dat, dm) {
            .self$add_missing_fields(
              dat_1 = dat,
              dm_1 = dm,
              dat_2 = .self$metadata_map$extract(.self$d),
              dm_2 = .self$metadata_map
            )
          },

        # Upload any and all tag metadata to their appropriate tables in the DB
        upload_meta =
          function(con) {
            .self$metadata_map$upsert(
              con,
              .self$metadata_map$extract(.self$d)
            )
          },

        #' Execute all necessary steps to read and transform raw data for one DataMap
        #'
        #' @param dm The DataMap to use
        #'
        #' @return The extracted and transformed data
        decode_datamap =
          function(dm) {
            # Perform initial extraction
            dat =
              dm$extract(.self$d)

            # Transform extracted data
            dat_t =
              dm$transform(dat)

            # Return transformed data
            return(dat_t)
          },

        #' Execute all etl steps for all DataMaps
        #'
        #' @param con Connection to the target DB
        decode_and_load_all_datamaps =
          function(con) {
            # Iterate through each data map in this decoder
            for (dm in .self$data_maps) {
              # Get the extracted and transformed data
              dat = .self$decode_datamap(dm)
              # Add any required metadata
              dat = .self$add_meta(dat, dm)
              # Load the data into the DB
              dm$load(con, dat)
            }
          },

        #' Check if this tag has already been uploaded to the DB
        #'
        #' @param con Connection to the target DB
        #'
        #' @return Boolean value indicating if the tag ID is already present in the metadata table
        tag_already_loaded =
          function(con) {
            # Get the name of the id field in the metadata table
            id_field =
              .self$metadata_map$output_data_field_map$field_list$TAG_ID_FIELD$name

            # Collect a list of all IDs already in the table
            ids_in_db =
              dplyr::tbl(
                con,
                .self$metadata_map$output_data_field_map$table
              ) %>%
              dplyr::select(id_field) %>%
              dplyr::pull()

            # Get the ID of this tag
            tag_id =
              .self$metadata_map$get_tag_id(d)

            # Check if this tag is already in the DB table
            return(tag_id %in% ids_in_db)
          },

        #' Execute all necessary steps to read and transform raw data for one datamap
        #'
        #' @param con Connection to the target DB
        #'
        #' @return The extracted and transformed data
        decode =
          function(con, overwrite = T) {
            # If the user has specified not to overwrite existing data, check if
            # this tag is already in the DB
            if(!overwrite) {
              if(.self$tag_already_loaded(con)) {
                # The tag is already present in the DB
                return(TRUE)
              }
            }

            DBI::dbWithTransaction(
              con,
              {
                .self$upload_meta(con)
                .self$decode_and_load_all_datamaps(con)
              }
            )

            return(TRUE)
          }

      )
  )
  #----

#' Maps raw tag data to the appropriate Decoder based on structure of the raw data
#'
#' Makes decisions based on some pretty nitty-gritty details, like naming
#' conventions, file-types present, number of files present, etc. As such, it's
#' crucial that the data has not been altered by the user in any way since being
#' extracted from the tag and/or run through any post-processing software.
#'
#' @field master_list__ list. The list of all Decoders from which to choose.
#' Internal reference field, not intended to be set by user. Any value passed
#' to this field will be overwritten on construction
TagIdentifier =
  #----
  setRefClass(
    "TagIdentifier",
    fields =
      list(
        master_list__ = "list"
      ),
    methods =
      list(
        initialize =
          function(...) {
            callSuper(...)
            # Set the master list
            master_list__ <<- Decoder_MasterList
          },

        identify_tag_decoder =
          function(d) {
            # Initialize tibble
            # First field 'dc' is a list of all possible decoders from the master list
            t__ =
              tibble::tibble(dc = .self$master_list__)

            # Update the tibble to include the name associated with each decoder
            t__['name'] =
              t__[['dc']] %>%
              lapply(
                function(dc) {
                  Filter(
                    function(c) {
                      stringr::str_detect(c, 'Decoder')
                    },
                    class(dc())
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
                              'result' = dc()$identifier$identify(d),
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
                  as.data.frame()
              )

            # Return the dataframe
            return(t__)
          }
      )
  )


#' TagProcessor class. Facilitates the automated identification and decoding of
#' tag data directories. Recursively traverses a directory tree, attempting to
#' process any data directories within.
#'
#' Implements some basic reporting to aid in diagnosing systemic decoding issues
#'
#' @field d Data directory.
#' @field overwrite Boolean flag. If set to TRUE, the TagProcessor will check if a tag is already present in the tag metadata table, and will not process the tag if it is.
#' @field dir_tree__ Private variable, not to be set by user. Any user-submitted value is overwritten on construction
TagProcessor =
  #----
  setRefClass(
    "TagProcessor",
    fields =
      list(
        d = "character", # The directory to process
        overwrite = "logical", # Whether or not to overwrite data already in DB
        dir_tree__ = "Node" # The directory tree object. Private attribute, not intended to be set
      ),

    methods =
      list(
        initialize =
          function(d, overwrite = T, ...) {
            callSuper(d = d, overwrite = overwrite, ...)
            # Build datatree object from directory
            dir_tree__ <<- .self$build_datatree(d)
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

        # Builds the report dataframe from the directory data tree
        build_report =
          function() {
            data.tree::ToDataFrameTree(
              tp__$dir_tree__,
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

        process_directory =
          function(data_directory, con) {
            # Apply the TagIdentifier to determine which decoders match the data directory
            # Record these results on the data directory object
            data_directory$tag_identifier_results =
              TagIdentifier()$identify_tag_decoder(data_directory$fullPath)

            # Filter to those decoders which matched the data directory
            pos_id =
              data_directory$tag_identifier_results %>%
              dplyr::filter(result == T)

            # If there is exactly one decoder which matches the data directory, use that
            # decoder to upload the tag data to the DB
            if(nrow(pos_id) == 1) {
              dc = pos_id$dc[[1]](d = data_directory$fullPath)
              tryCatch(
                {
                  dc$decode(con, overwrite = .self$overwrite)
                  data_directory$decoded = T
                  data_directory$identified_decoder = pos_id$name
                },
                error =
                  function(cond) {
                    data_directory$decode_error = cond
                  }
              )
            } else {
              data_directory$decode_error = paste0("Matching decoders: ", nrow(pos_id))
            }
          },

        # Process all tag data contained within the directory tree
        process =
          function(con) {
            print("Processing directory.")
            # Traverse directory tree and process each data directory (leaf node)
            tp__$dir_tree__$Do(
              function(node) {
                print(node$levelName)
                if (node$isLeaf) {
                  .self$process_directory(node, con)
                }
              }
            )
          }
      )
  )




















