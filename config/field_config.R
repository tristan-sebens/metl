#----------------
# HELPER FUNCTIONS
#----------------

#' Helper function for calculating POSIXct timestamps. Able to handle multiple
#' possible formats.
#'
#' If multiple formats are provided, it is implicitly assumed that each row will
#' match only one of the provided formats. If a timestamp matches more than one
#' passed format, the output will be meaningless
#'
#' @param ts_dat The raw timestamp data, of unknown format or of multiple formats
#' @param formats The format string(s) to use ot
#'
#' @return The values of ts_dat, reformatted into POSIXct timestamps
POSIXct_format =
  function(ts_dat, formats) {
    res =
      # Apply every conversion format to the timestamp field.
      # Produces a list of vectors, each the result of applying one of the formats
      formats %>%
      lapply(
        function(format) {
          as.POSIXct(ts_dat, format=format, tz="UTC")
        }
      )

    ret =
      # Condense this list of columns into a data.frame
      as.data.frame(do.call(cbind, res)) %>%
      # Unite the values. This implicitly assumes there is only one non-NA
      # value in each row
      tidyr::unite(col = "ts", na.rm = T) %>%
      # Unite returns the united columns as character strings
      # Re-convert to POSIXct
      dplyr::pull(ts) %>%
      as.numeric() %>%
      as.POSIXct(tz = "UTC")

    return(ret)
  }


#----------------
# TAG TABLE FIELDS
#----------------
TAG_METADATA_TABLE_FIELDS =
  FieldMap(
    table = "TAG",
    field_list =
      list(
        TAG_ID_FIELD =
          Field(
            name = "tag_id",
            data_type = "integer",
            id_field = T
          ),
        TAG_MAKE_FIELD =
          Field(
            name = "make",
            data_type = "varchar(32)"
          ),
        TAG_MODEL_FIELD =
          Field(
            name = "model",
            data_type = "varchar(32)"
          )
      )
  )

#----------------
# INSTANT TAG DATA TABLE FIELDS
#----------------
TAG_DATA_INSTANT_TABLE_FIELDS =
  FieldMap(
    table = "TAG_DATA_INSTANT",
    field_list =
      list(
        # Link tag id field to TAG table primary key field
        TAG_ID_FIELD =
          TAG_METADATA_TABLE_FIELDS$field_list$TAG_ID_FIELD,
        TIMESTAMP_FIELD =
          Field(
            name = "timestamp",
            data_type = "varchar(32)",
            id_field = T
          ),
        LATITUDE_FIELD =
          Field(
            name = "latitude",
            data_type = "double(10, 6)"
          ),
        LONGITUDE_FIELD =
          Field(
            name = "longitude",
            data_type = "double(10, 6)"
          ),
        LOCATION_TYPE_FIELD =
          Field(
            name = "location_type",
            data_type = "varchar(16)"
          ),
        LATITUDE_N_ERROR_FIELD =
          Field(
            name = "latitude_n_error",
            data_type = "double(10, 2)"
          ),
        LATITUDE_S_ERROR_FIELD =
          Field(
            name = "latitude_s_error",
            data_type = "double(10, 2)"
          ),
        LATITUDE_U_FIELD =
          Field(
            name = "latitude_u",
            data_type = "double(10, 2)"
          ),
        LONGITUDE_ERROR_FIELD =
          Field(
            name = "longtitude_error",
            data_type = "double(10, 2)"
          ),
        LOCATION_ERROR_ELLIPSE_ORIENTATION_FIELD =
          Field(
            name = "location_error_ellipse_orientation",
            data_type = "double(10, 2)"
          ),
        LOCATION_ERROR_SEMI_MINOR_AXIS_FIELD =
          Field(
            name = "location_error_semi_minor_axis",
            data_type = "double(10, 2)"
          ),
        LOCATION_ERROR_SEMI_MAJOR_AXIS_FIELD =
          Field(
            name = "location_error_semi_major_axis",
            data_type = "double(10, 2)"
          ),
        LOCATION_ERROR_RADIUS=
          Field(
            name = "location_error_radius",
            data_type = "double(10, 2)"
          ),
        PRESSURE_FIELD =
          Field(
            name = "pressure",
            units = "psi",
            data_type = "double(10, 2)"
          ),
        DEPTH_FIELD =
          Field(
            name = "depth",
            units = "m",
            data_type = "double(10, 2)"
          ),
        DEPTH_INCREASE_LIMIT_EXCEEDED_FIELD =
          Field(
            name = "depth_increase_delta_limit",
            data_type = "boolean"
          ),
        DEPTH_DECREASE_LIMIT_EXCEEDED_FIELD =
          Field(
            name = "depth_decrease_delta_limit",
            data_type = "boolean"
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "temperature",
            units = "°C",
            data_type = "double(10, 2)"
          ),
        TEMPERATURE_INCREASE_LIMIT_EXCEEDED_FIELD =
          Field(
            name = "temp_increase_delta_limit",
            data_type = "boolean"
          ),
        TEMPERATURE_DECREASE_LIMIT_EXCEEDED_FIELD =
          Field(
            name = "temp_decrease_delta_limit",
            data_type = "boolean"
          ),
        TILT_X_FIELD =
          Field(
            name = "tilt_x",
            units = "°",
            data_type = "double(10, 2)"
          ),
        TILT_Y_FIELD =
          Field(
            name = "tilt_y",
            units = "°",
            data_type = "double(10, 2)"
          ),
        TILT_S_FIELD =
          Field(
            name = "tilt_z",
            units = "°",
            data_type = "double(10, 2)"
          ),
        INCLINATION_FIELD =
          Field(
            name = "inclination",
            units = "°",
            data_type = "double(10, 2)"
          ),
        MAGNETIC_STRENGTH_FIELD =
          Field(
            name = "magnetic_field_strength",
            units = "nanoteslas",
            data_type = "double(10, 2)"
          )
      )
  )

#----------------
# SUMMARY TAG DATA TABLE FIELDS
#----------------
TAG_DATA_SUMMARY_TABLE_FIELDS =
  FieldMap(
    table = "TAG_DATA_SUMMARY",
    field_list =
      list(
        # Link tag id field to TAG table primary key field
        TAG_ID_FIELD =
          TAG_METADATA_TABLE_FIELDS$field_list$TAG_ID_FIELD,
        START_TIME_FIELD =
          Field(
            name = "start_time",
            data_type = "varchar(32)",
            id_field = T
          ),
        END_TIME_FIELD =
          Field(
            name = "end_time",
            data_type = "varchar(32)",
            id_field = T
          ),
        LATITUDE_FIELD =
          Field(
            name = "latitude",
            data_type = "double(10, 6)"
          ),
        LONGITUDE_FIELD =
          Field(
            name = "longitude",
            data_type = "double(10, 6)"
          ),
        LOCATION_TYPE_FIELD =
          Field(
            name = "location_type",
            data_type = "varchar(16)"
          ),
        MIN_DEPTH_FIELD =
          Field(
            name = "min_depth",
            units = "m",
            data_type = "double(10, 2)"
          ),
        MEAN_DEPTH_FIELD =
          Field(
            name = "mean_depth",
            units = "m",
            data_type = "double(10, 2)"
          ),
        MAX_DEPTH_FIELD =
          Field(
            name = "max_depth",
            units = "m",
            data_type = "double(10, 2)"
          ),
        MIN_TEMP_FIELD =
          Field(
            name = "min_temp",
            units = "°C",
            data_type = "double(10, 2)"
          ),
        MEAN_TEMP_FIELD =
          Field(
            name = "mean_temp",
            units = "°C",
            data_type = "double(10, 2)"
          ),
        MAX_TEMP_FIELD =
          Field(
            name = "max_temp",
            units = "°C",
            data_type = "double(10, 2)"
          ),
        UPRIGHT_FIELD =
          Field(
            name = "percent_upright",
            units = "%",
            data_type = "double(10, 2)"
          ),
        KNOCKDOWN_FIELD =
          Field(
            name = "knockdowns",
            units = "1",
            data_type = "double(10, 2)"
          )
      )
  )


TAG_METADATA_FIELDS =
  FieldMap(
    field_list =
      list(
        TAG_ID_FIELD =
          Field(
            name = "tag_id"
          ),
        TAG_MAKE_FIELD =
          Field(
            name = "make"
          ),
        TAG_MODEL_FIELD =
          Field(
            name = "model"
          )
      )
  )

#----------------
# LOTEK TAGS
#----------------
LOTEK_1000.1100.1250_INSTANT_DATA_FIELDS =
  FieldMap(
    field_list =
      list(
        TIMESTAMP_FIELD =
          Field(
            name = "Time",
            trans_fn =
              function(v, ...) {
                # For some reason, the timestamps can come in one of two formats
                # which OF COURSE are INTERMIXED with one another
                POSIXct_format(
                  ts_dat =
                    v,
                  format =
                    c(
                      "%m/%d/%Y %H:%M",
                      "%Y/%m/%d %H:%M:%S"
                    )
                )
              }
          ),
        PRESSURE_FIELD =
          Field(
            name = "Pressure.PSI",
            alternate_names = list("Pressure"),
            units = "psi"
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "Temperature.C",
            alternate_names = list("Temperature"),
            units = "°C"
          )
      )
  )

LOTEK_1300_FIELDS =
  FieldMap(
    field_list =
      list(
        TIMESTAMP_FIELD =
          Field(
            name = "TimeS",
            trans_fn =
              function(v, ...) {
                # For some reason, the timestamps can come in one of two formats
                # which OF COURSE are INTERMIXED with one another
                POSIXct_format(
                  ts_dat =
                    v,
                  format =
                    c(
                      "%d/%m/%Y %H:%M",
                      "%H:%M:%S %d/%m/%y"
                    )
                )
              }
          ),
        PRESSURE_FIELD =
          Field(
            name = "Pressure",
            units = "decibars"
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "IntTemp",
            units = "°C"
          )
      )
  )

LOTEK_1400.1800_FIELDS =
  FieldMap(
    field_list =
      list(
        DATE_FIELD =
          Field(
            name = "Date"
          ),
        TIME_FIELD =
          Field(
            name = "Time"
          ),
        TIMESTAMP_FIELD =
          Field(
            name = "Datetime",
            trans_fn =
              function(v, dat) {
                as.POSIXct(
                  paste(
                    dat[["Date"]],
                    dat[["Time"]]
                  ),
                  format = "%m/%d/%Y %H:%M:%S",
                  tz = "UTC"
                )
              }
          ),
        PRESSURE_FIELD =
          Field(
            name = "Pressure..dBars.",
            alternate_names = list("Pressure"),
            units = "decibars"
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "IntTemp..C.",
            alternate_names = list("IntTemp"),
            units = "°C"
          )

      )
  )


#----------------
# MICROWAVE TELEMETRY TAGS
#----------------
MICROWAVE_TELEMETRY_XTAG_INSTANT_DATA_FIELDS =
  FieldMap(
    field_list =
      list(
        TIMESTAMP_FIELD =
          Field(
            name = "Date/Time"
          ),
        DEPTH_FIELD =
          Field(
            name = "Depth(m)",
            units = "m",
            # Initially recorded as negative depth. Invert the values
            trans_fn = function(v, ...) {return(v * -1)}
          ),
        LOCATION_TYPE_FIELD =
          Field(
            name = "Location Type",
            trans_fn = function(v, ...) {return(LOCATION_TYPE__SATELLITE)}
          ),
        LATITUDE_FIELD =
          Field(
            name = "Latitude (N)"
          ),
        LONGITUDE_FIELD =
          Field(
            name = "Longitude (W)"
          ),
        DEPTH_INCREASE_LIMIT_EXCEEDED_FIELD =
          Field(
            name = "Δ Lim Dives",
            trans_fn = function(v, ...) {return(ifelse(is.na(v), 0, 1))}
          ),
        DEPTH_DECREASE_LIMIT_EXCEEDED_FIELD =
          Field(
            name = "Δ Lim Ascents",
            trans_fn = function(v, ...) {return(ifelse(is.na(v), 0, 1))}
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "Temp(C)",
            units = "°C"
          ),
        TEMPERATURE_INCREASE_LIMIT_EXCEEDED_FIELD =
          Field(
            name = "Δ Lim +Temp",
            trans_fn = function(v, ...) {return(ifelse(is.na(v), 0, 1))}
          ),
        TEMPERATURE_DECREASE_LIMIT_EXCEEDED_FIELD =
          Field(
            name = "Δ Lim -Temp",
            trans_fn = function(v, ...) {return(ifelse(is.na(v), 0, 1))}
          )
      )
  )

MICROWAVE_TELEMETRY_XTAG_SUMMARY_DATA_FIELDS =
  FieldMap(
    field_list =
      list(
        # DATE_FIELD =
        #   Field(
        #     name = "Date"
        #   ),
        # START_TIME_FIELD =
        #   Field(
        #     name = "Start"
        #   ),
        START_TIME_FIELD =
          Field(
            name = "Date"
          ),
        END_TIME_FIELD =
          Field(
            name = "End",
            trans_fn =
              function(v, dat, ...) {
                timechange::time_add(
                  dat[['Date']],
                  hour = 23, minute = 59, second = 59
                )
              }
          ),
        LOCATION_TYPE_FIELD =
          Field(
            name = "Location Type",
            trans_fn = function(v, ...) {return(LOCATION_TYPE__LIGHT_BASED_GEOLOCATION)}
          ),
        LATITUDE_FIELD =
          Field(
            name = "Lat (N)"
          ),
        LONGITUDE_FIELD =
          Field(
            name = "Long (W)"
          )
      )
  )

#----------------
# STAR ODDI TAGS
#----------------
STAR_ODDI_DST_FIELDS =
  FieldMap(
    field_list =
      list(
        TIMESTAMP_FIELD =
          Field(
            name = "Date & Time",
            # Excel datestamps are recorded as days from a unique origin
            # The reason for this is actually quite interesting, and has to do
            # with backwards compatibility with data from an application known
            # as 'Lotus 123'
            trans_fn = function(v, ...) {return(as.POSIXct(as.Date(v, origin = "1899-12-30")))}
          ),
        DEPTH_FIELD =
          Field(
            name = "Depth(m)",
            units = "m",
            # Initially recorded as negative depth. Invert the values
            trans_fn = function(v, ...) {return(v * -1)}
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "Temp(°C)",
            alternate_names = list("Temperature(°C)"),
            units = "°C"
          )
      )
  )

STAR_ODDI_DST_MAGNETIC_FIELDS =
  FieldMap(
    field_list =
      list(
        TIMESTAMP_FIELD =
          Field(
            name = "Date & Time",
            # Excel datestamps are recorded as days from a unique origin
            # The reason for this is actually quite interesting, and has to do
            # with backwards compatibility with data from an application known
            # as 'Lotus 123'
            trans_fn = function(v, ...) {return(as.POSIXct(as.Date(v, origin = "1899-12-30")))}
          ),
        DEPTH_FIELD =
          Field(
            name = "Depth(m)",
            units = "m",
            # Initially recorded as negative depth. Invert the values
            trans_fn = function(v, ...) {return(v * -1)}
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "Temp(°C)",
            alternate_names = list("Temperature(°C)"),
            units = "°C"
          ),
        TILT_X_FIELD =
          Field(
            name = "Tilt-X(°)",
            units = "°"
          ),
        TILT_Y_FIELD =
          Field(
            name = "Tilt-Y(°)",
            units = "°"
          ),
        EAL_FIELD =
          Field(
            name = "EAL"
          ),
        COMPASS_HEADING_FIELD =
          Field(
            name = "Comp.Head(°)",
            units = "°"
          ),
        INCLINATION_FIELD =
          Field(
            name = "Inclination(°)",
            units = "°"
          ),
        MAGNETIC_STRENGTH_FIELD =
          Field(
            name = "Mag.vec(nT)",
            units = "nanoteslas"
          )
      )
  )


WILDLIFE_COMPUTERS_MINIPAT_INSTANT_DATA_FIELDS =
  FieldMap(
    field_list =
      list(
        DAY_FIELD =
          Field(
            name = "Day"
          ),
        TIME_FIELD =
          Field(
            name = "Time"
          ),
        TIMESTAMP_FIELD =
          Field(
            name = "Datetime"
          ),
        DEPTH_FIELD =
          Field(
            name = "Depth",
            units = "m"
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "Temperature",
            units = "°C"
          )
      )
  )


WILDLIFE_COMPUTERS_MINIPAT_SUMMARY_DATA_FIELDS =
  FieldMap(
    field_list =
      list(
        START_TIME_FIELD =
          Field(
            name = "Start",
            data_type = "varchar(32)"
          ),
        END_TIME_FIELD =
          Field(
            name = "End",
            data_type = "varchar(32)"
          ),
        MIN_DEPTH_FIELD =
          Field(
            name = "MinDepth",
            units = "m"
          ),
        MAX_DEPTH_FIELD =
          Field(
            name = "MaxDepth",
            units = "m"
          ),
        MIN_TEMP_FIELD =
          Field(
            name = "MinTemp",
            units = "°C"
          ),
        MAX_TEMP_FIELD =
          Field(
            name = "MaxTemp",
            units = "°C"
          )
      )
  )

WILDLIFE_COMPUTERS_BENTHIC_SPAT_INSTANT_DATA_FIELDS =
  FieldMap(
    field_list =
      list(
        TIMESTAMP_FIELD =
          Field(
            name = "Date"
          ),
        LATITUDE_FIELD =
          Field(
            name = "Latitude"
          ),
        LONGITUDE_FIELD =
          Field(
            name = "Longitude"
          ),
        LOCATION_ERROR_RADIUS =
          Field(
            name = "Error radius"
          ),
        LOCATION_ERROR_SEMI_MINOR_AXIS_FIELD =
          Field(
            name = "Error Semi-major axis"
          ),
        LOCATION_ERROR_SEMI_MAJOR_AXIS_FIELD =
          Field(
            name = "Error Semi-minor axis"
          ),
        LOCATION_ERROR_ELLIPSE_ORIENTATION_FIELD =
          Field(
            name = "Error Ellipse orientation"
          )
      )
  )


WILDLIFE_COMPUTERS_BENTHIC_SPAT_SUMMARY_DATA_FIELDS =
  FieldMap(
    field_list =
      list(
        START_TIME_FIELD =
          Field(
            name = "Start",
            data_type = "varchar(32)"
          ),
        END_TIME_FIELD =
          Field(
            name = "End",
            data_type = "varchar(32)"
          ),
        UPRIGHT_FIELD =
          Field(
            name = "Upright",
            units = "%"
          ),
        KNOCKDOWN_FIELD =
          Field(
            name = "KnockDowns",
            units = "1"
          )
      )
  )


DESERTSTAR_SEATAG_MOD_INSTANT_DATA_FIELDS =
  FieldMap(
    field_list =
      list(
        TIMESTAMP_FIELD =
          Field(
            name = "date(dd/mm/yyy)/time",
            trans_fn = function(v, ...) {as.POSIXct(v, format = "%m/%d/%Y %H:%M")}
          ),
        TAG_ID_FIELD =
          Field(
            name = "Tag SN"
          ),
        DEPTH_FIELD =
          Field(
            name = "depth(m)",
            units = 'm',
            trans_fn = function(v, ...) {return(as.numeric(v))}
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "temp(deg C)",
            units = "°C",
            trans_fn = function(v, ...) {return(as.numeric(v))}
          ),
        MAGNETIC_STRENGTH_X_FIELD =
          Field(
            name = "magX(nT)",
            units = "nT",
            trans_fn = function(v, ...) {return(as.numeric(v))}
          ),
        MAGNETIC_STRENGTH_Y_FIELD =
          Field(
            name = "magY(nT)",
            units = "nT",
            trans_fn = function(v, ...) {return(as.numeric(v))}
          ),
        MAGNETIC_STRENGTH_Z_FIELD =
          Field(
            name = "magZ(nT)",
            units = "nT",
            trans_fn = function(v, ...) {return(as.numeric(v))}
          ),
        ACCELERATION_X_FIELD =
          Field(
            name = "accelX(G)",
            units = "G",
            trans_fn = function(v, ...) {return(as.numeric(v))}
          ),
        ACCELERATION_Y_FIELD =
          Field(
            name = "accelY(G)",
            units = "G",
            trans_fn = function(v, ...) {return(as.numeric(v))}
          ),
        ACCELERATION_Z_FIELD =
          Field(
            name = "accelZ(G)",
            units = "G",
            trans_fn = function(v, ...) {return(as.numeric(v))}
          ),
        ACCELERATION_DELTA_MAGNITUDE_FIELD =
          Field(
            name = "accel delta mag(G)",
            units = "G",
            trans_fn = function(v, ...) {return(as.numeric(v))}
          )
      )
  )




















































