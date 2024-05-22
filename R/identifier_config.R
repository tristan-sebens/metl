# Identifier classes for each tag type


# Check number of files in directory which match pattern
#
# Helper function to quickly determine if an expected number of files
# match the given pattern
check_for_files =
  function(d, pattern, n=1, ignore.case = T) {
    # Check if the number of files which match the given pattern match the expected number
    if(
      length(
        list.files(
          d,
          pattern = pattern,
          ignore.case = ignore.case
        )
      ) == n
    ) {
      return(TRUE)
    }
    return(FALSE)
  }

#' Identifier - Lotek 1000/1100/1250 tags
#' @export Identifier_Lotek_1000.1100.1250
Identifier_Lotek_1000.1100.1250 =
  Identifier(
    identify_ =
      function(d) {
        return(
          all(
            check_for_files(d, "^\\d*pressure\\.csv"),
            check_for_files(d, "^\\d*temperature\\.csv")
          )
        )
      }
  )

#' Identifier - Lotek 1300 tags
#' @export Identifier_Lotek_1300
Identifier_Lotek_1300 =
  Identifier(
    identify_ =
      function(d) {
        all(
          check_for_files(d, "LTD1300.\\d\\d\\d\\d_day log.csv"),
          check_for_files(d, "LTD1300.\\d\\d\\d\\d_regular log.csv")
        )
      }
  )

#' Identifier - Lotek 1400/1800 tags
#' @export Identifier_Lotek_1400.1800
Identifier_Lotek_1400.1800 =
  Identifier(
    identify_ =
      function(d) {
        all(
          check_for_files(d, "LAT(180|140)_(\\d|_)*_\\d\\d\\.csv")
        )
      }
  )

#' Identifier - Microwave Telemetry X-tags
#' @export Identifier_MicrowaveTelemetry_XTag
Identifier_MicrowaveTelemetry_XTag =
  Identifier(
    identify_ =
      function(d) {
        all(
          check_for_files(d, "^\\d*.xls"),
          # Check that all files present in the directory fit the given pattern
          check_for_files(d, "^\\d+(a|e|o|p|rp|rt|t)?\\.(xls|txt)", length(list.files(d)))
        )
      }
  )

check_for_fields =
  function(fp, fields, present=T) {
    suppressMessages(
      classes = c("warning", "message"),
      {
        xl_fields_ =
          names(readxl::read_xlsx(fp, n_max = 1))
      }
    )

    res_ =
      fields %>%
      lapply(
        function(f_) {
          return(f_ %in% xl_fields_)
        }
      ) %>%
      unlist()

    if (present) {
      return(all(res_))
    } else {
      return(!any(res_))
    }
  }

#' Identifier - StarOddi DST tags
#' @export Identifier_StarOddi_DST
Identifier_StarOddi_DST =
  Identifier(
    identify_ =
      function(d) {
        fp = list.files(d, full.names = T, pattern = "^JS\\d+\\.xlsx")[[1]]
        return(
          all(
            check_for_files(
              d,
              "^JS\\d+\\.xlsx"
            ),
            # Check that all files in the directory are either the datafile, or Excel's temporary lock file
            check_for_files(
              d,
              "(~$)*JS\\d+\\.xlsx",
              n=length(list.files(d))
            ),
            check_for_fields(
              fp =
                fp,
              fields =
                c(
                  "Comp.Head(°)",
                  "Comp.4p(°)",
                  "Mag.vec(nT)"
                ),
              present = F
            )
          )
        )
      }
  )

#' Identifier - StarOddi DST magnetic tags
#' @export Identifier_StarOddi_DSTmagnetic
Identifier_StarOddi_DSTmagnetic =
  Identifier(
    identify_ =
      function(d) {
        fp = list.files(d, full.names = T, pattern = "^JS\\d+\\.xlsx")[[1]]
        return(
          all(
            check_for_files(d, "^JS\\d+\\.xlsx"),
            # Check that all files in the directory are either the datafile, or Excel's temporary lock file
            check_for_fields(
              fp =
                fp,
              fields =
                c(
                  "Comp.Head(°)",
                  "Comp.4p(°)",
                  "Mag.vec(nT)"
                )
            )
          )
        )
      }
  )


check_for_wc_data_file =
  function(d, file_name, ...) {
    check_for_files(
      d,
      paste0("^\\d\\d\\d\\d\\d\\d-?", file_name),
      ...
    )
  }

#' Identifier - Wildlife Computer Benthic sPAT tags
#' @export Identifier_WildlifeComputers_BenthicSPAT
Identifier_WildlifeComputers_BenthicSPAT =
  Identifier(
    identify_ =
      function(d) {
        return(
          all(
            # Files that should be present
            check_for_wc_data_file(d, "All.csv"),
            check_for_wc_data_file(d, "Argos.csv"),
            check_for_wc_data_file(d, "Corrupt.csv"),
            check_for_wc_data_file(d, "Orientation.csv"),
            check_for_wc_data_file(d, "RawArgos.csv"),
            check_for_wc_data_file(d, "RTC.csv"),
            check_for_wc_data_file(d, "Status.csv"),
            check_for_files(d, "\\d\\d\\d\\d\\d\\d\\.prv"),
            # Files that should not be present
            check_for_wc_data_file(d, "PDTs.csv", n=0),
            check_for_wc_data_file(d, "SSTs.csv", n=0)
          )
        )
      }
  )

#' Identifier - Wildlife Computer MiniPAT tags
#' @export Identifier_WildlifeComputers_MiniPAT
Identifier_WildlifeComputers_MiniPAT =
  Identifier(
    identify_ =
      function(d) {
        return(
          all(
            # Files that should be present
            check_for_wc_data_file(d, "All.csv"),
            check_for_wc_data_file(d, "Argos.csv"),
            check_for_wc_data_file(d, "Corrupt.csv"),
            check_for_wc_data_file(d, "Histos.csv"),
            check_for_wc_data_file(d, "LightLoc.csv"),
            check_for_wc_data_file(d, "RawArgos.csv"),
            check_for_wc_data_file(d, "RTC.csv"),
            check_for_wc_data_file(d, "Status.csv"),
            check_for_wc_data_file(d, "PDTs.csv"),
            check_for_wc_data_file(d, "SST.csv"),
            check_for_files(d, "\\d\\d\\d\\d\\d\\d\\.prv")
          )
        )
      }
  )

#' Identifier - Desert Star SeaTag MOD tags
#' @export Identifier_DesertStar_SeaTagMOD
Identifier_DesertStar_SeaTagMOD =
  Identifier(
    identify_ =
      function(d) {
        check_for_files(
          d,
          "\\D*_ADS_\\d\\d\\d\\d_\\d*_\\d*_.*\\.csv",
          n = length(list.files(d))
        )
      }
  )

