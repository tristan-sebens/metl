test_that(
  "Decoder::add_missing_fields",
  {
    dc =
      build_test_decoder()

    dm1 = dc$data_maps[[1]]
    dm2 = dc$metadata_map

    dat1 = dm1$extract()
    dat2 = dm2$extract()

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
    dc = build_test_decoder()
    dm1 = dc$data_maps[[1]]
    dat1 = dm1$extract()

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








































