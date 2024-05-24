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















