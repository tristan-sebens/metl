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
        DataMap_WildlifeComputers_MiniPAT_TagMetaData(),
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
        DataMap_WildlifeComputers_MiniPAT_InstantSensorData(),
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
        DataMap_WildlifeComputers_MiniPAT_SummarySensorData(),
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
        DataMap_WildlifeComputers_BenthicSPAT_TagMetaData(),
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
        DataMap_WildlifeComputers_BenthicSPAT_InstantSensorData(),
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
        DataMap_WildlifeComputers_BenthicSPAT_SummarySensorData(),
      d =
        test_data_d('Wildlife Computers', 'Benthic sPAT')
    )
  }
)






