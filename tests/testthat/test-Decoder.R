test_that(
  "Decoder::add_missing_fields",
  {
    dc = build_test_decoder()

    dm1 = dc$data_maps[[1]]
    dm2 = dc$metadata_map

    dat1 = dm1$transform(dm1$extract())
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
    dat1 = dm1$transform(dm1$extract())

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
  }
)


test_that(
  "Decoder::upload_meta",
  {
    dc = build_test_decoder()

    # Test inserting into an empty table
    con =
      build_test_db()

    # Test that the upload completes succesfully
    expect_equal(dc$upload_meta(con), 1)
    # Test that DB metadata table is in the expected state
    expect_snapshot(
      # Load into local DF to compare data without db meta in dbplyr tbl
      data.frame(
        dplyr::tbl(
          con,
          dc$metadata_map$output_data_field_map$table
        )
      )
    )

    # Test inserting into a table in which the meta is already present
    # Test that the upload completes succesfully
    expect_equal(dc$upload_meta(con), 1)
    # Test that DB metadata table is in the expected state
    expect_snapshot(
      # Load into local DF to compare data without db meta in dbplyr tbl
      data.frame(
        dplyr::tbl(
          con,
          dc$metadata_map$output_data_field_map$table
        )
      )
    )

    # Tear down the test DB
    DBI::dbDisconnect(con)
  }
)


test_that(
  "Decoder::decode_datamap",
  {
    dc = build_test_decoder()

    dm = .self = dc$data_maps[[1]]

    expect_snapshot(dc$decode_datamap(dm))
  }
)

test_that(
  "Decoder::decode_and_load_all_datamaps",
  {
    dc = build_test_decoder()

    # Build emtpy DB
    con = build_test_db()

    # Check that uploads go as expected
    expect_snapshot(dc$decode_and_load_all_datamaps(con))

    # # Check states of tables
    # Instant sensor data
    is_tbl =
      data.frame(
        dplyr::tbl(
          con,
          dc$data_maps[[1]]$output_data_field_map$table
        )
      )
    expect_snapshot(is_tbl) # Check snapshot
    expect_gt(nrow(is_tbl), 0, label = "# rows in instant sensor data table") # Check table not empty
    # Summary sensor data
    ss_tbl =
      data.frame(
        dplyr::tbl(
          con,
          dc$data_maps[[2]]$output_data_field_map$table
        )
      )
    expect_snapshot(ss_tbl) # Check snapshot
    expect_gt(nrow(ss_tbl), 0, label = "# rows in summary sensor data table") # Check table not empty
  }
)

test_that(
  "Decoder::tag_already_loaded",
  {
    dc = build_test_decoder()

    # Build emtpy DB
    con = build_test_db()

    # Check that uploads go as expected
    expect_snapshot(dc$upload_meta(con))

    # The Decoder should successfully detect that it's metadata is already
    #  present in the DB
    expect_true(dc$tag_already_loaded(con))
  }
)



























