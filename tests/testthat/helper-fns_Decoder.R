test_decoder_on_data_dir =
  function(d, dc) {
    input_meta =
      data.frame(
        tag_num = "1234",
        tag_type = "SuperTag",
        rel_seq = 0,
        species_code = 0
      )

    decode_op = dc$decode(d, input_meta)

    # Ensure data.frames are returned
    expect_gt(length(decode_op), 0)
    # Ensure only expected data.frames are returned
    expect_snapshot(names(decode_op))
    expect_contains(
      c("meta", "instant", "summary", "histogram_meta"),
      names(decode_op)
    )
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

    if("histogram_meta" %in% names(dc$data_maps)) {
      expect_gt(nrow(decode_op[["histogram_meta"]]), 0)
      expect_snapshot(decode_op[["histogram_meta"]])
    }
  }


# Map to indicate what function to use to compare the data in a Field based on that Field's data_type attribute
data_type_check_fn_map =
  list(
    "varchar" = is.character,
    "integer" = is.numeric,
    "double" = is.numeric,
    "boolean" = function(v) {is.numeric(v) & all(v %in% c(0, 1))}
  )

# Test if the data corresponding to Field `f_` matches the expected format based on the 'data_type' attribute of `f_`
check_field_data_type =
  function(dat, f_) {
    check_fn_ix =
      which(
        stringr::str_detect(
          f_$data_type,
          names(data_type_check_fn_map)
        )
      )

    return(
      data_type_check_fn_map[[check_fn_ix]](dat[[f_$name]])
    )
  }

# Test if all of the fields in a given data.frame have the type expected based on their output 'data_type'
check_dat_field_types =
  function(dat, ip_fm, op_fm) {
    # Get the fields common to the input and output FieldMaps
    # Further subset those fields to fields which are actually present in the data
    fl =
      Filter(
        function(f) {f$name %in% names(dat)},
        op_fm$common_fields(ip_fm)
      )

    # Check each field to see if the data in the output frame matches the type expected by the corresponding Field object
    matches =
      fl %>%
      lapply(
        function(f_) {
          check_field_data_type(dat, f_)
        }
      ) %>%
      unlist()

    mismatches =
      Filter(
        function(m) !m,
        matches
      )

    return(mismatches)
  }
