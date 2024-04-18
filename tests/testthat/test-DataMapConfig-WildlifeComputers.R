# ------------------
# WILDLIFE COMPUTERS TAGS
# ------------------

# MiniPAT
# ------------------
test_that(
  "DataMap_WildlifeComputers_MiniPAT_TagMetaData",
  {
    test_datamap(
      dm =
        DataMap_WildlifeComputers_MiniPAT_TagMetaData,
      od_fm =
        ABLTAG_METADATA_TABLE_FIELDS,
      d =
        test_data_d('Wildlife Computers', 'MiniPAT')
    )
  }
)

test_that(
  "DataMap_WildlifeComputers_MiniPAT_InstantSensorData",
  {
    test_datamap(
      dm =
        DataMap_WildlifeComputers_MiniPAT_InstantSensorData,
      od_fm =
        ABLTAG_DATA_INSTANT_TABLE_FIELDS,
      d =
        test_data_d('Wildlife Computers', 'MiniPAT')
    )
  }
)


test_that(
  "DataMap_WildlifeComputers_MiniPAT_SummarySensorData",
  {
    test_datamap(
      dm =
        DataMap_WildlifeComputers_MiniPAT_SummarySensorData,
      od_fm =
        ABLTAG_DATA_SUMMARY_TABLE_FIELDS,
      d =
        test_data_d('Wildlife Computers', 'MiniPAT')
    )
  }
)


# Benthic sPAT
# ------------------
test_that(
  "DataMap_WildlifeComputers_BenthicSPAT_TagMetaData",
  {
    test_datamap(
      dm =
        DataMap_WildlifeComputers_BenthicSPAT_TagMetaData,
      od_fm =
        ABLTAG_METADATA_TABLE_FIELDS,
      d =
        test_data_d('Wildlife Computers', 'Benthic sPAT')
    )
  }
)

test_that(
  "DataMap_WildlifeComputers_BenthicSPAT_InstantSensorData",
  {
    test_datamap(
      dm =
        DataMap_WildlifeComputers_BenthicSPAT_InstantSensorData,
      od_fm =
        ABLTAG_DATA_INSTANT_TABLE_FIELDS,
      d =
        test_data_d('Wildlife Computers', 'Benthic sPAT')
    )
  }
)

test_that(
  "DataMap_WildlifeComputers_BenthicSPAT_SummarySensorData",
  {
    test_datamap(
      dm =
        DataMap_WildlifeComputers_BenthicSPAT_SummarySensorData,
      od_fm =
        ABLTAG_DATA_SUMMARY_TABLE_FIELDS,
      d =
        test_data_d('Wildlife Computers', 'Benthic sPAT')
    )
  }
)






