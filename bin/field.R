
Field =
  #' Field class. Represents a single data field and its key metadata for future
  #`  reference, including field name, units, and DB data type.
  #'
  #' @field name character. The name of the field
  #' @field units character. The SI units of the field
  #' @field data_type character. The data type of this field in a DB
  setRefClass(
    "Field",
    fields =
      list(
        name = "character",
        units = "character",
        data_type = "character", # Data type to be used for this field in the DB
        invert = "logical" # Flag to indicate if the values of the field should be inverted (x*-1)
      ),
    methods =
      list(
        initialize =
          function(
            ...,
            invert = F
          ) {
            callSuper(
              invert = invert,
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
        # The DB table this FieldMap represents
        table = "character",
        # The list of fields
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
          },

        #' Helper function which generates a list of the Fields shared by this
        #' FieldMap and the given FieldMap
        #'
        #' @return A named list. Names are the field names, values are the data types
        common_fields =
          function(fm) {
            .self$field_list[names(.self$field_list) %in% names(fm$field_list)]
            # .self$field_list[names(fm$field_list)]
          }
      )
  )
