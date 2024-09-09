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
#' @export DataMap
DataMap =
  #----
setRefClass(
  "DataMap",
  fields =
    list(
      # Field map for the incoming raw data
      input_data_field_map = "FieldMap",
      # Function which extracts the data from the directory
      extract_fn = "function",
      # Flag which indicates if this input data type is optional
      optional = "logical"
    ),
  methods =
    list(
      initialize =
        function(
          ...,
          optional = F
        ) {
          callSuper(
            ...,
            optional = optional
          )
        },

      initialize =
        function(
          optional = F,
          ...
        ) {
          callSuper(
            optional = optional,
            ...
          )
        },

      # Helper function to throw an error with a pre-appended message to help identify
      # the source of the error
      throw_error =
        function(msg) {
          stop(
            paste0(
              "ERROR - ",
              class(.self)[[1]],
              ": \n",
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

      check_input_dat_fields =
        function(dat__) {
          # Check that all fields expected by the input_data_field_map are present
          missing_input_fields =
            Filter(
              function(f_) {
                # If the field is not in the data and is not independently generated, it is missing
                !any(
                  # Check for both the primary name and any alternate names
                  c(
                    f_$name,
                    f_$alternate_names
                  )
                  %in% names(dat__)
                ) &
                !any(
                  # Check if Field is independently generated, in which case it would not yet be present in the data
                  f_$independent,
                  #Similarly, if the Field is nullable, then it may simply be absent from
                  f_$nullable
                )
              },
              input_data_field_map$field_list
            )

          # If any expected fields are missing, throw an error indicating which fields are missing
          if (length(missing_input_fields) > 0) {
            throw_error(
              paste0(
                "Missing expected input fields: ",
                paste0(
                  lapply(missing_input_fields, function(f) {f$name}),
                  collapse = ", "
                )
              )
            )
          }
        },

      # Transform the fields of the incoming tag data as dictated by the field maps
      transform_fields =
        function(dat__, output_data_field_map) {

          # Check that the incoming data matched the expectations of the input data FieldMap
          check_input_dat_fields(dat__)

          # Process each input field in turn
          # Limit conversion to those fields shared by both the input data field
          #   map and the output data field map
          common_fields =
            names(
              input_data_field_map$common_fields(
                fm = output_data_field_map
              )
            )

          for (field_ in common_fields) {
            # Identify relevant input/output field objects
            input_field_obj_ = input_data_field_map$field_list[[field_]]
            output_field_obj_ = output_data_field_map$field_list[[field_]]

            # Isolate field data
            input_field_dat_ = get_field_data(dat__, input_field_obj_)

            # Perform any specified pre-transformations
            input_field_dat_ =
              input_field_obj_$trans_fn(
                v = input_field_dat_,
                dat = dat__,
                ip_fm = input_data_field_map,
                op_fm = output_data_field_map
              )

            # Make consideration for units
            # if(!identical(output_field_obj_$units, character(0))) {
            if(output_field_obj_$units != "") {
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

          # Find any independent fields in the output FieldMap:
          independent_fields =
            output_data_field_map$get_independent_fields()

          # Generate the independent field values
          for (ind_field_ in independent_fields) {
            dat__[ind_field_$name] =
              ind_field_$trans_fn(
                dat = dat__,
                ip_fm = input_data_field_map,
                op_fm = output_data_field_map
              )
          }

          # Compile a list of fields to be returned
          return_fields =
            # Get the names of all common fields
            output_data_field_map$common_fields(
              fm = input_data_field_map
            ) %>%
            # Append the names of any independent fields
            append(
              output_data_field_map$get_independent_fields()
            ) %>%
            # Extract the names of each of the identified Field objects
            lapply(function(f) {f$name}) %>%
            unlist(use.names = F)

          return_dat =
            dat__[return_fields]

          return(
            # dat__[
            #   lapply(
            #     # Select the fields from the output field map that have
            #     # corresponding entries in the input field map
            #     output_data_field_map$field_list[common_fields],
            #     function(f) {f$name}
            #   ) %>%
            #     unlist(use.names = F)
            # ]
            return_dat
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
#'
#' @export DataMap_TagMetaData
DataMap_TagMetaData =
  setRefClass(
    "DataMap_TagMetaData",
    contains = "DataMap",
    fields =
      list(
        make = "character",
        model = "character",
        instrument_type = "character"
      ),
    methods =
      list(
        initialize =
          function(
            ...,
            # All of the tag meta DataMaps will produce dataframes of the same format
            input_data_field_map = AUTOGENERATED_METADATA_FIELDS
          ) {
            callSuper(
              ...,
              input_data_field_map = input_data_field_map
            )
          },

        label =
          function() {
            return(
              paste0(
                c(
                  make,
                  model
                ),
                collapse = " "
              )
            )
          },

      extract =
        function(d) {
          data.frame() %>%
            dplyr::reframe(
              "{.self$input_data_field_map$field_list$TAG_MAKE_FIELD$name}" := .self$make,
              "{.self$input_data_field_map$field_list$TAG_MODEL_FIELD$name}" := .self$model,
              "{.self$input_data_field_map$field_list$INSTRUMENT_TYPE_FIELD$name}" := .self$instrument_type
            )
        }
      )
  )
