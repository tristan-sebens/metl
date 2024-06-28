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
      op_fm =
        ABLTAG_METADATA_TABLE_FIELDS,
      d =
        test_data_d('wc', 'mp')
    )
  }
)

test_that(
  "DataMap_WildlifeComputers_MiniPAT_InstantSensorData",
  {
    test_datamap(
      dm =
        DataMap_WildlifeComputers_MiniPAT_InstantSensorData,
      op_fm =
        ABLTAG_DATA_INSTANT_TABLE_FIELDS,
      d =
        test_data_d('wc', 'mp')
    )
  }
)


test_that(
  "DataMap_WildlifeComputers_MiniPAT_SummarySensorData",
  {
    test_datamap(
      dm =
        DataMap_WildlifeComputers_MiniPAT_SummarySensorData,
      op_fm =
        ABLTAG_DATA_SUMMARY_TABLE_FIELDS,
      d =
        test_data_d('wc', 'mp')
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
      op_fm =
        ABLTAG_METADATA_TABLE_FIELDS,
      d =
        test_data_d('wc', 'b_sp')
    )
  }
)

test_that(
  "DataMap_WildlifeComputers_BenthicSPAT_InstantSensorData",
  {
    test_datamap(
      dm =
        DataMap_WildlifeComputers_BenthicSPAT_InstantSensorData,
      op_fm =
        ABLTAG_DATA_INSTANT_TABLE_FIELDS,
      d =
        test_data_d('wc', 'b_sp')
    )
  }
)

test_that(
  "DataMap_WildlifeComputers_BenthicSPAT_SummarySensorData",
  {
    test_datamap(
      dm =
        DataMap_WildlifeComputers_BenthicSPAT_SummarySensorData,
      op_fm =
        ABLTAG_DATA_SUMMARY_TABLE_FIELDS,
      d =
        test_data_d('wc', 'b_sp')
    )
  }
)






