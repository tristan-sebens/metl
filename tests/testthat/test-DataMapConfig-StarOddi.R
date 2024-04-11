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
        DataMap_ABLTAG_StarOddi_DST_TagMetaData(),
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
        DataMap_ABLTAG_StarOddi_DST_InstantSensorData(),
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
        DataMap_ABLTAG_StarOddi_DST_TagMetaData(),
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
        DataMap_ABLTAG_StarOddi_DST_InstantSensorData(),
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
        DataMap_ABLTAG_StarOddi_DSTmagnetic_TagMetaData(),
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
        DataMap_ABLTAG_StarOddi_DSTmagnetic_InstantSensorData(),
      d =
        test_data_d('Star Oddi', 'DST magnetic')
    )
  }
)





















