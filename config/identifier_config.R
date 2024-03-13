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

Identifier_StarOddi_DST =
  setRefClass(
    "Identifier_StarOddi_DST",
    contains = "Identifier",
    methods =
      list(

        # The only way I know of to distinguish between the DST and DST milli-F
        # tags is by looking at the format of this one column in the datasheet.
        # It's brittle, but it's the best we've got.
        check_xy_sheet_datetime_column_format =
          function(d) {
            fp =
              list.files(
                d,
                full.names = T,
                pattern = "^JS\\d+\\.xlsx"
              )

            suppressMessages(
              {
                dat = readxl::read_xlsx(fp, sheet = "XY", n_max = 10)
              }
            )

            # DST
            return(
              all(
                "POSIXct" %in% class(dat[[1]]),
                "POSIXt" %in% class(dat[[1]])
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
                .self$check_xy_sheet_datetime_column_format(d)
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


Identifier_StarOddi_DSTmilliF =
  setRefClass(
    "Identifier_StarOddi_DSTmilliF",
    contains = "Identifier",
    methods =
      list(

        # The only way I know of to distinguish between the DST and DST milli-F
        # tags is by looking at the format of this one column in the datasheet.
        # It's brittle, but it's the best we've got.
        check_xy_sheet_datetime_column_format =
          function(d) {
            fp =
              list.files(
                d,
                full.names = T,
                pattern = "^JS\\d+\\.xlsx"
              )

            suppressMessages(
              {
                dat = readxl::read_xlsx(fp, sheet = "XY", n_max = 10)
              }
            )

            # DST
            return(class(dat[[1]]) == "numeric")
          },

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
                length(dat_f) == 3,
                # Check that the necessary fields are present
                !"Comp.Head(°)" %in% dat_f,
                !"Tilt-X(°)" %in% dat_f
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
                .self$check_xy_sheet_datetime_column_format(d),
                .self$check_fields(d)
              )
            )
          }
      )
  )
