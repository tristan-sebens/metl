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
