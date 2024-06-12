test_decoder_on_all_data_dirs(
  root = test_data_d('lt', 'lt_1000_1250'),
  dc = Decoder_Lotek_1000.1100.1250
)

test_decoder_on_all_data_dirs(
  root = test_data_d('lt', 'lt_1300'),
  dc = Decoder_Lotek_1300
)

test_decoder_on_all_data_dirs(
  root = test_data_d('lt', 'lt_1400_1800'),
  dc = Decoder_Lotek_1400.1800
)
