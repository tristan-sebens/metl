
test_that(
  "DataMap::get_field_data",
  {
    fm1 = build_test_fieldmaps()[[1]]
    fm2 = build_test_fieldmaps()[[2]]

    dm =
      DataMap()

    expect_snapshot(
      dm$get_field_data(
        dat__ = build_test_dataset(),
        input_field_obj_ = fm2$field_list[[4]]
      )
    )
  }
)

test_that(
  "DataMap::transform_fields",
  {
    fm1 = build_test_fieldmaps()[[1]]
    fm2 = build_test_fieldmaps()[[2]]

    dm =
      .self =
      DataMap(
        output_data_field_map = fm1,
        input_data_field_map = fm2
      )

    dat__ =
      build_test_dataset()

    expect_snapshot(dm$transform_fields(dat__))
  }
)

test_that(
  "DataMap::upsert",
  {
    fm1 = build_test_fieldmaps()[[1]]
    fm2 = build_test_fieldmaps()[[2]]

    dm =
      .self =
      DataMap(
        output_data_field_map = fm1,
        input_data_field_map = fm2
      )

    # Get some test data
    dat__ =
      build_test_dataset()

    dat_t__ =
      dm$transform(dat__)

    # Instantiate a connection to a temporary DB
    con =
      build_test_db()

    # Populate the db with some test data
    expect_snapshot(
      populate_test_db(
        con = con,
        table = fm1$table,
        # Insert ~10% of the data into the table
        utils::head(dat_t__, as.integer(nrow(dat__)/10)),
        append = T
      )
    )

    # Check that state of the DB table is as expected
    # Wrapped in a DF call bc the location of the DB will change between test
    # cycles, so we want to strip out the DB identifiers. We only care about
    # the table contents anyways
    expect_snapshot(data.frame(dplyr::tbl(con, fm1$table)))

    # Perform the upsert
    # Check that the result is as expected
    expect_snapshot(
      dm$upsert(con, dat_t__)
    )

    # Check that the new state of the DB table is as expected
    expect_snapshot(data.frame(dplyr::tbl(con, fm1$table)))
  }
)

