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
                  lotek_1000.1100.1250_read_csv() %>%
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
                 lotek_find_line_in_file(
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
           mt_xtag_read_data_sheet(
             fp = mt_xt_xl_fp,
             sheet = "Press Data",
             col_range = c("A", "G")
           )

         # Get temperature data
         temp_dat =
           mt_xtag_read_data_sheet(
             fp = mt_xt_xl_fp,
             sheet = "Temp Data",
             col_range = c("A", "F")
           )

         # Get location data
         argos_loc_dat =
           mt_xtag_read_data_sheet(
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
           mt_xtag_read_data_sheet(
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
                 mt_xtag_read_data_sheet(
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
           mt_xtag_read_data_sheet(
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
           mt_xtag_read_data_sheet(
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

 #' DataMap - Wildlife Computers MiniPAT histogram data metadata
 #' @export DataMap_WildlifeComputers_MiniPAT_HistogramMetaData
 DataMap_WildlifeComputers_MiniPAT_HistogramMetaData =
   DataMap(
     input_data_field_map =
       WILDLIFE_COMPUTERS_MINIPAT_HISTOGRAM_META_FIELDS,
     extract_fn =
       function(d) {
         # Find the histogram data file
         histos_fp =
           list.files(
             d,
             pattern = "Histos\\.csv",
             ignore.case = T,
             full.names = T
           )

         histos_meta_dat =
           # Read in the data
           read.csv(histos_fp) %>%
           # Filter to just those rows which describe the bin limits for each data type
           dplyr::filter(stringr::str_detect(HistType, "LIMITS")) %>%
           dplyr::select(HistType, starts_with("Bin")) %>%
           # Pivot the data so that each bin is a row
           tidyr::pivot_longer(
             cols = starts_with("Bin"),
             names_to = "bin",
             values_to = "upper_limit"
           ) %>%
           # Clean up the bin names
           dplyr::mutate(
             bin = as.numeric(stringr::str_remove(bin, "Bin")),
             type =
               plyr::mapvalues(
                 HistType,
                 from = c("TATLIMITS", "TADLIMITS"),
                 to = c("temperature", "depth")
               )
           ) %>%
           # Drop unused bins
           tidyr::drop_na() %>%
           # Explicitly add implicit final bins
           dplyr::select(type, bin, upper_limit) %>%
           dplyr::group_by(type) %>%
           dplyr::reframe(
             bin = c(bin, max(bin+1)),
             upper_limit = c(upper_limit, Inf),
           )

         return(histos_meta_dat)
       }
   )

 #' DataMap - Wildlife Computers MiniPAT histogram data
 #' @export DataMap_WildlifeComputers_MiniPAT_HistogramData
 DataMap_WildlifeComputers_MiniPAT_HistogramData =
   DataMap(
     input_data_field_map =
       WILDLIFE_COMPUTERS_MINIPAT_HISTOGRAM_DATA_FIELDS,
     extract_fn =
       function(d) {
         histos_fp =
           list.files(
             d,
             pattern = "Histos\\.csv",
             ignore.case = T,
             full.names = T
           )

         histos_dat =
           read.csv(histos_fp) %>%
           dplyr::filter(HistType %in% c("TAT", "TAD")) %>%
           tidyr::pivot_longer(
             .,
             cols =
               names(.)[which(stringr::str_detect(names(.), "^Bin\\d+$"))],
             names_to = "Bin",
             values_to = "Value"
           ) %>%
           tidyr::drop_na(Value) %>%
           dplyr::mutate(
             Bin =
               as.numeric(
                 stringr::str_remove_all(Bin, "\\D")
               ),
             HistType =
               plyr::mapvalues(
                 HistType,
                 from = c("TAT", "TAD"),
                 to = c("temperature", "depth")
               )
           )

         return(histos_dat)
       }
   )

 #' DataMap - Wildlife Computers MiniPAT PDT (Profile of Depth and Temperature) data
 #' @export DataMap_WildlifeComputers_MiniPAT_PDTData
 DataMap_WildlifeComputers_MiniPAT_PDTData =
   DataMap(
     input_data_field_map =
       WILDLIFE_COMPUTERS_MINIPAT_PDT_DATA_FIELDS,
     extract_fn =
       function(d) {
         pdt_fp =
           list.files(d, pattern = "^.*PDTs\\.csv$", full.names = T)

         # Initial read of  the data
         pdt_dat =
           read.csv(pdt_fp) %>%
           tidyr::pivot_longer(
             .,
             cols =
               names(.)[which(stringr::str_detect(names(.), "(?:Temp|Depth|Discont|X.Ox)\\d"))],
             names_to = c("Type", "Num"),
             names_pattern = "(\\D*(\\d+)\\D*)"
           ) %>%
           dplyr::mutate(Type = stringr::str_remove_all(Type, "\\d")) %>%
           # dplyr::select(Date, Type, Num, value) %>%
           # dplyr::group_by(Date, Num) %>%
           tidyr::pivot_wider(
             .,
             names_from = Type,
             values_from = value,
             id_cols = names(.)[!names(.) %in% c("Type", "value")]
           ) %>%
           # Drop any rows which are missing any of the key values, as without all of them the record cannot be used
           tidyr::drop_na(Depth, DepthError, MinTemp, MaxTemp) %>%
           data.frame()

         return(pdt_dat)
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

 #' DataMap - Desert Star SeaTag MOD directory extractor
 #' @export DataMap_DesertStar_SeaTagMOD_InstantSensorData_Directory
 DataMap_DesertStar_SeaTagMOD_InstantSensorData_Directory =
   DataMap(
     input_data_field_map = DESERTSTAR_SEATAG_MOD_INSTANT_DATA_FIELDS,
     extract_fn =
       function(d) {
         dat =
           ds_extract_packet_type_from_dir(
             d = d,
             packet_name = "SDPT_MODSN2"
           )

         return(dat)
       }
   )

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
        # Find the csv file in the directory (should only be one)
        fp = list.files(d, pattern = ".*\\.csv$", full.names = T)

        # Read in the data
        dat = read.csv(fp, check.names = F)

        return(dat)
      }
  )









