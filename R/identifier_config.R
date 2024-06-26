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
    conditions =
      list(
        Condition(
          condition = function(d) check_for_files(d, "^\\d*pressure\\.csv"),
          message = "Pressure file missing or mislabeled. Should match pattern: ^\\d*pressure.csv"
        ),
        Condition(
          condition = function(d) check_for_files(d, "^\\d*temperature\\.csv"),
          message = "Temperature file missing or mislabeled. Should match pattern ^\\d*temperature.csv"
        )
      )
  )

#' Identifier - Lotek 1300 tags
#' @export Identifier_Lotek_1300
Identifier_Lotek_1300 =
  Identifier(
    conditions =
      list (
        Condition(
          condition = function(d) check_for_files(d, "LTD1300.\\d\\d\\d\\d_Day Log.csv"),
          message = "Day log file missing or mislabeled. Should match pattern: LTD1300.\\d\\d\\d\\d_Day Log.csv",
          optional = T
        ),
        Condition(
          condition = function(d) check_for_files(d, "LTD1300.\\d\\d\\d\\d_Regular Log.csv"),
          message = "Regular log file missing or mislabeled. Should match pattern: LTD1300.\\d\\d\\d\\d_Regular Log.csv",
        )
      )
  )



#' Identifier - Lotek 1400/1800 tags
#' @export Identifier_Lotek_1400.1800
Identifier_Lotek_1400.1800 =
  Identifier(
    conditions =
      list(
        Condition(
          condition = function(d) check_for_files(d, "LAT(180|140)_(\\d|_)*_\\d\\d\\.csv"),
          message = "Data file missing or mislabeled. Should match pattern: LAT(180|140)_\\d\\d\\d\\d_\\d\\d_\\d\\d.csv"
        )
      )
  )

#' Identifier - Microwave Telemetry X-tags (transmitted via satellite)
#' @export Identifier_MicrowaveTelemetry_XTag_Transmitted
Identifier_MicrowaveTelemetry_XTag_Transmitted =
  Identifier(
    conditions =
      list(
        # Check that the data file is present and correctly labeled
        Condition(
          condition = function(d) check_for_files(d, "^\\d*.xls"),
          message = "Data file missing or mislabeled. Should match pattern: ^\\d*.xls"
        ),
        # Check that all files present in the directory are of expected formats
        Condition(
          condition = function(d) check_for_files(d, "^\\d+(a|e|o|p|rp|rt|t)?\\.(xls|txt)", length(list.files(d))),
          message = "Unexpected files in directory. All files should match pattern: ^\\d+(a|e|o|p|rp|rt|t)?\\.(xls|txt)",
          optional = T
        )
      )
  )

#' Identifier - Microwave Telemetry X-tags (physically recovered)
#' @export Identifier_MicrowaveTelemetry_XTag_Recovered
Identifier_MicrowaveTelemetry_XTag_Recovered =
  Identifier(
    conditions =
      list(
        # Check that the data file is present and correctly labeled
        Condition(
          condition = function(d) check_for_files(d, "^\\d+_Recovered\\.xls"),
          message = "Data file missing or mislabeled. Should match pattern: ^\\d+_Recovered.xls"
        )
      )
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
    conditions =
      list(
        Condition(
          condition =
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
            },
          message = "Data file missing or mislabeled. Should match pattern: ^JS\\d+\\.xlsx and contain fields: Comp.Head(°), Comp.4p(°), Mag.vec(nT)"
        )
      )
  )

#' Identifier - StarOddi DST magnetic tags
#' @export Identifier_StarOddi_DSTmagnetic
Identifier_StarOddi_DSTmagnetic =
  Identifier(
    conditions =
      list(
        Condition(
          condition =
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
            },
          message = "Data file missing or mislabeled. Should match pattern: ^JS\\d+\\.xlsx and contain fields: Comp.Head(°), Comp.4p(°), Mag.vec(nT)"
        )
      )
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
    conditions =
      list(
        Condition(
          condition = function(d) check_for_files(d, "^\\d\\d\\d\\d\\d\\d-?All.csv"),
          message = "All.csv file missing or mislabeled. Should match pattern: ^\\d\\d\\d\\d\\d\\d-?All.csv"
        ),
        Condition(
          condition = function(d) check_for_files(d, "^\\d\\d\\d\\d\\d\\d-?Argos.csv"),
          message = "Argos.csv file missing or mislabeled. Should match pattern: ^\\d\\d\\d\\d\\d\\d-?Argos.csv"
        ),
        Condition(
          condition = function(d) check_for_files(d, "^\\d\\d\\d\\d\\d\\d-?Corrupt.csv"),
          message = "Corrupt.csv file missing or mislabeled. Should match pattern: ^\\d\\d\\d\\d\\d\\d-?Corrupt.csv"
        ),
        Condition(
          condition = function(d) check_for_files(d, "^\\d\\d\\d\\d\\d\\d-?Orientation.csv"),
          message = "Orientation.csv file missing or mislabeled. Should match pattern: ^\\d\\d\\d\\d\\d\\d-?Orientation.csv"
        ),
        Condition(
          condition = function(d) check_for_files(d, "^\\d\\d\\d\\d\\d\\d-?RawArgos.csv"),
          message = "RawArgos.csv file missing or mislabeled. Should match pattern: ^\\d\\d\\d\\d\\d\\d-?RawArgos.csv"
        ),
        Condition(
          condition = function(d) check_for_files(d, "^\\d\\d\\d\\d\\d\\d-?RTC.csv"),
          message = "RTC.csv file missing or mislabeled. Should match pattern: ^\\d\\d\\d\\d\\d\\d-?RTC.csv"
        ),
        Condition(
          condition = function(d) check_for_files(d, "^\\d\\d\\d\\d\\d\\d-?Status.csv"),
          message = "Status.csv file missing or mislabeled. Should match pattern: ^\\d\\d\\d\\d\\d\\d-?Status.csv"
        ),
        Condition(
          condition = function(d) check_for_files(d, "\\d\\d\\d\\d\\d\\d\\.prv"),
          message = "PRV file missing or mislabeled. Should match pattern: \\d\\d\\d\\d\\d\\d\\.prv"
        ),
        Condition(
          condition = function(d) check_for_files(d, "^\\d\\d\\d\\d\\d\\d-?PDTs.csv", n=0),
          message = "PDTs.csv file present. Should not be present."
        ),
        Condition(
          condition = function(d) check_for_files(d, "^\\d\\d\\d\\d\\d\\d-?SSTs.csv", n=0),
          message = "SSTs.csv file present. Should not be present."
        )
      )
  )

#' Identifier - Wildlife Computer MiniPAT tags
#' @export Identifier_WildlifeComputers_MiniPAT
Identifier_WildlifeComputers_MiniPAT =
  Identifier(
    conditions =
      list(
        Condition(
          condition = function(d) check_for_files(d, "^\\d\\d\\d\\d\\d\\d-?All.csv"),
          message = "All.csv file missing or mislabeled. Should match pattern: ^\\d\\d\\d\\d\\d\\d-?All.csv"
        ),
        Condition(
          condition = function(d) check_for_files(d, "^\\d\\d\\d\\d\\d\\d-?Argos.csv"),
          message = "Argos.csv file missing or mislabeled. Should match pattern: ^\\d\\d\\d\\d\\d\\d-?Argos.csv"
        ),
        Condition(
          condition = function(d) check_for_files(d, "^\\d\\d\\d\\d\\d\\d-?Corrupt.csv"),
          message = "Corrupt.csv file missing or mislabeled. Should match pattern: ^\\d\\d\\d\\d\\d\\d-?Corrupt.csv"
        ),
        Condition(
          condition = function(d) check_for_files(d, "^\\d\\d\\d\\d\\d\\d-?Histos.csv"),
          message = "Histos.csv file missing or mislabeled. Should match pattern: ^\\d\\d\\d\\d\\d\\d-?Histos.csv"
        ),
        Condition(
          condition = function(d) check_for_files(d, "^\\d\\d\\d\\d\\d\\d-?LightLoc.csv"),
          message = "LightLoc.csv file missing or mislabeled. Should match pattern: ^\\d\\d\\d\\d\\d\\d-?LightLoc.csv"
        ),
        Condition(
          condition = function(d) check_for_files(d, "^\\d\\d\\d\\d\\d\\d-?RawArgos.csv"),
          message = "RawArgos.csv file missing or mislabeled. Should match pattern: ^\\d\\d\\d\\d\\d\\d-?RawArgos.csv"
        ),
        Condition(
          condition = function(d) check_for_files(d, "^\\d\\d\\d\\d\\d\\d-?RTC.csv"),
          message = "RTC.csv file missing or mislabeled. Should match pattern: ^\\d\\d\\d\\d\\d\\d-?RTC.csv"
        ),
        Condition(
          condition = function(d) check_for_files(d, "^\\d\\d\\d\\d\\d\\d-?Status.csv"),
          message = "Status.csv file missing or mislabeled. Should match pattern: ^\\d\\d\\d\\d\\d\\d-?Status.csv"
        ),
        Condition(
          condition = function(d) check_for_files(d, "^\\d\\d\\d\\d\\d\\d-?PDTs.csv"),
          message = "PDTs.csv file missing or mislabeled. Should match pattern: ^\\d\\d\\d\\d\\d\\d-?PDTs.csv"
        ),
        Condition(
          condition = function(d) check_for_files(d, "^\\d\\d\\d\\d\\d\\d-?SST.csv"),
          message = "SST.csv file missing or mislabeled. Should match pattern: ^\\d\\d\\d\\d\\d\\d-?SST.csv"
        ),
        Condition(
          condition = function(d) check_for_files(d, "\\d\\d\\d\\d\\d\\d\\.prv"),
          message = "PRV file missing or mislabeled. Should match pattern: \\d\\d\\d\\d\\d\\d\\.prv"
        )
      )
  )

#' Identifier - Desert Star SeaTag MOD tags - Directory of DesertStar raw datafiles (containing data from many tags)
#' @export Identifier_DesertStar_SeaTagMOD_DIRECTORY
Identifier_DesertStar_SeaTagMOD_DIRECTORY =
  Identifier(
    conditions =
      list(
        Condition(
          condition = function(d) check_for_files(d, "\\D*_ADS_\\d\\d\\d\\d_\\d*_\\d*_.*\\.csv", n = length(list.files(d))),
          message = ".csv data file missing or mislabeled. Should match pattern: \\D*_ADS_\\d\\d\\d\\d_\\d*_\\d*_.*\\.csv"
        )
      )
  )

#' Identifier - Desert Star SeaTag MOD tags - Directory containing data from a single tag
#' @export Identifier_DesertStar_SeaTagMOD_SINGLETAG
Identifier_DesertStar_SeaTagMOD_SINGLETAG =
  Identifier(
    conditions =
      list(
        Condition(
          condition = function(d) check_for_files(d, "\\d*_\\D*\\.csv"),
          message = ".csv data file missing or mislabeled. Should match pattern: \\d*_\\D*\\.csv"
        ),
        Condition(
          condition = function(d) check_for_files(d, "\\d*_\\D*\\.csv", n=length(list.files(d))),
          message = "Unexpected files present in directory, should be one .csv file for each data type. Each .csv file should be named according to the pattern: <tag_id>_<data_type>.csv"
        )
      )
  )

