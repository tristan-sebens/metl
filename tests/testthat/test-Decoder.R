test_that(
  "Decoder::add_missing_fields",
  {
    # Build the necessary inputs

    # Start with the FieldMaps
    # First the input FieldMap for dm1, which will be missing the ID Field
    dm1_ifm = build_test_fieldmaps()[[2]]
    # Remove the ID field from the first FieldMap
    dm1_ifm$field_list =
      dm1_ifm$field_list[-1]
    # Next the output FieldMap for dm1
    dm1_ofm =
      build_test_fieldmaps()[[1]]
    dm1_ofm$field_list =
      dm1_ofm$field_list[-7]

    dm1_ofm$uncommon_fields(dm1_ifm)

    # Now build the DataMaps
    dm1 =
      DataMap(
        input_data_field_map = dm1_ifm,
        output_data_field_map = dm1_ofm
      )

    dm2 =
      DataMap(
        input_data_field_map = build_test_fieldmaps()[[2]],
        output_data_field_map = build_test_fieldmaps()[[1]]
      )

    # Finally the datasets

    # First the transformed dat1 dataset
    dat1 =
      build_test_dataset() %>%
      # Remove the ID field so we can put it back in
      dplyr::select(-'Tag ID') %>%
      dm1$transform()

    dat2 =
      build_test_dataset() %>%
      dm2$transform() %>%
      dplyr::select(1) %>%
      head(1) %>%
      dplyr::mutate(extra_field = "extra")

    dc =
      Decoder()

    dat3 =
      dc$add_missing_fields(dat_1 = dat1, dm_1 = dm1, dat_2 = dat2, dm_2 = dm2)

    # Ensure that the output data.frame is as expected
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
  "Decoder::add_metadata",
  {
    # Build the necessary inputs

    # First the datasets
    # The transformed dat1 dataset
    dat1 =
      build_test_dataset() %>%
      # Remove the ID field so we can put it back in
      dplyr::select(-'Tag ID') %>%
      dm1$transform()

    dat2 =
      build_test_dataset() %>%
      dm2$transform() %>%
      dplyr::select(1) %>%
      head(1) %>%
      dplyr::mutate(extra_field = "extra")

    # Next the FieldMaps
    # First the input FieldMap for dm1, which will be missing the ID Field
    dm1_ifm = build_test_fieldmaps()[[2]]
    # Remove the ID field from the first FieldMap
    dm1_ifm$field_list =
      dm1_ifm$field_list[-1]
    # Next the output FieldMap for dm1
    dm1_ofm =
      build_test_fieldmaps()[[1]]
    dm1_ofm$field_list =
      dm1_ofm$field_list[-7]

    # Now build the DataMaps

    # First the DataMap for the incoming dataset
    dm1 =
      DataMap(
        input_data_field_map = dm1_ifm,
        output_data_field_map = dm1_ofm
      )

    # Instantiate the metadata map
    dm2 =
      DataMap_TestStub(
        input_data_field_map = build_test_fieldmaps()[[2]],
        output_data_field_map = build_test_fieldmaps()[[1]],
        extract_return = dat2
      )

    # Instantate the Decoder
    dc =
      Decoder(
        metadata_map = dm2

      )

    # Execute the function
    dat3 = dc$add_meta(dat1, dm1)

    # Ensure that the output dataframe is as expected
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








































