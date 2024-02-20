source(here::here('bin', 'field.R'))

#' Decoder base class
#'
#'  Provides base structure for all make/model specific tag decoders.
#'  Not intended to be implemented directly
#'
#' @return
#' @export
#'
#' @examples
Decoder =
  setRefClass(
    "Decoder",
    fields =
      list(
        # Directory from which to read the tag data
        d = "character",
        # Tag metadata
        tag_make = "character",
        tag_model = "character",
        # Input data field map
        input_data_field_map = "FieldMap"
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

        #' Identify Tag ID from available metadata
        #'
        #' @param d The directory in which the data files in question reside
        #'
        #' @return The tag ID identified from the files, as a string
        tag_id_from_d =
          function(d) {
            throw_error(
              "Inheritence error: Invocation of 'tag_id_from_d' function of base
              class 'Decoder.' Please implement a child class instead.")
          },

        #' Attach all necessary metadata to incoming tag data
        #'
        #' @param dat The incoming tag data
        #'
        #' @return The data with tag metadata attached
        add_meta =
          function(dat, tag_meta_field_map) {
            dat %>%
              # Only the tag id needs to be connected to the actual recordings
              dplyr::mutate(
                '{tag_meta_field_map$field_list$TAG_ID_FIELD$name}' := .self$tag_id_from_d(d)
              )
          },

        # TODO: Update this function to dynamically name the dataframe fields based on the fields of the TAG table FieldMap. Right now the table fields are just hardcoded into this function (bad bad)
        #' Generate a dataframe of the relevant metadata for this tag, in the format
        #' expected by DBI::dbAppendTable
        #'
        #' @return The tag metadata as a single dataframe
        generate_tag_meta_dataframe =
          function(tag_meta_field_map) {
            # have to do it this clumsy way bc dplyr dataframes are NOT okay with dynamically generated field names
            l = list()
            l[tag_meta_field_map$field_list$TAG_ID_FIELD$name] = .self$tag_id_from_d(.self$d)
            l[tag_meta_field_map$field_list$TAG_MAKE_FIELD$name] = .self$tag_make
            l[tag_meta_field_map$field_list$TAG_MODEL_FIELD$name] = .self$tag_model
            return(data.frame(l))
          },

        #' Convert the date time data contained in the dataframe to POSIXct format
        #'
        #' @return The input dataframe with the newly formatted POSIXct timestamp
        convert_datetime_to_posix_ct =
          function(dat) {
            throw_error(
              "Inheritence error: Invocation of 'convert_datetime_to_posix_ct' function of base
              class 'Decoder.' Please implement a child class instead."
            )
          },

        #' Transform the fields of the incoming tag data as dictated by the field maps
        #'
        #' @param dat The incoming data
        #'
        #' @return The transformed data with renamed and united fields
        transform_fields =
          function(dat__, output_data_field_map) {
            # Convert the datetime field(s) to a POSIXct field
            dat__ = .self$convert_datetime_to_posix_ct(dat__)

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
              # for (field_ in names(.self$input_data_field_map$field_list)) {
              # Identify relevant input/output field objects
              input_field_obj_ = .self$input_data_field_map$field_list[[field_]]
              output_field_obj_ = output_data_field_map$field_list[[field_]]

              # Isolate field data
              input_field_dat_ = dat__[[input_field_obj_$name]]

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
                  # Select the fields from the output field map that have corresponding
                  #  entries in the input field map
                  output_data_field_map$field_list[common_fields],
                  function(f) {
                    f$name
                  }
                ) %>%
                  unlist(use.names = F)
              ]
            )
          },


        #' Extract tag data from passed directory
        #'
        #' @param d The directory in which the tag data resides. Directory is
        #' expected to contain only files which relate to one common tag.
        #'
        #' @return The data contained in the tag data as a single dataframe
        #' @export
        #'
        #' @examples
        extract =
          function() {
            throw_error(
              "Inheritence error: Invocation of 'extract' function of base
              class 'Decoder.' Please implement a child class instead.")
          },

        #' Transform extracted tag data to follow standardized format
        #'
        #' @param dat The incoming tag data
        #'
        #' @return The data contained in the tag data as a single dataframe
        transform =
          function(
            dat,
            output_data_field_map,
            tag_meta_field_map
          ) {

            # Standardize incoming fields
            dat = .self$transform_fields(dat, output_data_field_map)

            # Add tag meta to all data records
            dat = .self$add_meta(dat, tag_meta_field_map)

            return(dat)
          },

        # TODO: This function has hardcoded table names in it. They need to be refactored
        #' Load transformed tag data into the DB
        #'
        #' @param dat The incoming tag data
        #'
        #' @return The data contained in the tag data as a single dataframe
        load =
          function(
            dat,
            con,
            output_data_field_map,
            tag_meta_field_map
          ) {
            # Append data to table
            DBI::dbWithTransaction(
              con,
              {
                DBI::dbAppendTable(
                  conn = con,
                  name = "TAG_DATA",
                  value =
                    d__$transform(
                      dat__,
                      output_data_field_map,
                      tag_meta_field_map
                    )
                )
                DBI::dbAppendTable(
                  conn = con,
                  name = "TAG",
                  value =
                    d__$generate_tag_meta_dataframe(
                      tag_meta_field_map
                    )
                )
              }
            )
          }
      )
  )


#' Decoder for the Lotek 1000/1100/1250 tags
#'
Decoder_Lotek.1000.1100.1250 =
  setRefClass(
    "Decoder_Lotek.1000.1100.1250",
    contains = "Decoder",
    methods =
      list(
        tag_id_from_filename =
          function(fp) {
            stringr::str_match(fp, pattern = "^(\\d\\d\\d\\d)\\D*")[2]
          },

        #' Identify Tag ID from available metadata
        #'
        #' @param d The directory in which the data files in question reside
        #'
        #' @return The tag ID identified from the files, as a string
        tag_id_from_d =
          function(d) {
            .self$tag_id_from_filename(
              list.files(
                d,
                pattern = "^.*[C|c][S|s][V|v]"
              )[[1]]
            )
          },

        #' Convert the date time data contained in the dataframe to POSIXct format
        #'
        #' @return The input dataframe with the newly formatted POSIXct timestamp
        convert_datetime_to_posix_ct =
          function(dat) {
            dat[.self$input_data_field_map$field_list$TIMESTAMP_FIELD$name] =
              as.POSIXct(
                dat[[.self$input_data_field_map$field_list$TIMESTAMP_FIELD$name]],
                format = "%Y/%m/%d %H:%M:%S",
                tz = "UTC"
              )

            return(dat)
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

        #' Read tag data from file. Data comes in standard csv format, but is
        #' preceded by a number of metadata tags which must be skipped
        #'
        #' @param d The directory in which the tag data resides. Directory is
        #' expected to contain only files which relate to one common tag.
        #'
        #' @return The data contained in the tag data as a single dataframe
        read_csv_lotek_1000.1100.1250 =
          function(fp) {
            read.csv(
              fp,
              skip=
                # Find the line at which the csv data begins by finding the
                #  'CSV DATA' section header
                .self$find_line_in_file(
                  fp,
                  pattern="CSV DATA")
            ) %>%
            # Drop any empty lines.
            drop_na()
          },


        #' Extract tag data from passed directory
        #'
        #' @param d The directory in which the tag data resides. Directory is
        #' expected to contain only files which relate to one common tag.
        #'
        #' @return The data contained in the tag data as a single dataframe
        extract =
          function() {
            # List of data-types to collect data for
            c(
              "PRESSURE",
              "TEMPERATURE",
              "LIGHT",
              "SUPPLY"
            ) %>%
            # Find all of the relevant datafiles, and read them in as dataframes
            lapply(
              FUN =
                function(pattern) {
                  .self$read_csv_lotek_1000.1100.1250(
                    .self$get_data_file_path(.self$d, pattern = pattern)
                  )
                }
            ) %>%
            # Join all of the dataframes together into a single frame
            purrr::reduce(
              .f =
                function(x, y) {
                  # Check that the next df has any rows to join
                  if (nrow(y) > 0) {
                    # Suppress 'joined by' messages that pollute the console
                    return(suppressMessages({full_join(x, y)}))
                  }
                  return(x)
                }
            )
          }
      )
  )


#' Decoder for the Lotek 1300 tags
#'
#'
#' @examples
Decoder_Lotek.1300 =
  setRefClass(
    "Decoder_Lotek.1300",
    contains = "Decoder",
    methods =
      list(
        #' Convert the date time data contained in the dataframe to POSIXct format
        #'
        #' @return The input dataframe with the newly formatted POSIXct timestamp
        convert_datetime_to_posix_ct =
          function(dat) {
            # Get the timestamp field name
            ts_fieldname = .self$input_data_field_map$field_list$TIMESTAMP_FIELD$name

            # For some reason the timestamps in these data files can come in one of two
            #  formats. It escapes my why this might be the case, but here we are.
            #  To accommodate this, we apply two different POSIX formats, and for each
            #  record take the one that works
            ts_1 = as.POSIXct(dat[[ts_fieldname]], format = "%d/%m/%Y %H:%M", tz = "UTC")
            ts_2 = as.POSIXct(dat[[ts_fieldname]], format = "%H:%M:%S %d/%m/%y", tz="UTC")

            dat[[ts_fieldname]] =
              as.POSIXct(
                ifelse(
                  is.na(ts_2),
                  ts_1,
                  ts_2
                )
              )

            return(dat)
          },

        #' Identify Tag ID from available metadata
        #'
        #' @param d The directory in which the data files in question reside
        #'
        #' @return The tag ID identified from the files, as a string
        tag_id_from_d =
          function(d) {
            list.files(d, pattern = ".*[R|r]egular.*")[1] %>%
              stringr::str_extract("^.*LTD1300.*(\\d\\d\\d\\d)\\D.*[R|r]egular.*[C|c][S|s][V|v]", group=1)
          },

        #' Extract tag data from passed directory
        #'
        #' @param d The directory in which the tag data resides. Directory is
        #' expected to contain only files which relate to one common tag.
        #'
        #' @return The data contained in the tag data as a single dataframe
        extract =
          function() {
            fps = list.files(.self$d, pattern = "Regular Log")

            # Check that the data files in the directory match expectations
            if(lengths(fps) > 1) {
              .self$throw_error(
                paste0("Too many 'Regular Log' files in ", .self$d)
              )
            }
            if(lengths(fps) == 0) {
              .self$throw_error(
                paste0("No 'Regular Log' files in ", .self$d)
              )
            }

            # Read and return the data from the data file
            return(
              read.csv(file.path(.self$d, fps[[1]]))
            )
          }
      )
  )


#' Decoder for the Lotek 1400/1800 tags
#'
#' @inheritParams Decoder
#'
#' @examples
Decoder_Lotek.1400.1800 =
  setRefClass(
    "Decoder_Lotek.1400.1800",
    contains = "Decoder",
    methods =
      list(
        # Helper function to read csv datafiles formatted by a Lotek 1400/1800
        # tag. File contains two lines of headers which need to be skipped.
        read_csv_lotek_1400.1800 =
          function(fp) {
            read.csv(
              fp,
              skip =
                .self$find_line_in_file(
                  fp,
                  pattern = "Rec #"
                ) - 1
            )
          },

        tag_id_from_filename =
          function(fp) {
            stringr::str_match(fp, pattern = ".*\\D(\\d\\d\\d\\d)\\D.*")[2]
          },

        #' Identify Tag ID from available metadata
        #'
        #' @param d The directory in which the data files in question reside
        #'
        #' @return The tag ID identified from the files, as a string
        tag_id_from_d =
          function(d) {
            .self$tag_id_from_filename(
              list.files(
                d,
                pattern = "^LAT[180|140].*csv"
              )[[1]]
            )
          },

        #' Convert the date time data contained in the dataframe to POSIXct format
        #'
        #' @return The input dataframe with the newly formatted POSIXct timestamp
        convert_datetime_to_posix_ct =
          function(dat) {
            dat[[.self$input_data_field_map$field_list$TIMESTAMP_FIELD$name]] =
              as.POSIXct(
                paste(
                  dat[[.self$input_data_field_map$field_list$DATE_FIELD$name]],
                  dat[[.self$input_data_field_map$field_list$TIME_FIELD$name]]
                ),
                format = "%m/%d/%Y %H:%M:%S",
                tz = "UTC"
              )

            return(dat)
          },

        #' Extract tag data from passed directory
        #'
        #' @param d The directory in which the tag data resides. Directory is
        #' expected to contain only files which relate to one common tag.
        #'
        #' @return The data contained in the tag data as a single dataframe
        extract =
          function() {
            # Retrieve the csv data file
            fps = .self$get_csv_files(d)
            # There should be only one csv file. If there are more, we don't know
            # which one to use.
            if (length(fps) > 1) {
              .self$throw_error(
                paste0(
                  "Too many CSV files present in directory: ",
                  .self$d
                )
              )
            }

            return(
              read_csv_lotek_1400.1800(fps[[1]])
            )
          }
      )
  )











































