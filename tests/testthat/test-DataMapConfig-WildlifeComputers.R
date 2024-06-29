# ------------------
# WILDLIFE COMPUTERS TAGS
# ------------------

# MiniPAT
# ------------------
test_all_data_dirs(
  root = test_data_d('wc', 'mp'),
  label = "DataMap_WildlifeComputers_MiniPAT_TagMetaData",
  test_fn =
    function(d) {
      test_datamap_directory(
        d = d,
        op_fm = ABLTAG_METADATA_TABLE_FIELDS,
        dm = DataMap_WildlifeComputers_MiniPAT_TagMetaData
      )
    }
)

test_all_data_dirs(
  root = test_data_d('wc', 'mp'),
  label = "DataMap_WildlifeComputers_MiniPAT_InstantSensorData",
  test_fn =
    function(d) {
      test_datamap_directory(
        d = d,
        op_fm = ABLTAG_DATA_INSTANT_TABLE_FIELDS,
        dm = DataMap_WildlifeComputers_MiniPAT_InstantSensorData
      )
    }
)

test_all_data_dirs(
  root = test_data_d('wc', 'mp'),
  label = "DataMap_WildlifeComputers_MiniPAT_SummarySensorData",
  test_fn =
    function(d) {
      test_datamap_directory(
        d = d,
        op_fm = ABLTAG_DATA_SUMMARY_TABLE_FIELDS,
        dm = DataMap_WildlifeComputers_MiniPAT_SummarySensorData
      )
    }
)

# Benthic sPAT
# ------------------
test_all_data_dirs(
  root = test_data_d('wc', 'b_sp'),
  label = "DataMap_WildlifeComputers_BenthicSPAT_TagMetaData",
  test_fn =
    function(d) {
      test_datamap_directory(
        d = d,
        op_fm = ABLTAG_METADATA_TABLE_FIELDS,
        dm = DataMap_WildlifeComputers_BenthicSPAT_TagMetaData
      )
    }
)

test_all_data_dirs(
  root = test_data_d('wc', 'b_sp'),
  label = "DataMap_WildlifeComputers_BenthicSPAT_InstantSensorData",
  test_fn =
    function(d) {
      test_datamap_directory(
        d = d,
        op_fm = ABLTAG_METADATA_TABLE_FIELDS,
        dm = DataMap_WildlifeComputers_BenthicSPAT_InstantSensorData
      )
    }
)

test_all_data_dirs(
  root = test_data_d('wc', 'b_sp'),
  label = "DataMap_WildlifeComputers_BenthicSPAT_SummarySensorData",
  test_fn =
    function(d) {
      test_datamap_directory(
        d = d,
        op_fm = ABLTAG_DATA_SUMMARY_TABLE_FIELDS,
        dm = DataMap_WildlifeComputers_BenthicSPAT_SummarySensorData
      )
    }
)
