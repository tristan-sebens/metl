test_that(
  "files_by_pattern",
  {
    d = test_data_d('wc', 'mp', 'ss', '174900')

    total_num_csvs = length(list.files(d, pattern = '.csv'))

    # Should find too many files
    expect_error(
      files_by_pattern(d, ".csv"),
      paste0("File discovery error.*Expected 1 file, found ", total_num_csvs)
    )

    # Should find not enough files
    expect_error(
      files_by_pattern(d, ".csv", n=total_num_csvs+1),
      paste0("File discovery error.*Expected ", total_num_csvs+1," files, found ", total_num_csvs)
    )

    # Should return filenames
    expect_no_error(
      {fs = files_by_pattern(d, ".csv", n=total_num_csvs)}
    )

    # Should return the correct number of filenames
    expect_equal(length(fs), total_num_csvs)
  }
)


test_that(
  "lotek_find_line_in_file::not lotek file",
  {
    fp = test_data_d('_readme_example', '12345', 'sensor_12345.csv')


    expect_error(
      lotek_find_line_in_file(fp, pattern = "CSV DATA"),
      "No matches of 'CSV DATA' found in first"
    )
  }
)
