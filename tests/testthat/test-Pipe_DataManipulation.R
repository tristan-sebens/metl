test_that(
  "Pipe::add_missing_fields",
  {
    tp__ =
      build_test_tag_processor()

    d =
      tp__$dir_tree__$lt$lt_1300$gt$`3880`$fullPath

    dc =
      Decoder_Lotek_1300

    dat1 = dc$decode_datamap(d, dm = dc$data_maps[["instant"]], op_fm = tp__$output_fieldmaps[["instant"]])
    dat2 = dc$decode_datamap(d, dm = dc$data_maps[["meta"]], op_fm = tp__$output_fieldmaps[["meta"]])

    dat3 =
      tp__$add_missing_fields(
        dat1 = dat1,
        dat1_ip_fm = dc$data_maps[["instant"]]$input_data_field_map,
        dat1_op_fm = tp__$output_fieldmaps[["instant"]],
        dat2 = dat2,
        dat2_ip_fm = dc$data_maps[["meta"]]$input_data_field_map,
        dat2_op_fm = tp__$output_fieldmaps[["meta"]]
      )

    # Ensure that the output data.frame is as expected# Ensure that the output data.frame is as expected# Ensure that the output data.frame is as expected
    expect_snapshot(dat3)

    # Ensure that all of the data from dat1 is still present in dat3
    expect_contains(
      names(dat3),
      names(dat1)
    )
    expect_equal(
      nrow(dat1),
      nrow(dat3),
      label = "# rows in original data.frame",
      expected.label = "# rows in updated data.frame"
    )

    # Ensure that only the ID field was added to dat1
    expect_false(names(dat2)[[2]] %in% names(dat3))
  }
)

test_that(
  "Pipe::complete_dataframes",
  {
    tp__ =
      build_test_tag_processor()

    d =
      tp__$dir_tree__$mt$xt_trans$rr$`118353`$fullPath

    dc =
      Decoder_MicrowaveTelemetry_XTag_Transmitted


    # Decode metadata
    metadata =
      dc$decode_datamap(
        d = d,
        dm = dc$data_maps[["meta"]],
        op_fm = tp__$output_fieldmaps[["meta"]]
      )

    # Decode instant data
    instant_data =
      dc$decode_datamap(
        d = d,
        dc$data_maps[["instant"]],
        op_fm = tp__$output_fieldmaps[["instant"]]
      )

    # Decode summary data
    summary_data =
      dc$decode_datamap(
        d = d,
        dc$data_maps[["summary"]],
        op_fm = tp__$output_fieldmaps[["summary"]]
      )

    # Now that we have all of the necessary data, complete
    # the decoded data.frames
    completed_dfs =
      tp__$complete_dataframes(
        dfs =
          list(
            metadata,
            instant_data,
            summary_data
          ),
        ip_fms =
          list(
            dc$data_maps[["meta"]]$input_data_field_map,
            dc$data_maps[["instant"]]$input_data_field_map,
            dc$data_maps[["summary"]]$input_data_field_map
          ),
        op_fms =
          list(
            tp__$output_fieldmaps[["meta"]],
            tp__$output_fieldmaps[["instant"]],
            tp__$output_fieldmaps[["summary"]]
          )
      )

    metadata_c = completed_dfs[[1]]
    instant_data_c = completed_dfs[[2]]
    summary_data_c = completed_dfs[[3]]

    # Check that each completed dataframe matches the existing snapshot,
    # and that all of the fields in the un-completed data.frame are still
    # present in the completed data.frame
    expect_snapshot(metadata_c)
    expect_contains(names(metadata_c), names(metadata))
    # Also ensure that the metadata data.frame remained unchanged
    expect_equal(names(metadata_c), names(metadata))

    expect_snapshot(instant_data_c)
    expect_contains(names(instant_data_c), names(instant_data))

    expect_snapshot(summary_data_c)
    expect_contains(names(summary_data_c), names(summary_data))

    # Check that the two
    expect_contains(
      names(instant_data_c),
      tp__$output_fieldmaps[["meta"]]$field_list$TAG_ID_FIELD$name
    )

    expect_contains(
      names(summary_data_c),
      tp__$output_fieldmaps[["meta"]]$field_list$TAG_ID_FIELD$name
    )
  }
)
