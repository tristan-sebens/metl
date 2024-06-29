test_all_data_dirs(
  root = test_data_d('mt', 'xt_trans'),
  label = "Decoder_MicrowaveTelemetry_XTag_Transmitted",
  test_fn =
    function(d) {
      test_decoder_on_data_dir(
        d = d,
        dc = Decoder_MicrowaveTelemetry_XTag_Transmitted
      )
    }
)

test_all_data_dirs(
  root = test_data_d('mt', 'xt_recov'),
  label = "Decoder_MicrowaveTelemetry_XTag_Recovered",
  test_fn =
    function(d) {
      test_decoder_on_data_dir(
        d = d,
        dc = Decoder_MicrowaveTelemetry_XTag_Recovered
      )
    }
)
