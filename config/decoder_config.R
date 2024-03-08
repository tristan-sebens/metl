#' Base implementation for all Decoder classes
#'
Decoder_Base =
  #----
  setRefClass(
    "Decoder_Base",
    contains = "Decoder",
    methods =
      list(
        initialize =
          function(
            # At the moment, all Decoders write their metadata to the same table.
            ...,
            tag_meta_field_map = TAG_FIELDS
          ) {
            callSuper(
              ...,
              tag_meta_field_map = tag_meta_field_map
            )
          }
      )
  )
#----

#' Base implementation for all Lotek tag Decoders
#'
Decoder_Lotek =
  #----
  setRefClass(
    "Decoder_Lotek",
    contains = "Decoder_Base",
    methods =
      list(
        initialize =
          function(
            ...,
            tag_make = "Lotek"
          ) {
            callSuper(
              ...,
              tag_make = tag_make
            )
          }
      )
  )
#----

Decoder_Lotek.1000.1100.1250 =
  #----
  setRefClass(
    "Decoder_Lotek.1000.1100.1250",
    contains = "Decoder_Base",
    methods =
      list(
        initialize =
          function(
            ...,
            tag_model = "1000/1100/1250",
            # Define data maps
            data_maps =
              list(
                DataMap_Lotek.1000.1100.1250_InstantSensorData()
              )
          ) {
            # Initialize the child class
            callSuper(
              ...,
              tag_model = tag_model,
              data_maps = data_maps
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
#----

Decoder_Lotek.1300 =
  #----
  setRefClass(
    "Decoder_Lotek.1300",
    contains = "Decoder_Lotek",
    methods =
      list(
        initialize =
          function(
            ...,
            tag_model = "1300",
            data_maps =
              list(
                DataMap_Lotek.1300_InstantSensorData()
              )
          ) {
            # Initialize the child class
            callSuper(
              ...,
              tag_model = tag_model,
              data_maps = data_maps
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
#----

Decoder_Lotek.1400.1800 =
  #----
  setRefClass(
    "Decoder_Lotek.1400.1800",
    contains = "Decoder_Lotek",
    methods =
      list(
        initialize =
          function(
            ...,
            tag_model = "1400/1800",
            # Define data maps
            data_maps =
              list(
                DataMap_Lotek.1400.1800_InstantSensorData()
              )
          ) {
            # Initialize the child class
            callSuper(
              ...,
              tag_model = tag_model,
              data_maps = data_maps
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
#----

#' Base implementation for all Microwave Telemetry tag Decoders
#'
Decoder_MicrowaveTelemetry =
  #----
  setRefClass(
    "Decoder_MicrowaveTelemetry",
    contains = "Decoder_Base",
    methods =
      list(
        initialize =
          function(
            ...,
            tag_make = "Microwave Telemetry"
          ) {
            callSuper(
              ...,
              tag_make = tag_make
            )
          }
      )
  )
  #----

Decoder_MicrowaveTelemetry_XTag =
  #----
  setRefClass(
    "Decoder_MicrowaveTelemetry_XTag",
    contains = "Decoder_MicrowaveTelemetry",
    methods =
      list(
        initialize =
          function(
            ...,
            tag_model = "X-Tag",
            # Define data maps
            data_maps =
              list(
                DataMap_MicrowaveTelemetry_XTag_InstantSensorData()
              )
          ) {
            # Initialize the child class
            callSuper(
              ...,
              tag_model = tag_model,
              data_maps = data_maps
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
#----

Decoder_StarOddi =
  #----
  setRefClass(
    "Decoder_StarOddi",
    contains = "Decoder_Base",
    methods =
      list(
        initialize =
          function(
            ...,
            tag_make = "Star Oddi"
          ) {
            callSuper(
              ...,
              tag_make = tag_make
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
#----

Decoder_StarOddi_DST =
  #----
  setRefClass(
    "Decoder_StarOddi_DST",
    contains = "Decoder_StarOddi",
    methods =
      list(
        initialize =
          function(
            ...,
            tag_model = "DST",
            # Define data maps
            data_maps =
              list(
                DataMap_StarOddi_DST_InstantSensorData()
              )
          ) {
            # Initialize the child class
            callSuper(
              ...,
              tag_model = tag_model,
              data_maps = data_maps
            )
          }
      )
  )
#----

Decoder_StarOddi_DSTmagnetic =
  #----
  setRefClass(
    "Decoder_StarOddi_DSTmagnetic",
    contains = "Decoder",
    methods =
      list(
        initialize =
          function(
            ...,
            tag_model = "DST magnetic",
            # Define data maps
            data_maps =
              list(
                DataMap_StarOddi_DSTmagnetic_InstantSensorData()
              )
          ) {
            # Initialize the child class
            callSuper(
              ...,
              tag_model = tag_model,
              data_maps = data_maps
            )
          }
      )
  )
#----

Decoder_StarOddi_DSTmilliF =
  #----
  setRefClass(
    "Decoder_StarOddi_DSTmilliF",
    # The DST milli F decoder is identical in function to the DST
    contains = "Decoder",
    methods =
      list(
        initialize =
          function(
            ...,
            tag_model = "DST milli F",
            # Define data maps
            data_maps =
              list(
                DataMap_StarOddi_DSTmilliF_InstantSensorData()
              )
          ) {
            # Initialize the child class
            callSuper(
              ...,
              tag_model = tag_model,
              data_maps = data_maps
            )
          }
      )
  )
#----

Decoder_Wildlife_Computers =
  #----
  setRefClass(
    "Decoder_WildlifeComputers",
    contains = "Decoder_Base",
    methods =
      list(
        initialize =
          function(
            ...,
            tag_make = "Wildlife Computers"
          ) {
            callSuper(
              ...,
              tag_make = tag_make
            )
          },

        #' Identify Tag ID from available metadata
        #'
        #' @return The tag ID identified from the files, as a string
        get_tag_id =
          function() {
            # Find the unique ID string in all present files
            id =
              # Strings which do not match the given pattern at all return an NA value
              # Filter those values out here
              Filter(
                Negate(is.na),
                list.files(.self$d) %>%
                  stringr::str_extract(pattern=regex("(\\d*)-.*\\.csv", ignore_case = T), group=1) %>%
                  unique()
              )

            if(length(id) > 1) {
              .self$throw_error("Tag ID identification: too many IDs present in directory")
            }

            return(id)
          }
      )
  )
#----

Decoder_WildlifeComputers_MiniPAT =
  #----
  setRefClass(
    "Decoder_WildlifeComputers_MiniPAT",
    # The DST milli F decoder is identical in function to the DST
    contains = "Decoder_WildlifeComputers",
    methods =
      list(
        initialize =
          function(
            ...,
            tag_model = "MiniPAT",
            # Define data maps
            data_maps =
              list(
                DataMap_WildlifeComputer_MiniPAT_InstantSensorData(),
                DataMap_WildlifeComputer_MiniPAT_SummarySensorData()
              )
          ) {
            # Initialize the child class
            callSuper(
              ...,
              tag_model = tag_model,
              data_maps = data_maps

            )
          }
      )
  )
#----

Decoder_WildlifeComputers_BenthicSPAT =
  #----
  setRefClass(
    "Decoder_WildlifeComputers_BenthicSPAT",
    # The DST milli F decoder is identical in function to the DST
    contains = "Decoder_WildlifeComputers",
    methods =
      list(
        initialize =
          function(
            ...,
            tag_model = "Benthic sPAT",
            # Define data maps
            data_maps =
              list(
                DataMap_WildlifeComputer_BenthicSPAT_SummarySensorData()
              )
          ) {
            # Initialize the child class
            callSuper(
              ...,
              tag_model = tag_model,
              data_maps = data_maps
            )
          }
      )
  )
#----























