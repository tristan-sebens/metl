test_that(
  "Decoder::decode_datamap",
  {
    dc = build_test_decoder()

    # Check that the data is returned as expected
    metadata =
      dc$decode_datamap(
        d = "placeholder",
        dm = dc$data_maps[["meta"]],
        op_fm = build_test_metadata_map()$METADATA_OUTPUT_FIELD_MAP
      )

    expect_snapshot(metadata)
    expect_gt(nrow(metadata), 0, label = "# rows in decoded metadata")

    instant_data =
      dc$decode_datamap(
        d = "placeholder",
        dm = dc$data_maps[["instant"]],
        op_fm = build_test_fieldmaps()$INSTANT_DATA_OUTPUT_FIELD_MAP
      )

    expect_snapshot(instant_data)
    expect_gt(nrow(instant_data), 0, label = "# rows in decoded instant data")

    summary_data =
      dc$decode_datamap(
        d = "placeholder",
        dm = dc$data_maps[["summary"]],
        op_fm = build_test_fieldmaps()$SUMMARY_DATA_OUTPUT_FIELD_MAP
      )

    expect_snapshot(summary_data)
    expect_gt(nrow(summary_data), 0, label = "# rows in decoded instant data")
  }
)



























