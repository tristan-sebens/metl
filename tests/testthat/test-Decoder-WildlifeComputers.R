test_all_data_dirs(
  root = test_data_d('wc', 'b_sp'),
  label = "Decoder_WildlifeComputers_BenthicSPAT",
  test_fn =
    function(d) {
      test_decoder_on_data_dir(
        d = d,
        dc = Decoder_WildlifeComputers_BenthicSPAT
      )
    }
)

test_all_data_dirs(
  root = test_data_d('wc', 'mp'),
  label = "Decoder_WildlifeComputers_MiniPAT",
  test_fn =
    function(d) {
      test_decoder_on_data_dir(
        d = d,
        dc = Decoder_WildlifeComputers_MiniPAT
      )
    }
)
