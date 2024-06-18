test_that(
  "Condition::check",
  {
    cond =
      Condition(
        condition = function(d) {
          TRUE
        },
        message = "Always true"
      )

    expect_true(cond$check(""))

    cond =
      Condition(
        condition = function(d) {
          FALSE
        },
        message = "Always false"
      )

    expect_false(cond$check(""))

    cond =
      Condition(
        condition = function(d) {
          d == "test"
        },
        message = "Directory must be named 'test'"
      )

    expect_true(cond$check("test"))
  }
)

test_that(
  "Identifier::identify",
  {
    cond1 =
      Condition(
        condition = function(d) {
          TRUE
        },
        message = "Always true"
      )

    cond2 =
      Condition(
        condition = function(d) {
          FALSE
        },
        message = "Always false"
      )

    id =
      Identifier(
        conditions = c(cond1, cond2)
      )

    expect_false(id$identify(""))

    expect_snapshot(id$failed_conditions(""))
    expect_equal(length(id$failed_conditions("")), 1)

    expect_snapshot(id$failed_condition_messages(""))
    expect_equal(length(id$failed_condition_messages("")), 1)

    id =
      Identifier(
        conditions = list(cond1)
      )

    expect_true(id$identify(""))

    cond3 =
      Condition(
        condition =
          function(d) {
            d == "test"
          }
      )

    id =
      Identifier(
        conditions = list(cond1, cond3)
      )

    expect_true(id$identify("test"))
  }
)

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
                        lapply(
                          # Collect the list of Decoder objects which positively matched to this directory
                          dplyr::filter(id_res, result == T)$dc,
                          function(dc) {
                            dc$label
                          }
                        ) %>%
                        unlist
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
    test_data_d("lt", "lt_1000_1250")
)

test_identifier(
  identifier_ =
    Identifier_Lotek_1300,
  d =
    test_data_d("lt", "lt_1300")
)

test_identifier(
  identifier_ =
    Identifier_Lotek_1400.1800,
  d =
    test_data_d("lt", "lt_1400_1800")
)

test_identifier(
  identifier_ =
    Identifier_MicrowaveTelemetry_XTag_Transmitted,
  d =
    test_data_d("mt", "xt_trans")
)

test_identifier(
  identifier_ =
    Identifier_MicrowaveTelemetry_XTag_Recovered,
  d =
    test_data_d("mt", "xt_recov")
)

test_identifier(
  identifier_ =
    Identifier_StarOddi_DST,
  d =
    test_data_d("so", "dst")
)

test_identifier(
  identifier_ =
    Identifier_StarOddi_DST,
  d =
    test_data_d("so", "dst_mf")
)

test_identifier(
  identifier_ =
    Identifier_StarOddi_DSTmagnetic,
  d =
    test_data_d("so", "dst_mag")
)

test_identifier(
  identifier_ =
    Identifier_WildlifeComputers_BenthicSPAT,
  d =
    test_data_d("wc", "b_sp")
)

test_identifier(
  identifier_ =
    Identifier_WildlifeComputers_MiniPAT,
  d =
    test_data_d("wc", "mp")
)















