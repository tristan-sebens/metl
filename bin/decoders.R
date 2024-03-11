source(here::here('bin', 'field.R'))

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
              str_detect(pattern = pattern)

            # Check that any lines matched
            if (!any(matches)) {
              .self$throw_error(
                paste0(
                  "Parsing file - No matches of '",
                  pattern,
                  "' found in first ",
                  n,
                  " lines of ",
                  tail(strsplit(fp, .Platform$file.sep)[[1]], 1)
                )
              )
            }

            # Return the line number of the first match
            return(which(matches)[[1]])
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

        #' Transform the fields of the incoming tag data as dictated by the field maps
        #'
        #' @param dat The incoming data
        #'
        #' @return The transformed data with renamed and united fields
        transform_fields =
          function(dat__) {
            # Convert the datetime field(s) to a POSIXct field
            dat__ = .self$convert_datetime_to_posix_ct(dat__)

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
              input_field_dat_ = dat__[[input_field_obj_$name]]

              # If needed, invert the field values
              if(input_field_obj_$invert) {
                input_field_dat_ = input_field_dat_ * -1
              }

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
            # WORKS
            temp_table_name = paste0(.self$output_data_field_map$table, "_temp")

            # Copy data to temporary table
            dbplyr::db_copy_to(
              con = con,
              table = ident(temp_table_name),
              values = dat,
              in_transaction = F
            )

            # UPSERT the new data into the target table
            DBI::dbExecute(
              con =
                con,
              statement =
                # Build the upsert sql statement
                dbplyr::sql_query_upsert(
                  con = con,
                  table = ident(.self$output_data_field_map$table),
                  from = ident(temp_table_name),
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
              class 'Decoder.' Please implement a child class instead.")
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

        #' Execute all necessary steps to read and transform raw data for one DataMap
        #'
        #' @param dm The DataMap to use
        #'
        #' @return The extracted and transformed data
        decode_datamap =
          function(dm) {
            # Perform initial extraction
            dat =
              dm$extract_and_save(.self$d)

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
              ## INSERT DATAMAP JOIN FUNCTION HERE
              # Load the data into the DB
              dm$load(con, dat_m)
            }
          },

        #' Execute all necessary steps to read and transform raw data for one datamap
        #'
        #' @param con Connection to the target DB
        #'
        #' @return The extracted and transformed data
        decode =
          function(con) {
            DBI::dbWithTransaction(
              con,
              {
                .self$decode_and_load_all_datamaps(con)
              }
            )
          }

      )
  )
  #----





























