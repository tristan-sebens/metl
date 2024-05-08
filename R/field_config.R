# source(here::here('R', 'class.R'))

#----------------
# TAG TABLE FIELDS
#----------------
ABLTAG_METADATA_TABLE_FIELDS =
  FieldMap(
    table = "TAG",
    field_list =
      list(
        TAG_ID_FIELD =
          Field(
            name = "TAG_ID",
            data_type = "integer",
            id_field = T
          ),
        TAG_MAKE_FIELD =
          Field(
            name = "MAKE",
            data_type = "varchar(32)"
          ),
        TAG_MODEL_FIELD =
          Field(
            name = "MODEL",
            data_type = "varchar(32)"
          ),
        TAG_DEPLOY_DATE =
          InputField_Date(
            name = "DATE_DEPLOYED",
            data_type = "varchar(32)"
          ),
        TAG_RECOVERY_DATE =
          InputField_Date(
            name = "DATE_RECOVERED",
            data_type = "varchar(32)"
          ),
        TAG_SPECIES_ID_FIELD =
          InputField_Select(
            name = "SPECIES_ID",
            data_type = "varchar(32)",
            table = "SPECIES",
            pk_field = "CODE",
            label_field = "SPECIES_NAME"
          ),
        UPLOAD_TIMESTAMP_FIELD =
          IndependentField(
            name = "UPLOAD_TIMESTAMP",
            data_type = "integer",
            value_fn =
              function(dat, ...) {
                return(
                  as.numeric(as.POSIXct(Sys.time(), tz = ""))
                )
              }
          )
      )
  )

#----------------
# INSTANT TAG DATA TABLE FIELDS
#----------------
ABLTAG_DATA_INSTANT_TABLE_FIELDS =
  FieldMap(
    table = "TAG_DATA_INSTANT",
    field_list =
      list(
        # Link tag id field to TAG table primary key field
        TAG_ID_FIELD =
          ABLTAG_METADATA_TABLE_FIELDS$field_list$TAG_ID_FIELD,
        TIMESTAMP_FIELD =
          Field(
            name = "TIMESTAMP",
            data_type = "integer",
            id_field = T,
            trans_fn =
              function(v, ...) {
                as.numeric(v)
              }
          ),
        LATITUDE_FIELD =
          Field(
            name = "LATITUDE",
            data_type = "double(10, 6)"
          ),
        LONGITUDE_FIELD =
          Field(
            name = "LONGITUDE",
            data_type = "double(10, 6)"
          ),
        LOCATION_TYPE_FIELD =
          Field(
            name = "LOCATION_TYPE",
            data_type = "varchar(16)"
          ),
        LATITUDE_N_ERROR_FIELD =
          Field(
            name = "LATITUDE_N_ERROR",
            data_type = "double(10, 2)"
          ),
        LATITUDE_S_ERROR_FIELD =
          Field(
            name = "LATITUDE_s_ERROR",
            data_type = "double(10, 2)"
          ),
        LATITUDE_U_FIELD =
          Field(
            name = "LATITUDE_U",
            data_type = "double(10, 2)"
          ),
        LONGITUDE_ERROR_FIELD =
          Field(
            name = "LONGITUDE_U",
            data_type = "double(10, 2)"
          ),
        LOCATION_ERROR_ELLIPSE_ORIENTATION_FIELD =
          Field(
            name = "LOCATION_ERROR_ELLIPSE_ORIENTATION",
            data_type = "double(10, 2)"
          ),
        LOCATION_ERROR_SEMI_MINOR_AXIS_FIELD =
          Field(
            name = "LOCATION_ERROR_SEMI_MINOR_AXIS",
            data_type = "double(10, 2)"
          ),
        LOCATION_ERROR_SEMI_MAJOR_AXIS_FIELD =
          Field(
            name = "LOCATION_ERROR_SEMI_MAJOR_AXIS",
            data_type = "double(10, 2)"
          ),
        LOCATION_ERROR_RADIUS=
          Field(
            name = "LOCATION_ERROR_RADIUS",
            data_type = "double(10, 2)"
          ),
        PRESSURE_FIELD =
          Field(
            name = "PRESSURE",
            units = "psi",
            data_type = "double(10, 2)"
          ),
        DEPTH_FIELD =
          Field(
            name = "DEPTH",
            units = "m",
            data_type = "double(10, 2)"
          ),
        DEPTH_INCREASE_LIMIT_EXCEEDED_FIELD =
          Field(
            name = "DEPTH_INCREASE_DELTA_LIMIT",
            data_type = "boolean"
          ),
        DEPTH_DECREASE_LIMIT_EXCEEDED_FIELD =
          Field(
            name = "DEPTH_DECREASE_DELTA_LIMIT",
            data_type = "boolean"
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "TEMPERATURE",
            units = "°C",
            data_type = "double(10, 2)"
          ),
        TEMPERATURE_INCREASE_LIMIT_EXCEEDED_FIELD =
          Field(
            name = "TEMP_INCREASE_DELTA_LIMIT",
            data_type = "boolean"
          ),
        TEMPERATURE_DECREASE_LIMIT_EXCEEDED_FIELD =
          Field(
            name = "TEMP_DECREASE_DELTA_LIMIT",
            data_type = "boolean"
          ),
        TILT_X_FIELD =
          Field(
            name = "TILT_X",
            units = "°",
            data_type = "double(10, 2)"
          ),
        TILT_Y_FIELD =
          Field(
            name = "TILT_Y",
            units = "°",
            data_type = "double(10, 2)"
          ),
        TILT_Z_FIELD =
          Field(
            name = "TILT_Z",
            units = "°",
            data_type = "double(10, 2)"
          ),
        INCLINATION_FIELD =
          Field(
            name = "INCLINATION",
            units = "°",
            data_type = "double(10, 2)"
          ),
        MAGNETIC_STRENGTH_FIELD =
          Field(
            name = "MAGNETIC_FIELD_STRENGTH",
            units = "nanoteslas",
            data_type = "double(10, 2)"
          )
      )
  )

#----------------
# SUMMARY TAG DATA TABLE FIELDS
#----------------
ABLTAG_DATA_SUMMARY_TABLE_FIELDS =
  FieldMap(
    table = "TAG_DATA_SUMMARY",
    field_list =
      list(
        # Link tag id field to TAG table primary key field
        TAG_ID_FIELD =
          ABLTAG_METADATA_TABLE_FIELDS$field_list$TAG_ID_FIELD,
        START_TIME_FIELD =
          Field(
            name = "START_TIME",
            data_type = "integer",
            id_field = T,
            trans_fn =
              function(v, ...) {
                as.numeric(v)
              }
          ),
        END_TIME_FIELD =
          Field(
            name = "END_TIME",
            data_type = "integer",
            id_field = T,
            trans_fn =
              function(v, ...) {
                as.numeric(v)
              }
          ),
        LATITUDE_FIELD =
          Field(
            name = "LATITUDE",
            data_type = "double(10, 6)"
          ),
        LONGITUDE_FIELD =
          Field(
            name = "LONGITUDE",
            data_type = "double(10, 6)"
          ),
        LOCATION_TYPE_FIELD =
          Field(
            name = "LOCATION_TYPE",
            data_type = "varchar(16)"
          ),
        MIN_DEPTH_FIELD =
          Field(
            name = "MIN_DEPTH",
            units = "m",
            data_type = "double(10, 2)"
          ),
        MEAN_DEPTH_FIELD =
          Field(
            name = "MEAN_DEPTH",
            units = "m",
            data_type = "double(10, 2)"
          ),
        MAX_DEPTH_FIELD =
          Field(
            name = "MAX_DEPTH",
            units = "m",
            data_type = "double(10, 2)"
          ),
        MIN_TEMP_FIELD =
          Field(
            name = "MIN_TEMP",
            units = "°C",
            data_type = "double(10, 2)"
          ),
        MEAN_TEMP_FIELD =
          Field(
            name = "MEAN_TEMP",
            units = "°C",
            data_type = "double(10, 2)"
          ),
        MAX_TEMP_FIELD =
          Field(
            name = "MAX_TEMP",
            units = "°C",
            data_type = "double(10, 2)"
          ),
        UPRIGHT_FIELD =
          Field(
            name = "PERCENT_UPRIGHT",
            units = "%",
            data_type = "double(10, 2)"
          ),
        KNOCKDOWN_FIELD =
          Field(
            name = "KNOCKDOWNS",
            units = "1",
            data_type = "double(10, 2)"
          )
      )
  )

#----------------
# METADATA DEFAULT MAP
#----------------
DEFAULT_METADATA_FIELDS =
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
            name = "Time"
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

LOTEK_1300_INSTANT_DATA_FIELDS =
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
                lubridate::parse_date_time(
                  x =
                    v,
                  orders =
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

LOTEK_1400.1800_INSTANT_DATA_FIELDS =
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
            name = "Datetime",
            trans_fn =
              function(v, dat)
              {
                 as.POSIXct(
                   paste0(dat$Day, dat$Time),
                   format = "%d-%b-%Y %H:%M:%S"
                 )
              }
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
            data_type = "varchar(32)",
            trans_fn =
              function(v, ...) {
                as.POSIXct(v, format = "%H:%M:%S %d-%b-%Y")
              }
          ),
        END_TIME_FIELD =
          Field(
            name = "End",
            data_type = "varchar(32)",
            trans_fn =
              function(v, ...) {
                as.POSIXct(v, format = "%H:%M:%S %d-%b-%Y")
              }
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
            name = "Date",
            trans_fn =
              function(v, ...) {
                as.POSIXct(v, format = "%H:%M:%S %d-%b-%Y")
              }
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
            data_type = "varchar(32)",
            trans_fn =
              function(v, ...) {
                as.POSIXct(v, format = "%H:%M:%S %d-%b-%Y")
              }
          ),
        END_TIME_FIELD =
          Field(
            name = "End",
            data_type = "varchar(32)",
            trans_fn =
              function(v, ...) {
                as.POSIXct(v, format = "%H:%M:%S %d-%b-%Y")
              }
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
            trans_fn =
              function(v, ...) {
                as.POSIXct(v, format = "%m/%d/%Y %H:%M")
              }
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




















































#
