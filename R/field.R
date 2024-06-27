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
        user_specified = "logical", # Indicates that this field must be input by the user
        independent = "logical" # Indicates that this field generates its own value
      ),
    methods =
      list(
        initialize =
          function(
            ...,
            alternate_names = list(),
            trans_fn = function(v, ...) {v},
            user_specified = F,
            independent = F
          ) {
            callSuper(
              ...,
              alternate_names = alternate_names,
              trans_fn = trans_fn,
              uid = uuid::UUIDgenerate(),
              user_specified = user_specified,
              independent = independent
            )
          },

        refresh =
          function(...) {
            "Placeholder function that can be used to refresh reference fields"
          }
      )
  )
