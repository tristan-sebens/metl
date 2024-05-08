build_test_fieldmaps =
  function() {
    INSTANT_DATA_INPUT_FIELD_MAP =
      WILDLIFE_COMPUTERS_MINIPAT_INSTANT_DATA_FIELDS

    INSTANT_DATA_OUTPUT_FIELD_MAP =
      ABLTAG_DATA_INSTANT_TABLE_FIELDS

    SUMMARY_DATA_INPUT_FIELD_MAP =
      WILDLIFE_COMPUTERS_MINIPAT_SUMMARY_DATA_FIELDS

    SUMMARY_DATA_OUTPUT_FIELD_MAP =
      ABLTAG_DATA_SUMMARY_TABLE_FIELDS

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
    # For testing, we can't use input fields, and so will have to remove those fields
    test_metadata_output_fields =
      ABLTAG_METADATA_TABLE_FIELDS$copy()

    # Get a list of input fields from the output metadata fieldmap
    input_field_names =
      names(test_metadata_output_fields$get_input_fields())

    # Remove each of the input fields from the FieldMap
    for (input_field_name in input_field_names) {
      test_metadata_output_fields$field_list[input_field_name] = NULL
    }

    return(
      list(
        METADATA_INPUT_FIELD_MAP = DEFAULT_METADATA_FIELDS,
        METADATA_OUTPUT_FIELD_MAP = test_metadata_output_fields
      )
    )
  }

test_d =
  here::here('tests', 'testthat', '_fixtures', '_data')
mt_d =
  file.path(test_d, 'mt')
mt_x_d =
  file.path(mt_d, 'xt', 'lc', '128305')
wc_d =
  file.path(test_d, 'wc')
wc_mp_d =
  file.path(wc_d, 'mp', 'ss', '174898')

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
          build_test_metadata_map()$METADATA_INPUT_FIELD_MAP,
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
    metadata_fieldmap = build_test_metadata_map()$METADATA_OUTPUT_FIELD_MAP,
    instant_fieldmap = build_test_fieldmaps()$INSTANT_DATA_OUTPUT_FIELD_MAP,
    summary_fieldmap = build_test_fieldmaps()$SUMMARY_DATA_OUTPUT_FIELD_MAP
  ) {
    Pipe(
      d = d,
      decoders = decoders,
      metadata_fieldmap = metadata_fieldmap,
      instant_fieldmap = instant_fieldmap,
      summary_fieldmap = summary_fieldmap
    )
  }

# Get the root directory of the test data
test_data_d =
  function(...) {
    return(test_path("_fixtures", "_data", ...))
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

    # Test that timestamp data (if present) is in POSIXct format
    # UPDATE: timestamps no longer go to the DB as POSIXct objects, but rather as integers, so this test is unusable
    # test_timestamp_format(dm, dm$input_data_field_map, dat_)

    # Perform transformation
    dat_t_ =
      dm$transform(dat_, od_fm)


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


