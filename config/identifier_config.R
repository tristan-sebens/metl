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
                .self$check_for_files(d, "^\\d*pressure\\.csv"),
                .self$check_for_files(d, "^\\d*temperature\\.csv"),
                .self$check_for_files(d, "^\\d*supply\\.csv"),
                .self$check_for_files(d, "^\\d*light\\.csv")
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
              .self$check_for_files(d, "LTD1300.\\d\\d\\d\\d_\\d*\\.bin"),
              .self$check_for_files(d, "LTD1300.\\d\\d\\d\\d_day log.csv"),
              .self$check_for_files(d, "LTD1300.\\d\\d\\d\\d_regular log.csv")
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
              .self$check_for_files(d, "LAT(180|140)_(\\d|_)*_\\d\\d\\.csv")
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

Identifier_StarOddi_DST =
  setRefClass(
    "Identifier_StarOddi_DST",
    contains = "Identifier",
    methods =
      list(
        identify =
          function(d) {
            return(
              all(
                .self$check_for_files(d, "^JS\\d+\\.xlsx"),
                # Check that all files in the directory are either the datafile, or Excel's temporary lock file
                .self$check_for_files(d, "(~$)*JS\\d+\\.xlsx", n=length(list.files(d)))
              )
            )
          }
      )
  )


Identifier_StarOddi_DSTmagnetic =
  setRefClass(
    "Identifier_StarOddi_DSTmagnetic",
    contains = "Identifier",
    methods =
      list(
        check_fields =
          function(d) {
            dat =
              readxl::read_xlsx(
                list.files(
                  d,
                  pattern = "^JS\\d+\\.xlsx",
                  full.names = T
                ),
                sheet = "DAT",
                n_max = 10
              )

            dat_f = names(dat)

            return(
              all(
                # Check the number of fields
                length(dat_f) == 11,
                # Check that the necessary fields are present
                "Comp.Head(°)" %in% dat_f,
                "Tilt-X(°)" %in% dat_f
              )
            )

          },

        identify =
          function(d) {
            return(
              all(
                .self$check_for_files(d, "^JS\\d+\\.xlsx"),
                # Check that all files in the directory are either the datafile, or Excel's temporary lock file
                .self$check_for_files(d, "(~$)*JS\\d+\\.xlsx", n=length(list.files(d))),
                .self$check_fields(d)
              )
            )
          }
      )
  )


# Base class for WC tags. Used because so far all WC tag data files follow the same
#  naming format, so this class implements a helper function to identify those files.
Identifier_WildlifeComputers =
  setRefClass(
    "Identifier_WildlifeComputers",
    contains = "Identifier",
    methods =
      list(
        # So far, most WC files follow the same format
        check_for_wc_data_file =
          function(d, file_name, ...) {
            .self$check_for_files(
              d,
              paste0("^\\d\\d\\d\\d\\d\\d-?", file_name),
              ...
            )
          }

      )
  )


Identifier_WildlifeComputers_BenthicSPAT =
  setRefClass(
    "Identifier_WildlifeComputers_BenthicSPAT",
    contains = "Identifier_WildlifeComputers",
    methods =
      list(
        identify =
          function(d) {
            return(
              all(
                # Files that should be present
                .self$check_for_wc_data_file(d, "All.csv"),
                .self$check_for_wc_data_file(d, "Argos.csv"),
                .self$check_for_wc_data_file(d, "Corrupt.csv"),
                .self$check_for_wc_data_file(d, "Orientation.csv"),
                .self$check_for_wc_data_file(d, "RawArgos.csv"),
                .self$check_for_wc_data_file(d, "RTC.csv"),
                .self$check_for_wc_data_file(d, "Status.csv"),
                .self$check_for_files(d, "\\d\\d\\d\\d\\d\\d\\.prv"),
                # Files that should not be present
                .self$check_for_wc_data_file(d, "PDTs.csv", n=0),
                .self$check_for_wc_data_file(d, "SSTs.csv", n=0)
              )
            )
          }
      )
  )


Identifier_WildlifeComputers_MiniPAT =
  setRefClass(
    "Identifier_WildlifeComputers_MiniPAT",
    contains = "Identifier_WildlifeComputers",
    methods =
      list(
        identify =
          function(d) {
            return(
              all(
                # Files that should be present
                .self$check_for_wc_data_file(d, "All.csv"),
                .self$check_for_wc_data_file(d, "Argos.csv"),
                .self$check_for_wc_data_file(d, "Corrupt.csv"),
                .self$check_for_wc_data_file(d, "Histos.csv"),
                .self$check_for_wc_data_file(d, "LightLoc.csv"),
                .self$check_for_wc_data_file(d, "RawArgos.csv"),
                .self$check_for_wc_data_file(d, "RTC.csv"),
                .self$check_for_wc_data_file(d, "Status.csv"),
                .self$check_for_wc_data_file(d, "PDTs.csv"),
                .self$check_for_wc_data_file(d, "SST.csv"),
                .self$check_for_files(d, "\\d\\d\\d\\d\\d\\d\\.prv"),
                # Files that should not be present
                .self$check_for_wc_data_file(d, "Orientation.csv", n=0)
              )
            )
          }
      )
  )
