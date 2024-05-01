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

#' Build a temporary testing DB
#'
#' Builds a temporary DB based on a snapshot. By default DB saved in temporary directory
#'
#' @param from_ Path of DB snapshot
#' @param to_ Path of temporary DB
#' @param dats Named list of data.frames to use to populate the DB.
build_temp_db =
  function(
    from_ = here::here("db", "temp_db_snapshot.db"),
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

decorate_error =
  function(err, ...) {
    l = list(...)
    for (k in names(l)) {
      err[k] = l[k]
    }

    return(err)
  }

#' Decorator for try/catch block
#'
#' Accepts an expression and any number of named values. If an error is thrown while evaluating the expression, then the error is caught, and the named values are appended to the error object. Then the error is rethrown to be caught further up the call stack
#'
#' @param expr The expression to evaluate
#' @param ... Named values to be appended to any caught error conditions
try_catch_decorate =
  function(expr, ...) {
    tryCatch(
      expr = expr,
      error =
        function(err) {
          err = decorate_error(err = err, ...)
          stop(err)
        }
    )
  }
