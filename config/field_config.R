#----------------
# TAG FIELDS
#----------------
TAG_FIELDS =
  FieldMap(
    table = "TAG",
    field_list =
      list(
        TAG_ID_FIELD =
          Field(
            name = "tag_id",
            data_type = "integer"
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
# INSTANT TAG DATA FIELDS
#----------------
TAG_DATA_INSTANT_FIELDS =
  FieldMap(
    table = "TAG_DATA_INSTANT",
    field_list =
      list(
        # Link tag id field to TAG table primary key field
        TAG_ID_FIELD =
          TAG_FIELDS$field_list$TAG_ID_FIELD,
        TIMESTAMP_FIELD =
          Field(
            name = "timestamp",
            data_type = "varchar(32)"
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
        TEMPERATURE_FIELD =
          Field(
            name = "temperature",
            units = "°C",
            data_type = "double(10, 2)"
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
# SUMMARY TAG DATA FIELDS
#----------------
TAG_DATA_SUMMARY_FIELDS =
  FieldMap(
    table = "TAG_DATA_SUMMARY",
    field_list =
      list(
        # Link tag id field to TAG table primary key field
        TAG_ID_FIELD =
          TAG_FIELDS$field_list$TAG_ID_FIELD,
        START_TIME_FIELD =
          Field(
            name = "start_time",
            data_type = "varchar(32)"
          ),
        END_TIME_FIELD =
          Field(
            name = "end_time",
            data_type = "varchar(32)"
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




#----------------
# LOTEK TAGS
#----------------
LOTEK_1000.1100.1250_FIELDS =
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
MICROWAVE_TELEMETRY_XTAG_FIELDS =
  FieldMap(
    field_list =
      list(
        TIMESTAMP_FIELD =
          Field(
            name = "datetime"
          ),
        DEPTH_FIELD =
          Field(
            name = "depth",
            units = "m",
            invert = T
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "temperature",
            units = "°C"
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

STAR_ODDI_DST_MILLI_F_FIELDS =
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
            units = "m"
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "Temp(°C)",
            units = "°C"
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






