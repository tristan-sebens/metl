build_test_fieldmaps =
  function() {
    TEST_FIELD_MAP_1 =
      FieldMap(
        table = "TEST_TABLE_1",
        field_list =
          list(
            ID_FIELD =
              Field(
                name = "id",
                data_type = "integer",
                id_field = T
              ),
            TIMESTAMP_FIELD =
              Field(
                name = "timestamp",
                data_type = "varchar(32)",
                id_field = T
              ),
            MAKE_FIELD =
              Field(
                name = "make",
                data_type = "varchar(32)"
              ),
            MODEL_FIELD =
              Field(
                name = "model",
                data_type = "varchar(32)"
              ),
            DATA_FIELD_1 =
               Field(
                 name = "data_1",
                 data_type = "double(10, 2)",
                 units = "m"
               ),
            DATA_FIELD_2 =
              Field(
                name = "data_2",
                data_type = "double(10, 2)",
                units = "psi"
              ),
            DATA_FIELD_3 =
              Field(
                name = "data_3",
                data_type = "double(10, 2)",
                units = "g"
              ),
            DATA_FIELD_4 =
              Field(
                name = "data_4",
                data_type = "double(10, 2)",
                units = "°C"
              )
          )
      )


    TEST_FIELD_MAP_2 =
      FieldMap(
        field_list =
          list(
            ID_FIELD =
              Field(
                name = "Tag ID",
                id_field = T
              ),
            TIMESTAMP_FIELD =
              Field(
                name = "Timestamp",
                id_field = T
              ),
            MAKE_FIELD =
              Field(
                name = "Manufacturer"
              ),
            MODEL_FIELD =
              Field(
                name = "Type"
              ),
            DATA_FIELD_1 =
              Field(
                name = "Data 1",
                units = "m"
              ),
            DATA_FIELD_2 =
              Field(
                name = "Data 1",
                data_type = "double(10, 2)",
                units = "bar"
              ),
            DATA_FIELD_4 =
              Field(
                name = "Data 4",
                units = "°F"
              )
          )
      )

    SUMMARY_DATA_INPUT_FIELD_MAP =
      FieldMap(
        field_list =
          list(
            ID_FIELD =
              Field(
                name = "Tag ID",
                id_field = T
              ),
            START_FIELD =
              Field(
                name = "Start"
              ),
            END_FIELD =
              Field(
                name = "End"
              ),
            DATA_FIELD_1 =
              Field(
                name = "Data 1",
                units = "m"
              ),
            DATA_FIELD_2 =
              Field(
                name = "Data 2",
                units = "bar"
              )
          )
      )

    SUMMARY_DATA_OUTPUT_FIELD_MAP =
      FieldMap(
        table = "SUMMARY_DATA",
        field_list =
          list(
            ID_FIELD =
              Field(
                name = "tag_id",
                id_field = T
              ),
            START_FIELD =
              Field(
                name = "start"
              ),
            END_FIELD =
              Field(
                name = "end"
              ),
            DATA_FIELD_1 =
              Field(
                name = "data_1",
                data_type = "double(10, 2)",
                units = "m"
              ),
            DATA_FIELD_2 =
              Field(
                name = "data_2",
                data_type = "double(10, 2)",
                units = "psi"
              )
          )
      )


    return(c(TEST_FIELD_MAP_1, TEST_FIELD_MAP_2, SUMMARY_DATA_FIELD_MAP))
  }

build_test_metadata_map =
  function() {
    METADATA_MAP =
      FieldMap(
        table = "METADATA_TABLE",
        field_list =
          list(
            ID_FIELD =
              Field(
                name = "tag_id",
                data_type = "integer",
                id_field = T
              ),
            MAKE_FIELD =
              Field(
                name = "make",
                data_type = "varchar(32)"
              ),
            MODEL_FIELD =
              Field(
                name = "model",
                data_type = "varchar(32)"
              )
          )
      )

    return(METADATA_MAP)
  }


build_test_dataset =
  function() {
    read.csv(
      here::here('tests', 'testthat', '_fixtures', '_test_dataset.csv'),
      check.names = F
    )
  }

build_test_summary_dataset =
  function() {
    read.csv(
      here::here('tests', 'testthat', '_fixtures', '_test_summary_dataset.csv'),
      check.names = F
    )
  }

#' Build a temporary testing DB
#'
#' Builds a testing DB based on a snapshot. Test DB is saved to a temporary directory by default
#'
#' @param from_ Path of DB snapshot
#' @param to_ Path of temporary DB
#' @param dats Named list of data.frames to use to populate the DB.
build_test_db =
  function(
    from_ = test_path("_fixtures", "test_db_snapshot.db"),
    to_ = withr::local_tempfile(pattern = "metl_test_db"),
    dats = list()
  ) {
    # Create a new instance of test db based on the stored snapshot
    # By doing this, we can maintain the more complex aspects of a fully
    # instantiated DB (like constraints and primary key definitions) without
    # having to recreate them ourselves every time
    file.copy(
      from = from_,
      to = to_
    )

    # Instantiate a connection to the new DB instance
    con =
      DBI::dbConnect(
        drv = RSQLite::SQLite(),
        to_
      )

    # Populate db tables from `dats`
    for (n in names(dats)) {
      populate_test_db(
        con = con,
        table = n,
        dats[[n]],
        append = T
      )
    }

    return(con)
  }

#' Build a Decoder class for testing
#'
#' @return
#' @export
#'
#' @examples
build_test_decoder =
  function() {
    # Build the necessary inputs

    # First the FieldMaps
    # The input FieldMap for sensor data, which will be missing the ID Field
    sdm_ifm = build_test_fieldmaps()[[2]]
    # Remove all metadata from the first FieldMap
    sdm_ifm$field_list =
      sdm_ifm$field_list[-c(1,3,4)]
    # Next the output FieldMap for sensor data
    sdm_ofm =
      build_test_fieldmaps()[[1]]
    sdm_ofm$field_list =
      # Remove unneeded fields
      sdm_ofm$field_list[-c(3, 4, 7)]

    # Now build the DataMaps

    # First the DataMap for the incoming dataset
    sensordata_map =
      DataMap_TestStub(
        input_data_field_map = sdm_ifm,
        output_data_field_map = sdm_ofm
      )

    # Instantiate the metadata map
    metadata_map =
      DataMap_TestStub(
        input_data_field_map = build_test_fieldmaps()[[2]],
        # output_data_field_map = build_test_fieldmaps()[[1]]
        output_data_field_map = build_test_metadata_map()
      )

    # Finally the datasets
    # The transformed dat1 dataset
    sensor_dat =
      build_test_dataset() %>%
      # Remove the ID field so we can put it back in
      dplyr::select(-c(1, 2, 3))

    metadata_dat =
      build_test_dataset() %>%
      dplyr::select(1, 2, 3) %>%
      metadata_map$transform() %>%
      head(1)

    # Set the outputs for 'extract' to our dummy datasets
    sensordata_map$extract_return = sensor_dat
    metadata_map$extract_return = metadata_dat

    # Instantate the Decoder
    dc =
      Decoder(
        data_maps = list(sensordata_map),
        metadata_map = metadata_map
      )

    return(dc)
  }



# Insert data into the test db
populate_test_db =
  function(con, table, dat, ...) {
    dplyr::copy_to(
      dest = con,
      df = dat,
      name = table,
      temporary = F,
      ...
    )
  }


# Get the root directory of the test data
test_data_d =
  function(...) {
    return(test_path("_fixtures", "_test_data", ...))
  }

#' Find all data directories
#'
#' Recursively travers a directory tree and return only the leaf directories
#'
#' @param root Root of the directory tree
get_data_dirs =
  function(root) {
    folders = list.dirs(root)
    return(folders[sapply(folders, function(x) length(list.dirs(x, recursive = FALSE)) == 0)])
  }

#' Apply test to all data directories
#'
#' Helper function to iteratively test each data directory present in a directory tree
#'
#' @param test_d Root of the directory to iterate over
#' @param test_fn_ Test function to call on each data directory. Must take only a single character parameter `d`, which will be the data directory
test_all_data_dirs =
  function(test_d, test_fn) {
    # Recursively find all data directories present in the directory tree
    for (d in get_data_dirs(test_d)) {
      # Test each data directory
      test_fn(d)
    }
  }

#' Check if vector is empty
#'
#' Returns true if vector contains only NA or NULL values
#'
#' @param v The vector to check
field_is_empty =
  function(v) {
    return(
      any(
        sum(!is.na(v)) == 0,
        sum(!is.null(v)) == 0
      )
    )
  }


#' Test time field(s) format
#'
#' Returns TRUE if all time fields in `dat_t_` are in POSIXct format.
#'
#' @param dm The datamap which produced `dat_t_`
#' @param dat_t_ The data.frame of transformed data.
test_timestamp_format =
  function(dm, dat_t_) {
    # TODO: This should be refactored somehow so that which fields are checked is
    # more elegantly determined.
    for (
      time_field in
      c(
        "TIMESTAMP_FIELD",
        "START_TIME_FIELD",
        "END_TIME_FIELD"
      )
    ) {
      if(time_field %in% names(dm$output_data_field_map$field_list)) {
        # Get the column name of the time field
        time_field_column = dm$output_data_field_map$field_list[[time_field]]$name

        expect(
          ok =
            "POSIXct" %in% class(dat_t_[[time_field_column]]),
          failure_message =
            paste0(
              "Column '", time_field_column, "' is not in POSIXct format"
            )
        )
      }
    }
  }

#' Test for empty fields in a data.frame
#'
#' Returns TRUE if any of the fields in `dat` are empty
#'
#' @param dat The data.frame to check
test_for_empty_fields =
  function(dat, d) {
    # Test that none of the incoming columns are completely empty
    for (field in names(dat)) {
      expect(
        ok =
          !field_is_empty(dat[[field]]),
        failure_message =
          paste0(d, "->\n\t '", field, "' field has no data.")
      )
    }
  }

#' Test DataMap outputs against a single directory
#'
#' @param dm DataMap to test
#' @param d Data directory
test_datamap_directory =
  function(dm, d) {
    # Extract data from the directory
    dat_ =
      dm$extract(d)
    # Perform transformation
    dat_t_ =
      dm$transform(dat_)

    # Test that timestamp data (if present) is in POSIXct format
    test_timestamp_format(dm, dat_t_)

    # Test that none of the transformed fields are completely empty
    test_for_empty_fields(dat_t_, d)

    # Test that data is in expected form
    expect_snapshot(dat_)
    # Test that transformed data is in expected form
    expect_snapshot(dat_t_)
  }

#' Test DataMap configuration
#'
#' Uses snapshot tests to check that the extract and transform outputs of a
#' given DataMap remains consistent.
#'
#' @param dm DataMap object
#' @param d Test data directory
#' @export
test_datamap =
  function(dm, d) {
    test_all_data_dirs(
      test_d = d,
      test_fn =
        function(data_d) {
          test_datamap_directory(dm, data_d)
        }
    )
  }


