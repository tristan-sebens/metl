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
        uid = "character", # UID generated on instantiation
        user_specified = "logical"
      ),
    methods =
      list(
        initialize =
          function(
            ...,
            alternate_names = list(),
            trans_fn = function(v, ...) {v},
            user_specified = F
          ) {
            callSuper(
              ...,
              alternate_names = alternate_names,
              trans_fn = trans_fn,
              uid = uuid::UUIDgenerate(),
              user_specified = user_specified
            )
          }
      )
  )

InputField =
#' InputField - base class
#'
#' Base of all user input fields. Not intended to be directly implemented, use a child class instead
  setRefClass(
    "InputField",
    contains = "Field",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(
              user_specified = T,
              ...
            )
          },

        build_widget =
          function(window) {
            stop(
              "Inheritence error: 'build_widget' method of FieldInput base
               class called. Please implement a child class instead"
            )
          },

        add_widget =
          function(window, ...) {
            "Add the field's widget to the form"
            # Field label
            tcltk::tkgrid(tcltk::tklabel(window, text = .self$name))
            # Field entry widget
            widget = .self$build_widget(window, ...)
            tcltk::tkgrid(widget)
            tcltk::tkconfigure(widget, textvariable = .self$name)
          },

        get_value =
          function() {
            "Retrieve the user-inputted value for this field"
            # Retrieve the submitted value
            val = tcltk::tclvalue(.self$name)
            # Remove the value from the tclvalue object
            tcltk::`tclvalue<-`(.self$name, "")
            # Return the retrieved value
            return(val)
          }
      )
  )

InputField_Text =
#' Text input field
  setRefClass(
    "InputField_Text",
    contains = "InputField",
    methods =
      list(
        build_widget =
          function(window, ...) {
            tcltk::tkentry(window, ...)
          }
      )
  )


InputField_Select =
  #' An input field for which the user selects from a list of available options
  #'
  #' Useful when we want to restrict the possible inputs a user can provide, for example if they are choosing the species. Rather than asking them to retype the species every time, each time potentially yielding a mispelling or other mistake we provide them with a list of options from which they can choose.
  #'
  #' @field table character.
  #' @field label_field character.
  #' @field pk_field character.
setRefClass(
  "InputField_Select",
  contains = "InputField",
  fields =
    list(
      tbl = "character",
      labels = "list",
      values = "list"
    ),
  methods =
    list(
      build_widget =
        function(window, ...) {
          tcltk::ttkcombobox(
            window,
            values = unlist(labels),
            ...
          )
        },

      get_value =
        function(...) {
          "Retrieve the user-inputted value for this field"
          val = callSuper(...)
          # Convert from the lable to the corresponding ID value
          return(.self$values[which(.self$labels == val)])
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
          },

        get_input_fields =
          function() {
            "Get any user-input Field objects as named list"
            Filter(
              function(field) {field$user_specified},
              .self$field_list
            )
          }
      )
  )


FieldInputForm =
  setRefClass(
    "FieldInputForm",
    fields =
      list(),
    methods =
      list(
        build_window =
          function(fields, ...) {
            field_names = names(fields)

            # Create main window
            tt <- tcltk::tktoplevel()
            tcltk::tkwm.title(tt, "Input Form")

            # Iterate through each field and create input widgets
            for (field in fields) {
              field$add_widget(tt, ...)
            }

            # Button to submit the form with its values
            closeButton =
              tcltk::tkbutton(
                tt,
                text = "Submit",
                command = function() {tcltk::tkdestroy(tt)}
              )
            tcltk::tkgrid(closeButton)

            return(tt)
          },

        retrieve_values =
          function(fields) {
            fields %>%
              lapply(
                function(field) {
                  field$get_value()
                }
              ) %>%
              unlist()
          },

        get_field_values =
          function(fields) {
            # Build the form window
            window = build_window(fields)

            # Focus on the form window, and wait for user to confirm input
            tcltk::tkfocus(window)
            tcltk::tkwait.window(window)

            # Retrieve the user submitted values
            vals = retrieve_values(fields)

            # TODO: validation step. If values are not valid, respond intelligently

            return(vals)
          }
      )
  )
