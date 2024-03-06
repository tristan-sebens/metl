Decoder_Lotek.1000.1100.1250 =
  setRefClass(
    "Decoder_Lotek.1000.1100.1250",
    contains = "Decoder",
    methods =
      list(
        initialize =
          function(d, ...) {
            # Initialize the child class
            callSuper(
              d = d,
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
