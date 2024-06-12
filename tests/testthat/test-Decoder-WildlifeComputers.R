test_decoder_on_all_data_dirs(
  root = test_data_d('wc', 'b_sp'),
  dc = Decoder_WildlifeComputers_BenthicSPAT
)

test_decoder_on_all_data_dirs(
  root = test_data_d('wc', 'mp'),
  dc = Decoder_WildlifeComputers_MiniPAT
)
