test_all_data_dirs(
  root = test_data_d('lt', 'lt_1000_1250'),
  label = "Decoder_Lotek_1000.1250",
  test_fn =
    function(d) {
      test_decoder_on_data_dir(
        d = d,
        dc = Decoder_Lotek_1000.1100.1250
      )
    }
)

test_all_data_dirs(
  root = test_data_d('lt', 'lt_1300'),
  label = "Decoder_Lotek_1300",
  test_fn =
    function(d) {
      test_decoder_on_data_dir(
        d = d,
        dc = Decoder_Lotek_1300
      )
    }
)

test_all_data_dirs(
  root = test_data_d('lt', 'lt_1400_1800'),
  label = "Decoder_Lotek_1400.1800",
  test_fn =
    function(d) {
      test_decoder_on_data_dir(
        d = d,
        dc = Decoder_Lotek_1400.1800
      )
    }
)
