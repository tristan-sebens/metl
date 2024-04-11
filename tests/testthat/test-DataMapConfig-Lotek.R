# ------------------
# LOTEK TAGS
# ------------------

# LAT 1000/1100/1250
# ------------------
test_that(
  "DataMap_Lotek_1000.1100.1250_TagMetaData",
  {
    test_datamap(
      dm =
        DataMap_ABLTAG_Lotek_1000.1100.1250_TagMetaData(),
      d =
        test_data_d('Lotek', 'LTD 1000.1100.1250')
    )
  }
)

test_that(
  "DataMap_Lotek_1000.1100.1250_InstantSensorData",
  {
    test_datamap(
      dm =
        DataMap_ABLTAG_Lotek_1000.1100.1250_InstantSensorData(),
      d =
        test_data_d('Lotek', 'LTD 1000.1100.1250')
    )
  }
)

# LAT 1300
# ------------------
test_that(
  "DataMap_Lotek_1300_TagMetaData",
  {
    test_datamap(
      dm =
        DataMap_ABLTAG_Lotek_1300_TagMetaData(),
      d =
        test_data_d('Lotek', 'LTD 1300')
    )
  }
)

test_that(
  "DataMap_Lotek_1300_InstantSensorData",
  {
    test_datamap(
      dm =
        DataMap_ABLTAG_Lotek_1300_InstantSensorData(),
      d =
        test_data_d('Lotek', 'LTD 1300')
    )
  }
)

# LAT 1400/1800
# ------------------
test_that(
  "DataMap_Lotek_1400.1800_TagMetaData",
  {
    test_datamap(
      dm =
        DataMap_ABLTAG_Lotek_1400.1800_TagMetaData(),
      d =
        test_data_d('Lotek', 'LAT 1400.1800')
    )
  }
)

test_that(
  "DataMap_Lotek_1400.1800_InstantSensorData",
  {
    test_datamap(
      dm =
        DataMap_ABLTAG_Lotek_1400.1800_InstantSensorData(),
      d =
        test_data_d('Lotek', 'LAT 1400.1800')
    )
  }
)














