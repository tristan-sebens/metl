
test_that(
  "DataMap::get_field_data",
  {
    fm1 = build_test_fieldmaps()$INSTANT_DATA_INPUT_FIELD_MAP

    dm =
      DataMap()

    expect_snapshot(
      dm$get_field_data(
        dat__ = build_test_dataset(),
        input_field_obj_ = fm1$field_list$TIMESTAMP_FIELD
      )
    )

    expect_snapshot(
      dm$get_field_data(
        dat__ = build_test_dataset(),
        input_field_obj_ = fm1$field_list$DATA_FIELD_1
      )
    )

    expect_snapshot(
      dm$get_field_data(
        dat__ = build_test_dataset(),
        input_field_obj_ = fm1$field_list$DATA_FIELD_2
      )
    )
  }
)

test_that(
  "DataMap::transform_fields",
  {

    dm =
      .self =
      DataMap(
        input_data_field_map = build_test_fieldmaps()$INSTANT_DATA_INPUT_FIELD_MAP,
        output_data_field_map = build_test_fieldmaps()$INSTANT_DATA_OUTPUT_FIELD_MAP
      )

    dat__ =
      build_test_dataset()

    expect_snapshot(dm$transform_fields(dat__))
  }
)

test_that(
  "DataMap::upsert",
  {
    fm1 = build_test_fieldmaps()$INSTANT_DATA_INPUT_FIELD_MAP
    fm2 = build_test_fieldmaps()$INSTANT_DATA_OUTPUT_FIELD_MAP

    dm =
      .self =
      DataMap(
        input_data_field_map = fm1,
        output_data_field_map = fm2
      )

    # Get some test data
    dat__ =
      build_test_dataset()

    dat_t__ =
      dm$transform(dat__) %>%
      # Manually insert the tag_id, required by the DB structure.
      # This is typically done by the Decoder
      dplyr::mutate(tag_id = 1)

    # Instantiate a connection to a temporary DB
    dats = list()
    dats[[fm2$table]] = utils::head(dat_t__, as.integer(nrow(dat__)/10))

    con =
      build_test_db(dats = dats)

    # Check that state of the DB table is as expected
    # Wrapped in a DF call bc the location of the DB will change between test
    # cycles, so we want to strip out the DB identifiers. We only care about
    # the table contents anyways
    expect_snapshot(data.frame(dplyr::tbl(con, fm2$table)))

    # Perform the upsert
    # Check that the result is as expected
    expect_snapshot(dm$upsert(con, dat_t__))

    # Check that the new state of the DB table is as expected
    expect_snapshot(data.frame(dplyr::tbl(con, fm2$table)))

    DBI::dbDisconnect(con)
  }
)

