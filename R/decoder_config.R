# source(here::here('R', 'datamap_config.R'))
# source(here::here('R', 'identifier_config.R'))

Decoder_Lotek_1000.1100.1250 =
  Decoder(
    identifier =
      Identifier_Lotek_1000.1100.1250,
    metadata_map =
      DataMap_Lotek_1000.1100.1250_TagMetaData,
    instant_datamap =
      DataMap_Lotek_1000.1100.1250_InstantSensorData
  )

Decoder_Lotek_1300 =
  Decoder(
    identifier =
      Identifier_Lotek_1300,
    metadata_map =
      DataMap_Lotek_1300_TagMetaData,
    instant_datamap =
        DataMap_Lotek_1300_InstantSensorData
  )

Decoder_Lotek_1400.1800 =
  Decoder(
    identifier =
      Identifier_Lotek_1400.1800,
    metadata_map =
      DataMap_Lotek_1400.1800_TagMetaData,
    instant_datamap =
      DataMap_Lotek_1400.1800_InstantSensorData
  )

Decoder_MicrowaveTelemetry_XTag =
  Decoder(
    identifier =
      Identifier_MicrowaveTelemetry_XTag,
    metadata_map =
      DataMap_MicrowaveTelemetry_XTag_TagMetaData,
    instant_datamap =
        DataMap_MicrowaveTelemetry_XTag_InstantSensorData,
    summary_datamap =
        DataMap_MicrowaveTelemetry_XTag_SummarySensorData
  )

Decoder_StarOddi_DST =
  Decoder(
    identifier =
      Identifier_StarOddi_DST,
    metadata_map =
      DataMap_StarOddi_DST_TagMetaData,
    instant_datamap =
      DataMap_StarOddi_DST_InstantSensorData
  )

Decoder_StarOddi_DSTmagnetic =
  Decoder(
    identifier =
      Identifier_StarOddi_DSTmagnetic,
    # Define data maps
    metadata_map =
      DataMap_StarOddi_DSTmagnetic_TagMetaData,
    instant_datamap =
        DataMap_StarOddi_DSTmagnetic_InstantSensorData
  )

Decoder_WildlifeComputers_MiniPAT =
  Decoder(
    identifier =
      Identifier_WildlifeComputers_MiniPAT,
    metadata_map =
      DataMap_WildlifeComputers_MiniPAT_TagMetaData,
    instant_datamap =
        DataMap_WildlifeComputers_MiniPAT_InstantSensorData,
    summary_datamap =
        DataMap_WildlifeComputers_MiniPAT_SummarySensorData
  )

Decoder_WildlifeComputers_BenthicSPAT =
  Decoder(
    identifier =
      Identifier_WildlifeComputers_BenthicSPAT,
    metadata_map =
      DataMap_WildlifeComputers_BenthicSPAT_TagMetaData,
    instant_datamap =
        DataMap_WildlifeComputers_BenthicSPAT_InstantSensorData,
    summary_datamap =
        DataMap_WildlifeComputers_BenthicSPAT_SummarySensorData
  )

Decoder_DesertStar_SeaTagMOD =
  Decoder(
    identifier =
        Identifier_DesertStar_SeaTagMOD,
    metadata_map =
      DataMap_DesertStar_SeaTagMOD_TagMetaData,
    instant_datamap =
        DataMap_DesertStar_SeaTagMOD_InstantSensorData
  )























