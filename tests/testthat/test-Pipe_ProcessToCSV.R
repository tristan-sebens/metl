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















