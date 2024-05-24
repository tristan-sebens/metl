test_that(
  "Pipe::get_node_data",
  {
    tp__ =
      build_test_tag_processor()

    node_data =
      tp__$get_node_data(
        dc =
          Decoder_MicrowaveTelemetry_XTag_Transmitted,
        node =
          tp__$dir_tree__$mt$xt_trans$rr$`118353`
      )

    metadata = node_data[[1]]
    instant_data = node_data[[2]]
    summary_data = node_data[[3]]

    expect_gt(length(node_data), 0)
    expect_snapshot(metadata)
    expect_gt(nrow(metadata), 0)
    expect_snapshot(instant_data)
    expect_gt(nrow(instant_data), 0)
    expect_snapshot(summary_data)
    expect_gt(nrow(summary_data), 0)
  }
)

test_that(
  "Pipe::upsert",
  {
    tp__ =
      build_test_tag_processor()

    con =
      build_temp_db()

    init_tbls =
      DBI::dbListTables(con) %>%
      # Remove any of the sqlite admin tables
      Filter(
        function(t) {
          !stringr::str_detect(t, "sqlite_")
        },
        .
      )

    op_fm =
      build_test_fieldmaps()$INSTANT_DATA_OUTPUT_FIELD_MAP

    out_tbl =
      data.frame(
        dplyr::tbl(
          con,
          op_fm$table
        )
      )

    expect_equal(nrow(out_tbl), 0)

    dc =
      build_test_decoder()

    dat =
      dc$decode_datamap(d = "", dm = dc$data_maps[["instant"]], op_fm = op_fm)

    dat$tag_id = 1

    tp__$upsert(
      con,
      # Insert a subset of the data (~10%)
      dat = head(dat, round(nrow(dat)*.1)),
      output_data_field_map = op_fm
    )

    # Check that any temporary tables have been deleted
    post_upsert_tbls =
      DBI::dbListTables(con) %>%
      # Remove any of the sqlite admin tables
      Filter(
        function(t) {
          !stringr::str_detect(t, "sqlite_")
        },
        .
      )
    expect_contains(init_tbls, post_upsert_tbls)

    out_tbl =
      data.frame(
        dplyr::tbl(
          con,
          op_fm$table
        )
      )

    expect_snapshot(out_tbl)
    expect_gt(nrow(out_tbl), 0)
    expect_lt(nrow(out_tbl), nrow(dat))

    tp__$upsert(
      con,
      dat = dat,
      output_data_field_map = op_fm
    )

    out_tbl =
      data.frame(
        dplyr::tbl(
          con,
          op_fm$table
        )
      )

    expect_snapshot(out_tbl)
    expect_gt(nrow(out_tbl), 0)
    expect_equal(nrow(out_tbl), nrow(dat))

    DBI::dbDisconnect(con)
  }
)

test_that(
  "Pipe::upsert - Failure mid-function",
  {
    tp__ =
      build_test_tag_processor()

    con =
      build_temp_db()

    init_tbls =
      DBI::dbListTables(con) %>%
      # Remove any of the sqlite admin tables
      Filter(
        function(t) {
          !stringr::str_detect(t, "sqlite_")
        },
        .
      )

    op_fm =
      build_test_fieldmaps()$INSTANT_DATA_OUTPUT_FIELD_MAP

    # Change the target table to a non-existent table, forcing the function to fail
    op_fm$table = "NON_EXTANT_TABLE"

    dc =
      build_test_decoder()

    dat =
      dc$decode_datamap(d = "", dm = dc$data_maps[["instant"]], op_fm = op_fm)

    dat$tag_id = 1

    expect_error(
      # This should fail on account of trying to insert into a non-existent table
      tp__$upsert(
        con,
        # Insert a subset of the data (~10%)
        dat = head(dat, round(nrow(dat)*.1)),
        output_data_field_map = op_fm
      )
      ,
      regexp = ".*",
      info = "Checking if an error is caught"
    )

    # Check that any temporary tables have been deleted
    post_upsert_tbls =
      DBI::dbListTables(con) %>%
      # Remove any of the sqlite admin tables
      Filter(
        function(t) {
          !stringr::str_detect(t, "sqlite_")
        },
        .
      )
    # Only tables which were originally in the DB should still be in there.
    expect_contains(init_tbls, post_upsert_tbls)
  }
)


test_that(
  "Pipe::decode_node",
  {
    tp__ =
      build_test_tag_processor()

    dc =
      Decoder_MicrowaveTelemetry_XTag_Transmitted

    con =
      build_temp_db()

    # We shouldn't expect any error to be thrown
    expect_no_error(
      tp__$decode_node(
        con,
        dc,
        node = tp__$dir_tree__$mt$xt_trans$lc$`128305`
      )
    )

    # We should also expect the function to return true.
    expect_true(
      tp__$decode_node(
        con,
        dc,
        node = tp__$dir_tree__$mt$xt_trans$lc$`128305`
      )
    )

    DBI::dbDisconnect(con)
  }
)
