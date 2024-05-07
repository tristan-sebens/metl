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
          },

        refresh =
          function(...) {
            "Placeholder function that can be used to refresh reference fields"
          }
      )
  )

#' InputField - base class
#'
#' Base of all user input fields. Not intended to be directly implemented, use a child class instead
InputField =
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
          function(window, ...) {
            stop(
              "Inheritence error: 'build_widget' method of FieldInput base
               class called. Please implement a child class instead"
            )
          },

        build_label =
          function(window, ...) {
            tcltk::tklabel(window, text = .self$name, ...)
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

#' Text input field
InputField_Text =
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


  #' An input field for which the user selects from a list of available options
  #'
  #' Useful when we want to restrict the possible inputs a user can provide, for example if they are choosing the species. Rather than asking them to retype the species every time, each time potentially yielding a mispelling or other mistake we provide them with a list of options from which they can choose.
  #'
  #' @field table character.
  #' @field label_field character.
  #' @field pk_field character.
InputField_Select =
  setRefClass(
    "InputField_Select",
    contains = "InputField",
    fields =
      list(
        table = "character",
        pk_field = "character",
        label_field = "character",
        pks = "character",
        labels = "character"
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
            return(.self$pks[which(.self$labels == val)])
          },

        refresh =
          function(con, ...) {
            # Refresh the pk and label values from the DB
            pks <<-
              as.character(data.frame(dplyr::tbl(con, table))[[pk_field]])
            labels <<-
              as.character(data.frame(dplyr::tbl(con, table))[[label_field]])
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

        refresh =
          function(...) {
            "Call the `refresh` function on all internal Field objects. Useful for updating reference Fields"
            for (field in .self$field_list) {
              field$refresh(...)
            }
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
          },

        get_non_input_fields =
          function() {
            "Get all non-user-input Field objects as named list"
            Filter(
              function(field) {!field$user_specified},
              .self$field_list
            )
          }
      )
  )


FieldInputForm =
  setRefClass(
    "FieldInputForm",
    fields =
      list(
        id_fields = "character",
        window_width = "numeric"
      ),
    methods =
      list(
        initialize =
          function(
            window_width = 20,
            ...
          ) {
            callSuper(
              window_width = window_width,
              ...
            )
          },

        build_id_frame =
          function(window, input_window_titles) {
            # Create the parent frame for the ID title
            id_frame = tcltk::ttkframe(window)

            # For each of the ID fields, create two labels: One naming the
            # Field, the other specifying its value. Place these in a grid
            for (title_ix in seq_along(input_window_titles)) {
              key = names(input_window_titles)[[title_ix]]
              value = input_window_titles[[title_ix]]

              title_label =
                tcltk::tklabel(
                  id_frame,
                  text=paste0(key, ":")
                )
              tcltk::tkgrid(
                title_label, column = 0, row = title_ix,
                padx = 2, pady=2, sticky="w"
              )
              title_value =
                tcltk::tklabel(
                  id_frame,
                  text=input_window_titles[[title_ix]]
                )
              tcltk::tkgrid(
                title_value, column = 1, row = title_ix,
                padx = 2, pady=2, sticky="w"
              )
            }

            tcltk::tkgrid.columnconfigure(id_frame, 0, weight = 1)
            tcltk::tkgrid.columnconfigure(id_frame, 1, weight = 1)

            return(id_frame)
          },

        build_input_form_frame =
          function(window, input_fields) {
            # Create the parent frame for the ID title
            input_form_frame = tcltk::ttkframe(window)

            # Iterate through each field and create input widgets
            for (ix in seq_along(input_fields)) {
              field = input_fields[[ix]]
              # Field label
              label = field$build_label(input_form_frame)
              tcltk::tkgrid(
                label,
                column = 0,
                row = ix,
                sticky = 'w'
              )
              # Field entry widget
              widget = field$build_widget(input_form_frame)
              tcltk::tkgrid(
                widget,
                column = 1,
                row = ix,
                sticky = 'w'
              )
              tcltk::tkconfigure(widget, textvariable = field$name)
            }

            tcltk::tkgrid.columnconfigure(input_form_frame, 0, weight = 1)
            tcltk::tkgrid.columnconfigure(input_form_frame, 1, weight = 1)

            return(input_form_frame)
          },


        build_window =
          function(fields, input_window_titles, ...) {
            # Create main window
            window = tcltk::tktoplevel()
            tcltk::tkwm.title(window, "Input Form")

            id_label = tcltk::tklabel(window, text = "Current tag: ")
            id_frame = build_id_frame(window, input_window_titles)
            input_label = tcltk::tklabel(window, text = "Required input fields: ")
            input_form_frame = build_input_form_frame(window, fields)

            tcltk::tkgrid(id_label, sticky='ew')
            tcltk::tkgrid(id_frame)
            tcltk::tkgrid(input_label, sticky='ew')
            tcltk::tkgrid(input_form_frame)


            tcltk::tkgrid.columnconfigure(window, 0, weight = 1)

            # Button to submit the form with its values
            closeButton =
              tcltk::tkbutton(
                window,
                text = "Submit",
                command = function() {tcltk::tkdestroy(window)}
              )
            tcltk::tkgrid(closeButton)

            return(window)
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
          function(input_fields, input_window_titles) {
            # Build the form window
            window = build_window(input_fields, input_window_titles)

            # Focus on the form window, and wait for user to confirm input
            tcltk::tkfocus(window)
            tcltk::tkwait.window(window)

            # Retrieve the user submitted values
            vals = retrieve_values(input_fields)

            # TODO: validation step. If values are not valid, respond intelligently

            return(vals)
          }
      )
  )
