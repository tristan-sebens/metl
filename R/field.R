
# Import the piping operator
# As a package, we are forbidden (by good practice) from directly importing any
# other packages (i.e. using library or require functions). However, this code base
# makes extensive use of the dplyr//magrittr 'piping' operator (i.e. hits the pipe),
# and to refactor that out would be a massive pain. Instead, we simply directly
# define the operator here for use in the rest of the package.
# TODO This probably doesn't belong here, but at the moment there really isn't a better place to put it
`%>%` = magrittr::"%>%"

# The TagProcessor class uses the data.tree data structure as an attribute, which
# has class 'Node'. Define it here so the constructor knows what we're talking about
setOldClass("Node")

#' Field class. Represents a single data field and its key metadata for future
#`  reference, including field name, units, and DB data type.
#'
#' @field name character. The name of the field
#' @field alternate_names list. Optional. Alternative names for the field.
#' @field units character. The SI units of the field
#' @field data_type character. The data type of this field in a DB
#' @field id_field logical. If set to TRUE this field will be used to identify unique records
#' @field trans_fn function. Applied to the data vector associated with this Field immediately prior to standard transformation of units and fieldnames. MUST be of the form function(v, ...) {<transformation here>}. Must return a data vector. If necessary, other fields can be accessed within the function by modifying the parameter signature to function(v, dat, ...) {<transformation here>}, where dat will contain the unstransformed data.frame
Field =
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
        uid = "character" # UID generated on instantiation
      ),
    methods =
      list(
        initialize =
          function(
            ...,
            alternate_names = list(),
            trans_fn = function(v, ...) {v}
          ) {
            callSuper(
              ...,
              alternate_names = alternate_names,
              trans_fn = trans_fn,
              uid = uuid::UUIDgenerate()
            )
          }
      )
  )


#' FieldMap class. Collection of Field objects, with some added functionality
#' to facilitate the convenient use of said Field objects both within the package
#' and when interfacing with a DB
#'
#' @field fields Field. The Field objects contained within this map/
FieldMap =
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
        # Generate a field data type list, in the format expected by the DBI package
        generate_data_type_list =
          function() {
            .self$field_list %>%
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
          }
      )
  )
