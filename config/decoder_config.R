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
                  DataMap_Lotek.1000.1100.1250()
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
                  DataMap_Lotek.1300()
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
