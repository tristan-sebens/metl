
test_that(
  "FieldMap::generate_data_type_list",
  {
    test_fm_1 = build_test_fieldmaps()$INSTANT_DATA_OUTPUT_FIELD_MAP
    expect_snapshot(test_fm_1$generate_data_type_list())
  }
)

test_that(
  "FieldMap::common_fields",
  {
    t_fm1 = build_test_fieldmaps()$INSTANT_DATA_INPUT_FIELD_MAP
    t_fm2 = build_test_fieldmaps()$INSTANT_DATA_OUTPUT_FIELD_MAP

    # Get the Fields which are common between the two FieldMaps
    fm1_fm2_cf = t_fm1$common_fields(t_fm2)

    # Check that the names of the Field objects are the same as before
    # For some reason we can't check the actual objects, b/c the environment
    # on the ref obj changes between test iterations (in a non-meaningful way)
    expect_snapshot(names(fm1_fm2_cf))
  }
)

test_that(
  "FieldMap::uncommon_fields",
  {
    t_fm1 = build_test_fieldmaps()$INSTANT_DATA_INPUT_FIELD_MAP
    t_fm2 = build_test_fieldmaps()$INSTANT_DATA_OUTPUT_FIELD_MAP

    # Get the Fields which are present in fm1, but absent in fm2
    fm1_fm2_ucf = t_fm1$uncommon_fields(t_fm2)
    # Vice-versa
    fm2_fm1_ucf = t_fm2$uncommon_fields(t_fm1)


    # Check that the names of the Field objects are the same as before
    # For some reason we can't check the actual objects, b/c the environment
    # on the ref obj changes between test iterations (in a non-meaningful way)
    expect_snapshot(names(fm1_fm2_ucf))
    expect_snapshot(names(fm2_fm1_ucf))

    # Get the uncommon fields between a fm and itself (should be empty)
    fm1_fm1_ucf = t_fm1$uncommon_fields(t_fm1)
    expect_snapshot(names(fm1_fm1_ucf))
  }
)

test_that(
  "FieldMap::get_id_fields",
  {
    t_fm1 = build_test_fieldmaps()$INSTANT_DATA_OUTPUT_FIELD_MAP

    # Get the id fields from fm1
    expect_snapshot(names(t_fm1$get_id_fields()))

  }
)

test_that(
  "FieldMap::get_id_field_names",
  {
    t_fm1 = build_test_fieldmaps()$INSTANT_DATA_OUTPUT_FIELD_MAP

    # Get the names of the id fields from fm1
    expect_snapshot(t_fm1$get_id_field_names())

  }
)


test_that(
  "FieldMap::get_field_names",
  {
    t_fm1 = build_test_fieldmaps()$INSTANT_DATA_OUTPUT_FIELD_MAP

    # Get the names of the fields from fm1
    expect_snapshot(t_fm1$get_field_names())

  }
)




















