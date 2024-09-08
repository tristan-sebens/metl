Field =
#' Field class. Represents a single data field and its key metadata for future
#`  reference, including field name, units, and DB data type.
#'
#' @field name character. The name of the field
#' @field alternate_names list. Optional. Alternative names for the field.
#' @field units character. The SI units of the field
#' @field data_type character. The data type of this field in a DB
#' @field id_field logical. If set to TRUE this field will be used to identify unique records
#' @field trans_fn function. Applied to the data vector associated with this Field immediately prior to standard transformation of units and fieldnames. MUST be of the form function(v, ...) {<transformation here>}. Must return a data vector. If necessary, other fields can be accessed within the function by modifying the parameter signature to function(v, dat, ...) {<transformation here>}, where dat will contain the unstransformed data.frame
#' @field independent logical. TRUE indicates this field generates its own value, either using a pre-determined value or by synthesizing from other fields in the data
#' @field description character. Plain language description of the field
#' @export Field
  setRefClass(
    "Field",
    fields =
      list(
        name = "character",
        alternate_names = "list",
        id_field = "logical", # Flag to indicate if this is a field used to identify unique records
        units = "character",
        data_type = "character", # Data type to be used for this field in the DB
        trans_fn = "function", # Function which will be applied to this field individually. Applied before all other transformations.
        uid = "character", # UID generated on instantiation
        independent = "logical", # Indicates that this field generates its own value,
        nullable = "logical", # Indicates that this field can be NULL
        description = "character" # Plain language description of the field
      ),
    methods =
      list(
        initialize =
          function(
            ...,
            alternate_names = list(),
            units = "",
            trans_fn = function(v, ...) {v},
            id_field = F,
            independent = F,
            nullable = F,
            description = "No description available"
          ) {
            callSuper(
              ...,
              alternate_names = alternate_names,
              units = units,
              trans_fn = trans_fn,
              id_field = id_field,
              independent = independent,
              nullable = nullable,
              description = description
            )
            uid <<- uuid::UUIDgenerate()
          }
      )
  )


#' FieldMap class.
#'
#' Collection of Field objects, with some added functionality to facilitate the convenient use of said Field objects both within the package and when interfacing with a DB
#'
#' @field table character. The DB table to which this `FieldMap` corresponds
#' @field description character. A plain language description of the DB to which this `FieldMap` corresponds
#' @field field_list list. The `Field` objects contained within this map
#' @field generate_db_meta logical. Boolean value which indicates if this `FieldMap` should be included when generating metadata for the DB
#'
#' @export FieldMap
FieldMap =
  setRefClass(
    "FieldMap",
    fields =
      list(
        # The DB table this FieldMap represents
        table = "character",
        # A plain language description of the DB to which this FieldMap corresponds
        description = "character",
        # The list of fields
        field_list = "list",
        # Boolean value which indicates if this FieldMap should be included when generating metadata for the DB
        generate_db_meta = "logical"
      ),
    methods =
      list(
        initialize =
          function(
            generate_db_meta = T,
            ...
          ) {
            callSuper(
              ...,
              generate_db_meta = generate_db_meta
            )
          },

        # Generate a field data type list, in the format expected by the DBI package
        generate_data_type_list =
          function(field_list_ = .self$field_list) {
            field_list_ %>%
              purrr::reduce(
                .init =
                  list(),
                .f =
                  function(l, f) {
                    l[f$name] = f$data_type
                    return(l)
                  }
              )
          },

        # Helper function which generates a list of the Fields shared by this
        # FieldMap and the given FieldMap
        common_fields =
          function(fm) {
            "Generates a list of the Fields shared by this FieldMap and the given FieldMap"
            .self$field_list[names(.self$field_list) %in% names(fm$field_list)]
          },

        # Helper function which generates a list of the Fields NOT shared by this
        # FieldMap and the given FieldMap
        uncommon_fields =
          function(fm) {
            "Generate a list of the Fields NOT shared by this FieldMap and the given FieldMap"
            .self$field_list[!names(.self$field_list) %in% names(fm$field_list)]
          },

        # Return the subset of Fields in this FieldMap that are marked as ID fields
        get_id_fields =
          function() {
            "Return the subset of Fields in this FieldMap that are marked as ID fields"
            Filter(
              function(f) {f$id_field},
              .self$field_list
            )
          },

        # Get the names of the ID fields in this FieldMap
        get_id_field_names =
          function() {
            "Get the names of the ID fields in this FieldMap"
            .self$get_id_fields() %>%
              lapply(
                function(f) {
                  f$name
                }
              ) %>%
              unlist(use.names = F)
          },

        # Get the names of the ID fields in this FieldMap
        get_field_names =
          function() {
            "Get the names of the ID fields in this FieldMap"
            .self$field_list %>%
              lapply(
                function(f) {
                  f$name
                }
              ) %>%
              unlist(use.names = F)
          },

        get_independent_fields =
          function() {
            "Get all independent Field objects as a named list"
            Filter(
              function(field) {field$independent},
              .self$field_list
            )
          }
      )
  )
