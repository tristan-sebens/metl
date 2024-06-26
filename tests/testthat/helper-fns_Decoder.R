test_decoder_on_data_dir =
  function(d, dc) {
    input_meta =
      data.frame(
        tag_num = "1234",
        tag_type = "SuperTag"
      )

    decode_op = dc$decode(d, input_meta)

    # Ensure data.frames are returned
    expect_gt(length(decode_op), 0)
    # Ensure only expected data.frames are returned
    expect_snapshot(names(decode_op))
    expect_contains(c("meta", "instant", "summary"), names(decode_op))
    expect_contains(names(dc$data_maps), names(decode_op))
    # Ensure metadata is returned
    expect_contains(names(decode_op), "meta")
    expect_gt(nrow(decode_op[["meta"]]), 0)
    expect_snapshot(decode_op[["meta"]])

    # Ensure expected data is returned
    if("instant" %in% names(dc$data_maps)) {
      expect_gt(nrow(decode_op[["instant"]]), 0)
      expect_snapshot(decode_op[["instant"]])
    }

    if("summary" %in% names(dc$data_maps)) {
      expect_gt(nrow(decode_op[["summary"]]), 0)
      expect_snapshot(decode_op[["summary"]])
    }
  }


test_decoder_on_all_data_dirs =
  function(root, dc) {
    for (d in get_data_dirs(root)) {
      test_that(
        paste0("Decoder | ", dc$label, " -> ", stringr::str_remove(d, test_data_d())),
        {
          test_decoder_on_data_dir(d, dc)
        }
      )
    }
  }
