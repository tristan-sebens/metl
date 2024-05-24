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
