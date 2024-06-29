# ------------------
# STAR ODDI TAGS
# ------------------

# DST
# ------------------
test_all_data_dirs(
  root = test_data_d('so', 'dst'),
  label = "DataMap_StarOddi_DST_TagMetaData",
  test_fn =
    function(d) {
      test_datamap_directory(
        d = d,
        op_fm = ABLTAG_METADATA_TABLE_FIELDS,
        dm = DataMap_StarOddi_DST_TagMetaData
      )
    }
)

test_all_data_dirs(
  root = test_data_d('so', 'dst'),
  label = "DataMap_StarOddi_DST_InstantSensorData",
  test_fn =
    function(d) {
      test_datamap_directory(
        d = d,
        op_fm = ABLTAG_DATA_INSTANT_TABLE_FIELDS,
        dm = DataMap_StarOddi_DST_InstantSensorData
      )
    }
)

# DST milli-F
# ------------------
test_all_data_dirs(
  root = test_data_d('so', 'dst_mf'),
  label = "DataMap_StarOddi_DSTmilliF_TagMetaData",
  test_fn =
    function(d) {
      test_datamap_directory(
        d = d,
        op_fm = ABLTAG_METADATA_TABLE_FIELDS,
        dm = DataMap_StarOddi_DST_TagMetaData
      )
    }
)

test_all_data_dirs(
  root = test_data_d('so', 'dst_mf'),
  label = "DataMap_StarOddi_DSTmilliF_InstantSensorData",
  test_fn =
    function(d) {
      test_datamap_directory(
        d = d,
        op_fm = ABLTAG_DATA_INSTANT_TABLE_FIELDS,
        dm = DataMap_StarOddi_DST_InstantSensorData
      )
    }
)

# DST magnetic
# ------------------
test_all_data_dirs(
  root = test_data_d('so', 'dst_mag'),
  label = "DataMap_StarOddi_DSTmagnetic_TagMetaData",
  test_fn =
    function(d) {
      test_datamap_directory(
        d = d,
        op_fm = ABLTAG_METADATA_TABLE_FIELDS,
        dm = DataMap_StarOddi_DSTmagnetic_TagMetaData
      )
    }
)

test_all_data_dirs(
  root = test_data_d('so', 'dst_mag'),
  label = "DataMap_StarOddi_DSTmagnetic_InstantSensorData",
  test_fn =
    function(d) {
      test_datamap_directory(
        d = d,
        op_fm = ABLTAG_DATA_INSTANT_TABLE_FIELDS,
        dm = DataMap_StarOddi_DSTmagnetic_InstantSensorData
      )
    }
)
