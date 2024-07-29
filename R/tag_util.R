# A collection of helper functions for reading, parsing, and formatting data from the supported tag types

#' Search for one (or more) files in a directory by pattern
#'
#' Searches directory `d` for files which match the given pattern, and checks to ensure that the number of matching files matches the expected number of files. If not, an error is thrown, otherwise the matching filename(s) is(are) returned
#'
#' @param d The directory to search in
#' @param pattern Regex pattern to match against filenames
#' @param n The number of files expected to be found. Default is 1
#'
#' @return All matching filenames
files_by_pattern =
  function(d, pattern, n = 1, ...) {
    fs = list.files(path = d, pattern = pattern, ...)

    if (length(fs) != n) {
      stop(
        paste0(
          c(
            "File discovery error:",
            paste0("Directory: ", d),
            paste0("Pattern: ", pattern),
            paste0("Expected ", n, " file", ifelse(n > 1, "s", ""), ", found ", length(fs))
          ),
          collapse = "\n"
        )
      )
    }

    return(fs)
  }

# ---------------------------
# LOTEK TAGS
# ---------------------------
# Find the first line of the given file in which the specified pattern occurs
lotek_find_line_in_file =
  function(fp, pattern, n=1000) {
    # Find all matches in the first n lines
    matches =
      readLines(fp, n=n, skipNul = F) %>%
      unlist %>%
      stringr::str_detect(pattern = pattern)

    # Check that any lines matched
    if (!any(matches)) {
      stop(
        paste0(
          "Parsing file - No matches of '",
          pattern,
          "' found in first ",
          n,
          " lines of ",
          tail(stringr::str_split(fp, .Platform$file.sep)[[1]], 1)
        )
      )
    }

    # Return the line number of the first match
    return(which(matches)[[1]])
  }

lotek_1000.1100.1250_read_csv =
  function(fp) {
    "Read csv data from Lotek 1000/1100/1250 formatted file"
    read.csv(
      fp,
      skip=
        # Find the line at which the csv data begins by finding the
        #  'CSV DATA' section header
        lotek_find_line_in_file(
          fp,
          pattern="CSV DATA")
    ) %>%
      # Drop any empty lines.
      dplyr::select_if(function(x) {sum(!is.na(x)) > 0 })
  }

lotek_1400.1800_read_csv =
  function(fp) {
    "Read csv data from Lotek 1400/1800 formatted csv file"
    read.csv(
      fp,
      skip =
        lotek_find_line_in_file(
          fp,
          pattern = "Rec #"
        ) - 1
    )
  }

# ---------------------------
# MICROWAVE TELEMETRY TAGS
# ---------------------------
mt_xtag_read_xl_file =
  function(path, ...) {
    # Determine which type of xl file we're attempting to read
    format = stringr::str_extract(path, "^.*(\\..*)$", group = 1)

    switch(
      format,
      ".xls" = {readxl::read_xls(path = path, ...)},
      ".xlsm" = {readxl::read_xlsx(path = path, ...)}
    )
  }

# Calculate the cell range string the desired data is in
mt_xtag_calc_range =
  function(fp, sheet, col_range) {
    row_max =
      # Read in the full, unfiltered sheet to count the number of rows of data in the file
      nrow(
        mt_xtag_read_xl_file(
          path = fp,
          sheet = sheet,
          skip=1
        )
      ) + 2 # Add one row for the title row

    return(
      paste0(
        col_range[[1]],
        '2',
        ':',
        col_range[[2]],
        row_max
      )
    )
  }

# Helper function to extract data from excel sheet
mt_xtag_read_data_sheet =
  function(fp, sheet, col_range, type = "xls") {
    # While the logic of reading the underlying sheet doesn't change,
    # the initial function call does change depending on the filetype
    return(
      suppressMessages(
        {
          # Read the data from the pressure data sheet in the xls file
          mt_xtag_read_xl_file(
            path = fp,
            sheet = sheet,
            # Calculate the range of data to include
            range =
              mt_xtag_calc_range(
                fp, sheet, col_range
              ),
            col_names = T
          )
        }
      )
    )
  }

# ---------------------------
# WILDLIFE COMPUTER TAGS
# ---------------------------

#' Determine interval from vector of dates
#'
#' Wildlife Computer MiniPAT tags collect certain data continuously, but rather than report the continuous data stream they report a series of packages, each of which contains the aggregate stats for a certain interval of time. This interval is not explicitly defined in the output data, but can be inferred from the timestamps of the data. This function performs that inference
#'
#' @param date_ Vector of POSIXct dates
#'
#' @return The interval at which the dates were programmed to be spaced, expressed as a difftime obj
wc_minipat_find_interval =
  function(date_) {
    # Ensure the dates are chronologically ordered, and remove duplicates
    date_ = sort(unique(date_))
    return(v_mode(dplyr::lead(date_) - date_))
  }

#' Calculate end times for Wildlife Computers MiniPAT histogram and profile data
#'
#' WC MiniPAT tags record histogram and profile data as a series of records, each of which has a start time. The end time of each record is not explicitly recorded, but can be inferred from the start time of the following record. This function calculates the end time for each record in a series of start times.
#'
#' @param start_times A vector of POSIXct objects representing the start times of the records, as they are recorded in the input dataframe
#'
#' @return A vector of POSIXct objects representing the endtimes of the records, calculated based on the start times
wc_minipat_calc_end_times =
  function(start_times) {
    # Infer the aggregation interval from the data
    interval =
      wc_minipat_find_interval(start_times)

    # Map each unique start time to its corresponding end time
    start_end_map =
      data.frame(
        start = sort(unique(start_times))
      ) %>%
      dplyr::mutate(
        end =
          ifelse(
            # Edge case for the last value, for which there is no
            # following value to compare to
            is.na(dplyr::lead(start)),
            # In this case, always apply the interval
            start + interval,
            # If this is not the last value, then apply the standard case:
            ifelse(
              # If the timestamp of the next record falls within the
              # interval, use that as the end time.
              dplyr::lead(start) - start < interval,
              dplyr::lead(start),
              # Otherwise, use the start time plus the interval
              start + interval
            )

          ),
        end = as.POSIXct(end)
      )

    # Use the start/end time map to construct a vector of end
    # timestamps to complement the vector of start timestamps
    start_end_times =
      data.frame(
        start = start_times
      ) %>%
      dplyr::left_join(
        start_end_map,
        by = c("start")
      )

    # Return the vector of end times
    return(start_end_times$end)
  }

# ---------------------------
# DESERT STAR TAGS
# ---------------------------

ds_find_pattern_in_list =
  function(lines_, pattern_) {
    which(
      !is.na(
        stringr::str_match(
          lines_,
          pattern=pattern_
        )
      )
    )
  }

# Extract the subset of strings in a list of strings based on a pattern
# which marks the start of the subset and (optionally) a pattern which
# marks the end of the subset.
ds_subset_list_by_pattern =
  function(
    lines_,
    start_pattern,
    end_pattern=NULL,
    include_start = 0,
    include_end = 0
  ) {
    lines_[
      seq(
        ds_find_pattern_in_list(lines_, start_pattern) + (1-include_start),
        ifelse(
          is.null(end_pattern),
          length(lines_),
          ds_find_pattern_in_list(lines_, end_pattern) -(1-include_end)
        )
      )
    ]
  }

# Parse the DesertStar file and extract the packet header definitions
ds_extract_packet_headers =
  function(
    fp,
    start_pattern = "Packet definitions",
    end_pattern = "Beginning of log"
  ) {
    # Get the raw lines of the file which define the packet structure
    packet_defs_raw =
      ds_subset_list_by_pattern(
        readLines(fp),
        start_pattern, # "Packet definitions",
        end_pattern #"Beginning of log"
      )

    # Construct list of packet field name headers
    packet_defs = list()
    for (e in packet_defs_raw) {
      e_ =
        strsplit(
          e,
          split = ','
        ) %>%
        unlist()

      # Extract packet name
      name =
        e_[[1]]
      # Extract packet field names
      values =
        Filter(
          function(i) {i != ""},
          e_[seq(2, length(e_))]
        )

      packet_defs[name] = list(values)
    }

    return(packet_defs)
  }

# Parse a DesertStar, and extract the packet records within.
# Data is returned as a collection of dataframe, each of which contains all of
# the records of a single packet type found in the data file. Each dataframe is
# also structured according to the 'Packet Definition' records found within the
# data file
ds_extract_packet_dataframes =
  function(fp) {
    # Extract the raw packet data from the file
    packet_defs = ds_extract_packet_headers(fp)

    df_raw =
      ds_subset_list_by_pattern(
        readLines(fp),
        start_pattern = "Beginning of log"
      ) %>%
      data.frame('raw' = .)

    # Organize the raw data into a dataframe, containing the name of the
    # packet, and the raw data string
    df_packet =
      df_raw %>%
      dplyr::rowwise() %>%
      dplyr::mutate(
        packet = unlist(strsplit(raw, ','))[[1]]
      ) %>%
      dplyr::ungroup() %>%
      dplyr::filter(
        stringr::str_detect(
          packet,
          "SDPT_"
        )
      ) %>%
      dplyr::select(packet, raw)

    # Initialize an empty list which we will use to collect our results
    df_packet_list = list()

    suppressWarnings(
      {
        for (
          df in
          df_packet %>%
          dplyr::group_by(packet) %>%
          dplyr::group_split(.keep = T)
        ) {
          # Get the packet type
          name = df$packet[[1]]
          # Build the dataframe
          value =
            df$raw %>%
            # Split each raw line into separate fields
            lapply(
              function(l) {
                return(strsplit(l, split=',')[[1]])
              }
            ) %>%
            # Bind the split values into a matrix
            do.call(rbind, .) %>%
            # Convert to dataframe
            as.data.frame() %>%
            # Set column names based on packet definition
            magrittr::set_colnames(c("Packet Type", packet_defs[[df$packet[[1]]]])) %>%
            # Drop empty columns
            dplyr::select(., names(.)[!is.na(names(.))])
          df_packet_list[[name]] = value
        }

      }
    )

    return(df_packet_list)
  }

# Extract all packets of a given type from a directory.
# Returned as a single data.frame
ds_extract_packet_type_from_dir =
  function(d, packet_name) {
    fs =
      list.files(
        d,
        full.names = T,
        pattern = ".*\\.csv$",
        ignore.case = T
      )

    dat =
      fs %>%
      lapply(
        function(fp) {
          pkts =
            ds_extract_packet_dataframes(fp)

          return(pkts[[packet_name]])
        }
      ) %>%
      do.call(rbind, .)

    return(dat)
  }
