
test_that(
  "DataMap::throw_error",
  {
    dm =
      DataMap()

    expect_error(
      dm$throw_error("Test Error"),
      "ERROR - DataMap: \nTest Error"
    )
  }
)

test_that(
  "DataMap::get_field_data",
  {
    fm1 = build_test_fieldmaps()$INSTANT_DATA_INPUT_FIELD_MAP

    dm =
      DataMap()

    expect_snapshot(
      dm$get_field_data(
        dat__ = build_test_dataset(),
        input_field_obj_ = fm1$field_list$TEMPERATURE_FIELD
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

test_that(
  "DataMap::transform_fields::mislabeled input fields",
  {
    dm =
      .self =
      DataMap(
        input_data_field_map = build_test_fieldmaps()$INSTANT_DATA_INPUT_FIELD_MAP
      )

    dat__ = build_test_dataset()

    op_fm =
      build_test_fieldmaps()$INSTANT_DATA_OUTPUT_FIELD_MAP

    expect_error(
      # Attempt to transform the data, but mislabel one field.
      # The system should throw an error indicating that said field is missing
      dm$transform_fields(
        dat__ =
          dat__ %>%
          dplyr::mutate(Depth1 = Depth) %>%
          dplyr::select(-Depth),
        op_fm
      ),
      regexp = "Missing expected input fields: Depth"
    )
  }
)

test_that(
  "DataMap_TagMetaData::instantiation",
  {
    dm_tmd =
      DataMap_TagMetaData(
        make = "Test",
        model = "Tag",
        input_data_field_map =
          FieldMap(
            table = "TEST_FIELDMAP"
          )
      )

    expect_equal(dm_tmd$input_data_field_map$table, "TEST_FIELDMAP")
  }
)

test_that(
  "DataMap_TagMetaData::label",
  {
    dm =
      DataMap_TagMetaData(
        make = "Test",
        model = "Tag"
      )

    expect_equal(dm$label(), "Test Tag")
  }
)
