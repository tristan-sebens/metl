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
      od_fm =
        ABLTAG_METADATA_TABLE_FIELDS,
      d =
        test_data_d('Star Oddi', 'DST')
    )
  }
)

test_that(
  "DataMap_StarOddi_DST_InstantSensorData",
  {
    test_datamap(
      dm =
        DataMap_StarOddi_DST_InstantSensorData,
      od_fm =
        ABLTAG_DATA_INSTANT_TABLE_FIELDS,
      d =
        test_data_d('Star Oddi', 'DST')
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
      od_fm =
        ABLTAG_METADATA_TABLE_FIELDS,
      d =
        test_data_d('Star Oddi', 'DST milli-F')
    )
  }
)

test_that(
  "DataMap_StarOddi_DSTmilliF_InstantSensorData",
  {
    test_datamap(
      dm =
        DataMap_StarOddi_DST_InstantSensorData,
      od_fm =
        ABLTAG_DATA_INSTANT_TABLE_FIELDS,
      d =
        test_data_d('Star Oddi', 'DST milli-F')
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
      od_fm =
        ABLTAG_METADATA_TABLE_FIELDS,
      d =
        test_data_d('Star Oddi', 'DST magnetic')
    )
  }
)

test_that(
  "DataMap_StarOddi_DSTmagnetic_InstantSensorData",
  {
    test_datamap(
      dm =
        DataMap_StarOddi_DSTmagnetic_InstantSensorData,
      od_fm =
        ABLTAG_DATA_INSTANT_TABLE_FIELDS,
      d =
        test_data_d('Star Oddi', 'DST magnetic')
    )
  }
)





















