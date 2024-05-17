# Checks if a given date existed in the Gregorian calendar (e.g. Feb 31)
Validator_Date =
  FieldValidator(
    validate =
      function(date_list) {
        day = date_list$day
        month = date_list$month
        year = date_list$year

        suppressWarnings(
          {
            input_date =
              lubridate::dmy(
                paste(
                  c(day, month, year),
                  collapse = "-"
                )
              )
          }
        )

        return(
          if(!is.na(input_date)) {
            return(
              all(
                lubridate::year(input_date) == year,
                month.name[[lubridate::month(input_date)]] == month,
                lubridate::day(input_date) == day
              )
            )
          } else return(FALSE)
        )
      },
    error_msg = "Invalid date"
  )
