

```


```{r}
InputForm_Row =
  setRefClass(
    "InputForm_Row",
    fields =
      list(
        node = "Node",
        field_widgets_ = "list"
      ),
    methods =
      list(
        build_input_frame =
          function(window, fields) {
            for (ix in seq_along(fields)) {
              field_name = names(fields)[[ix]]
              field = fields[[field_name]]

              field_widgets_[[field_name]] <<-
                fields[[field_name]]$build_widget(window = window)

              tcltk::tkgrid(
                field_widgets_[[field_name]]$widget,
                row = 0, column = ix - 1
              )
            }
          },

        get_values =
          function() {
            vals = list()
            for (field_name in names(field_widgets_)) {
              vals[[field_name]] = field_widgets_[[field_name]]$get_value()
            }
            return(vals)
          }
      )
  )

```


```{r}
setOldClass("tkwin")

FieldWidget_Label =
  setRefClass(
    "FieldWidget_Label",
    methods =
      list(
        build_widget =
          function(window, dat, ...) {
            tcltk::tklabel(window, text = dat[[label]])
          }
      )
  )


FieldWidget_Select =
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
    "FieldWidget_Select",
    contains = "FieldWidget",
    fields =
      list(
        pks = "character",
        labels = "character"
      ),
    methods =
      list(
        build_widget =
          function(window, ...) {
            tcltk::ttkcombobox(
              window,
              values = labels,
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

#' InputField - base class
#'
#' Base of all user input fields. Not intended to be directly implemented, use a child class instead
#'
#' @export InputField
FieldWidget =
  setRefClass(
    "FieldWidget",
    fields =
      list(
        label = "character",
        # The widget object
        widget = "tkwin",
        # A list of tclVar objects, used to extract values from the input window
        tcl_vars = "list",
        # A list of Validator objects.
        validators = "list",
        # A list of tclVar objects, used to extract values from the input window
        # Boolean flag which indicates if the Fields value should not be reset between input prompts
        persistant = "logical"
      ),
    methods =
      list(
        initialize =
          function(
    window,
    # Default to the base Validator, which blindly validates
    validators = list(FieldValidator()),
    # Default to a single tclVar object
    tcl_vars = list(),
    # Default to clearing input values between input forms
    persistant = F,
    ...
          ) {
            callSuper(
              validators = validators,
              tcl_vars = tcl_vars,
              persistant = persistant,
              ...
            )

            widget <<- build_widget(window = window, ...)
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

    clear_value =
      function() {
        "Clear the value(s) registered to this Field object"
        tcl_vars %>%
          lapply(
            function(tvar) {
              tcltk::tclvalue(tvar) = ""
            }
          ) %>%
          unlist()
      },

    reset_field =
      function() {
        "Clean up function for resetting the field after an input prompt is complete"
        if(!persistant) clear_value()
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

FieldWidget_Text =
  setRefClass(
    "FieldWidget_Text",
    contains = "FieldWidget",
    methods =
      list(
        build_widget =
          function(window, ...) {
            tcltk::tkentry(
              window,
              textvariable = register_tclvar(var_label = "text"),
              ...
            )
          },

        get_value =
          function() {
            return(tcltk::tclvalue(tcl_vars$text))
          }
      )
  )
