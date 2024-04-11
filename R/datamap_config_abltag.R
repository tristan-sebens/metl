# DataMap objects configured to interact with the AFSC ABLTAG Oracle database

#' DataMap - Lotek 1000/1100/1250 tag metadata
#'
#' Specific to the ABLTAG DB
#'
#' @export
DataMap_ABLTAG_Lotek_1000.1100.1250_TagMetaData =
  setRefClass(
    "DataMap_ABLTAG_Lotek_1000.1100.1250_TagMetaData",
    contains = "DataMap_Lotek_1000.1100.1250_TagMetaData",
    methods =
      list(
        initialize =
          function(
            output_data_field_map = ABLTAG_METADATA_TABLE_FIELDS,
            ...
          ) {
            callSuper(
              output_data_field_map = output_data_field_map,
              ...
            )
          }
      )
  )

#' DataMap for the Lotek 1000/1100/1250 tags
#'
#' Specific to the ABLTAG DB
#'
#' @export
DataMap_ABLTAG_Lotek_1000.1100.1250_InstantSensorData =
  setRefClass(
    "DataMap_ABLTAG_Lotek_1000.1100.1250_InstantSensorData",
    contains = "DataMap_Lotek_1000.1100.1250_InstantSensorData",
    methods =
      list(
        initialize =
          function(
            output_data_field_map = ABLTAG_DATA_INSTANT_TABLE_FIELDS,
            ...
          ) {
            callSuper(
              output_data_field_map = output_data_field_map,
              ...
            )
          }
      )
  )

#' DataMap - Tag metadata from Lotek 1300 tags
#'
#' Specific to the ABLTAG DB
#'
#' @export
DataMap_ABLTAG_Lotek_1300_TagMetaData =
  setRefClass(
    "DataMap_ABLTAG_Lotek_1300_TagMetaData",
    contains = "DataMap_Lotek_1300_TagMetaData",
    methods =
      list(
        initialize =
          function(
            output_data_field_map = ABLTAG_METADATA_TABLE_FIELDS,
            ...
          ) {
            callSuper(
              output_data_field_map = output_data_field_map,
              ...
            )
          }
      )
  )

#' DataMap - Instant sensor data from Lotek 1300 tags
#'
#' Specific to the ABLTAG DB
#'
#' @export
DataMap_ABLTAG_Lotek_1300_InstantSensorData =
  setRefClass(
    "DataMap_ABLTAG_Lotek_1300_InstantSensorData",
    contains = "DataMap_Lotek_1300_InstantSensorData",
    methods =
      list(
        initialize =
          function(
            output_data_field_map = ABLTAG_DATA_INSTANT_TABLE_FIELDS,
            ...
          ) {
            callSuper(
              output_data_field_map = output_data_field_map,
              ...
            )
          }
      )
  )

#' DataMap - Tag metadata from Lotek 1400/1800 tags
#'
#' Specific to the ABLTAG DB
#'
#' @export
DataMap_ABLTAG_Lotek_1400.1800_TagMetaData =
  setRefClass(
    "DataMap_ABLTAG_Lotek_1400.1800_TagMetaData",
    contains = "DataMap_Lotek_1400.1800_TagMetaData",
    methods =
      list(
        initialize =
          function(
            output_data_field_map = ABLTAG_METADATA_TABLE_FIELDS,
            ...
          ) {
            callSuper(
              output_data_field_map = output_data_field_map,
              ...
            )
          }
      )
  )

#' Datamap - Lotek 1400/1800 instant sensor data
#'
#' Specific to the ABLTAG DB
#'
#' @export
DataMap_ABLTAG_Lotek_1400.1800_InstantSensorData =
  setRefClass(
    "DataMap_ABLTAG_Lotek_1400.1800_InstantSensorData",
    contains = "DataMap_Lotek_1400.1800_InstantSensorData",
    methods =
      list(
        initialize =
          function(
            output_data_field_map = ABLTAG_DATA_INSTANT_TABLE_FIELDS,
            ...
          ) {
            callSuper(
              output_data_field_map = output_data_field_map,
              ...
            )
          }
      )
  )

#' DataMap - Microwave Telemetry X-Tag metadata
#'
#' Specific to the ABLTAG DB
#'
#' @export
DataMap_ABLTAG_MicrowaveTelemetry_XTag_TagMetaData =
  setRefClass(
    "DataMap_ABLTAG_MicrowaveTelemetry_XTag_TagMetaData",
    contains = "DataMap_MicrowaveTelemetry_XTag_TagMetaData",
    methods =
      list(
        initialize =
          function(
            output_data_field_map = ABLTAG_METADATA_TABLE_FIELDS,
            ...
          ) {
            callSuper(
              output_data_field_map = output_data_field_map,
              ...
            )
          }
      )
  )

#' Datamap - Microwave Telemetry X-tag instant sensor data
#'
#' Specific to ABLTAG DB
#'
#' @export
DataMap_ABLTAG_MicrowaveTelemetry_XTag_InstantSensorData =
  setRefClass(
    "DataMap_ABLTAG_MicrowaveTelemetry_XTag_InstantSensorData",
    contains = "DataMap_MicrowaveTelemetry_XTag_InstantSensorData",
    methods =
      list(
        initialize =
          function(
            output_data_field_map = ABLTAG_DATA_INSTANT_TABLE_FIELDS,
            ...
          ) {
            callSuper(
              output_data_field_map = output_data_field_map,
              ...
            )
          }
      )
  )

#' Datamap - Microwave Telemetry X-tag summary sensor data
#'
#' Specific to the ABLTAG DB
#'
#' @export
DataMap_ABLTAG_MicrowaveTelemetry_XTag_SummarySensorData =
  setRefClass(
    "DataMap_ABLTAG_MicrowaveTelemetry_XTag_SummarySensorData",
    contains = "DataMap_MicrowaveTelemetry_XTag_SummarySensorData",
    methods =
      list(
        initialize =
          function(
            output_data_field_map = ABLTAG_DATA_SUMMARY_TABLE_FIELDS,
            ...
          ) {
            callSuper(
              output_data_field_map = output_data_field_map,
              ...
            )
          }
      )
  )

#' DataMap - StarOddi DST tag metadata
#'
#' Specific to ABLTAG DB
#'
#' @export
DataMap_ABLTAG_StarOddi_DST_TagMetaData =
  setRefClass(
    "DataMap_ABLTAG_StarOddi_DST_TagMetaData",
    contains = "DataMap_StarOddi_DST_TagMetaData",
    methods =
      list(
        initialize =
          function(
            output_data_field_map = ABLTAG_METADATA_TABLE_FIELDS,
            ...
          ) {
            callSuper(
              output_data_field_map = output_data_field_map,
              ...
            )
          }
      )
  )

#' DataMap - StarOddi DST instant sensor data
#'
#' Specific to ABLTAG DB
#'
#' @export
DataMap_ABLTAG_StarOddi_DST_InstantSensorData =
  setRefClass(
    "DataMap_ABLTAG_StarOddi_DST_InstantSensorData",
    contains = "DataMap_StarOddi_DST_InstantSensorData",
    methods =
      list(
        initialize =
          function(
            output_data_field_map = ABLTAG_DATA_INSTANT_TABLE_FIELDS,
            ...
          ) {
            callSuper(
              output_data_field_map = output_data_field_map,
              ...
            )
          }
      )
  )

#' DataMap - StarOddi DST magnetic tag metadata
#'
#' Specific to ABLTAG DB
#'
#' @export
DataMap_ABLTAG_StarOddi_DSTmagnetic_TagMetaData =
  setRefClass(
    "DataMap_ABLTAG_StarOddi_DSTmagnetic_TagMetaData",
    contains = "DataMap_StarOddi_DSTmagnetic_TagMetaData",
    methods =
      list(
        initialize =
          function(
            output_data_field_map = ABLTAG_METADATA_TABLE_FIELDS,
            ...
          ) {
            callSuper(
              output_data_field_map = output_data_field_map,
              ...
            )
          }
      )
  )

#' DataMap - StarOddi DST magnetic instant sensor data
#'
#' Specific to ABLTAG DB
#'
#' @export
DataMap_ABLTAG_StarOddi_DSTmagnetic_InstantSensorData =
  setRefClass(
    "DataMap_ABLTAG_StarOddi_DSTmagnetic_InstantSensorData",
    contains = "DataMap_StarOddi_DSTmagnetic_InstantSensorData",
    methods =
      list(
        initialize =
          function(
            output_data_field_map = ABLTAG_DATA_INSTANT_TABLE_FIELDS,
            ...
          ) {
            callSuper(
              output_data_field_map = output_data_field_map,
              ...
            )
          }
      )
  )

#' DataMap - Wildlife Computers MiniPAT tag metadata
#'
#' Specific to ABLTAG DB
#'
#' @export
DataMap_ABLTAG_WildlifeComputers_MiniPAT_TagMetaData =
  setRefClass(
    "DataMap_ABLTAG_WildlifeComputers_MiniPAT_TagMetaData",
    contains = "DataMap_WildlifeComputers_MiniPAT_TagMetaData",
    methods =
      list(
        initialize =
        function(
          output_data_field_map = ABLTAG_METADATA_TABLE_FIELDS,
          ...
        ) {
          callSuper(
            output_data_field_map = output_data_field_map,
            ...
          )
        }
      )
  )

#' DataMap - Wildlife Computers MiniPAT instant sensor data
#'
#' Specific to ABLTAG DB
#'
#' @export
DataMap_ABLTAG_WildlifeComputers_MiniPAT_InstantSensorData =
  setRefClass(
    "DataMap_ABLTAG_WildlifeComputers_MiniPAT_InstantSensorData",
    # DataMap is identical to the Star Oddi DST tag DataMap
    contains = "DataMap_WildlifeComputers_MiniPAT_InstantSensorData",
    methods =
      list(
        initialize =
          function(
            output_data_field_map = ABLTAG_DATA_INSTANT_TABLE_FIELDS,
            ...
          ) {
            callSuper(
              output_data_field_map = output_data_field_map,
              ...
            )
          }
      )
  )

#' DataMap - Wildlife Computers MiniPAT summary sensor
#'
#' Specific to ABLTAG DB
#'
#' @export
DataMap_ABLTAG_WildlifeComputers_MiniPAT_SummarySensorData =
  setRefClass(
    "DataMap_ABLTAG_WildlifeComputers_MiniPAT_SummarySensorData",
    # DataMap is identical to the Star Oddi DST tag DataMap
    contains = "DataMap_WildlifeComputers_MiniPAT_SummarySensorData",
    methods =
      list(
        initialize =
          function(
            output_data_field_map = ABLTAG_DATA_SUMMARY_TABLE_FIELDS,
            ...
          ) {
            callSuper(
              output_data_field_map = output_data_field_map,
              ...
            )
          }
      )
  )

#' DataMap - Wildlife Computers Benthic sPAT tag metadata
#'
#' Specific to ABLTAG DB
#'
#' @export
DataMap_ABLTAG_WildlifeComputers_BenthicSPAT_TagMetaData =
  setRefClass(
    "DataMap_ABLTAG_WildlifeComputers_BenthicSPAT_TagMetaData",
    contains = "DataMap_WildlifeComputers_BenthicSPAT_TagMetaData",
    methods =
      list(
        initialize =
        function(
          output_data_field_map = ABLTAG_METADATA_TABLE_FIELDS,
          ...
        ) {
          callSuper(
            output_data_field_map = output_data_field_map,
            ...
          )
        }
      )
  )

#' DataMap - Wildlife Computers Benthic sPAT instant sensor data
#'
#' Specific to ABLTAG DB
#'
#' @export
DataMap_ABLTAG_WildlifeComputers_BenthicSPAT_InstantSensorData =
  setRefClass(
    "DataMap_ABLTAG_WildlifeComputers_BenthicSPAT_InstantSensorData",
    # DataMap is identical to the Star Oddi DST tag DataMap
    contains = "DataMap_WildlifeComputers_BenthicSPAT_InstantSensorData",
    methods =
      list(
        initialize =
        function(
          output_data_field_map = ABLTAG_DATA_INSTANT_TABLE_FIELDS,
          ...
        ) {
          callSuper(
            output_data_field_map = output_data_field_map,
            ...
          )
        }
      )
  )

#' DataMap - Wildlife Computers Benthic sPAT summary sensor data
#'
#' Specific to ABLTAG DB
#'
#' @export
DataMap_ABLTAG_WildlifeComputers_BenthicSPAT_SummarySensorData =
  setRefClass(
    "DataMap_ABLTAG_WildlifeComputers_BenthicSPAT_SummarySensorData",
    # DataMap is identical to the Star Oddi DST tag DataMap
    contains = "DataMap_WildlifeComputers_BenthicSPAT_SummarySensorData",
    methods =
      list(
        initialize =
        function(
          output_data_field_map = ABLTAG_DATA_SUMMARY_TABLE_FIELDS,
          ...
        ) {
          callSuper(
            output_data_field_map = output_data_field_map,
            ...
          )
        }
      )
  )

#' DataMap - Desert Star SeaTag MOD tag metadata
#'
#' Specific to ABLTAG DB
#'
#' @export
DataMap_ABLTAG_DesertStar_SeaTagMOD_TagMetaData =
  setRefClass(
    "DataMap_ABLTAG_DesertStar_SeaTagMOD_TagMetaData",
    contains = "DataMap_DesertStar_SeaTagMOD_TagMetaData",
    methods =
      list(
        initialize =
          function(
            output_data_field_map = ABLTAG_METADATA_TABLE_FIELDS,
            ...
          ) {
            callSuper(
              output_data_field_map = output_data_field_map,
              ...
            )
          }
      )
  )

#' DataMap - Desert Star SeaTag MOD instant sensor data
#'
#' Specific to the ABLTAG DB
#'
#' @export
DataMap_ABLTAG_DesertStar_SeaTagMOD_InstantSensorData =
  setRefClass(
    "DataMap_ABLTAG_DesertStar_SeaTagMOD_InstantSensorData",
    contains = "DataMap_DesertStar_SeaTagMOD_InstantSensorData",
    methods =
      list(
        initialize =
          function(
            output_data_field_map = ABLTAG_DATA_INSTANT_TABLE_FIELDS,
            ...
          ) {
            callSuper(
              output_data_field_map = output_data_field_map,
              ...
            )
          }
      )
  )



















