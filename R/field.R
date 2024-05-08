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

FieldValidator =
#' Validate user-input fields
#'
#' Provides a simple interface for defining validation rules. Each FieldValidator object contains a single function `validate` which accepts a single value `val` and returns a boolean value indicating if that value is valid or not. If not, then the error message will be used to inform the user of the discrepency.
#'
#' @field validate function. Accepts a single parameter `val`, returns `TRUE` if `val` is valid for the given field.
#' @field error_msg character. Message used to inform the user of the invalid value and how it should be changed
#' @export FieldValidator
  setRefClass(
    "FieldValidator",
    fields =
      list(
        validate = "function",
        error_msg = "character"
      ),
    methods =
      list(
        initialize =
          function(
            validate = function(val) TRUE, # Base instance of class just blindly validates
            error_msg = "",
            ...
          ) {
            callSuper(
              validate = validate,
              error_msg = error_msg,
              ...
            )
          }
      )
  )

setOldClass("tclVar")

InputField =
#' InputField - base class
#'
#' Base of all user input fields. Not intended to be directly implemented, use a child class instead
#'
#' @export InputField
  setRefClass(
    "InputField",
    contains = "Field",
    fields =
      list(
        # A list of Validator objects.
        validators = "list",
        # A list of tclVar objects, used to extract values from the input window
        tcl_vars = "list"
      ),
    methods =
      list(
        initialize =
          function(
            # Default to the base Validator, which blindly validates
            validators = list(FieldValidator()),
            # Default to a single tclVar object
            tcl_vars = list(),
            ...
          ) {
            callSuper(
              validators = validators,
              tcl_vars = tcl_vars,
              user_specified = T,
              ...
            )
          },

        register_tclvar =
          function(var_label, init_value = "") {
            "Register a new tclvar object"
            if(var_label %in% names(tcl_vars)) return(.self$tcl_vars[[var_label]])
            # Create the new tclVar object and register it with the internal list of tclVar objects
            l = list()
            l[[var_label]] = tcltk::tclVar(init = init_value)
            tcl_vars <<- append(tcl_vars, l)
            # Return the tclVar object
            return(tcl_vars[[var_label]])
          },

        build_widget =
          function(window, ...) {
            "Return a fully constructed and configured widget for use in the input form"
            stop(
              "Inheritence error: 'build_widget' method of FieldInput base
               class called. Please implement a child class instead"
            )
          },

        build_label =
          function(window, ...) {
            "Build an appropriate label for the input widget"
            tcltk::tklabel(window, text = .self$name, ...)
          },

        get_value =
          function() {
            "Retrieve the user-inputted value for this field"
            # Retrieve the submitted value
            stop(
              "Inheritence error: 'get_value' method of FieldInput base
               class called. Please implement a child class instead"
            )
          },

        validate_value =
          function(val, ...) {
            "Returns a boolean indicating if `val` is valid or not."
            all(
              validators %>%
              lapply(function(v) v$validate(val)) %>%
              unlist()
            )
          },

        get_validation_errors =
          function(val, ...) {
            "Get all of the validation errors triggered by `val`"
            # Get the list of validators which are not passing
            Filter(
              function(v) !v$validate(val),
              validators
            ) %>%
            # Extract their error messages, and return them as a list
            lapply(function(v) v$error_msg) %>%
            unlist()
          },

        register_validator =
          function(validator) {
            "Add a validator to this Field object"
            validators <<- append(validators, validator)
          }
      )
  )


InputField_Text =
#' Text input field
#'
#' @export InputField_Text
  setRefClass(
    "InputField_Text",
    contains = "InputField",
    methods =
      list(
        build_widget =
          function(window, ...) {
            tcltk::tkentry(
              window,
              text_variable = register_tclvar(var_label = "text"),
              ...
            )
          },

        get_value =
          function() {
            return(tcltk::tclvalue(tcl_vars$text))
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
#'
#' @export InputField_Select
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
              textvariable = register_tclvar(var_label = "selection", init_value = "")
            )
          },

        get_value =
          function(...) {
            "Retrieve the user-inputted value for this field"
            val = tcltk::tclvalue(tcl_vars$selection)
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

InputField_Date =
#' InputField object for selecting dates
#'
#' @export InputField_Date
  setRefClass(
    "InputField_Date",
    contains = "InputField",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(...)

            # Checks if a given date existed in the Gregorian calendar (e.g. Feb 31)
            real_date_validator =
              FieldValidator(
                validate =
                  function(date_list) {
                    day = date_list$day
                    month = date_list$month
                    year = date_list$year

                    suppressWarnings(
                      {
                        input_date =
                          lubridate::dmy(
                            paste(
                              c(day, month, year),
                              collapse = "-"
                            )
                          )
                      }
                    )

                    return(
                      if(!is.na(input_date)) {
                        return(
                          all(
                            lubridate::year(input_date) == year,
                            month.name[[lubridate::month(input_date)]] == month,
                            lubridate::day(input_date) == day
                          )
                        )
                      } else return(FALSE)
                    )
                  },
                error_msg = "Invalid date"
              )

            register_validator(real_date_validator)
          },

        add_labels =
          function(date_picker_frame) {
            # Create field labels
            month_label =
              tcltk::tklabel(date_picker_frame, text = "Month")
            day_label =
              tcltk::tklabel(date_picker_frame, text = "Day")
            year_label =
              tcltk::tklabel(date_picker_frame, text = "Year")

            # Add labels to the grid layout
            tcltk::tkgrid(day_label, row = 0, column = 0, sticky = "nsew")
            tcltk::tkgrid(month_label, row = 0, column = 1, sticky = "nsew")
            tcltk::tkgrid(year_label, row = 0, column = 2, sticky = "nsew")
          },

        add_inputs =
          function(date_picker_frame) {
            # Create and link Field objects
            day_picker =
              tcltk::ttkcombobox(
                date_picker_frame,
                values = seq(1, 31),
                textvariable =
                  register_tclvar(
                    var_label = "day",
                    init_value = format(Sys.Date(), "%d")
                  )
              )

            month_picker =
              tcltk::ttkcombobox(
                date_picker_frame,
                values = month.name,
                textvariable =
                  register_tclvar(
                    var_label = "month",
                    init_value = format(Sys.Date(), "%B")
                  )
              )

            year_picker =
              tcltk::ttkcombobox(
                date_picker_frame,
                values = seq(1950, as.integer(format(Sys.Date(), "%Y"))),
                textvariable =
                  register_tclvar(
                    var_label = "year",
                    init_value = format(Sys.Date(), "%Y")
                  )
              )

            # Add input widgets to the grid layout
            tcltk::tkgrid(day_picker, row = 1, column = 0, sticky = "nsew")
            tcltk::tkgrid(month_picker, row = 1, column = 1, sticky = "nsew")
            tcltk::tkgrid(year_picker, row = 1, column = 2, sticky = "nsew")
          },

        build_widget =
          function(window, ...) {
            # Create a frame for the date picker inputs
            date_picker_frame = tcltk::tkframe(parent = window)

            add_labels(date_picker_frame)
            add_inputs(date_picker_frame)

            # Add the main date picker frame to the window
            tcltk::tkgrid(date_picker_frame, sticky = "nsew")

            # Configure columns to expand within the grid
            tcltk::tkgrid.columnconfigure(date_picker_frame, 0, weight = 1)
            tcltk::tkgrid.columnconfigure(date_picker_frame, 1, weight = 1)
            tcltk::tkgrid.columnconfigure(date_picker_frame, 2, weight = 1)

            # Configure rows to expand within the grid
            tcltk::tkgrid.rowconfigure(date_picker_frame, 0, weight = 1)
            tcltk::tkgrid.rowconfigure(date_picker_frame, 1, weight = 1)

            return(date_picker_frame)
          },

        get_value =
          function(as_string = F) {
            # Collect all three fields and paste them together as a named list
            str =
              paste0(
                c(
                  tcltk::tclvalue(tcl_vars$day),
                  tcltk::tclvalue(tcl_vars$month),
                  tcltk::tclvalue(tcl_vars$year)
                ),
                collapse = "-"
              )

            if(as_string) return(str)
            return(as.numeric(as.POSIXct(lubridate::dmy(str))))
          }
      )
  )

IndependentField =
#' IndependentField
#'
#' A Field object which generates its own data. Useful for autogenerated timestamps and such.
#'
#' @field value_fn function. Accepts `dat` and any number of named arguments. Returns the value for this field
#'
#' @export IndependentField
  setRefClass(
    "IndependentField",
    contains = "Field",
    fields =
      list(
        value_fn = "function"
      ),
    methods =
      list(
        initialize =
          function(...) {
            callSuper(
              independent = T,
              ...
            )
          }
      )
  )


#' FieldMap class.
#'
#' Collection of Field objects, with some added functionality to facilitate the convenient use of said Field objects both within the package and when interfacing with a DB
#'
#' @field fields Field. The Field objects contained within this map/
#'
#' @export FieldMap
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


FieldInputForm =
#' Construct forms for user-input data
#'
#' The `FieldInputForm` class provides an interface by which we can quickly create input forms to prompt users for missing data. `FieldInputForm` provides methods with which to construct pop-up windows from a list of `InputField` object, and then to retrieve the data submitted by the user for each `InputField`.
#'
#' @field id_fields character.
#' @field window_width numeric.
#'
#' @export FieldInputForm
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
            }

            tcltk::tkgrid.columnconfigure(input_form_frame, 0, weight = 1)
            tcltk::tkgrid.columnconfigure(input_form_frame, 1, weight = 1)

            return(input_form_frame)
          },


        build_window =
          function(input_fields, input_window_titles, ...) {
            # Create main window
            window = tcltk::tktoplevel()
            tcltk::tkwm.title(window, "Input Form")

            id_label = tcltk::tklabel(window, text = "Current tag: ")
            id_frame = build_id_frame(window, input_window_titles)
            input_label = tcltk::tklabel(window, text = "Required input fields: ")
            input_form_frame = build_input_form_frame(window, input_fields)

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
          function(input_fields) {
            vals = list()

            for (field_ix in seq_along(input_fields)) {
              field = input_fields[[field_ix]]
              field_label = names(input_fields)[[field_ix]]
              vals[field_label] = field$get_value()
            }

            return(vals)
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
