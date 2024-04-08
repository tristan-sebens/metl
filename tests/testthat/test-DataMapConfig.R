

test_datamap_directory =
  function(dm, d) {
    # Extract data from the directory
    dat_ =
      dm$extract(d)
    # Perform transformation
    dat_t_ =
      dm$transform(dat_)

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

# ------------------
# LOTEK TAGS
# ------------------

# LAT 1000/1100/1250
# ------------------
test_that(
  "DataMap_Lotek.1000.1100.1250_TagMetaData",
  {
    test_datamap(
      dm =
        DataMap_Lotek.1000.1100.1250_TagMetaData(),
      d =
        test_data_d('Lotek', 'LTD 1000.1100.1250')
    )
  }
)

test_that(
  "DataMap_Lotek.1000.1100.1250_InstantSensorData",
  {
    test_datamap(
      dm =
        DataMap_Lotek.1000.1100.1250_InstantSensorData(),
      d =
        test_data_d('Lotek', 'LTD 1000.1100.1250')
    )
  }
)

# LAT 1300
# ------------------
test_that(
  "DataMap_Lotek.1300_TagMetaData",
  {
    test_datamap(
      dm =
        DataMap_Lotek.1300_TagMetaData(),
      d =
        test_data_d('Lotek', 'LTD 1300')
    )
  }
)

test_that(
  "DataMap_Lotek.1300_InstantSensorData",
  {
    test_datamap(
      dm =
        DataMap_Lotek.1300_InstantSensorData(),
      d =
        test_data_d('Lotek', 'LTD 1300')
    )
  }
)

# LAT 1400/1800
# ------------------
test_that(
  "DataMap_Lotek.1400.1800_TagMetaData",
  {
    test_datamap(
      dm =
        DataMap_Lotek.1400.1800_TagMetaData(),
      d =
        test_data_d('Lotek', 'LAT 1400.1800')
    )
  }
)

test_that(
  "DataMap_Lotek.1400.1800_InstantSensorData",
  {
    test_datamap(
      dm =
        DataMap_Lotek.1400.1800_InstantSensorData(),
      d =
        test_data_d('Lotek', 'LAT 1400.1800')
    )
  }
)


# ------------------
# MICROWAVE TELEMETRY TAGS
# ------------------
test_that(
  "DataMap_MicrowaveTelemetry_XTag_TagMetaData",
  {
    test_datamap(
      dm =
        DataMap_MicrowaveTelemetry_XTag_TagMetaData(),
      d =
        test_data_d('Microwave Telemetry', 'X-Tag')
    )
  }
)

test_that(
  "DataMap_MicrowaveTelemetry_XTag_InstantSensorData",
  {
    test_datamap(
      dm =
        DataMap_MicrowaveTelemetry_XTag_InstantSensorData(),
      d =
        test_data_d('Microwave Telemetry', 'X-Tag')
    )
  }
)

test_that(
  "DataMap_MicrowaveTelemetry_XTag_SummarySensorData",
  {
    test_datamap(
      dm =
        DataMap_MicrowaveTelemetry_XTag_SummarySensorData(),
      d =
        test_data_d('Microwave Telemetry', 'X-Tag')
    )
  }
)











