# Helper functions for creating temporary testing DBs
build_table_from_fieldmap =
  function(con, fm) {
    # Create the table
    DBI::dbCreateTable(
      conn = con,
      name = fm$table,
      fields = fm$generate_data_type_list()
    )

    # Add the necessary unique constraint for row ID
    uix_name = paste0(c("uix", tolower(fm$get_id_field_names())), collapse = "_")

    DBI::dbExecute(
      con,
      paste0(
        "CREATE UNIQUE INDEX ",
        uix_name,
        " ON ",
        fm$table,
        "(",
        paste0(fm$get_id_field_names(), collapse = ","),
        ")"
      )
    )
  }

build_db_from_fieldmaps =
  function(fms, memory = T) {
    # Instantiate the DB in memory
    db_path = ifelse(memory, ":memory:", tempfile(fileext = ".db"))

    con = DBI::dbConnect(
      RSQLite::SQLite(),
      db_path
    )

    # Build DB tables for all of the incoming FieldMaps
    for (fm in fms) {
      build_table_from_fieldmap(con, fm)
    }

    return(con)
  }
