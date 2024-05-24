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
