test_all_data_dirs(
  root = test_data_d('so', 'dst'),
  label = "Decoder_StarOddi_DST",
  test_fn =
    function(d) {
      test_decoder_on_data_dir(
        d = d,
        dc = Decoder_StarOddi_DST
      )
    }
)

test_all_data_dirs(
  root = test_data_d('so', 'dst_mag'),
  label = "Decoder_StarOddi_DSTmagnetic",
  test_fn =
    function(d) {
      test_decoder_on_data_dir(
        d = d,
        dc = Decoder_StarOddi_DSTmagnetic
      )
    }
)
