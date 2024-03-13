# Identifier classes for each tag type


Identifier_Lotek_1000.1100.1250 =
  setRefClass(
    "Identifier_Lotek_1000.1100.1250",
    contains = "Identifier",
    methods =
      list(
        identify =
          function(d) {
            return(
              all(
                .self$check_for_files(d, "^\\d*\\.dsd"),
                .self$check_for_files(d, "^\\d*pressure\\.csv"),
                .self$check_for_files(d, "^\\d*temperature\\.csv")
              )
            )
          }
      )
  )


Identifier_Lotek_1300 =
  setRefClass(
    "Identifier_Lotek_1300",
    contains = "Identifier",
    methods =
      list(
        identify =
          function(d) {
            all(
              .self$check_for_files(d, "LTD1300D\\d\\d\\d\\d_\\d*\\.bin"),
              .self$check_for_files(d, "LTD1300D\\d\\d\\d\\d_day log.csv"),
              .self$check_for_files(d, "LTD1300D\\d\\d\\d\\d_regular log.csv")
            )
          }
      )
  )


Identifier_Lotek_1400.1800 =
  setRefClass(
    "Identifier_Lotek_1400.1800",
    contains = "Identifier",
    methods =
      list(
        identify =
          function(d) {
            all(
              .self$check_for_files(d, "LAT(180|140)_(\\d|_)*_00\\.csv")
            )
          }
      )
  )


Identifier_MicrowaveTelemetry_XTag =
  setRefClass(
    "Identifier_MicrowaveTelemetry_XTag",
    contains = "Identifier",
    methods =
      list(
        identify =
          function(d) {
            all(
              .self$check_for_files(d, "\\d*.xls"),
              # Check that all files present in the directory fit the given pattern
              .self$check_for_files(d, "\\d+(a|e|o|p|rp|rt|t)?\\.(xls|txt)", length(list.files(d)))
            )
          }
      )
  )

