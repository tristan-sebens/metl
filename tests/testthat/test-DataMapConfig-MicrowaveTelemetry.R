# ------------------
# MICROWAVE TELEMETRY TAGS
# ------------------


# X-Tag
# ------------------
test_all_data_dirs(
  root = test_data_d('mt', 'xt_trans'),
  label = "DataMap_MicrowaveTelemetry_XTag_Transmitted_TagMetaData",
  test_fn =
    function(d) {
      test_datamap_directory(
        d = d,
        op_fm = ABLTAG_METADATA_TABLE_FIELDS,
        dm = DataMap_MicrowaveTelemetry_XTag_Transmitted_TagMetaData
      )
    }
)

test_all_data_dirs(
  root = test_data_d('mt', 'xt_trans'),
  label = "DataMap_MicrowaveTelemetry_XTag_Transmitted_InstantSensorData",
  test_fn =
    function(d) {
      test_datamap_directory(
        d = d,
        op_fm = ABLTAG_DATA_INSTANT_TABLE_FIELDS,
        dm = DataMap_MicrowaveTelemetry_XTag_Transmitted_InstantSensorData
      )
    }
)

test_all_data_dirs(
  root = test_data_d('mt', 'xt_trans'),
  label = "DataMap_MicrowaveTelemetry_XTag_Transmitted_SummarySensorData",
  test_fn =
    function(d) {
      test_datamap_directory(
        d = d,
        op_fm = ABLTAG_DATA_SUMMARY_TABLE_FIELDS,
        dm = DataMap_MicrowaveTelemetry_XTag_Transmitted_SummarySensorData
      )
    }
)

test_all_data_dirs(
  root = test_data_d('mt', 'xt_recov'),
  label = "DataMap_MicrowaveTelemetry_XTag_Recovered_TagMetaData",
  test_fn =
    function(d) {
      test_datamap_directory(
        d = d,
        op_fm = ABLTAG_METADATA_TABLE_FIELDS,
        dm = DataMap_MicrowaveTelemetry_XTag_Recovered_TagMetaData
      )
    }
)

test_all_data_dirs(
  root = test_data_d('mt', 'xt_recov'),
  label = "DataMap_MicrowaveTelemetry_XTag_Recovered_InstantSensorData",
  test_fn =
    function(d) {
      test_datamap_directory(
        d = d,
        op_fm = ABLTAG_DATA_INSTANT_TABLE_FIELDS,
        dm = DataMap_MicrowaveTelemetry_XTag_Recovered_InstantSensorData
      )
    }
)

test_all_data_dirs(
  root = test_data_d('mt', 'xt_recov'),
  label = "DataMap_MicrowaveTelemetry_XTag_Recovered_SummarySensorData",
  test_fn =
    function(d) {
      test_datamap_directory(
        d = d,
        op_fm = ABLTAG_DATA_SUMMARY_TABLE_FIELDS,
        dm = DataMap_MicrowaveTelemetry_XTag_Recovered_SummarySensorData
      )
    }
)
