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
#' @export DataMap
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
              ": \n",
              msg
            )
          )
        },

      get_field_value =
        # Return the raw data from dat__ which is referred to by the input_field_obj__
        function(dat__, input_field_obj_, output_field_obj_) {
          # Start by setting the value to the default value
          val = output_field_obj_$default
          # Now check if a true value is present in the data to overwrite the default

          # If the primary Field name is in the data.frame, return the corresponding value
          if(input_field_obj_$name %in% names(dat__)) {
            val = dat__[[input_field_obj_$name]]
          } else {
            # If the primary Field name is not in the data.frame, check the alternate names
            for (name_ in input_field_obj_$alternate_names) {
              if(name_ %in% names(dat__)) {
                val = dat__[[name_]]
              }
            }
          }

          # Finally, return the extracted value
          return(val)
        },

      # Perform a QC check on the input data to ensure that all required fields are present
      check_input_dat_fields =
        function(dat__, output_data_field_map) {
          # Check that all fields expected by the input_data_field_map are present
          missing_input_field_names =
            Filter(
              function(n) {
                ip_f_ = input_data_field_map$field_list[[n]]
                op_f_ = output_data_field_map$field_list[[n]]
                # If the field is not in the data and is not independently generated, it is missing
                all(
                  !any(
                    # Check for both the primary name and any alternate names
                    c(
                      ip_f_$name,
                      ip_f_$alternate_names
                    )
                    %in% names(dat__)
                  ),
                  !any(
                    # Check if Field is independently generated, in which case it would not yet be present in the data
                    ip_f_$independent,
                    # If the Field is optional, it may not necessarily be available from the input data
                    op_f_$optional
                  )
                )
              },
              names(input_data_field_map$field_list)
            )

          # If any expected fields are missing, throw an error indicating which fields are missing
          if (length(missing_input_field_names) > 0) {
            missing_input_fields = input_data_field_map$field_list[missing_input_field_names]
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

      # Perform a QC check on the output data to ensure that all required fields are present
      check_output_dat_fields =
        function(fields, dat) {
          # Find any fields in the output data which should be present, but are missing
          missing_fields =
            fields %>%
            Filter(
              function(f) {
                all(
                  # The field is not present in the data
                  !f$name %in% names(dat),
                  # The field is required or is an ID field (which is implicitly required)
                  any(!f$optional, f$id_field)
                )
              },
              .
            )

          if(length(missing_fields) > 0) {
            throw_error(
              paste0(
                "Missing required output fields: ",
                paste0(
                  lapply(missing_fields, function(f) {f$name}),
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
          check_input_dat_fields(dat__, output_data_field_map)

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

            # Extract field data
            input_field_dat_ =
              get_field_value(
                dat__,
                input_field_obj_,
                output_field_obj_
              )

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

          check_output_dat_fields(
            fields = output_data_field_map$field_list[common_fields],
            dat = dat__
          )

          transformed_field_names =
            output_data_field_map$field_list[common_fields] %>%
            Filter(
              function(f) {
                f$name %in% names(dat__)
              },
              .
            ) %>%
            lapply(
              function(f) {f$name}
            ) %>%
            unlist(use.names = F)

          return(
            dat__[transformed_field_names]
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
        model = "character"
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
              "{.self$input_data_field_map$field_list$TAG_MODEL_FIELD$name}" := .self$model
            )
        }
      )
  )
