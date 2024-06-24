# source(here::here('R', 'field_config.R'))

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
      throw_error(
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

#' DataMap - Lotek 1000/1100/1250 tag metadata
#' @export DataMap_Lotek_1000.1100.1250_TagMetaData
 DataMap_Lotek_1000.1100.1250_TagMetaData =
  DataMap_TagMetaData(
    make = "Lotek",
    model = "1000/1100/1250"
  )

#' DataMap for the Lotek 1000/1100/1250 tags
#' @export DataMap_Lotek_1000.1100.1250_InstantSensorData
 DataMap_Lotek_1000.1100.1250_InstantSensorData =
  DataMap(
    input_data_field_map = LOTEK_1000.1100.1250_INSTANT_DATA_FIELDS,
    extract_fn =
      function(d) {
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
                find_line_in_file(
                  fp,
                  pattern="CSV DATA")
            ) %>%
              # Drop any empty lines.
              dplyr::select_if(function(x) { sum(!is.na(x)) > 0 })
          }

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
                  list.files(
                    d,
                    pattern = pattern,
                    ignore.case = T,
                    full.names = T
                  )[[1]] %>%
                  read_csv_lotek_1000.1100.1250() %>%
                  # Parse the timestamps into POSIXcts
                  # Typically this should be done in the 'trans_fn' of the
                  # timestamp field object. However, for reasons surpassing
                  # understanding, Lotek encodes it's timestamps in different
                  # formats for temperature and pressure data, so if we don't
                  # do this here the two won't join properly
                  dplyr::mutate(
                    Time =
                      lubridate::parse_date_time(
                        x =
                          Time,
                        orders =
                          c(
                            "%m/%d/%Y %H:%M",
                            "%Y/%m/%d %H:%M:%S"
                          )
                      )
                  )

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


#' DataMap - Tag metadata from Lotek 1300 tags
#' @export DataMap_Lotek_1300_TagMetaData
DataMap_Lotek_1300_TagMetaData =
  DataMap_TagMetaData(
    make = "Lotek",
    model = "1300"
  )


#' DataMap - Instant sensor data from Lotek 1300 tags
#' @export DataMap_Lotek_1300_InstantSensorData
DataMap_Lotek_1300_InstantSensorData =
  DataMap(
    input_data_field_map = LOTEK_1300_INSTANT_DATA_FIELDS,
    extract_fn =
      function(d) {
        fps = list.files(d, pattern = "Regular Log", ignore.case = T)

        # Check that the data files in the directory match expectations
        if(lengths(fps) > 1) {
          throw_error(
            paste0("Too many 'Regular Log' files in ", d)
          )
        }
        if(lengths(fps) == 0) {
          throw_error(
            paste0("No 'Regular Log' files in ", d)
          )
        }

        # Read data from the data file
        dat = read.csv(file.path(d, fps[[1]]))

        return(dat)
      }
  )


#' DataMap - Tag metadata from Lotek 1400/1800 tags
#' @export DataMap_Lotek_1400.1800_TagMetaData
DataMap_Lotek_1400.1800_TagMetaData =
  DataMap_TagMetaData(
    make = "Lotek",
    model = "1400/1800"
  )


#' Datamap - Lotek 1400/1800 instant sensor data
#' @export DataMap_Lotek_1400.1800_InstantSensorData
DataMap_Lotek_1400.1800_InstantSensorData =
  DataMap(
    input_data_field_map = LOTEK_1400.1800_INSTANT_DATA_FIELDS,
    extract_fn =
      function(d) {
        read_csv_lotek_1400.1800 =
          function(fp) {
            "Read csv data from Lotek 1400/1800 formatted csv file"
            read.csv(
              fp,
              skip =
                find_line_in_file(
                  fp,
                  pattern = "Rec #"
                ) - 1
            )
          }
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
          throw_error(
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

read_xl_file =
  function(path, ...) {
    # Determine which type of xl file we're attempting to read
    format = stringr::str_extract(path, "^.*(\\..*)$", group = 1)

    switch(
      format,
      ".xls" = {readxl::read_xls(path = path, ...)},
      ".xlsm" = {readxl::read_xlsx(path = path, ...)}
    )
  }

# Calculate the cell range string the desired data is in
calc_range =
  function(fp, sheet, col_range) {
    row_max =
      # Read in the full, unfiltered sheet to count the number of rows of data in the file
      nrow(
        read_xl_file(
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
  }

# Helper function to extract data from excel sheet
read_data_sheet =
  function(fp, sheet, col_range, type = "xls") {
        # While the logic of reading the underlying sheet doesn't change,
        # the initial function call does change depending on the filetype
        return(
          suppressMessages(
            {
              # Read the data from the pressure data sheet in the xls file
              read_xl_file(
                path = fp,
                sheet = sheet,
                # Calculate the range of data to include
                range =
                  calc_range(
                    fp, sheet, col_range
                  ),
                col_names = T
              )
            }
          )
        )
  }



#' DataMap - Microwave Telemetry X-Tag metadata (transmitted via satellite)
#' @export DataMap_MicrowaveTelemetry_XTag_Transmitted_TagMetaData
DataMap_MicrowaveTelemetry_XTag_Transmitted_TagMetaData =
  DataMap_TagMetaData(
    make = "Microwave Telemetry",
    model = "X-Tag"
  )

#' Datamap - Microwave Telemetry X-tag instant sensor data (transmitted via Satellite)
#' @export DataMap_MicrowaveTelemetry_XTag_Transmitted_InstantSensorData
 DataMap_MicrowaveTelemetry_XTag_Transmitted_InstantSensorData =
  DataMap(
    input_data_field_map = MICROWAVE_TELEMETRY_XTAG_TRANSMITTED_INSTANT_DATA_FIELDS,
    extract_fn =
      function(d) {
        # All of the temperature and pressure data is extracted from the .xls file
        # Find the xls file in the directory
        mt_xt_xl_fp = list.files(d, pattern = "^\\d*\\.xls", full.names = T)

        # Get pressure/depth data
        press_dat =
          read_data_sheet(
            fp = mt_xt_xl_fp,
            sheet = "Press Data",
            col_range = c("A", "G")
          )

        # Get temperature data
        temp_dat =
          read_data_sheet(
            fp = mt_xt_xl_fp,
            sheet = "Temp Data",
            col_range = c("A", "F")
          )

        # Get location data
        argos_loc_dat =
          read_data_sheet(
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
              by = "Date/Time",
              # Keep all records, even if they do not join
              all.x = T,
              all.y = T
            ),
            argos_loc_dat,
            by = "Date/Time",
            # Keep all records, even if they do not join
            all.x = T,
            all.y = T
          )

        return(dat)
      }
  )

#' Datamap - Microwave Telemetry X-tag summary sensor data (transmitted via satellite)
#' @export DataMap_MicrowaveTelemetry_XTag_Transmitted_SummarySensorData
 DataMap_MicrowaveTelemetry_XTag_Transmitted_SummarySensorData =
  DataMap(
    input_data_field_map = MICROWAVE_TELEMETRY_XTAG_TRANSMITTED_SUMMARY_DATA_FIELDS,
    extract_fn =
      function(d) {
        # All of the temperature and pressure data is extracted from the .xls file
        # Find the xls file in the directory
        mt_xt_xl_fp = list.files(d, pattern = "^\\d*\\.xls", full.names = T)

        # Get location data
        light_geoloc_dat =
          read_data_sheet(
            fp = mt_xt_xl_fp,
            sheet = "Lat&Long",
            col_range = c("A", "C")
          ) %>%
          # Drop any rows which don't actually have location data
          tidyr::drop_na()

        return(light_geoloc_dat)
      }
  )


#' DataMap - Microwave Telemetry X-Tag metadata (physically recovered)
#' @export DataMap_MicrowaveTelemetry_XTag_Recovered_TagMetaData
DataMap_MicrowaveTelemetry_XTag_Recovered_TagMetaData =
  DataMap_TagMetaData(
    make = "Microwave Telemetry",
    model = "X-Tag"
  )

#' Datamap - Microwave Telemetry X-tag instant sensor data (physically recovered)
#' @export DataMap_MicrowaveTelemetry_XTag_Recovered_InstantSensorData
DataMap_MicrowaveTelemetry_XTag_Recovered_InstantSensorData =
  DataMap(
    input_data_field_map = MICROWAVE_TELEMETRY_XTAG_RECOVERED_INSTANT_DATA_FIELDS,
    extract_fn =
      function(d) {
        # Find the xlsm file in the directory
        mt_xt_xl_fp =
          list.files(
            d,
            pattern = stringr::regex("^\\d*_Recovered.xlsm"),
            full.names = T
          )

        # Retrieve all archival data
        archival_data =
          lapply(
            # Collect a list of all of the archival data sheet names
            Filter(
              function(name) {stringr::str_detect(name, "Archival Data")},
              readxl::excel_sheets(mt_xt_xl_fp)
            ),
            # Iterate over each archival data sheet and extract the data within
            function(sheet) {
              return(
                read_data_sheet(
                  fp = mt_xt_xl_fp,
                  sheet = sheet,
                  col_range = c("A", "F")
                )
              )
            }
          ) %>%
          # Combine into a single dataset
          dplyr::bind_rows()

        # Collect the ARGOS data from the directory
        argos_data =
          read_data_sheet(
            mt_xt_xl_fp,
            sheet = "Argos Data",
            col_range = c("A", "D")
          )

        # Merge the two datasets into a single data.frame
        dat =
          merge(
            archival_data,
            argos_data,
            all = T
          )

        return(dat)
      }
  )


#' Datamap - Microwave Telemetry X-tag summary sensor data (physically recovered)
#' @export DataMap_MicrowaveTelemetry_XTag_Recovered_SummarySensorData
DataMap_MicrowaveTelemetry_XTag_Recovered_SummarySensorData =
  DataMap(
    input_data_field_map = MICROWAVE_TELEMETRY_XTAG_RECOVERED_SUMMARY_DATA_FIELDS,
    extract_fn =
      function(d) {
        # All of the temperature and pressure data is extracted from the .xls file
        # Find the xls file in the directory
        mt_xt_xl_fp =
          list.files(
            d,
            pattern = stringr::regex("^\\d*_Recovered.xlsm"),
            full.names = T
          )

        # Get location data
        light_geoloc_dat =
          read_data_sheet(
            fp = mt_xt_xl_fp,
            sheet = "Lat&Long",
            col_range = c("A", "C")
          ) %>%
          # Drop any rows which don't actually have location data
          tidyr::drop_na()

        return(light_geoloc_dat)
      }
  )

#' DataMap - StarOddi tag metadata - base class
#' @export DataMap_StarOddi_DST_TagMetaData
 DataMap_StarOddi_DST_TagMetaData =
  DataMap_TagMetaData(
    make = "Star Oddi",
    model = "DST (centi/milli)-(TD/F)"
  )

#' DataMap - StarOddi DST instant sensor data
#' @export DataMap_StarOddi_DST_InstantSensorData
 DataMap_StarOddi_DST_InstantSensorData =
  DataMap(
    input_data_field_map = STAR_ODDI_DST_FIELDS,
    extract_fn =
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


#' DataMap - StarOddi DST magnetic tag metadata
#' @export DataMap_StarOddi_DSTmagnetic_TagMetaData
 DataMap_StarOddi_DSTmagnetic_TagMetaData =
  DataMap_TagMetaData(
    make = "Star Oddi",
    model = "DST magnetic"
  )

#' DataMap - StarOddi DST magnetic instant sensor data
#' @export DataMap_StarOddi_DSTmagnetic_InstantSensorData
 DataMap_StarOddi_DSTmagnetic_InstantSensorData =
  DataMap(
    input_data_field_map = STAR_ODDI_DST_MAGNETIC_FIELDS,
    extract_fn =
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

#' DataMap - Wildlife Computers tag metadata - base class
#' @export DataMap_WildlifeComputers_MiniPAT_TagMetaData
 DataMap_WildlifeComputers_MiniPAT_TagMetaData =
  DataMap_TagMetaData(
    make = "Wildlife Computers",
    model = "MiniPAT"
  )

#' DataMap - Wildlife Computers MiniPAT instant sensor data
#' @export DataMap_WildlifeComputers_MiniPAT_InstantSensorData
 DataMap_WildlifeComputers_MiniPAT_InstantSensorData =
  DataMap(
    input_data_field_map = WILDLIFE_COMPUTERS_MINIPAT_INSTANT_DATA_FIELDS,
    extract_fn =
      function(d) {
        # Find the Series.csv file
        fn = list.files(d, pattern = stringr::regex("(\\d*)-Series\\.csv", ignore_case = T))[[1]]

        # Read in the data
        dat =
          read.csv(file.path(d, fn))

        return(dat)
      }
  )

#' DataMap - Wildlife Computers MiniPAT summary sensor
#' @export DataMap_WildlifeComputers_MiniPAT_SummarySensorData
 DataMap_WildlifeComputers_MiniPAT_SummarySensorData =
  DataMap(
    input_data_field_map = WILDLIFE_COMPUTERS_MINIPAT_SUMMARY_DATA_FIELDS,
    extract_fn =
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

#' DataMap - Wildlife Computers Benthic sPAT tag metadata
#' @export DataMap_WildlifeComputers_BenthicSPAT_TagMetaData
 DataMap_WildlifeComputers_BenthicSPAT_TagMetaData =
  DataMap_TagMetaData(
    make = "Wildlife Computers",
    model = "Benthic sPAT"
  )


#' DataMap - Wildlife Computers Benthic sPAT instant sensor data
#' @export DataMap_WildlifeComputers_BenthicSPAT_InstantSensorData
 DataMap_WildlifeComputers_BenthicSPAT_InstantSensorData =
  DataMap(
    input_data_field_map = WILDLIFE_COMPUTERS_BENTHIC_SPAT_INSTANT_DATA_FIELDS,
    extract_fn =
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

#' DataMap - Wildlife Computers Benthic sPAT summary sensor data
#' @export DataMap_WildlifeComputers_BenthicSPAT_SummarySensorData
 DataMap_WildlifeComputers_BenthicSPAT_SummarySensorData =
  DataMap(
    input_data_field_map = WILDLIFE_COMPUTERS_BENTHIC_SPAT_SUMMARY_DATA_FIELDS,
    extract_fn =
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
  }

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
        find_pattern_in_list(lines_, start_pattern) + (1-include_start),
        ifelse(
          is.null(end_pattern),
          length(lines_),
          find_pattern_in_list(lines_, end_pattern) -(1-include_end)
        )
      )
    ]
  }

# Parse the DesertStar file and extract the packet header definitions
extract_packet_headers =
  function(
    fp,
    start_pattern = "Packet definitions",
    end_pattern = "Beginning of log"
  ) {
    # Get the raw lines of the file which define the packet structure
    packet_defs_raw =
      subset_list_by_pattern(
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
  }

# Parse a DesertStar, and extract the packet records within.
# Data is returned as a collection of dataframe, each of which contains all of
# the records of a single packet type found in the data file. Each dataframe is
# also structured according to the 'Packet Definition' records found within the
# data file
extract_packet_dataframes =
  function(fp) {
    # Extract the raw packet data from the file
    packet_defs = extract_packet_headers(fp)

    df_raw =
      subset_list_by_pattern(
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
        for (
          df in
          df_packet %>%
          dplyr::group_by(packet) %>%
          dplyr::group_split(.keep = T)
        ) {
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
          df_packet_list[[name]] = value
        }

      }
    )

    return(df_packet_list)
  }

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

#' DataMap - Desert Star SeaTag MOD tag metadata
#' @export DataMap_DesertStar_SeaTagMOD_TagMetaData
 DataMap_DesertStar_SeaTagMOD_TagMetaData =
  DataMap_TagMetaData(
    make = "Desert Star",
    model = "SeaTag MOD"
  )

#' DataMap - Desert Star SeaTag MOD instant sensor data
#' @export DataMap_DesertStar_SeaTagMOD_InstantSensorData
 DataMap_DesertStar_SeaTagMOD_InstantSensorData =
  DataMap(
    input_data_field_map = DESERTSTAR_SEATAG_MOD_INSTANT_DATA_FIELDS,
    extract_fn =
      function(d) {
        dat =
          extract_packet_type_from_dir(
            d = d,
            packet_name = "SDPT_MODSN2"
          )

        return(dat)
      }
  )









