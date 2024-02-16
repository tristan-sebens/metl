setOldClass("units")
setOldClass("symbolic_units")

Field =
  #' Field class. Represents a single data field and its key metadata for future
  #`  reference, including field name, units, and DB data type.
  #'
  #' @field name character.
  #' @field units symbolic_units.
  #' @field convert logical. When set to F the system will not attempt to convert the units between the input and output data sets
  #' @field data_type character. The data type of this field in a DB
  setRefClass(
    "Field",
    fields =
      list(
        name = "character",
        units = "symbolic_units",
        convert = "logical", # Flag which indicates whether or not to enforce unit conversion on this field
        data_type = "character" # Data type to be used for this field in the DB
      ),
    methods =
      list(
        initialize =
          function(
    convert = T,
    data_type = "varchar(32)",
    ...
          ) {
            callSuper(
              convert = convert,
              data_type = data_type,
              ...
            )
          }
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
