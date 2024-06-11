test_decoder_on_all_data_dirs(
  root = test_data_d('mt', 'xt_trans'),
  dc = Decoder_MicrowaveTelemetry_XTag_Transmitted
)

test_decoder_on_all_data_dirs(
  root = test_data_d('mt', 'xt_recov'),
  dc = Decoder_MicrowaveTelemetry_XTag_Recovered
)
