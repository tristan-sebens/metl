Decoder_Lotek_1000.1100.1250 =
  Decoder(
    label = "Lotek 1000/1100/1250",
    identifier =
      Identifier_Lotek_1000.1100.1250,
    data_maps =
      list(
        "meta" = DataMap_Lotek_1000.1100.1250_TagMetaData,
        "instant" = DataMap_Lotek_1000.1100.1250_InstantSensorData
      )
  )

Decoder_Lotek_1300 =
  Decoder(
    label = "Lotek 1300",
    identifier = Identifier_Lotek_1300,
    data_maps = list(
      "meta" = DataMap_Lotek_1300_TagMetaData,
      "instant" = DataMap_Lotek_1300_InstantSensorData
    )
  )

Decoder_Lotek_1400.1800 =
  Decoder(
    label = "Lotek 1400/1800",
    identifier = Identifier_Lotek_1400.1800,
    data_maps = list(
      "meta" = DataMap_Lotek_1400.1800_TagMetaData,
      "instant" = DataMap_Lotek_1400.1800_InstantSensorData
    )
  )

Decoder_MicrowaveTelemetry_XTag_Transmitted =
  Decoder(
    label = "Microwave Telemetry XTag",
    identifier = Identifier_MicrowaveTelemetry_XTag_Transmitted,
    data_maps = list(
      "meta" = DataMap_MicrowaveTelemetry_XTag_Transmitted_TagMetaData,
      "instant" = DataMap_MicrowaveTelemetry_XTag_Transmitted_InstantSensorData,
      "summary" = DataMap_MicrowaveTelemetry_XTag_Transmitted_SummarySensorData
    )
  )

Decoder_MicrowaveTelemetry_XTag_Recovered =
  Decoder(
    label = "Microwave Telemetry XTag",
    identifier = Identifier_MicrowaveTelemetry_XTag_Recovered,
    data_maps = list(
      "meta" = DataMap_MicrowaveTelemetry_XTag_Recovered_TagMetaData,
      "instant" = DataMap_MicrowaveTelemetry_XTag_Recovered_InstantSensorData,
      "summary" = DataMap_MicrowaveTelemetry_XTag_Recovered_SummarySensorData
    )
  )

Decoder_StarOddi_DST =
  Decoder(
    label = "StarOddi DST",
    identifier = Identifier_StarOddi_DST,
    data_maps = list(
      "meta" = DataMap_StarOddi_DST_TagMetaData,
      "instant" = DataMap_StarOddi_DST_InstantSensorData
    )
  )

Decoder_StarOddi_DSTmagnetic =
  Decoder(
    label = "StarOddi DST Magnetic",
    identifier = Identifier_StarOddi_DSTmagnetic,
    data_maps = list(
      "meta" = DataMap_StarOddi_DSTmagnetic_TagMetaData,
      "instant" = DataMap_StarOddi_DSTmagnetic_InstantSensorData
    )
  )

Decoder_WildlifeComputers_MiniPAT =
  Decoder(
    label = "Wildlife Computers MiniPAT",
    identifier = Identifier_WildlifeComputers_MiniPAT,
    data_maps = list(
      "meta" = DataMap_WildlifeComputers_MiniPAT_TagMetaData,
      "instant" = DataMap_WildlifeComputers_MiniPAT_InstantSensorData,
      "summary" = DataMap_WildlifeComputers_MiniPAT_SummarySensorData
    )
  )

Decoder_WildlifeComputers_BenthicSPAT =
  Decoder(
    label = "Wildlife Computers Benthic SPAT",
    identifier = Identifier_WildlifeComputers_BenthicSPAT,
    data_maps = list(
      "meta" = DataMap_WildlifeComputers_BenthicSPAT_TagMetaData,
      "instant" = DataMap_WildlifeComputers_BenthicSPAT_InstantSensorData,
      "summary" = DataMap_WildlifeComputers_BenthicSPAT_SummarySensorData
    )
  )

Decoder_DesertStart_SeaTagMOD_DIRECTORY =
  Decoder(
    label = "DesertStar SeaTagMod Directory",
    identifier = Identifier_DesertStar_SeaTagMOD_DIRECTORY,
    data_maps =
      list(
        "instant" = DataMap_DesertStar_SeaTagMOD_InstantSensorData_Directory
      ),
    # We don't want the directory processor to perform any kind of transformation, so we set the output FieldMap to be equivalent to the input FieldMap, ensuring that all fields are kept and no transformation/renaming is done.
    output_fieldmaps =
      list(
        "instant" = DataMap_DesertStar_SeaTagMOD_InstantSensorData_Directory$input_data_field_map
      )
  )

Decoder_DesertStar_SeaTagMOD_SINGLETAG =
  Decoder(
    label = "DesertStar SeaTagMOD",
    identifier = Identifier_DesertStar_SeaTagMOD_SINGLETAG,
    data_maps = list(
      "meta" = DataMap_DesertStar_SeaTagMOD_TagMetaData,
      "instant" = DataMap_DesertStar_SeaTagMOD_InstantSensorData
    )
  )

# The DesertStar decoder is a bit of a unique case, because it's actually a two step process: first we parse a given directory for all of the desired data, and separate the data into individual temporary directories where each directory contains the data of a single tag. Then we decode the data in each of these directories. This is why we have two separate Decoder objects for the DesertStar decoder. To tie the behavior of these two objects together, we have a THIRD decoder object which orchestrates their function. This is the object which is exported and which the user will interact with.
Decoder_DesertStar_SeaTagMOD =
  setRefClass(
    "Decoder_DesertStar_SeaTagMOD",
    contains = "Decoder",
    methods =
      list(
        decode =
          function(d, meta) {
            # Define a temporary directory to store the output
            tmp_d = file.path(tempdir(check = T), 'data')

            # Create the data subdir in the new temp directory
            dir.create(tmp_d)

            # Extract all of the data from the directory
            dat_dir =
              Decoder_DesertStart_SeaTagMOD_DIRECTORY$decode_to_dataframes(d, meta = data.frame())

            for (data_type in names(Decoder_DesertStart_SeaTagMOD_DIRECTORY$data_maps)) {
              # Identify the name of the tag ID field
              tag_id_field =
                Decoder_DesertStart_SeaTagMOD_DIRECTORY$data_maps[[data_type]]$
                input_data_field_map$
                field_list$
                TAG_ID_FIELD$
                name

              # Filter out any rows where the tag ID field is missing
              # data_type_dat[data_type_dat[[tag_id_field]] != "",] %>%
              dat_dir[[data_type]] %>%
                dplyr::group_by(!!dplyr::sym(tag_id_field)) %>%
                dplyr::group_split() %>%
                lapply(
                  function(df) {
                    id = df[[tag_id_field]][1]

                    # Skip if the tag ID is missing
                    if (id == "") {
                      return(NULL)
                    }
                    # Make a new directory for each tag
                    dir.create(file.path(tmp_d, id), showWarnings = F)
                    write.csv(
                      df,
                      file = file.path(tmp_d, id, paste0(id, '_', data_type, '.csv')),
                      row.names = FALSE
                    )
                  }
                )
            }

            data_dirs =
              list.dirs(tmp_d, full.names = F, recursive = F)

            tag_data_lists = list()

            res =
              lapply(
                data_dirs,
                function(d_id) {

                  # Isloate the relevant metadata from the 'meta' frame
                  type =
                    meta_lookup %>%
                    dplyr::filter(tag_num == d_id) %>%
                    dplyr::pull(tag_type)

                  dd = file.path(tmp_d, d_id)


                  # Because of the way the data is arranged, the metadata dat is actually getting the tag_id number from the sensor data, instead of the other way around. In this case, it's not actually a problem, but it is something to be aware of. It does however throw an annoying warning, so I'm going to suppress it here.
                  dat =
                    Decoder_DesertStar_SeaTagMOD_SINGLETAG$decode_to_dataframes(
                      dd,
                      meta =
                        data.frame(
                          tag_num = d_id,
                          tag_type = type
                        )
                    )

                  return(dat)
                }
              )

            # Combine all of the data extracted from each individual directory, now appropriately combined within each tag, into a single data.frame for each type of data

            completed_data = list()

            for (r in res) {
              for (data_type in names(r)) {
                if(!data_type %in% names(completed_data)) {
                  completed_data[[data_type]] = r[[data_type]]
                } else {
                  completed_data[[data_type]] = rbind(completed_data[[data_type]], r[[data_type]])
                }
              }
            }

            return(completed_data)
          }
      )
  )(
    label = "Decoder_DesertStar_SeaTagMOD",
    identifier = Identifier_DesertStar_SeaTagMOD_DIRECTORY,
    data_maps =
      list(
        "meta" = DataMap_DesertStar_SeaTagMOD_TagMetaData,
        "instant" = DataMap_DesertStar_SeaTagMOD_InstantSensorData_Directory
      )
  )


# Aggregate all of the above configured Decoder objects into a named list, then export that list
#' @export decoders
decoders = list(
  "Decoder_Lotek_1000.1100.1250" = Decoder_Lotek_1000.1100.1250,
  "Decoder_Lotek_1300" = Decoder_Lotek_1300,
  "Decoder_Lotek_1400.1800" = Decoder_Lotek_1400.1800,
  "Decoder_MicrowaveTelemetry_XTag_Transmitted" = Decoder_MicrowaveTelemetry_XTag_Transmitted,
  "Decoder_MicrowaveTelemetry_XTag_Recovered" = Decoder_MicrowaveTelemetry_XTag_Recovered,
  "Decoder_StarOddi_DST" = Decoder_StarOddi_DST,
  "Decoder_StarOddi_DSTmagnetic" = Decoder_StarOddi_DSTmagnetic,
  "Decoder_WildlifeComputers_MiniPAT" = Decoder_WildlifeComputers_MiniPAT,
  "Decoder_WildlifeComputers_BenthicSPAT" = Decoder_WildlifeComputers_BenthicSPAT
)
