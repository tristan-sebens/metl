#' Tag metadata map
#'
#' Base class for DataMaps for tag metadata
#'
#' @field make character. Tag manufacturer/brand
#' @field model character. Tag model
#' @export
DataMap_TagMetaData_Base =
  setRefClass(
    "DataMap_TagMetaData_Base",
    contains = "DataMap",
    fields =
      list(
        make = "character",
        model = "character"
      ),
    methods =
      list(
        initialize =
          function(
            ...,
            output_data_field_map = TAG_METADATA_TABLE_FIELDS
          ) {
            callSuper(
              ...,
              output_data_field_map = output_data_field_map
            )
          },

        # Each tag metadata DataMap will only need to implement the functionality to extract the tag id.
        # For now anyways.
        get_tag_id =
          function(d) {
            "Extract tag id from directory `d`"
            .self$throw_error("Inheritence error: invocation of 'get_tag_id' function from TagMetaData base class. Please implement method on child class instead.")
          },

        # All of the tag meta DataMaps will produce dataframes of the same format
        extract =
          function(d) {
            data.frame(
              tag_id = .self$get_tag_id(d),
              make = .self$make,
              model = .self$model
            )
          }
      )
  )


#' DataMap - Instant sensor data - base class
#' @export
DataMap_InstantSensorData_Base =
  setRefClass(
    "DataMap_InstantSensorData_Base",
    contains = "DataMap",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(output_data_field_map = TAG_DATA_INSTANT_TABLE_FIELDS, ...)
          }
      )
  )

#' DataMap - Summary sensor data - base class
#' @export
DataMap_SummarySensorData_Base =
  setRefClass(
    "DataMap_SummarySensorData_Base",
    contains = "DataMap",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(output_data_field_map = TAG_DATA_SUMMARY_TABLE_FIELDS, ...)
          }
      )
  )

#' DataMap - Lotek tag metadata - base class
#' @export
DataMap_Lotek_TagMetaData =
  setRefClass(
    "DataMap_Lotek_TagMetaData",
    contains = "DataMap_TagMetaData_Base",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(...)
            make <<- "Lotek"
          }
      )
  )


#' DataMap - Base map for Lotek instant sensor data
#' @export
DataMap_Lotek_InstantSensorData =
  setRefClass(
    "DataMap_Lotek_InstantSensorData",
    contains = "DataMap_InstantSensorData_Base",
    methods =
      list(
        # Find the first line of the given file in which the specified pattern occurs
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
          }
      )
  )

#' DataMap - Lotek 1000/1100/1250 tag metadata
#' @export
DataMap_Lotek.1000.1100.1250_TagMetaData =
  setRefClass(
    "DataMap_Lotek.1000.1100.1250_TagMetaData",
    contains = "DataMap_Lotek_TagMetaData",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(...)
            model <<- "1000/1100/1250"
          },

        tag_id_from_filename =
          function(fp) {
            stringr::str_match(fp, pattern = "^(\\d\\d\\d\\d)*")[2]
          },

        get_tag_id =
          function(d) {
            .self$tag_id_from_filename(
              list.files(
                d,
                pattern = "^.*csv$",
                ignore.case = T
              )[[1]]
            )
          }
      )
  )


#' DataMap for the Lotek 1000/1100/1250 tags
#' @export
DataMap_Lotek.1000.1100.1250_InstantSensorData =
  setRefClass(
    "DataMap_Lotek.1000.1100.1250_InstantSensorData",
    contains = "DataMap_Lotek_InstantSensorData",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(input_data_field_map = LOTEK_1000.1100.1250_INSTANT_DATA_FIELDS, ...)
          },

        # Read tag data from file. Data comes in standard csv format, but is
        # preceded by a number of metadata tags which must be skipped
        read_csv_lotek_1000.1100.1250 =
          function(fp) {
            "Read csv data from Lotek 1000/1100/1250 formatted file"
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
              dplyr::select_if(function(x) { sum(!is.na(x)) > 0 })
          },

        extract =
          function(d) {
            dat =
              # List of data-types to collect data for
              c(
                # "LIGHT",
                # "SUPPLY",
                "PRESSURE",
                "TEMPERATURE"
              ) %>%
              # Find all of the relevant datafiles, and read them in as dataframes
              lapply(
                FUN =
                  function(pattern) {
                    dat =
                      list.files(d, pattern = pattern, ignore.case = T)[[1]] %>%
                      .self$read_csv_lotek_1000.1100.1250()

                    return(dat)
                  }
              ) %>%
              # Join all of the dataframes together into a single frame
              purrr::reduce(
                .f =
                  function(x, y) {
                    # Check that the next df has any rows to join
                    if (nrow(y) > 0) {
                      # Suppress 'joined by' messages that pollute the console
                      return(suppressMessages({dplyr::full_join(x, y)}))
                    }
                    return(x)
                  }
              )

            return(dat)
          }
      )
  )

#' DataMap - Tag metadata from Lotek 1300 tags
#' @export
DataMap_Lotek.1300_TagMetaData =
  setRefClass(
    "DataMap_Lotek.1300_TagMetaData",
    contains = "DataMap_Lotek_TagMetaData",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(...)
            model <<- "1300"
          },

        get_tag_id =
          function(d) {
            list.files(d, pattern = ".*[R|r]egular.*")[1] %>%
              stringr::str_extract("^.*LTD1300.*(\\d\\d\\d\\d)\\D.*[R|r]egular.*[C|c][S|s][V|v]", group=1)
          }
      )
  )

#' DataMap - Instant sensor data from Lotek 1300 tags
#' @export
DataMap_Lotek.1300_InstantSensorData =
  setRefClass(
    "DataMap_Lotek.1300_InstantSensorData",
    contains = "DataMap_Lotek_InstantSensorData",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(input_data_field_map = LOTEK_1300_FIELDS, ...)
          },

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

            return(dat)
          }
      )
  )

#' DataMap - Tag metadata from Lotek 1400/1800 tags
#' @export
DataMap_Lotek.1400.1800_TagMetaData =
  setRefClass(
    "DataMap_Lotek.1400.1800_TagMetaData",
    contains = "DataMap_Lotek_TagMetaData",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(...)
            model <<- "1400/1800"
          },

        tag_id_from_filename =
          function(fp) {
            stringr::str_extract(
              fp,
              pattern =
                stringr::regex(
                  "^LAT\\d\\d\\d_(\\d\\d\\d\\d).*\\.csv",
                  ignore_case = T
                ),
              group = 1
            )
          },

        get_tag_id =
          function(d) {
            .self$tag_id_from_filename(
              list.files(
                d,
                pattern = stringr::regex("csv$", ignore_case = T)
              )[[1]]
            )
          }
      )
  )

#' Datamap - Lotek 1400/1800 instant sensor data
#' @export
DataMap_Lotek.1400.1800_InstantSensorData =
  setRefClass(
    "DataMap_Lotek.1400.1800_InstantSensorData",
    contains = "DataMap_Lotek_InstantSensorData",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(input_data_field_map = LOTEK_1400.1800_FIELDS, ...)
          },

        read_csv_lotek_1400.1800 =
          function(fp) {
            "Read csv data from Lotek 1400/1800 formatted csv file"
            read.csv(
              fp,
              skip =
                .self$find_line_in_file(
                  fp,
                  pattern = "Rec #"
                ) - 1
            )
          },

        extract =
          function(d) {
            # Retrieve the csv data file
            fps =
              list.files(
                d,
                pattern = "^.*\\.csv",
                ignore.case = T,
                full.names = T
              )
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

            return(dat)
          }
      )
  )

#' DataMap - Microwave Telemetry tag metadata - base class
#' @export
DataMap_MicrowaveTelemetry_TagMetaData =
  setRefClass(
    "DataMap_MicrowaveTelemetry_TagMetaData",
    contains = "DataMap_TagMetaData_Base",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(...)
            make <<- "Microwave Telemetry"
          }
      )
  )

#' DataMap - Microwave Telemetry X-Tag metadata
#' @export
DataMap_MicrowaveTelemetry_XTag_TagMetaData =
  setRefClass(
    "DataMap_MicrowaveTelemetry_XTag_TagMetaData",
    contains = "DataMap_MicrowaveTelemetry_TagMetaData",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(...)
            model <<- "X-Tag"
          },

        get_tag_id =
          function(d) {
            list.files(path = d, pattern = "^\\d*\\.xls") %>%
              stringr::str_extract(pattern = "^(\\d*)\\.xls", group=1)
          }
      )
  )


#' DataMap - Microwave Telemetry X-Tag metadata
#' @export
DataMap_MicrowaveTelemetry_XTag_SensorData =
  setRefClass(
    "DataMap_MicrowaveTelemetry_XTag_SensorData",
    methods =
      list(
        # Calculate the cell range string the desired data is in
        calc_range =
          function(fp, sheet, col_range) {
            row_max =
              # Read in the full, unfiltered sheet to count the number of rows of data in the file
              nrow(
                readxl::read_xls(
                  path = fp,
                  sheet = sheet,
                  skip=1
                )
              ) + 2 # Add one row for the title row

            return(
              paste0(
                col_range[[1]],
                '2',
                ':',
                col_range[[2]],
                row_max
              )
            )
          },

        # Helper function to extract data from excel sheet
        read_data_sheet =
          function(fp, sheet, col_range) {
            suppressMessages(
              {
                return(
                  # Read the data from the pressure data sheet in the xls file
                  readxl::read_xls(
                    path = fp,
                    sheet = sheet,
                    # Calculate the range of data to include
                    range =
                      .self$calc_range(
                        fp, sheet, col_range
                      ),
                    col_names = T
                  )
                )
              }
            )
          }
      )
  )

#' Datamap - Microwave Telemetry X-tag instant sensor data
#' @export
DataMap_MicrowaveTelemetry_XTag_InstantSensorData =
  setRefClass(
    "DataMap_MicrowaveTelemetry_XTag_InstantSensorData",
    contains =
      c(
        "DataMap_InstantSensorData_Base",
        "DataMap_MicrowaveTelemetry_XTag_SensorData"
      ),
    methods =
      list(
        initialize =
          function(...) {
            callSuper(input_data_field_map = MICROWAVE_TELEMETRY_XTAG_INSTANT_DATA_FIELDS, ...)
          },

        extract =
          function(d) {
            # All of the temperature and pressure data is extracted from the .xls file
            # Find the xls file in the directory
            mt_xt_xl_fp = list.files(d, pattern = "^\\d*\\.xls", full.names = T)

            # Get pressure/depth data
            press_dat =
              .self$read_data_sheet(
                fp = mt_xt_xl_fp,
                sheet = "Press Data",
                col_range = c("A", "G")
              )

            # Get temperature data
            temp_dat =
              .self$read_data_sheet(
                fp = mt_xt_xl_fp,
                sheet = "Temp Data",
                col_range = c("A", "F")
              )

            # Get location data
            argos_loc_dat =
              .self$read_data_sheet(
                fp = mt_xt_xl_fp,
                sheet = "Argos Data",
                col_range = c("A", "D")
              )

            dat =
              merge(
                merge(
                  press_dat,
                  temp_dat,
                  # join by the timestamp field
                  by = .self$input_data_field_map$field_list$TIMESTAMP_FIELD$name,
                  # Keep all records, even if they do not join
                  all.x = T,
                  all.y = T
                ),
                argos_loc_dat,
                by = .self$input_data_field_map$field_list$TIMESTAMP_FIELD$name,
                # Keep all records, even if they do not join
                all.x = T,
                all.y = T
              )

            return(dat)
          }
      )
  )

#' Datamap - Microwave Telemetry X-tag summary sensor data
#' @export
DataMap_MicrowaveTelemetry_XTag_SummarySensorData =
  setRefClass(
    "DataMap_MicrowaveTelemetry_XTag_SummarySensorData",
    contains =
      c(
        "DataMap_SummarySensorData_Base",
        "DataMap_MicrowaveTelemetry_XTag_SensorData"
      ),
    methods =
      list(
        initialize =
          function(...) {
            callSuper(input_data_field_map = MICROWAVE_TELEMETRY_XTAG_SUMMARY_DATA_FIELDS, ...)
          },

        extract =
          function(d) {
            # All of the temperature and pressure data is extracted from the .xls file
            # Find the xls file in the directory
            mt_xt_xl_fp = list.files(d, pattern = "^\\d*\\.xls", full.names = T)

            # Get location data
            light_geoloc_dat =
              .self$read_data_sheet(
                fp = mt_xt_xl_fp,
                sheet = "Lat&Long",
                col_range = c("A", "C")
              ) %>%
              # Drop any rows which don't actually have location data
              tidyr::drop_na()

            return(light_geoloc_dat)
          }
      )
  )


#' DataMap - StarOddi tag metadata - base class
#' @export
DataMap_StarOddi_TagMetaData =
  setRefClass(
    "DataMap_StarOddi_TagMetaData",
    contains = "DataMap_TagMetaData_Base",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(...)
            make <<- "Star Oddi"
          },

        get_tag_id =
          function(d) {
            # Read in xlsx file(s) (There should only be one)
            fs = list.files(d, pattern = "^[^~]*\\.xlsx")
            # Extract the tag id from the filenames
            stringr::str_extract(fs[[1]], pattern = "^([^~]*)\\.xlsx", group=1)
          }
      )
  )


#' DataMap - StarOddi DST tag metadata
#' @export
DataMap_StarOddi_DST_TagMetaData =
  setRefClass(
    "DataMap_StarOddi_DST_TagMetaData",
    contains = "DataMap_StarOddi_TagMetaData",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(...)
            model <<- "DST (centi/milli)-(TD/F)"
          }
      )
  )


#' DataMap - StarOddi DST instant sensor data
#' @export
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

        extract =
          function(d) {
            fs =
              list.files(d, pattern = "^[^~]*\\.xlsx", full.names = T)

            fp = fs[[1]]

            dat_ =
              # readxl throws up a warning every time we convert a number to a datetime
              # printing all of those warnings takes FOREVER
              # so instead we just tell it to shut up
              suppressMessages(
                {
                  # Read the tag data in from the datasheet
                  readxl::read_xlsx(
                    fp,
                    sheet = "DAT"
                  )
                }
              )

            return(dat_)
          }
      )
  )


#' DataMap - StarOddi DST magnetic tag metadata
#' @export
DataMap_StarOddi_DSTmagnetic_TagMetaData =
  setRefClass(
    "DataMap_StarOddi_DSTmagnetic_TagMetaData",
    contains = "DataMap_StarOddi_TagMetaData",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(...)
            model <<- "DST magnetic"
          }
      )
  )

#' DataMap - StarOddi DST magnetic instant sensor data
#' @export
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

        extract =
          function(d) {
            fs =
              list.files(d, pattern = "^[^~]*\\.xlsx", full.names = T)

            fp = fs[[1]]

            dat_ =
              suppressMessages(
                {
                  # Read the tag data in from the datasheet
                  readxl::read_xlsx(
                    fp,
                    sheet = "DAT"
                  )
                }
              )

            return(dat_)
          }
      )
  )


#' DataMap - Wildlife Computers tag metadata - base class
#' @export
DataMap_WildlifeComputers_TagMetaData =
  setRefClass(
    "DataMap_WildlifeComputers_TagMetaData",
    contains = "DataMap_TagMetaData_Base",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(...)

            make <<- "Wildlife Computers"
          }
      )
  )

#' DataMap - Wildlife Computers MiniPAT tag metadata
#' @export
DataMap_WildlifeComputers_MiniPAT_TagMetaData =
  setRefClass(
    "DataMap_WildlifeComputers_MiniPAT_TagMetaData",
    contains = "DataMap_WildlifeComputers_TagMetaData",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(...)
            model <<- "MiniPAT"
          },

        get_tag_id =
          function(d) {
            # Find the unique ID string in all present files
            id =
              # Strings which do not match the given pattern at all return an NA value
              # Filter those values out here
              Filter(
                Negate(is.na),
                list.files(d) %>%
                  stringr::str_extract(
                    pattern=
                      stringr::regex("(\\d*)-.*\\.csv", ignore_case = T),
                    group=1
                  ) %>%
                  unique()
              )

            if(length(id) > 1) {
              .self$throw_error("Tag ID identification: too many IDs present in directory")
            }

            return(id)
          }
      )
  )


#' DataMap - Wildlife Computers MiniPAT instant sensor data
#' @export
DataMap_WildlifeComputer_MiniPAT_InstantSensorData =
  setRefClass(
    "DataMap_WildlifeComputer_MiniPAT_InstantSensorData",
    # DataMap is identical to the Star Oddi DST tag DataMap
    contains = "DataMap_InstantSensorData_Base",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(input_data_field_map = WILDLIFE_COMPUTERS_MINIPAT_INSTANT_DATA_FIELDS, ...)
          },

        extract =
          function(d) {
            # Find the Series.csv file
            fn = list.files(d, pattern = stringr::regex("(\\d*)-Series\\.csv", ignore_case = T))[[1]]

            # Read in the data
            dat =
              read.csv(file.path(d, fn))

            return(dat)
          }
      )
  )


#' DataMap - Wildlife Computers MiniPAT summary sensor
#' @export
DataMap_WildlifeComputer_MiniPAT_SummarySensorData =
  setRefClass(
    "DataMap_WildlifeComputer_MiniPAT_SummarySensorData",
    # DataMap is identical to the Star Oddi DST tag DataMap
    contains = "DataMap_SummarySensorData_Base",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(input_data_field_map = WILDLIFE_COMPUTERS_MINIPAT_SUMMARY_DATA_FIELDS, ...)
          },

        extract =
          function(d) {
            # Read in the raw data
            dat =
              read.csv(
                list.files(
                  d,
                  pattern=stringr::regex("\\d*-SeriesRange\\.csv", ignore_case=T),
                  full.names = T
                )
              )

            return(dat)
          }
      )
  )

#' DataMap - Wildlife Computers Benthic sPAT tag metadata
#' @export
DataMap_WildlifeComputers_BenthicSPAT_TagMetaData =
  setRefClass(
    "DataMap_WildlifeComputers_BenthicSPAT_TagMetaData",
    contains = "DataMap_WildlifeComputers_TagMetaData",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(...)
            model <<- "Benthic sPAT"
          },

        get_tag_id =
          function(d) {
            # Find the unique ID string in all present files
            id =
              # Strings which do not match the given pattern at all return an NA value
              # Filter those values out here
              Filter(
                Negate(is.na),
                list.files(d) %>%
                  stringr::str_extract(
                    pattern=
                      stringr::regex("(\\d*)-.*\\.csv", ignore_case = T),
                    group=1
                  ) %>%
                  unique()
              )

            if(length(id) > 1) {
              .self$throw_error("Tag ID identification: too many IDs present in directory")
            }

            return(id)
          }
      )
  )


#' DataMap - Wildlife Computers Benthic sPAT instant sensor data
#' @export
DataMap_WildlifeComputer_BenthicSPAT_InstantSensorData =
  setRefClass(
    "DataMap_WildlifeComputer_BenthicSPAT_InstantSensorData",
    # DataMap is identical to the Star Oddi DST tag DataMap
    contains = "DataMap_InstantSensorData_Base",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(input_data_field_map = WILDLIFE_COMPUTERS_BENTHIC_SPAT_INSTANT_DATA_FIELDS, ...)
          },

        # Extract tag data from passed directory
        extract =
          function(d) {
            # Read in the raw data
            dat =
              read.csv(
                list.files(
                  d,
                  pattern=stringr::regex("\\d*-Locations\\.csv", ignore_case=T),
                  full.names = T
                ),
                # Some of the fields in this file have spaces in their names
                # without this flag, dplyr would convert those spaces to '.'s
                check.names = F
              )
            return(dat)
          }
      )
  )


#' DataMap - Wildlife Computers Benthic sPAT summary sensor data
#' @export
DataMap_WildlifeComputer_BenthicSPAT_SummarySensorData =
  setRefClass(
    "DataMap_WildlifeComputer_BenthicSPAT_SummarySensorData",
    # DataMap is identical to the Star Oddi DST tag DataMap
    contains = "DataMap_SummarySensorData_Base",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(input_data_field_map = WILDLIFE_COMPUTERS_BENTHIC_SPAT_SUMMARY_DATA_FIELDS, ...)
          },

        # Extract tag data from passed directory
        extract =
          function(d) {
            # Read in the raw data
            dat =
              read.csv(
                list.files(
                  d,
                  pattern=stringr::regex("\\d*-Orientation\\.csv", ignore_case=T),
                  full.names = T
                )
              )

            return(dat)
          }
      )
  )


#' DataMap - Desert Star tag metadata - base class
#' @export
DataMap_DesertStar_TagMetaData =
  setRefClass(
    "DataMap_DesertStar_TagMetaData",
    contains = "DataMap_TagMetaData_Base",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(...)
            make <<- "Desert Star"
          }
      )
  )

#' DataMap - Desert Star SeaTag MOD data - base class
#' @export
DataMap_DesertStar_SeaTagMOD =
  setRefClass(
    "DataMap_DesertStar_SeaTagMOD",
    methods =
      list(
        # In a list of strings, find the index(es) of the string(s) that match
        # the given pattern
        find_pattern_in_list =
          function(lines_, pattern_) {
            which(
              !is.na(
                stringr::str_match(
                  lines_,
                  pattern=pattern_
                )
              )
            )
          },

        # Extract the subset of strings in a list of strings based on a pattern
        # which marks the start of the subset and (optionally) a pattern which
        # marks the end of the subset.
        subset_list_by_pattern =
          function(
            lines_,
            start_pattern,
            end_pattern=NULL,
            include_start = 0,
            include_end = 0
          ) {
            lines_[
              seq(
                .self$find_pattern_in_list(lines_, start_pattern) + (1-include_start),
                ifelse(
                  is.null(end_pattern),
                  length(lines_),
                  .self$find_pattern_in_list(lines_, end_pattern) -(1-include_end)
                )
              )
            ]
          },

        # Parse the DesertStar file and extract the packet header definitions
        extract_packet_headers =
          function(
            fp,
            start_pattern = "Packet definitions",
            end_pattern = "Beginning of log"
          ) {
            # Get the raw lines of the file which define the packet structure
            packet_defs_raw =
              .self$subset_list_by_pattern(
                readLines(fp),
                start_pattern, # "Packet definitions",
                end_pattern #"Beginning of log"
              )

            # Construct list of packet field name headers
            packet_defs = list()
            for (e in packet_defs_raw) {
              e_ =
                strsplit(
                  e,
                  split = ','
                ) %>%
                unlist()

              # Extract packet name
              name =
                e_[[1]]
              # Extract packet field names
              values =
                Filter(
                  function(i) {i != ""},
                  e_[seq(2, length(e_))]
                )

              packet_defs[name] = list(values)
            }

            return(packet_defs)
          },

        # Parse a DesertStar, and extract the packet records within.
        # Data is returned as a collection of dataframe, each of which contains all of
        # the records of a single packet type found in the data file. Each dataframe is
        # also structured according to the 'Packet Definition' records found within the
        # data file
        extract_packet_dataframes =
          function(fp) {
            # Extract the raw packet data from the file
            packet_defs = .self$extract_packet_headers(fp)

            df_raw =
              .self$subset_list_by_pattern(
                readLines(fp),
                start_pattern = "Beginning of log"
              ) %>%
              data.frame('raw' = .)

            # Organize the raw data into a dataframe, containing the name of the
            # packet, and the raw data string
            df_packet =
              df_raw %>%
              dplyr::rowwise() %>%
              dplyr::mutate(
                packet = unlist(strsplit(raw, ','))[[1]]
              ) %>%
              dplyr::ungroup() %>%
              dplyr::filter(
                stringr::str_detect(
                  packet,
                  "SDPT_"
                )
              ) %>%
              dplyr::select(packet, raw)

            # Initialize an empty list which we will use to collect our results
            df_packet_list = list()

            suppressWarnings(
              {
                df_packet %>%
                  dplyr::group_by(packet) %>%
                  dplyr::group_split(.keep = T) %>%
                  lapply(
                    function(df) {
                      # Get the packet type
                      name = df$packet[[1]]
                      # Build the dataframe
                      value =
                        df$raw %>%
                        # Split each raw line into separate fields
                        lapply(
                          function(l) {
                            return(strsplit(l, split=',')[[1]])
                          }
                        ) %>%
                        # Bind the split values into a matrix
                        do.call(rbind, .) %>%
                        # Convert to dataframe
                        as.data.frame() %>%
                        # Set column names based on packet definition
                        magrittr::set_colnames(c("Packet Type", packet_defs[[df$packet[[1]]]])) %>%
                        # Drop empty columns
                        dplyr::select(., names(.)[!is.na(names(.))])

                      df_packet_list[[name]] <<- value
                    }
                  )
              }
            )

            return(df_packet_list)
          },

        # Extract all packets of a given type from a directory.
        # Returned as a single data.frame
        extract_packet_type_from_dir =
          function(d, packet_name) {
            fs =
              list.files(
                d,
                full.names = T,
                pattern = ".*\\.csv$",
                ignore.case = T
              )

            dat =
              fs %>%
              lapply(
                function(fp) {
                  pkts =
                    extract_packet_dataframes(fp)

                  return(pkts[[packet_name]])
                }
              ) %>%
              do.call(rbind, .)

            return(dat)
          }
      )
  )

#' DataMap - Desert Star SeaTag MOD tag metadata
#' @export
DataMap_DesertStar_SeaTagMOD_TagMetaData =
  setRefClass(
    "DataMap_DesertStar_SeaTagMOD_TagMetaData",
    contains =
      c(
        "DataMap_DesertStar_SeaTagMOD",
        "DataMap_DesertStar_TagMetaData"
      ),
    methods =
      list(
        initialize =
          function(...) {
            callSuper(...)
            model <<- "SeaTag MOD"
          },

        # Identify Tag ID from available metadata
        get_tag_id =
          function(d) {
            # We'll have to look through a couple of packets
            packet.tag_id.map =
              list(
                "SDPT_MODSN2" = "Tag SN"
                # "SDPT_MODDAILY" = "tag serial number",
                # "SDPT_MODENG" = "tag serial number"
              )

            ids =
              packet.tag_id.map %>%
              names %>%
              lapply(
                function(p) {
                  df = extract_packet_type_from_dir(d, p)

                  return(df[[packet.tag_id.map[[p]]]])
                }
              ) %>%
              unlist() %>%
              unique() %>%
              Filter(
                function(id) {!id == ""},
                .
              )

            return(ids)
          }
      )
  )

#' DataMap - Desert Star SeaTag MOD instant sensor data
#' @export
DataMap_DesertStar_SeaTagMOD_InstantSensorData =
  setRefClass(
    "DataMap_DesertStar_SeaTagMOD_InstantSensorData",
    contains =
      c(
        "DataMap_InstantSensorData_Base",
        "DataMap_DesertStar_SeaTagMOD"
      ),
    methods =
      list(
        initialize =
          function(...) {
            callSuper(input_data_field_map = DESERTSTAR_SEATAG_MOD_INSTANT_DATA_FIELDS, ...)
          },

        extract =
          function(d) {
            dat =
              .self$extract_packet_type_from_dir(
                d = d,
                packet_name = "SDPT_MODSN2"
              )

            return(dat)
          }
      )
  )









