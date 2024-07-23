test_that(
  "Decoder::throw_error",
  {
    dc = build_test_decoder()

    expect_error(
      dc$data_maps[["meta"]]$throw_error("Test error message"),
      "ERROR - DataMap_TestStub: \nTest error message"
    )
  }
)

test_that(
  "Decoder::decode_datamap",
  {
    dc = build_test_decoder()

    # Check that the data is returned as expected
    metadata =
      dc$decode_datamap(
        d = "placeholder",
        dm = dc$data_maps[["meta"]],
        op_fm = build_test_metadata_map()$METADATA_OUTPUT_FIELD_MAP
      )

    expect_snapshot(metadata)
    expect_gt(nrow(metadata), 0, label = "# rows in decoded metadata")

    instant_data =
      dc$decode_datamap(
        d = "placeholder",
        dm = dc$data_maps[["instant"]],
        op_fm = build_test_fieldmaps()$INSTANT_DATA_OUTPUT_FIELD_MAP
      )

    expect_snapshot(instant_data)
    expect_gt(nrow(instant_data), 0, label = "# rows in decoded instant data")

    summary_data =
      dc$decode_datamap(
        d = "placeholder",
        dm = dc$data_maps[["summary"]],
        op_fm = build_test_fieldmaps()$SUMMARY_DATA_OUTPUT_FIELD_MAP
      )

    expect_snapshot(summary_data)
    expect_gt(nrow(summary_data), 0, label = "# rows in decoded instant data")
  }
)


test_that(
  "Decoder::add_missing_fields::one-to-many replacement",
  {
    d =
      test_data_d('lt', 'lt_1300', 'gt', '3880')

    dc =
      Decoder_Lotek_1300

    meta =
      data.frame(
        tag_num = "3880",
        tag_type = "ET",
        rel_seq = 1,
        species_code = 56789
      )

    ui_dm = dc$create_userinput_datamap(meta)

    dat1 = dc$decode_datamap(d = d, dm = dc$data_maps[["instant"]], op_fm = dc$output_fieldmaps[["instant"]])
    dat2 = dc$decode_datamap(d, dm = ui_dm, op_fm = dc$output_fieldmaps[["input"]])

    dat1_ip_fm = dc$data_maps[["instant"]]$input_data_field_map
    dat1_op_fm = dc$output_fieldmaps[["instant"]]
    dat2_ip_fm = ui_dm$input_data_field_map
    dat2_op_fm = dc$output_fieldmaps[["input"]]

    dat3 =
      dc$add_missing_fields(
        dat1 = dat1,
        dat1_ip_fm = dat1_ip_fm,
        dat1_op_fm = dat1_op_fm,
        dat2 = dat2,
        dat2_ip_fm = dat2_ip_fm,
        dat2_op_fm = dat2_op_fm
      )

    missing_fields =
      dat1_op_fm$common_fields(dat2_op_fm) %>%
      lapply(
        function(f) {
          f$name
        }
      ) %>%
      unlist(use.names = F)

    # Check that the missing fields have been added
    expect_contains(names(dat3), missing_fields)
    # Check that the original fields are still present
    expect_contains(names(dat3), names(dat1))

    # Ensure that no rows have been lost
    expect_equal(
      nrow(dat1),
      nrow(dat3),
      label = "# rows in original data.frame",
      expected.label = "# rows in updated data.frame"
    )
  }
)

test_that(
  "Decoder::add_missing_fields::many-to-one replacement",
  {
    d =
      test_data_d('lt', 'lt_1300', 'gt', '3880')

    dc =
      Decoder_Lotek_1300

    meta =
      data.frame(
        tag_num = "3880",
        tag_type = "ET",
        rel_seq = 1,
        species_code = 56789
      )

    ui_dm = dc$create_userinput_datamap(meta)

    dat1 = dc$decode_datamap(d, dm = dc$data_maps[["instant"]], op_fm = dc$output_fieldmaps[["instant"]])
    dat2 = dc$decode_datamap(d, dm = ui_dm, op_fm = dc$output_fieldmaps[["input"]])

    # Make dat1 have a single row
    dat1 = head(dat1, 1)

    # Make dat2 have multiple identical rows
    dat2 = rbind(dat2, dat2, dat2, dat2)

    dat1_ip_fm = dc$data_maps[["instant"]]$input_data_field_map
    dat1_op_fm = dc$output_fieldmaps[["instant"]]
    dat2_ip_fm = ui_dm$input_data_field_map
    dat2_op_fm = dc$output_fieldmaps[["input"]]

    dat3 =
      dc$add_missing_fields(
        dat1 = dat1,
        dat1_ip_fm = dat1_ip_fm,
        dat1_op_fm = dat1_op_fm,
        dat2 = dat2,
        dat2_ip_fm = dat2_ip_fm,
        dat2_op_fm = dat2_op_fm
      )

    missing_fields =
      dat1_op_fm$common_fields(dat2_op_fm) %>%
      lapply(
        function(f) {
          f$name
        }
      ) %>%
      unlist(use.names = F)

    # Check that the missing fields have been added
    expect_contains(names(dat3), missing_fields)
    # Check that the original fields are still present
    expect_contains(names(dat3), names(dat1))

    # Ensure that no rows have been lost
    expect_equal(
      nrow(dat1),
      nrow(dat3),
      label = "# rows in original data.frame",
      expected.label = "# rows in updated data.frame"
    )
  }
)

test_that(
  "Decoder::add_missing_fields::many-to-many replacement (success)",
  {
    d =
      test_data_d('lt', 'lt_1300', 'gt', '3880')

    dc =
      Decoder_Lotek_1300

    meta =
      data.frame(
        tag_num = "3880",
        tag_type = "ET",
        rel_seq = 1,
        species_code = 56789
      )

    ui_dm = dc$create_userinput_datamap(meta)

    dat1 = dc$decode_datamap(d, dm = dc$data_maps[["instant"]], op_fm = dc$output_fieldmaps[["instant"]])
    dat2 = dc$decode_datamap(d, dm = ui_dm, op_fm = dc$output_fieldmaps[["input"]])

    # Make dat1 have a single row
    dat1 = head(dat1, 4)

    # Make dat2 have multiple rows, each with unique values
    dat2 =
      rbind(
        dat2,
        dplyr::mutate(dat2, TAG_NUM = 3881),
        dplyr::mutate(dat2, TAG_NUM = 3882),
        dplyr::mutate(dat2, TAG_NUM = 3883)
      )

    dat1_ip_fm = dc$data_maps[["instant"]]$input_data_field_map
    dat1_op_fm = dc$output_fieldmaps[["instant"]]
    dat2_ip_fm = ui_dm$input_data_field_map
    dat2_op_fm = dc$output_fieldmaps[["input"]]

    dat3 =
      dc$add_missing_fields(
        dat1 = dat1,
        dat1_ip_fm = dat1_ip_fm,
        dat1_op_fm = dat1_op_fm,
        dat2 = dat2,
        dat2_ip_fm = dat2_ip_fm,
        dat2_op_fm = dat2_op_fm
      )

    missing_fields =
      dat1_op_fm$common_fields(dat2_op_fm) %>%
      lapply(
        function(f) {
          f$name
        }
      ) %>%
      unlist(use.names = F)

    # Check that the missing fields have been added
    expect_contains(names(dat3), missing_fields)
    # Check that the original fields are still present
    expect_contains(names(dat3), names(dat1))
    # Ensure that all of the unique tag numbers made it into the new dataframe
    expect_equal(dat3$TAG_NUM, dat2$TAG_NUM)

    # Ensure that no rows have been lost
    expect_equal(
      nrow(dat1),
      nrow(dat3),
      label = "# rows in original data.frame",
      expected.label = "# rows in updated data.frame"
    )
  }
)

test_that(
  "Decoder::add_missing_fields::many-to-many replacement (success)",
  {
    d =
      test_data_d('lt', 'lt_1300', 'gt', '3880')

    dc =
      Decoder_Lotek_1300

    meta =
      data.frame(
        tag_num = "3880",
        tag_type = "ET",
        rel_seq = 1,
        species_code = 56789
      )

    ui_dm = dc$create_userinput_datamap(meta)

    dat1 = dc$decode_datamap(d, dm = dc$data_maps[["instant"]], op_fm = dc$output_fieldmaps[["instant"]])
    dat2 = dc$decode_datamap(d, dm = ui_dm, op_fm = dc$output_fieldmaps[["input"]])

    # Make dat1 have a single row
    dat1 = head(dat1, 4)

    # Make dat2 have multiple rows, each with unique values
    # Should be TOO MANY rows
    dat2 =
      rbind(
        dat2,
        dplyr::mutate(dat2, TAG_NUM = 3881),
        dplyr::mutate(dat2, TAG_NUM = 3882),
        dplyr::mutate(dat2, TAG_NUM = 3883),
        dplyr::mutate(dat2, TAG_NUM = 3884),
        dplyr::mutate(dat2, TAG_NUM = 3885)
      )

    expect_error(
      dc$add_missing_fields(
        dat1 = dat1,
        dat1_ip_fm = dc$data_maps[["instant"]]$input_data_field_map,
        dat1_op_fm = dc$output_fieldmaps[["instant"]],
        dat2 = dat2,
        dat2_ip_fm = ui_dm$input_data_field_map,
        dat2_op_fm = dc$output_fieldmaps[["input"]]
      ),
      "Both fields have multiple rows, but not the same number of rows, so behavior is undefined"
    )
  }
)

test_that(
  "Decoder::add_missing_fields::empty_dataframe",
  {
    d =
      test_data_d('lt', 'lt_1300', 'gt', '3880')

    dc =
      Decoder_Lotek_1300

    dat2 = dc$decode_datamap(d, dm = dc$data_maps[["meta"]], op_fm = dc$output_fieldmaps[["meta"]])

    dat1 =
      dc$add_missing_fields(
      dat1 = data.frame(),
      dat1_ip_fm = dc$data_maps[["instant"]]$input_data_field_map,
      dat1_op_fm = dc$output_fieldmaps[["instant"]],
      dat2 = dat2,
      dat2_ip_fm = dc$data_maps[["meta"]]$input_data_field_map,
      dat2_op_fm = dc$output_fieldmaps[["meta"]]
    )

    expect_equal(nrow(dat1), 0)
    expect_equal(ncol(dat1), 0)
  }
)

test_that(
  "Decoder::complete_dataframes",
  {
    d =
      test_data_d('mt', 'xt_trans', 'rr', '118353')

    dc =
      Decoder_MicrowaveTelemetry_XTag_Transmitted

    # Synthesize the requsite input data
    input =
      data.frame(
        tag_num = "1234",
        tag_type = "SuperTag",
        rel_seq = 1,
        species_code = 56789
      )

    # Create an empty DataMap to return the user-inputted data
    DataMap_UserInput =
      DataMap(
        input_data_field_map = USER_INPUT_FIELDS,
        extract_fn =
          function(d) {
            return(input)
          }
      )

    data_maps_expanded =
      append(dc$data_maps, list("input" = DataMap_UserInput))

    # Initialize an empty list to hold data
    decoded_data_list = list()

    # Iterate over each data map in the decoder's data_maps list
    for (data_type in names(data_maps_expanded)) {
      decoded_data =
        dc$decode_datamap(
          dm = data_maps_expanded[[data_type]],
          d = d,
          op_fm = dc$output_fieldmaps[[data_type]]
        )

      # Add the decoded data to the list
      decoded_data_list[[data_type]] = decoded_data
    }

    # Complete the dataframes with fields from each other as necessary
    completed_data =
      dc$complete_dataframes(
        dfs =
          decoded_data_list,
        ip_fms =
          lapply(data_maps_expanded[names(data_maps_expanded)], function(dm) dm$input_data_field_map),
        op_fms =
          dc$output_fieldmaps[names(data_maps_expanded)]
      )

    names(completed_data) = names(decoded_data_list)

    metadata = decoded_data_list[["meta"]]
    instant_data = decoded_data_list[["instant"]]
    summary_data = decoded_data_list[["summary"]]

    metadata_c = completed_data[["meta"]]
    instant_data_c = completed_data[["instant"]]
    summary_data_c = completed_data[["summary"]]

    # Check that each completed dataframe matches the existing snapshot,
    # and that all of the fields in the un-completed data.frame are still
    # present in the completed data.frame
    expect_snapshot(metadata_c)
    expect_contains(names(metadata_c), names(metadata))

    expect_snapshot(instant_data_c)
    expect_contains(names(instant_data_c), names(instant_data))

    expect_snapshot(summary_data_c)
    expect_contains(names(summary_data_c), names(summary_data))

    expect_contains(
      names(instant_data_c),
      dc$output_fieldmaps[["meta"]]$field_list$TAG_ID_FIELD$name
    )

    expect_contains(
      names(summary_data_c),
      dc$output_fieldmaps[["meta"]]$field_list$TAG_ID_FIELD$name
    )
  }
)


test_that(
  "Decoder::decode",
  {
    d =
      test_data_d('mt', 'xt_trans', 'rr', '118353')

    dc =
      Decoder_MicrowaveTelemetry_XTag_Transmitted

    input_meta =
      data.frame(
        tag_num = "1234",
        tag_type = "SuperTag",
        rel_seq = 1,
        species_code = 56789
      )

    decode_op = dc$decode(d, input_meta)

    # Ensure data.frames are returned
    expect_gt(length(decode_op), 0)
    # Ensure only expected data.frames are returned
    expect_equal(names(decode_op), c("meta", "instant", "summary", "field_meta"))
    # Ensure returned data.frames are not empty
    expect_gt(nrow(decode_op[["meta"]]), 0)
    expect_gt(nrow(decode_op[["instant"]]), 0)
    expect_gt(nrow(decode_op[["summary"]]), 0)
    # Check snapshots
    expect_snapshot(decode_op[["meta"]])
    expect_snapshot(decode_op[["instant"]])
    expect_snapshot(decode_op[["summary"]])
  }
)

test_that(
  "Decoder::decode_to_dataframes",
  {
    d =
      test_data_d('mt', 'xt_trans', 'rr', '118353')

    input_meta =
      data.frame(
        tag_num = "1234",
        tag_type = "SuperTag",
        rel_seq = 1,
        species_code = 56789
      )

    dc =
      Decoder_MicrowaveTelemetry_XTag_Transmitted

    res = dc$decode_to_dataframes(d, meta = input_meta)

    # Check that there is one data.frame for every data map
    expect_contains(names(res), names(dc$data_maps))
    # Check that every data-type returned data in the form of a data.frame
    for (data_type in names(res)) {
      data_type_dat = res[[data_type]]
      expect_gt(nrow(data_type_dat), 0)
      expect_contains(class(data_type_dat), "data.frame")
    }
  }
)

test_that(
  "Decoder::decode_to_csv",
  {
    d =
      test_data_d('mt', 'xt_trans', 'rr', '118353')

    input_meta =
      data.frame(
        tag_num = "1234",
        tag_type = "SuperTag",
        rel_seq = 1,
        species_code = 56789
      )

    dc =
      Decoder_MicrowaveTelemetry_XTag_Transmitted

    out_d = tempdir('csv_data')

    dc$decode_to_csv(d, meta = input_meta, op_d = out_d)

    # Check that all of the expected files were created
    expected_filenames =
      lapply(
        names(dc$data_maps),
        function(data_type) paste0(data_type, '.csv')
      ) %>%
      unlist()
    expect_contains(list.files(out_d), expected_filenames)
    # Check that every data-type returned data
    for (data_type in names(dc$data_maps)) {
      data_type_dat = read.csv(file.path(out_d, paste0(data_type, '.csv')))
      expect_gt(nrow(data_type_dat), 0)
      expect_contains(class(data_type_dat), "data.frame")
    }
  }
)

test_that(
  "Decoder::decode_to_db",
  {
    d =
      test_data_d('mt', 'xt_trans', 'rr', '118353')

    input_meta =
      data.frame(
        tag_num = "1234",
        tag_type = "SuperTag",
        rel_seq = 1,
        species_code = 56789
      )

    dc =
      Decoder_MicrowaveTelemetry_XTag_Transmitted

    db_field_maps = dc$output_fieldmaps[c("meta", "field_meta", "instant", "summary")]

    db_conn = build_db_from_fieldmaps(fms = db_field_maps)

    # Check that each of the tables in the DB are empty
    for (data_type in names(db_field_maps)) {
      db_test_table = dplyr::tbl(db_conn, db_field_maps[[data_type]]$table)
      expect_equal(nrow(data.frame(db_test_table)), 0)
    }

    dc$decode_to_db(d, meta = input_meta, con = db_conn)
    res = dc$decode_to_dataframes(d, meta = input_meta)

    # Check that each of the tables in the DB were populated correctly
    for (data_type in names(db_field_maps)) {
      db_test_table = dplyr::tbl(db_conn, db_field_maps[[data_type]]$table)
      db_tbl_dat = data.frame(db_test_table)
      # No longer emtpy
      expect_gt(nrow(db_tbl_dat), 0)
      # Same number of rows as original data
      expect_equal(nrow(db_tbl_dat), nrow(res[[data_type]]))
    }

    DBI::dbDisconnect(db_conn)
  }
)

test_that(
  "Decoder::decode::verify_data_directory",
  {
    dc = Decoder_Lotek_1300

    d = "non_existant_directory"

    # Non existant directory
    expect_error(
      dc$verify_data_directory(d),
      "The selected directory does not exist."
    )

    # Existing directory, fails identify but is still valid
    d = test_data_d('lt', 'lt_1300', 'sf', '5712')
    # Decoder should throw a warning, but not an error
    expect_no_error(expect_warning(dc$verify_data_directory(d)))

    expect_warning(
      {
        res =
          dc$decode_to_dataframes(
            d,
            meta =
              data.frame(
                tag_num = "5712",
                tag_type = "ET",
                rel_seq = 1,
                species_code = 56789
              )
          )
      }
    )

    # Should still decode properly
    expect_gt(nrow(res$meta), 0)
    expect_gt(ncol(res$meta), 0)
    expect_gt(nrow(res$instant), 0)
    expect_gt(ncol(res$instant), 0)


    # Existing directory, invalid for selected Decoder
    d = test_data_d('so', 'dst', 'sf', 'JS7977')

    expect_warning(
      expect_error(
        dc$verify_data_directory(d),
        "The selected directory does not contain the necessary data to proceed."
      )
    )
  }
)

test_that(
  "Decoder::upsert",
  {
    test_op_fm =
      FieldMap(
        table = "TEST_TABLE",
        field_list =
          list(
            TAG_ID_FIELD =
              Field(
                name = "TAG_ID",
                id_field = T
              ),
            TAG_TYPE_FIELD =
              Field(
                name = "TAG_TYPE",
                id_field = F
              )
          )
      )

    db_conn =
      RSQLite::dbConnect(
        drv = RSQLite::SQLite(),
        # dbname = tempfile(fileext = ".db")
        # Create the testing DB in memory
        dbname = ":memory:"
      )

    DBI::dbExecute(
      db_conn,
      statement =
        DBI::SQL(
          'CREATE TABLE "TEST_TABLE" (
            "TAG_ID"	INTEGER,
            "TAG_TYPE" VARCHAR(10),
            UNIQUE("TAG_ID")
          );'
        )
    )

    # Purposefully trip an error in the update step:
    expect_error(
      Decoder()$upsert(
        con = db_conn,
        dat = data.frame("TAG_ID" = 1),
        output_data_field_map = test_op_fm
      ),
      "Error updating TEST_TABLE from temporary table"
    )

    # Test that no temporary tables remain in the DB
    expect_equal(
      length(
          Filter(
          function(table)
              stringr::str_detect(table, stringr::regex('temp', ignore_case = T)),
          DBI::dbListTables(db_conn)
        )
      ),
      0
    )

    dat1 = data.frame(TAG_ID = 1, TAG_TYPE = 'A')

    Decoder()$upsert(
      con = db_conn,
      dat = dat1,
      output_data_field_map = test_op_fm
    )

    # Read the table data in from the DB
    db_test_table = dplyr::tbl(db_conn, test_op_fm$table)

    # For the moment, the only data present in the database should be that which we just inserted
    expect_true(all(data.frame(db_test_table) == dat1))

    # We'll upsert the same data again, which should have no effect on the table
    Decoder()$upsert(
      con = db_conn,
      dat = dat1,
      output_data_field_map = test_op_fm
    )

    # Again, all of the data in the table should be that which is in dat1
    expect_true(all(data.frame(db_test_table) == dat1))

    # Now we'll insert new data, which should be added to the table
    # This should update the TAG_TYPE field on our one row
    dat2 = data.frame(TAG_ID = 1, TAG_TYPE = 'B')

    Decoder()$upsert(
      con = db_conn,
      dat = dat2,
      output_data_field_map = test_op_fm
    )

    expect_false(all(data.frame(db_test_table) == dat1))
    expect_true(all(data.frame(db_test_table) == dat2))

    # Finally we'll insert data from a new tag, which should create a new row
    dat3 = data.frame(TAG_ID = 2, TAG_TYPE = 'C')

    Decoder()$upsert(
      con = db_conn,
      dat = dat3,
      output_data_field_map = test_op_fm
    )

    # Now the data from both dat2 and dat2 should be in the table
    expect_true(all(data.frame(db_test_table) == rbind(dat2, dat3)))

    DBI::dbDisconnect(db_conn)
  }
)


























