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
        DataMap_MicrowaveTelemetry_XTag_TagMetaData(),
      d =
        test_data_d('Microwave Telemetry', 'X-Tag')
    )
  }
)

test_that(
  "DataMap_MicrowaveTelemetry_XTag_InstantSensorData",
  {
    test_datamap(
      dm =
        DataMap_MicrowaveTelemetry_XTag_InstantSensorData(),
      d =
        test_data_d('Microwave Telemetry', 'X-Tag')
    )
  }
)

test_that(
  "DataMap_MicrowaveTelemetry_XTag_SummarySensorData",
  {
    test_datamap(
      dm =
        DataMap_MicrowaveTelemetry_XTag_SummarySensorData(),
      d =
        test_data_d('Microwave Telemetry', 'X-Tag')
    )
  }
)
