setOldClass("units")
setOldClass("symbolic_units")

Field =
  #' Field class. Represents a single data field and its key metadata for future
  #`  reference, including field name, units, and DB data type.
  #'
  #' @field name character.
  #' @field units symbolic_units.
  #' @field data_type character. The data type of this field in a DB
  setRefClass(
    "Field",
    fields =
      list(
        name = "character",
        units = "character",
        data_type = "character" # Data type to be used for this field in the DB
      )
  )


FieldMap =
  #' FieldMap class. Collection of Field objects, with some added functionality
  #' to facilitate the convenient use of said Field objects both within the package
  #' and when interfacing with a DB
  #'
  #' @field fields Field. The Field objects contained within this map/
  setRefClass(
    "FieldMap",
    fields =
      list(
        field_list = "list"
      ),
    methods =
      list(
        #' Generate a field data type list, in the format expected by the DBI package
        #'
        #' @return A named list. Names are the field names, values are the data types
        generate_data_type_list =
          function() {
            .self$field_list %>%
              reduce(
                .init =
                  list(),
                .f =
                  function(l, f) {
                    l[f$name] = f$data_type
                    return(l)
                  }
              )
          }
      )
  )
