test_all_data_dirs(
  root = test_data_d('ds', 'stm'),
  label = "Decoder_DesertStar_SeaTagMOD",
  test_fn =
    function(d) {
      test_decoder_on_data_dir(
        d = d,
        dc = Decoder_DesertStar_SeaTagMOD
      )
    }
)
