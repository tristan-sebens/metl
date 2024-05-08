# ------------------
# MICROWAVE TELEMETRY TAGS
# ------------------


# X-Tag
# ------------------
test_that(
  "DataMap_MicrowaveTelemetry_XTag_TagMetaData",
  {
    test_datamap(
      dm =
        DataMap_MicrowaveTelemetry_XTag_TagMetaData,
      od_fm =
        ABLTAG_METADATA_TABLE_FIELDS,
      d =
        test_data_d('mt', 'xt')
    )
  }
)

test_that(
  "DataMap_MicrowaveTelemetry_XTag_InstantSensorData",
  {
    test_datamap(
      dm =
        DataMap_MicrowaveTelemetry_XTag_InstantSensorData,
      od_fm =
        ABLTAG_DATA_INSTANT_TABLE_FIELDS,
      d =
        test_data_d('mt', 'xt')
    )
  }
)

test_that(
  "DataMap_MicrowaveTelemetry_XTag_SummarySensorData",
  {
    test_datamap(
      dm =
        DataMap_MicrowaveTelemetry_XTag_SummarySensorData,
      od_fm =
        ABLTAG_DATA_SUMMARY_TABLE_FIELDS,
      d =
        test_data_d('mt', 'xt')
    )
  }
)
