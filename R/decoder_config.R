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

Decoder_DesertStar_SeaTagMOD =
  Decoder(
    label = "DesertStar SeaTagMOD",
    identifier = Identifier_DesertStar_SeaTagMOD,
    data_maps = list(
      "meta" = DataMap_DesertStar_SeaTagMOD_TagMetaData,
      "instant" = DataMap_DesertStar_SeaTagMOD_InstantSensorData
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
  "Decoder_WildlifeComputers_BenthicSPAT" = Decoder_WildlifeComputers_BenthicSPAT,
  "Decoder_DesertStar_SeaTagMOD" = Decoder_DesertStar_SeaTagMOD
)
