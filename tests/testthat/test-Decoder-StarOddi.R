test_decoder_on_all_data_dirs(
  root = test_data_d('so', 'dst'),
  dc = Decoder_StarOddi_DST
)

test_decoder_on_all_data_dirs(
  root = test_data_d('so', 'dst_mag'),
  dc = Decoder_StarOddi_DSTmagnetic
)
