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
