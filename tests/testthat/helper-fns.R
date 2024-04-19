build_test_fieldmaps =
  function() {
    INSTANT_DATA_INPUT_FIELD_MAP =
      WILDLIFE_COMPUTERS_MINIPAT_INSTANT_DATA_FIELDS
      # MICROWAVE_TELEMETRY_XTAG_INSTANT_DATA_FIELDS
      # FieldMap(
      #   field_list =
      #     list(
      #       TIMESTAMP_FIELD =
      #         Field(
      #           name = "Timestamp",
      #           id_field = T
      #         ),
      #       DATA_FIELD_1 =
      #         Field(
      #           name = "Depth",
      #           units = "m"
      #         ),
      #       DATA_FIELD_2 =
      #         Field(
      #           name = "Pressure",
      #           data_type = "double(10, 2)",
      #           units = "bar"
      #         ),
      #       DATA_FIELD_4 =
      #         Field(
      #           name = "Temperature",
      #           units = "°F"
      #         )
      #     )
      # )

    INSTANT_DATA_OUTPUT_FIELD_MAP =
      ABLTAG_DATA_INSTANT_TABLE_FIELDS
      # FieldMap(
      #   table = "INSTANT_DATA",
      #   field_list =
      #     list(
      #       TAG_ID_FIELD =
      #         Field(
      #           name = "tag_id",
      #           data_type = "integer",
      #           id_field = T
      #         ),
      #       TIMESTAMP_FIELD =
      #         Field(
      #           name = "timestamp",
      #           data_type = "varchar(32)",
      #           id_field = T
      #         ),
      #       DATA_FIELD_1 =
      #          Field(
      #            name = "depth",
      #            data_type = "double(10, 2)",
      #            units = "m"
      #          ),
      #       DATA_FIELD_2 =
      #         Field(
      #           name = "pressure",
      #           data_type = "double(10, 2)",
      #           units = "psi"
      #         ),
      #       DATA_FIELD_3 =
      #         Field(
      #           name = "weight",
      #           data_type = "double(10, 2)",
      #           units = "g"
      #         )
      #     )
      # )

    SUMMARY_DATA_INPUT_FIELD_MAP =
      WILDLIFE_COMPUTERS_MINIPAT_SUMMARY_DATA_FIELDS
      # FieldMap(
      #   field_list =
      #     list(
      #       START_FIELD =
      #         Field(
      #           name = "Start"
      #         ),
      #       END_FIELD =
      #         Field(
      #           name = "End"
      #         ),
      #       DEPTH_FIELD =
      #         Field(
      #           name = "Depth",
      #           units = "m"
      #         ),
      #       PRESSURE_FIELD =
      #         Field(
      #           name = "Pressure",
      #           units = "bar"
      #         )
      #     )
      # )

    SUMMARY_DATA_OUTPUT_FIELD_MAP =
      ABLTAG_DATA_SUMMARY_TABLE_FIELDS
      # FieldMap(
      #   table = "SUMMARY_DATA",
      #   field_list =
      #     list(
      #       TAG_ID_FIELD =
      #         Field(
      #           name = "tag_id",
      #           id_field = T
      #         ),
      #       START_FIELD =
      #         Field(
      #           name = "start",
      #           id_field = T
      #         ),
      #       END_FIELD =
      #         Field(
      #           name = "end",
      #           id_field = T
      #         ),
      #       DEPTH_FIELD =
      #         Field(
      #           name = "depth",
      #           data_type = "double(10, 2)",
      #           units = "m"
      #         ),
      #       PRESSURE_FIELD =
      #         Field(
      #           name = "pressure",
      #           data_type = "double(10, 2)",
      #           units = "psi"
      #         )
      #     )
      # )

    return(
      list(
        "INSTANT_DATA_INPUT_FIELD_MAP" = INSTANT_DATA_INPUT_FIELD_MAP,
        "INSTANT_DATA_OUTPUT_FIELD_MAP" = INSTANT_DATA_OUTPUT_FIELD_MAP,
        "SUMMARY_DATA_INPUT_FIELD_MAP" = SUMMARY_DATA_INPUT_FIELD_MAP,
        "SUMMARY_DATA_OUTPUT_FIELD_MAP" = SUMMARY_DATA_OUTPUT_FIELD_MAP
      )
    )
  }

build_test_metadata_map =
  function() {
    METADATA_MAP =
      ABLTAG_METADATA_TABLE_FIELDS
      # FieldMap(
      #   table = "METADATA",
      #   field_list =
      #     list(
      #       TAG_ID_FIELD =
      #         Field(
      #           name = "tag_id",
      #           data_type = "integer",
      #           id_field = T
      #         ),
      #       MAKE_FIELD =
      #         Field(
      #           name = "make",
      #           data_type = "varchar(32)"
      #         ),
      #       MODEL_FIELD =
      #         Field(
      #           name = "model",
      #           data_type = "varchar(32)"
      #         )
      #     )
      # )

    return(METADATA_MAP)
  }

test_d =
  here::here('tests', 'testthat', '_fixtures', '_test_data')
mt_d =
  file.path(test_d, 'Microwave Telemetry')
mt_x_d =
  file.path(mt_d, 'X-Tag', 'Lingcod', '128305')
wc_d =
  file.path(test_d, 'Wildlife Computers')
wc_mp_d =
  file.path(wc_d, 'MiniPAT', 'Sleeper Shark', '174898')

build_test_dataset =
  function() {
    test_inst_fp = here::here('tests', 'testthat', '_fixtures', '_test_instant_dataset.csv')
    read.csv(
      test_inst_fp,
      check.names = F
    )
    # DataMap_MicrowaveTelemetry_XTag_InstantSensorData$extract(mt_x_d)
    # DataMap_WildlifeComputers_MiniPAT_InstantSensorData$extract(wc_mp_d) %>%
    #   dplyr::filter(!is.na(Depth)) %>%
    #   head(10) %>%
    #   write.csv(test_inst_fp, row.names = F)
  }

build_test_summary_dataset =
  function() {
    test_summ_fp = here::here('tests', 'testthat', '_fixtures', '_test_summary_dataset.csv')
    read.csv(
      test_summ_fp,
      check.names = F
    )
    # DataMap_MicrowaveTelemetry_XTag_SummarySensorData$extract(mt_x_d)
    # DataMap_WildlifeComputers_MiniPAT_SummarySensorData$extract(wc_mp_d) %>%
    #   head(10) %>%
    #   write.csv(test_summ_fp, row.names = F)
  }

build_test_metadata_dataset =
  function() {
    test_metadata_fp = here::here('tests', 'testthat', '_fixtures', '_test_metadata_dataset.csv')
    read.csv(
      test_metadata_fp,
      check.names = F
    )
    # DataMap_MicrowaveTelemetry_XTag_TagMetaData$extract(mt_x_d)
    # DataMap_WildlifeComputers_MiniPAT_TagMetaData$extract(wc_mp_d) %>%
    #   write.csv(test_metadata_fp, row.names = F)
  }

#' Get list of decoders for testing
#'
#' Identifiers must be instantiated with a list of Decoder generators. This function provides that list
build_test_decoder_list =
  function() {
    return(
      list(
        Decoder_Lotek_1000.1100.1250,
        Decoder_Lotek_1300,
        Decoder_Lotek_1400.1800,
        Decoder_MicrowaveTelemetry_XTag,
        Decoder_StarOddi_DST,
        Decoder_StarOddi_DSTmagnetic,
        Decoder_WildlifeComputers_MiniPAT,
        Decoder_WildlifeComputers_BenthicSPAT,
        Decoder_DesertStar_SeaTagMOD
      )
    )
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

    # First the DataMaps for the incoming datasets

    metadata_map =
      DataMap_TestStub(
        input_data_field_map =
          build_test_metadata_map(),
        extract_return =
          build_test_metadata_dataset(),
        get_tag_id_return =
          "1"
      )

    instant_sensor_data_map =
      DataMap_TestStub(
        input_data_field_map =
          build_test_fieldmaps()$INSTANT_DATA_INPUT_FIELD_MAP,
        extract_return = build_test_dataset()
      )

    summary_sensor_data_map =
      DataMap_TestStub(
        input_data_field_map =
          build_test_fieldmaps()$SUMMARY_DATA_INPUT_FIELD_MAP,
        extract_return = build_test_summary_dataset()
      )

    # Instantate the Decoder
    dc =
      Decoder(
        instant_datamap =
            instant_sensor_data_map,
        summary_datamap =
            summary_sensor_data_map,
        metadata_map =
          metadata_map
      )

    return(dc)
  }

build_test_tag_processor =
  function(
    d = test_data_d(), # Root at the base of the test data directory
    decoders = build_test_decoder_list(),
    # The following parameters are the output FieldMap objects for the metadata, instant data, and summary tables, respectivey
    #TODO: These tests would ideally not use these objects, as they're technically subject to being changed in the future. However, we need to use FieldMaps which match the input/output structure of our test data, and it would take time to rewrite them in the proper way, time that I think is better spent otherwise at the moment. However, this is worth fixing in the future.
    metadata_fieldmap = ABLTAG_METADATA_TABLE_FIELDS,
    instant_fieldmap = ABLTAG_DATA_INSTANT_TABLE_FIELDS,
    summary_fieldmap = ABLTAG_DATA_SUMMARY_TABLE_FIELDS
  ) {
    TagProcessor(
      d = d,
      decoders = decoders,
      metadata_fieldmap = metadata_fieldmap,
      instant_fieldmap = instant_fieldmap,
      summary_fieldmap = summary_fieldmap
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
    dats = list(),
    ...
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
        to_,
        ...
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
  function(dm, od_fm, dat_t_) {
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
      if(time_field %in% names(od_fm$field_list)) {
        # Get the column name of the time field
        time_field_column = od_fm$field_list[[time_field]]$name

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
  function(dm, od_fm, d) {
    # Extract data from the directory
    dat_ =
      dm$extract(d)
    # Perform transformation
    dat_t_ =
      dm$transform(dat_, od_fm)

    # Test that timestamp data (if present) is in POSIXct format
    test_timestamp_format(dm, od_fm, dat_t_)

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
  function(dm, od_fm, d) {
    test_all_data_dirs(
      test_d = d,
      test_fn =
        function(data_d) {
          test_datamap_directory(dm, od_fm, data_d)
        }
    )
  }


