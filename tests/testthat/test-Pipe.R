test_that(
  "Pipe::register_decoder",
  {
    dcs =
      build_test_decoder_list()[-1]

    tp__ =
      build_test_tag_processor(decoders = dcs)

    expect_equal(
      length(tp__$decoders),
      length(dcs),
      label = "# of registered decoders",
      expected.label = "# of supplied decoders"
    )

    tp__$register_decoder(build_test_decoder_list()[[1]])

    expect_equal(
      length(tp__$decoders),
      length(build_test_decoder_list()),
      label = "# of registered decoders",
      expected.label = "# of supplied decoders"
    )

    tp__$register_decoder(build_test_decoder_list()[[1]])

    expect_equal(
      length(tp__$decoders),
      length(build_test_decoder_list()),
      label = "# of registered decoders",
      expected.label = "# of supplied decoders"
    )
  }
)

test_that(
  "Pipe::num_leaves",
  {
    tp__ =
      build_test_tag_processor()

    expect_snapshot(tp__$num_leaves(tp__$dir_tree__))
  }
)

test_that(
  "Pipe::num_decoded",
  {
    tp__ =
      build_test_tag_processor()

    expect_equal(
      tp__$num_decoded(tp__$dir_tree__),
      0,
      label = "# of decoded directories"
    )

    con =
      build_temp_db()

    tp__$process_to_db(con, silent=T)
    expect_snapshot(tp__$num_decoded(tp__$dir_tree__))

    DBI::dbDisconnect(con)
  }
)

test_that(
  "Pipe::build_datatree",
  {
    tp__ =
      build_test_tag_processor()

    expect_snapshot(tp__$dir_tree__)
  }
)

test_that(
  "Pipe::build_report",
  {
    tp__ =
      build_test_tag_processor()

    con =
      build_temp_db()

    tp__$process_to_db(con, silent=T)

    report = tp__$build_report()
    expect_snapshot(report)

    DBI::dbDisconnect(con)
  }
)

test_that(
  "Pipe::add_missing_fields",
  {
    tp__ =
      build_test_tag_processor()

    d =
      tp__$dir_tree__$lt$lt_1300$gt$`3880`$fullPath

    dc =
      Decoder_Lotek_1300

    dat1 = dc$decode_datamap(d, dm = dc$data_maps[["instant"]], op_fm = tp__$output_fieldmaps[["instant"]])
    dat2 = dc$decode_datamap(d, dm = dc$data_maps[["meta"]], op_fm = tp__$output_fieldmaps[["meta"]])

    dat3 =
      tp__$add_missing_fields(
        dat1 = dat1,
        dat1_ip_fm = dc$data_maps[["instant"]]$input_data_field_map,
        dat1_op_fm = tp__$output_fieldmaps[["instant"]],
        dat2 = dat2,
        dat2_ip_fm = dc$data_maps[["meta"]]$input_data_field_map,
        dat2_op_fm = tp__$output_fieldmaps[["meta"]]
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
  "Pipe::complete_dataframes",
  {
    tp__ =
      build_test_tag_processor()

    d =
      tp__$dir_tree__$mt$xt_trans$rr$`118353`$fullPath

    dc =
      Decoder_MicrowaveTelemetry_XTag_Transmitted


    # Decode metadata
    metadata =
      dc$decode_datamap(
        d = d,
        dm = dc$data_maps[["meta"]],
        op_fm = tp__$output_fieldmaps[["meta"]]
      )

    # Decode instant data
    instant_data =
      dc$decode_datamap(
        d = d,
        dc$data_maps[["instant"]],
        op_fm = tp__$output_fieldmaps[["instant"]]
      )

    # Decode summary data
    summary_data =
      dc$decode_datamap(
        d = d,
        dc$data_maps[["summary"]],
        op_fm = tp__$output_fieldmaps[["summary"]]
      )

    # Now that we have all of the necessary data, complete
    # the decoded data.frames
    completed_dfs =
      tp__$complete_dataframes(
        dfs =
          list(
            metadata,
            instant_data,
            summary_data
          ),
        ip_fms =
          list(
            dc$data_maps[["meta"]]$input_data_field_map,
            dc$data_maps[["instant"]]$input_data_field_map,
            dc$data_maps[["summary"]]$input_data_field_map
          ),
        op_fms =
          list(
            tp__$output_fieldmaps[["meta"]],
            tp__$output_fieldmaps[["instant"]],
            tp__$output_fieldmaps[["summary"]]
          )
      )

    metadata_c = completed_dfs[[1]]
    instant_data_c = completed_dfs[[2]]
    summary_data_c = completed_dfs[[3]]

    # Check that each completed dataframe matches the existing snapshot,
    # and that all of the fields in the un-completed data.frame are still
    # present in the completed data.frame
    expect_snapshot(metadata_c)
    expect_contains(names(metadata_c), names(metadata))
    # Also ensure that the metadata data.frame remained unchanged
    expect_equal(names(metadata_c), names(metadata))

    expect_snapshot(instant_data_c)
    expect_contains(names(instant_data_c), names(instant_data))

    expect_snapshot(summary_data_c)
    expect_contains(names(summary_data_c), names(summary_data))

    # Check that the two
    expect_contains(
      names(instant_data_c),
      tp__$output_fieldmaps[["meta"]]$field_list$TAG_ID_FIELD$name
    )

    expect_contains(
      names(summary_data_c),
      tp__$output_fieldmaps[["meta"]]$field_list$TAG_ID_FIELD$name
    )
  }
)

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

# Test the 'decode_node' function against all test directories
test_all_data_dirs(
  test_d = test_data_d(),
  test_fn =
    function(d) {
      d_sub = stringr::str_replace(d, test_data_d(), '')

      # Build name for test
      test_that(
        paste0(
          "Pipe::process_node - ",
          d_sub
        ),
        {
          # Test an individual directory by rooting the Pipe in d
          tp__ =
            build_test_tag_processor(d = d)

          # The root of the tree is the node we are interested in
          node = tp__$dir_tree__

          con =
            build_temp_db()

          expect_false(node$decoded)
          expect_null(node$tag_identifier_results)
          expect_null(node$pos_id)

          tp__$pre_process_node(node)
          tp__$process_node(node, con)

          expect_true(node$decoded)
          # Expect the identifier results to be populated
          expect_gt(nrow(node$tag_identifier_results), 0)
          # Expect each decoder to be represented in the identifier results
          expect_equal(nrow(node$tag_identifier_results), length(tp__$decoders))
          # Expect only one decoder to have matched to the directory
          expect_equal(sum(node$tag_identifier_results$result), 1)
          expect_equal(node$decode_error, "")

          DBI::dbDisconnect(con)
        }
      )
    }
)

test_that(
  "Pipe::process_node - Failure",
  {
    # Instantiate a tag processor that is missing the Lotek 1000 Decoder
    tp__ =
      build_test_tag_processor(
        decoders = build_test_decoder_list()[-1]
      )

    node =
      tp__$dir_tree__$lt$`lt_1000_1250`$sf$`4067`

    con =
      build_temp_db()

    # Try to decode a directory of the missing type
    tp__$process_node(node = node, con = con)

    expect_false(node$decoded)
    expect_equal(node$decoder, NULL)
    expect_snapshot(node$decode_error)

    DBI::dbDisconnect(con)
  }
)

test_that(
  "Pipe::process_to_db",
  {
    tp__ =
      build_test_tag_processor(
        d = test_data_d()
      )

    con =
      build_temp_db()

    tp__$process_to_db(con, silent = T)

    report =
      tp__$build_report()

    expect_equal(report$pct_decoded[[1]], 100)

    meta_dat =
      data.frame(
        dplyr::tbl(
          con,
          tp__$output_fieldmaps[["meta"]]$table
        )
      )
    expect_gt(nrow(meta_dat), 0)
    expect_snapshot(meta_dat)

    instant_dat =
      data.frame(
        dplyr::tbl(
          con,
          tp__$output_fieldmaps[["instant"]]$table
        )
      )
    expect_gt(nrow(instant_dat), 0)
    expect_snapshot(instant_dat)

    summary_dat =
      data.frame(
        dplyr::tbl(
          con,
          tp__$output_fieldmaps[["summary"]]$table
        )
      )
    expect_gt(nrow(summary_dat), 0)
    expect_snapshot(summary_dat)

    DBI::dbDisconnect(con)
  }
)


test_that(
  "Pipe::process_to_dataframes",
  {
    tp__ =
      build_test_tag_processor(
        d = test_data_d()
      )

    res =
      tp__$process_to_dataframes(silent = T)

    report =
      tp__$build_report()

    expect_equal(report$pct_decoded[[1]], 100)

    meta_dat = res$meta
    expect_gt(nrow(meta_dat), 0)
    expect_snapshot(meta_dat)

    instant_dat = res$instant
    expect_gt(nrow(instant_dat), 0)
    expect_snapshot(instant_dat)

    summary_dat = res$summary
    expect_gt(nrow(summary_dat), 0)
    expect_snapshot(summary_dat)
  }
)


test_that(
  "Pipe::process_to_csv",
  {
    tp__ =
      build_test_tag_processor(
        d = test_data_d()
      )

    test_d =
      withr::local_tempdir(pattern = "metl_test_csv")

    tp__$process_to_csv(out_d = test_d, silent = T)

    report =
      tp__$build_report()

    expect_equal(report$pct_decoded[[1]], 100)

    for (data_type in names(tp__$output_fieldmaps)) {
      test_that(
        paste0("Pipe::process_to_csv - ", data_type),
        {
          dat =
            read.csv(
              file.path(
                test_d,
                paste0(data_type, '.csv')
              )
            )

          expect_gt(nrow(dat), 0)
          expect_snapshot(dat)
        }
      )
    }
  }
)















