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


test_that(
  "Decoder::add_missing_fields",
  {
    d =
      test_data_d('lt', 'lt_1300', 'gt', '3880')

    dc =
      Decoder_Lotek_1300

    dat1 = dc$decode_datamap(d, dm = dc$data_maps[["instant"]], op_fm = dc$output_fieldmaps[["instant"]])
    dat2 = dc$decode_datamap(d, dm = dc$data_maps[["meta"]], op_fm = dc$output_fieldmaps[["meta"]])

    dat3 =
      dc$add_missing_fields(
        dat1 = dat1,
        dat1_ip_fm = dc$data_maps[["instant"]]$input_data_field_map,
        dat1_op_fm = dc$output_fieldmaps[["instant"]],
        dat2 = dat2,
        dat2_ip_fm = dc$data_maps[["meta"]]$input_data_field_map,
        dat2_op_fm = dc$output_fieldmaps[["meta"]]
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
  "Decoder::complete_dataframes",
  {
    d =
      test_data_d('mt', 'xt_trans', 'rr', '118353')

    dc =
      Decoder_MicrowaveTelemetry_XTag_Transmitted

    # Synthesize the requsite input data
    input =
      data.frame(
        tag_id = "1234",
        tag_type = "SuperTag"
      )

    # Create an empty DataMap to return the user-inputted data
    DataMap_UserInput =
      DataMap(
        input_data_field_map = USER_INPUT_FIELDS,
        extract_fn =
          function(d) {
            return(input)
          }
      )

    data_maps_expanded =
      append(dc$data_maps, list("input" = DataMap_UserInput))

    # Initialize an empty list to hold data
    decoded_data_list = list()

    # Iterate over each data map in the decoder's data_maps list
    for (data_type in names(data_maps_expanded)) {
      decoded_data =
        dc$decode_datamap(
          dm = data_maps_expanded[[data_type]],
          d = d,
          op_fm = dc$output_fieldmaps[[data_type]]
        )

      # Add the decoded data to the list
      decoded_data_list[[data_type]] = decoded_data
    }

    # Complete the dataframes with fields from each other as necessary
    completed_data =
      dc$complete_dataframes(
        dfs =
          decoded_data_list,
        ip_fms =
          lapply(data_maps_expanded[names(data_maps_expanded)], function(dm) dm$input_data_field_map),
        op_fms =
          dc$output_fieldmaps[names(data_maps_expanded)]
      )

    names(completed_data) = names(decoded_data_list)

    metadata = decoded_data_list[["meta"]]
    instant_data = decoded_data_list[["instant"]]
    summary_data = decoded_data_list[["summary"]]

    metadata_c = completed_data[["meta"]]
    instant_data_c = completed_data[["instant"]]
    summary_data_c = completed_data[["summary"]]

    # Check that each completed dataframe matches the existing snapshot,
    # and that all of the fields in the un-completed data.frame are still
    # present in the completed data.frame
    expect_snapshot(metadata_c)
    expect_contains(names(metadata_c), names(metadata))

    expect_snapshot(instant_data_c)
    expect_contains(names(instant_data_c), names(instant_data))

    expect_snapshot(summary_data_c)
    expect_contains(names(summary_data_c), names(summary_data))

    expect_contains(
      names(instant_data_c),
      dc$output_fieldmaps[["meta"]]$field_list$TAG_ID_FIELD$name
    )

    expect_contains(
      names(summary_data_c),
      dc$output_fieldmaps[["meta"]]$field_list$TAG_ID_FIELD$name
    )
  }
)


test_that(
  "Decoder::decode",
  {
    d =
      test_data_d('mt', 'xt_trans', 'rr', '118353')

    dc =
      Decoder_MicrowaveTelemetry_XTag_Transmitted

    input_meta =
      data.frame(
        tag_id = "1234",
        tag_type = "SuperTag"
      )

    decode_op = dc$decode(d, input_meta)

    # Ensure data.frames are returned
    expect_gt(length(decode_op), 0)
    # Ensure only expected data.frames are returned
    expect_equal(names(decode_op), c("meta", "instant", "summary"))
    # Ensure returned data.frames are not empty
    expect_gt(nrow(decode_op[["meta"]]), 0)
    expect_gt(nrow(decode_op[["instant"]]), 0)
    expect_gt(nrow(decode_op[["summary"]]), 0)
    # Check snapshots
    expect_snapshot(decode_op[["meta"]])
    expect_snapshot(decode_op[["instant"]])
    expect_snapshot(decode_op[["summary"]])
  }
)
























