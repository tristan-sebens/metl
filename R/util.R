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
