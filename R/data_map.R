#' DataMap
#'
#' Provides base structure for all make/model specific tag data maps
#' Analagous to a table in the final DB. Desribes programatically how the data
#' to be inserted into that table should be collected from the disk, and
#' transformed.
#' Not intended to be implemented directly
#'
#' @field input_data_field_map FieldMap. Map of the data fields and their original format
#' @field extract_fn function(d) Function which extracts the appropriate data from the files in directory `d`
#'
#' @return An instance of the DataMap class
#'
#' @export
DataMap =
  #----
setRefClass(
  "DataMap",
  fields =
    list(
      # Field map for the incoming raw data
      input_data_field_map = "FieldMap",
      extract_fn = "function"
    ),
  methods =
    list(
      # Helper function to throw an error with a pre-appended message to help identify
      # the source of the error
      throw_error =
        function(msg) {
          stop(
            paste0(
              "ERROR - ",
              class(.self)[[1]],
              ": ",
              msg
            )
          )
        },

      get_static =
        function(n) {
          return(.self$static[[n]])
        },

      get_field_data =
        # Return the raw data from dat__ which is referred to by the input_field_obj__
        function(dat__, input_field_obj_) {
          if(input_field_obj_$name %in% names(dat__)) {
            return(dat__[[input_field_obj_$name]])
          }

          for (name_ in input_field_obj_$alternate_names) {
            if(name_ %in% names(dat__)) {
              return(dat__[[name_]])
            }
          }
        },

      # Transform the fields of the incoming tag data as dictated by the field maps
      transform_fields =
        function(dat__, output_data_field_map) {
          # Process each input field in turn
          # Limit conversion to those fields shared by both the input data field
          #   map and the output data field map
          common_fields =
            names(
              .self$input_data_field_map$common_fields(
                fm = output_data_field_map
              )
            )

          for (field_ in common_fields) {
            # Identify relevant input/output field objects
            input_field_obj_ = .self$input_data_field_map$field_list[[field_]]
            output_field_obj_ = output_data_field_map$field_list[[field_]]

            # Isolate field data
            input_field_dat_ = .self$get_field_data(dat__, input_field_obj_)

            # Perform any specified pre-transformations
            input_field_dat_ =
              input_field_obj_$trans_fn(
                v = input_field_dat_,
                dat = dat__
              )

            # Make consideration for units
            if(!identical(output_field_obj_$units, character(0))) {
              # If units are specified on the output field, define and convert units
              input_field_dat_ =
                units::set_units(
                  # Set initial units based on input field
                  units::set_units(
                    input_field_dat_,
                    input_field_obj_$units,
                    mode="standard"
                  ),
                  # Immediately convert units based on output field
                  output_field_obj_$units,
                  mode="standard"
                )
            }

            # Perform any specified post-transformations
            output_field_dat_ =
              output_field_obj_$trans_fn(
                v = input_field_dat_,
                dat = dat__
              )

            # Re-append data to original object, with new name and (if applicable) units
            dat__[output_field_obj_$name] = output_field_dat_
          }

          return(
            dat__[
              lapply(
                # Select the fields from the output field map that have
                # corresponding entries in the input field map
                output_data_field_map$field_list[common_fields],
                function(f) {f$name}
              ) %>%
                unlist(use.names = F)
            ]
          )
        },

      extract =
        function(d) {
          "Extract data from directory `d`"
          .self$extract_fn(d)
        },

      transform =
        function(dat, output_data_field_map) {
          "Transform extracted data, as dictated by the input/output `FieldMap` objects"
          return(.self$transform_fields(dat, output_data_field_map))
        },

      augment =
        function(dat, output_data_field_map) {
          "Augment the transformed dataset with any missing data"
          # Collect any fields which are flagged as input fields
          input_fields =
            output_data_field_map$get_input_fields()

          # If there are no Fields which require input, return the dataframe as is
          if (length(input_fields) == 0) return(dat)

          # Prompt the user for the necessary field values
          input_vals =
            FieldInputForm()$get_field_values(input_fields)

          # Add the input values to the data.frame
          for (field in names(input_fields)) {
            op_field_obj = output_data_field_map$field_list[[field]]
            op_field_name = op_field_obj$name
            op_field_value = input_vals[[field]]
            dat[[op_field_name]] = op_field_value
          }

          # Return the augmented data.frame
          return(dat)
        }
    )
)
#----


#' Tag metadata map
#'
#' Base class for tag metadata DataMaps.
#'
#' @field make character. Tag manufacturer/brand
#' @field model character. Tag model
#' @field get_tag_id function(d). Function which returns the ID string of a tag based on the data-directory path `d`
#' @export
DataMap_TagMetaData =
  setRefClass(
    "DataMap_TagMetaData",
    contains = "DataMap",
    fields =
      list(
        make = "character",
        model = "character",
        get_tag_id = "function"
      ),
    methods =
      list(
        initialize =
          function(
            ...,
            # All of the tag meta DataMaps will produce dataframes of the same format
            input_data_field_map = DEFAULT_METADATA_FIELDS
          ) {
            callSuper(
              ...,
              input_data_field_map = input_data_field_map
            )
          },

    extract =
      function(d) {
        data.frame() %>%
          dplyr::reframe(
            "{.self$input_data_field_map$field_list$TAG_ID_FIELD$name}" := .self$get_tag_id(d),
            "{.self$input_data_field_map$field_list$TAG_MAKE_FIELD$name}" := .self$make,
            "{.self$input_data_field_map$field_list$TAG_MODEL_FIELD$name}" := .self$model
          )
      }
      )
  )
