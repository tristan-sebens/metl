
#' Base class for DataMaps which map to the instant tag sensor table
#'
#' @inheritParams DataMap
DataMap_InstantSensorData_Base =
  setRefClass(
    "DataMap_InstantSensorData_Base",
    contains = "DataMap",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(output_data_field_map = TAG_DATA_FIELDS, ...)
          }
      )
  )


#' DataMap for the Lotek 1000/1100/1250 tags
#'
#' @inheritParams DataMap
DataMap_Lotek.1000.1100.1250_InstantSensorData =
  setRefClass(
    "DataMap_Lotek.1000.1100.1250_InstantSensorData",
    contains = "DataMap_InstantSensorData_Base",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(input_data_field_map = LOTEK_1000.1100.1250_FIELDS, ...)
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
          function(d) {
            dat =
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

            # Convert timestamp field to POSIXct
            dat[.self$input_data_field_map$field_list$TIMESTAMP_FIELD$name] =
              as.POSIXct(
                dat[[.self$input_data_field_map$field_list$TIMESTAMP_FIELD$name]],
                format = "%Y/%m/%d %H:%M:%S",
                tz = "UTC"
              )

            return(dat)
          }
      )
  )


#' Decoder for the Lotek 1300 tags
#'
#' @inheritParams DataMap
DataMap_Lotek.1300_InstantSensorData =
  setRefClass(
    "DataMap_Lotek.1300_InstantSensorData",
    contains = "DataMap_InstantSensorData_Base",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(input_data_field_map = LOTEK_1300_FIELDS, ...)
          },

        #' Extract tag data from passed directory
        #'
        #' @param d The directory in which the tag data resides. Directory is
        #' expected to contain only files which relate to one common tag.
        #'
        #' @return The data contained in the tag data as a single dataframe
        extract =
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

            # Read data from the data file
            dat = read.csv(file.path(d, fps[[1]]))

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
          }
      )
  )


#' Decoder for the Lotek 1400/1800 tags
#'
#' @inheritParams DataMap
#'
#' @examples
DataMap_Lotek.1400.1800_InstantSensorData =
  setRefClass(
    "DataMap_Lotek.1400.1800_InstantSensorData",
    contains = "DataMap_InstantSensorData_Base",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(input_data_field_map = LOTEK_1400.1800_FIELDS, ...)
          },

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

            # Read in data
            dat = read_csv_lotek_1400.1800(fps[[1]])

            # Convert datetime field to POSIXct
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
          }
      )
  )

#' Decoder for the Microwave Telemetry X-tag tags
#'
#' @inheritParams Decoder
#'
#' @examples
DataMap_MicrowaveTelemetry_XTag_InstantSensorData =
  setRefClass(
    "DataMap_MicrowaveTelemetry_XTag_InstantSensorData",
    contains = "DataMap_InstantSensorData_Base",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(input_data_field_map = MICROWAVE_TELEMETRY_XTAG_FIELDS, ...)
          },

        #' Extract tag data from passed directory
        #'
        #' @param d The directory in which the tag data resides. Directory is
        #' expected to contain only files which relate to one common tag.
        #'
        #' @return The data contained in the tag data as a single dataframe
        extract =
          function(d) {
            # All of the temperature and pressure data is extracted from the .xls file
            # Find the xls file in the directory
            mt_xt_xl_fp = list.files(d, pattern = "^\\d*\\.xls", full.names = T)

            suppressMessages(
              {
                # Read in pressure (depth) data
                press_dat_ =
                  # Read the data from the pressure data sheet in the xls file
                  readxl::read_xls(
                    path = mt_xt_xl_fp,
                    sheet = "Press Data",
                    # Calculate the range of data to include
                    range =
                      paste0(
                        "A3:D",
                        # Read in the full, unfiltered sheet to count the number of rows of data
                        nrow(
                          readxl::read_xls(
                            path = mt_xt_xl_fp,
                            sheet = "Press Data",
                            skip=1
                          )
                        ) + 2 # Add two rows for the header row and the title row
                      ),
                    col_names =
                      c(
                        'datetime',
                        'sensor_val',
                        'gain',
                        'depth'
                      )
                  )

                # Read in temperature data
                temp_dat_ =
                  # Read the data from the temperature data sheet in the xls file
                  readxl::read_xls(
                    path = mt_xt_xl_fp,
                    sheet = "Temp Data",
                    # Calculate the range of data to include
                    range =
                      paste0(
                        "A3:C",
                        # Read in the full, unfiltered sheet to count the number of rows of data
                        nrow(
                          readxl::read_xls(
                            path = mt_xt_xl_fp,
                            sheet = "Temp Data",
                            skip=1
                          )
                        ) + 2 # Add two rows for the header row and the title row
                      ),
                    col_names =
                      c(
                        'datetime',
                        'sensor_val',
                        'temperature'
                      )
                  )
              }
            )

            # Merge the data into a single dataframe
            dat_ =
              merge(
                dplyr::select(press_dat_, -sensor_val, -gain),
                dplyr::select(temp_dat_, -sensor_val),
                all.x = T,
                all.y = T
              )

            return(dat_)
          }
      )
  )


#' Decoder for the Star Oddi DST tags
#'
#' @inheritParams Decoder
#'
#' @examples
DataMap_StarOddi_DST_InstantSensorData =
  setRefClass(
    "DataMap_StarOddi_DST_InstantSensorData",
    contains = "DataMap_InstantSensorData_Base",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(input_data_field_map = STAR_ODDI_DST_FIELDS, ...)
          },

        #' Extract tag data from passed directory
        #'
        #' @inheritParams extract#Decoder
        #'
        #' @return The data contained in the tag data as a single dataframe
        extract =
          function(d) {
            fs =
              list.files(d, pattern = "^[^~]*\\.xlsx", full.names = T)

            fp = fs[[1]]

            dat_ =
              # readxl throws up a warning every time we convert a number to a datetime
              # printing all of those warnings takes FOREVER
              # so instead we just tell it to shut up
              suppressWarnings(
                {
                  # Read the tag data in from the datasheet
                  readxl::read_xlsx(
                    fp,
                    sheet = "DAT",
                    col_types = c("date", "numeric", "numeric")
                  )
                }
              )

            return(dat_)
          }
      )
  )


#' Decoder for the StarOddi DST magnetic tags
#'
#' @inheritParams Decoder
#'
#' @examples
DataMap_StarOddi_DSTmagnetic_InstantSensorData =
  setRefClass(
    "Decoder_StarOddi_DSTmagnetic_InstantSensorData",
    contains = "DataMap_InstantSensorData_Base",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(input_data_field_map = STAR_ODDI_DST_MAGNETIC_FIELDS, ...)
          },

        #' Extract tag data from passed directory
        #'
        #' @param d The directory in which the tag data resides. Directory is
        #' expected to contain only files which relate to one common tag.
        #'
        #' @return The data contained in the tag data as a single dataframe
        extract =
          function(d) {
            fs =
              list.files(d, pattern = "^[^~]*\\.xlsx", full.names = T)

            fp = fs[[1]]

            dat_ =
              # readxl throws up a warning every time we convert a number to a datetime
              # printing all of those warnings takes FOREVER
              # so instead we just tell it to shut up
              suppressWarnings(
                {
                  # Read the tag data in from the datasheet
                  readxl::read_xlsx(
                    fp,
                    sheet = "DAT",
                    col_types = c("date", rep("numeric", 10))
                  )
                }
              )

            return(dat_)
          }
      )
  )


#' Decoder for the StarOddi DST milli F tags
#'
#' @inheritParams Decoder
#'
#' @examples
DataMap_StarOddi_DSTmilliF_InstantSensorData =
  setRefClass(
    "DataMap_StarOddi_DSTmilliF_InstantSensorData",
    # DataMap is identical to the Star Oddi DST tag DataMap
    contains = "DataMap_InstantSensorData_Base",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(input_data_field_map = STAR_ODDI_DST_MILLI_F_FIELDS, ...)
          },

        #' Extract tag data from passed directory
        #'
        #' @inheritParams extract#Decoder
        #'
        #' @return The data contained in the tag data as a single dataframe
        extract =
          function(d) {
            fs =
              list.files(d, pattern = "^[^~]*\\.xlsx", full.names = T)

            fp = fs[[1]]

            dat_ =
              # readxl throws up a warning every time we convert a number to a datetime
              # printing all of those warnings takes FOREVER
              # so instead we just tell it to shut up
              suppressWarnings(
                {
                  # Read the tag data in from the datasheet
                  readxl::read_xlsx(
                    fp,
                    sheet = "DAT",
                    col_types = c("date", "numeric", "numeric")
                  )
                }
              )

            return(dat_)
          }
      )
  )



#' Decoder for the Wildlife Computers MiniPAT tags
#'
#' @inheritParams Decoder
#'
#' @examples
DataMap_WildlifeComputer_MiniPAT_InstantSensorData =
  setRefClass(
    "DataMap_WildlifeComputer_MiniPAT_InstantSensorData",
    # DataMap is identical to the Star Oddi DST tag DataMap
    contains = "DataMap_InstantSensorData_Base",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(input_data_field_map = WILDLIFE_COMPUTERS_MINIPAT_FIELDS, ...)
          },

        #' Extract tag data from passed directory
        #'
        #' @inheritParams extract#Decoder
        #'
        #' @return The data contained in the tag data as a single dataframe
        extract =
          function(d) {
            # Find the Series.csv file
            fn = list.files(d, pattern = regex("(\\d*)-Series\\.csv", ignore_case = T))[[1]]

            # Read in the data
            dat =
              read.csv(file.path(d, fn))

            # Convert the timestamp fields to POSIXct
            dat[[.self$input_data_field_map$field_list$TIMESTAMP_FIELD$name]] =
              as.POSIXct(
                paste0(
                  dat[[.self$input_data_field_map$field_list$DAY_FIELD$name]],
                  " ",
                  dat[[.self$input_data_field_map$field_list$TIME_FIELD$name]]
                ),
                format = "%d-%b-%Y %H:%M:%S"
              )

            return(dat)
          }
      )
  )

