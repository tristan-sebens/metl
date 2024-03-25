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
            name = "Time"
          ),
        PRESSURE_FIELD =
          Field(
            name = "Pressure.PSI",
            units = "psi"
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "Temperature.C",
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
            name = "TimeS"
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
            name = "Datetime"
          ),
        PRESSURE_FIELD =
          Field(
            name = "Pressure..dBars.",
            units = "decibars"
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "IntTemp..C.",
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
            invert = T
          ),
        LOCATION_TYPE_FIELD =
          Field(
            name = "Location Type"
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
            name = "Δ Lim Dives"
          ),
        DEPTH_DECREASE_LIMIT_EXCEEDED_FIELD =
          Field(
            name = "Δ Lim Ascents"
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "Temp(C)",
            units = "°C"
          ),
        TEMPERATURE_INCREASE_LIMIT_EXCEEDED_FIELD =
          Field(
            name = "Δ Lim +Temp"
          ),
        TEMPERATURE_DECREASE_LIMIT_EXCEEDED_FIELD =
          Field(
            name = "Δ Lim -Temp"
          )
      )
  )

MICROWAVE_TELEMETRY_XTAG_SUMMARY_DATA_FIELDS =
  FieldMap(
    field_list =
      list(
        DATE_FIELD =
          Field(
            name = "Date"
          ),
        START_TIME_FIELD =
          Field(
            name = "Start"
          ),
        END_TIME_FIELD =
          Field(
            name = "End"
          ),
        LOCATION_TYPE_FIELD =
          Field(
            name = "Location Type"
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
            name = "Date & Time"
          ),
        DEPTH_FIELD =
          Field(
            name = "Depth(m)",
            units = "m",
            invert = T
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "Temp(°C)",
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
            name = "Date & Time"
          ),
        DEPTH_FIELD =
          Field(
            name = "Depth(m)",
            units = "m",
            invert = T
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "Temp(°C)",
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






