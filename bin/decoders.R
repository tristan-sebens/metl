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
        input_data_field_map = "FieldMap",
        output_data_field_map = "FieldMap"
      ),
    methods =
      list(
        # Helper function to throw an error with a prepended message to help identify
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

        #' Transform extracted tag data to follow standardized format
        #'
        #' @param d The directory in which the tag data resides. Directory is
        #' expected to contain only files which relate to one common tag.
        #'
        #' @return The data contained in the tag data as a single dataframe
        #' @export
        #'
        #' @examples
        transform =
          function(dat) {
            # Process each field in turn
            for (field_ in names(.self$input_data_field_map$field_list)) {
              # Identify relevant input/output field objects
              input_field_obj_ = .self$input_data_field_map$field_list[[field_]]
              output_field_obj_ = .self$output_data_field_map$field_list[[field_]]

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
                  .self$output_data_field_map$field_list,
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
        read =
          function(d) {
            stop("Inheritence error: Invocation of base class 'Decoder.' Please
                 implement a child class instead.")
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
              list.files(template_tag_d_ltd_1000_1100_1250, pattern = pattern)[[1]]
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
        read =
          function(d) {
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
                    .self$get_data_file_path(d, pattern = pattern)
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
        #' Extract tag data from passed directory
        #'
        #' @param d The directory in which the tag data resides. Directory is
        #' expected to contain only files which relate to one common tag.
        #'
        #' @return The data contained in the tag data as a single dataframe
        read =
          function(d) {
            fps = list.files(d, pattern = "Regular Log")

            # Check that the data files in the directory match expectations
            if(lengths(fps) > 1) {
              .self$throw_error(
                paste0("Too many 'Regular Log' files in ", d)
              )
            }
            if(lengths(fps) == 0) {
              .self$throw_error(
                paste0("No 'Regular Log' files in ", d)
              )
            }

            # Read and return the data from the data file
            return(
              read.csv(file.path(d, fps[[1]]))
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

        #' Extract tag data from passed directory
        #'
        #' @param d The directory in which the tag data resides. Directory is
        #' expected to contain only files which relate to one common tag.
        #'
        #' @return The data contained in the tag data as a single dataframe
        read =
          function(d) {
            # Retrieve the csv data file
            fps = .self$get_csv_files(d)
            # There should be only one csv file. If there are more, we don't know
            # which one to use.
            if (length(fps) > 1) {
              .self$throw_error(
                paste0(
                  "Too many CSV files present in directory: ",
                  d
                )
              )
            }

            return(
              read_csv_lotek_1400.1800(fps[[1]])
            )
          }
      )
  )











































