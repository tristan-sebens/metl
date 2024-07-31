test_that(
  "build & populate test DB",
  {

    tbl1 =
      data.frame(
        "LETTER" = c("a", "b", "c", "d"),
        "NUMBER" = c(1, 2, 3, 4)
      )

    tbl2 =
      data.frame(
        "KEY" = c("quickly", "brown", "fox"),
        "VALUE" = c("adverb", "adjective", "noun")
      )

    db_conn =
      build_temp_db(
        to = tempfile(fileext = ".db"),
        dats =
          list(
            "TABLE1" = tbl1,
            "TABLE2" = tbl2
          )
      )

    # Check that the returned connection object is of the correct class
    expect_contains(class(db_conn), "SQLiteConnection")

    # Check that all data from both data.frames is present in the DB
    expect_equal(
      data.frame(dplyr::tbl(db_conn, "TABLE1")),
      tbl1
    )
    expect_equal(
      data.frame(dplyr::tbl(db_conn, "TABLE2")),
      tbl2
    )
  }
)


test_that(
  "get_cond_stack_messages",
  {

    err_msg = "This is an error message"
    par_msg = "This is an error message from a parent condition"

    tryCatch(
      stop(err_msg),
      error = function(cond) err <<- cond
    )
    # Test that the function returns the correct message for a given condition
    expect_true(
      stringr::str_detect(
        get_cond_stack_messages(cond = err),
        err_msg
      )
    )

    tryCatch(
      stop(par_msg),
      error = function(cond) parent <<- cond
    )

    err$parent = parent

    # Test that the function returns the correct message for a given condition
    expect_true(
      all(
        stringr::str_detect(
          get_cond_stack_messages(cond = err),
          c(err_msg, par_msg)
        )
      )
    )
  }
)
