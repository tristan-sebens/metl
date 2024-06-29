# ------------------
# LOTEK TAGS
# ------------------


# LAT 1000/1100/1250
# ------------------
test_all_data_dirs(
  root = test_data_d('lt', 'lt_1000_1250'),
  label = "DataMap_Lotek_1000.1100.1250_TagMetaData",
  test_fn =
    function(d) {
      test_datamap_directory(
        d = d,
        op_fm = ABLTAG_METADATA_TABLE_FIELDS,
        dm = DataMap_Lotek_1000.1100.1250_TagMetaData
      )
    }
)

test_all_data_dirs(
  root = test_data_d('lt', 'lt_1000_1250'),
  label = "DataMap_Lotek_1000.1100.1250_InstantSensorData",
  test_fn =
    function(d) {
      test_datamap_directory(
        d = d,
        op_fm = ABLTAG_DATA_INSTANT_TABLE_FIELDS,
        dm = DataMap_Lotek_1000.1100.1250_InstantSensorData
      )
    }
)

# LAT 1300
# ------------------
test_all_data_dirs(
  root = test_data_d('lt', 'lt_1300'),
  label = "DataMap_Lotek_1300_TagMetaData",
  test_fn =
    function(d) {
      test_datamap_directory(
        d = d,
        op_fm = ABLTAG_METADATA_TABLE_FIELDS,
        dm = DataMap_Lotek_1300_TagMetaData
      )
    }
)

test_all_data_dirs(
  root = test_data_d('lt', 'lt_1300'),
  label = "DataMap_Lotek_1300_InstantSensorData",
  test_fn =
    function(d) {
      test_datamap_directory(
        d = d,
        op_fm = ABLTAG_DATA_INSTANT_TABLE_FIELDS,
        dm = DataMap_Lotek_1300_InstantSensorData
      )
    }
)

# LAT 1400/1800
# ------------------
test_all_data_dirs(
  root = test_data_d('lt', 'lt_1400_1800'),
  label = "DataMap_Lotek_1400.1800_TagMetaData",
  test_fn =
    function(d) {
      test_datamap_directory(
        d = d,
        op_fm = ABLTAG_METADATA_TABLE_FIELDS,
        dm = DataMap_Lotek_1400.1800_TagMetaData
      )
    }
)

test_all_data_dirs(
  root = test_data_d('lt', 'lt_1400_1800'),
  label = "DataMap_Lotek_1400.1800_InstantSensorData",
  test_fn =
    function(d) {
      test_datamap_directory(
        d = d,
        op_fm = ABLTAG_DATA_INSTANT_TABLE_FIELDS,
        dm = DataMap_Lotek_1400.1800_InstantSensorData
      )
    }
)
