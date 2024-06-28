# ------------------
# STAR ODDI TAGS
# ------------------

# DST
# ------------------
test_that(
  "DataMap_StarOddi_DST_TagMetaData",
  {
    test_datamap(
      dm =
        DataMap_StarOddi_DST_TagMetaData,
      op_fm =
        ABLTAG_METADATA_TABLE_FIELDS,
      d =
        test_data_d('so', 'dst')
    )
  }
)

test_that(
  "DataMap_StarOddi_DST_InstantSensorData",
  {
    test_datamap(
      dm =
        DataMap_StarOddi_DST_InstantSensorData,
      op_fm =
        ABLTAG_DATA_INSTANT_TABLE_FIELDS,
      d =
        test_data_d('so', 'dst')
    )
  }
)


# DST milli-F
# ------------------
test_that(
  "DataMap_StarOddi_DSTmilliF_TagMetaData",
  {
    test_datamap(
      dm =
        DataMap_StarOddi_DST_TagMetaData,
      op_fm =
        ABLTAG_METADATA_TABLE_FIELDS,
      d =
        test_data_d('so', 'dst_mf')
    )
  }
)

test_that(
  "DataMap_StarOddi_DSTmilliF_InstantSensorData",
  {
    test_datamap(
      dm =
        DataMap_StarOddi_DST_InstantSensorData,
      op_fm =
        ABLTAG_DATA_INSTANT_TABLE_FIELDS,
      d =
        test_data_d('so', 'dst_mf')
    )
  }
)


# DST magnetic
# ------------------
test_that(
  "DataMap_StarOddi_DSTmagnetic_TagMetaData",
  {
    test_datamap(
      dm =
        DataMap_StarOddi_DSTmagnetic_TagMetaData,
      op_fm =
        ABLTAG_METADATA_TABLE_FIELDS,
      d =
        test_data_d('so', 'dst_mag')
    )
  }
)

test_that(
  "DataMap_StarOddi_DSTmagnetic_InstantSensorData",
  {
    test_datamap(
      dm =
        DataMap_StarOddi_DSTmagnetic_InstantSensorData,
      op_fm =
        ABLTAG_DATA_INSTANT_TABLE_FIELDS,
      d =
        test_data_d('so', 'dst_mag')
    )
  }
)





















