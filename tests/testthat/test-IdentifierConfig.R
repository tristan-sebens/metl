#' Test Identifier object
#'
#' Custom test for Identifier objects. Accepts an Identifier object constructor, and a root directory. Applies the Identifier to every data directory in the directory tree. For each such directory `d`, the test ensures that the passed Identifier object gives a positive match to `d`, and that only a single known Identifier gives a positive match for `d`
#'
#' @param identifier_ Identifier object constructor function
#' @param d Root of the test data directory tree
test_identifier =
  function(
    identifier_,
    d
  ) {
    test_that(
      class(identifier_)[[1]],
      {
        test_all_data_dirs(
          test_d = d,
          test_fn =
            function(d) {
              # Test each data directory present in the directory tree

              # Specified Identifier object should positively match to directory
              expect(
                ok =
                  identifier_$identify(d),
                failure_message =
                  paste0(
                    class(identifier_)[[1]],
                    " does not match to test directory: \n",
                    stringr::str_replace(d, test_data_d(), "")
                  )
              )

              # Apply all Identifiers to data directory
              id_res = TagIdentifier(decoders = build_test_decoder_list())$identify(d)

              # Only one Identifier object should positively match to directory
              expect_equal(
                sum(id_res$result),
                1,
                # Everything below here just constructs an informative error message
                label =
                  paste0(
                    stringr::str_replace(d, test_data_d(), ""),
                    " matches ", sum(id_res$result)," Identifier objects: \n\t - ",
                    paste0(
                      id_res %>%
                        dplyr::filter(result == T) %>%
                        dplyr::pull(name) %>%
                        paste0(collapse = " \n\t - ")
                    ),
                    " \nNumber of possible IDs"
                  )
              )
            }
        )
      }
    )
  }

test_identifier(
  identifier_ =
    Identifier_Lotek_1000.1100.1250,
  d =
    test_data_d("Lotek", "LTD 1000.1100.1250")
)

test_identifier(
  identifier_ =
    Identifier_Lotek_1300,
  d =
    test_data_d("Lotek", "LTD 1300")
)

test_identifier(
  identifier_ =
    Identifier_Lotek_1400.1800,
  d =
    test_data_d("Lotek", "LAT 1400.1800")
)

test_identifier(
  identifier_ =
    Identifier_MicrowaveTelemetry_XTag,
  d =
    test_data_d("Microwave Telemetry", "X-Tag")
)

test_identifier(
  identifier_ =
    Identifier_StarOddi_DST,
  d =
    test_data_d("Star Oddi", "DST")
)

test_identifier(
  identifier_ =
    Identifier_StarOddi_DST,
  d =
    test_data_d("Star Oddi", "DST milli-F")
)

test_identifier(
  identifier_ =
    Identifier_StarOddi_DSTmagnetic,
  d =
    test_data_d("Star Oddi", "DST magnetic")
)

test_identifier(
  identifier_ =
    Identifier_WildlifeComputers_BenthicSPAT,
  d =
    test_data_d("Wildlife Computers", "Benthic sPAT")
)

test_identifier(
  identifier_ =
    Identifier_WildlifeComputers_MiniPAT,
  d =
    test_data_d("Wildlife Computers", "MiniPAT")
)















