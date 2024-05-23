# ------------------
# MICROWAVE TELEMETRY TAGS
# ------------------


# X-Tag
# ------------------
test_that(
  "DataMap_MicrowaveTelemetry_XTag_Transmitted_TagMetaData",
  {
    test_datamap(
      dm =
        DataMap_MicrowaveTelemetry_XTag_Transmitted_TagMetaData,
      od_fm =
        ABLTAG_METADATA_TABLE_FIELDS,
      d =
        test_data_d('mt', 'xt_trans')
    )
  }
)

test_that(
  "DataMap_MicrowaveTelemetry_XTag_Transmitted_InstantSensorData",
  {
    test_datamap(
      dm =
        DataMap_MicrowaveTelemetry_XTag_Transmitted_InstantSensorData,
      od_fm =
        ABLTAG_DATA_INSTANT_TABLE_FIELDS,
      d =
        test_data_d('mt', 'xt_trans')
    )
  }
)

test_that(
  "DataMap_MicrowaveTelemetry_XTag_Transmitted_SummarySensorData",
  {
    test_datamap(
      dm =
        DataMap_MicrowaveTelemetry_XTag_Transmitted_SummarySensorData,
      od_fm =
        ABLTAG_DATA_SUMMARY_TABLE_FIELDS,
      d =
        test_data_d('mt', 'xt_trans')
    )
  }
)

test_that(
  "DataMap_MicrowaveTelemetry_XTag_Recovered_TagMetaData",
  {
    test_datamap(
      dm =
        DataMap_MicrowaveTelemetry_XTag_Recovered_TagMetaData,
      od_fm =
        ABLTAG_METADATA_TABLE_FIELDS,
      d =
        test_data_d('mt', 'xt_recov')
    )
  }
)

test_that(
  "DataMap_MicrowaveTelemetry_XTag_Recovered_InstantSensorData",
  {
    test_datamap(
      dm =
        DataMap_MicrowaveTelemetry_XTag_Recovered_InstantSensorData,
      od_fm =
        ABLTAG_DATA_INSTANT_TABLE_FIELDS,
      d =
        test_data_d('mt', 'xt_recov')
    )
  }
)

test_that(
  "DataMap_MicrowaveTelemetry_XTag_Recovered_SummarySensorData",
  {
    test_datamap(
      dm =
        DataMap_MicrowaveTelemetry_XTag_Recovered_SummarySensorData,
      od_fm =
        ABLTAG_DATA_SUMMARY_TABLE_FIELDS,
      d =
        test_data_d('mt', 'xt_recov')
    )
  }
)
