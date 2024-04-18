
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
        input_data_field_map = build_test_fieldmaps()$INSTANT_DATA_INPUT_FIELD_MAP
      )

    dat__ = build_test_dataset()

    op_fm =
      build_test_fieldmaps()$INSTANT_DATA_OUTPUT_FIELD_MAP

    expect_snapshot(
      dm$transform_fields(
        dat__,
        op_fm
      )
    )
  }
)
