Decoder_Lotek.1000.1100.1250 =
  setRefClass(
    "Decoder_Lotek.1000.1100.1250",
    contains = "Decoder",
    methods =
      list(
        initialize =
          function(...) {
            # Initialize the child class
            callSuper(
              tag_make = "Lotek",
              tag_model = "1000/1100/1250",
              tag_meta_field_map = TAG_FIELDS,
              # Define data maps
              data_maps =
                list(
                  DataMap_Lotek.1000.1100.1250_InstantSensorData()
                ),
              ...
            )
          },

        tag_id_from_filename =
          function(fp) {
            stringr::str_match(fp, pattern = "^(\\d\\d\\d\\d)\\D*")[2]
          },

        #' Identify Tag ID from available metadata
        #'
        #' @param d The directory in which the data files in question reside
        #'
        #' @return The tag ID identified from the files, as a string
        tag_id_from_d =
          function(d) {
            .self$tag_id_from_filename(
              list.files(
                d,
                pattern = "^.*[C|c][S|s][V|v]"
              )[[1]]
            )
          },

        get_tag_id =
          function() {
            tag_id_from_d(.self$d)
          }
      )
  )


Decoder_Lotek.1300 =
  setRefClass(
    "Decoder_Lotek.1300",
    contains = "Decoder",
    methods =
      list(
        initialize =
          function(...) {
            # Initialize the child class
            callSuper(
              tag_make = "Lotek",
              tag_model = "1300",
              tag_meta_field_map = TAG_FIELDS,
              # Define data maps
              data_maps =
                list(
                  DataMap_Lotek.1300_InstantSensorData()
                ),
              ...
            )
          },

        #' Identify Tag ID from available metadata
        #'
        #' @param d The directory in which the data files in question reside
        #'
        #' @return The tag ID identified from the files, as a string
        get_tag_id =
          function() {
            list.files(.self$d, pattern = ".*[R|r]egular.*")[1] %>%
              stringr::str_extract("^.*LTD1300.*(\\d\\d\\d\\d)\\D.*[R|r]egular.*[C|c][S|s][V|v]", group=1)
          },

        #' Identify Tag ID from available metadata
        #'
        #' @param d The directory in which the data files in question reside
        #'
        #' @return The tag ID identified from the files, as a string
        tag_id_from_d =
          function(d) {
            .self$tag_id_from_filename(
              list.files(
                d,
                pattern = "^.*[C|c][S|s][V|v]"
              )[[1]]
            )
          },

        get_tag_id =
          function() {
            tag_id_from_d(.self$d)
          }
      )
  )


Decoder_Lotek.1400.1800 =
  setRefClass(
    "Decoder_Lotek.1400.1800",
    contains = "Decoder",
    methods =
      list(
        initialize =
          function(...) {
            # Initialize the child class
            callSuper(
              tag_make = "Lotek",
              tag_model = "1400/1800",
              tag_meta_field_map = TAG_FIELDS,
              # Define data maps
              data_maps =
                list(
                  DataMap_Lotek.1400.1800_InstantSensorData()
                ),
              ...
            )
          },

          tag_id_from_filename =
            function(fp) {
              stringr::str_match(fp, pattern = ".*\\D(\\d\\d\\d\\d)\\D.*")[2]
            },

          #' Identify Tag ID from available metadata
          #'
          #' @param d The directory in which the data files in question reside
          #'
          #' @return The tag ID identified from the files, as a string
          get_tag_id =
            function() {
              .self$tag_id_from_filename(
                list.files(
                  .self$d,
                  pattern = "^LAT[180|140].*csv"
                )[[1]]
              )
            }
      )
  )


Decoder_MicrowaveTelemetry_XTag =
  setRefClass(
    "Decoder_MicrowaveTelemetry_XTag",
    contains = "Decoder",
    methods =
      list(
        initialize =
          function(...) {
            # Initialize the child class
            callSuper(
              tag_make = "Microwave Telemetry",
              tag_model = "X-Tag",
              tag_meta_field_map = TAG_FIELDS,
              # Define data maps
              data_maps =
                list(
                  DataMap_MicrowaveTelemetry_XTag_InstantSensorData()
                ),
              ...
            )
          },

        #' Identify Tag ID from available metadata
        #'
        #' @param d The directory in which the data files in question reside
        #'
        #' @return The tag ID identified from the files, as a string
        get_tag_id =
          function() {
            list.files(path = .self$d, pattern = "^\\d*\\.xls") %>%
              stringr::str_extract(pattern = "^(\\d*)\\.xls", group=1)
          }
      )
  )



Decoder_StarOddi_DST =
  setRefClass(
    "Decoder_StarOddi_DST",
    contains = "Decoder",
    methods =
      list(
        initialize =
          function(...) {
            # Initialize the child class
            callSuper(
              tag_make = "Star Oddi",
              tag_model = "DST",
              tag_meta_field_map = TAG_FIELDS,
              # Define data maps
              data_maps =
                list(
                  DataMap_StarOddi_DST_InstantSensorData()
                ),
              ...
            )
          },

        #' Identify Tag ID from available metadata
        #'
        #' @param d The directory in which the data files in question reside
        #'
        #' @return The tag ID identified from the files, as a string
        get_tag_id =
          function() {
            # Read in xlsx file(s) (There should only be one)
            fs = list.files(.self$d, pattern = "^[^~]*\\.xlsx")
            # Extract the tag id from the filenames
            str_extract(fs[[1]], pattern = "^([^~]*)\\.xlsx", group=1)
          }
      )
  )

Decoder_StarOddi_DSTmagnetic =
  setRefClass(
    "Decoder_StarOddi_DSTmagnetic",
    contains = "Decoder",
    methods =
      list(
        initialize =
          function(...) {
            # Initialize the child class
            callSuper(
              tag_make = "Star Oddi",
              tag_model = "DST magnetic",
              tag_meta_field_map = TAG_FIELDS,
              # Define data maps
              data_maps =
                list(
                  DataMap_StarOddi_DSTmagnetic_InstantSensorData()
                ),
              ...
            )
          },

        #' Identify Tag ID from available metadata
        #'
        #' @param d The directory in which the data files in question reside
        #'
        #' @return The tag ID identified from the files, as a string
        get_tag_id =
          function() {
            # Read in xlsx file(s) (There should only be one)
            fs = list.files(d, pattern = "^[^~]*\\.xlsx")
            # Extract the tag id from the filenames
            str_extract(fs[[1]], pattern = "^([^~]*)\\.xlsx", group=1)
          }
      )
  )


