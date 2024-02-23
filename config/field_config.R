#----------------
# TAG_DATA FIELDS
#----------------
TAG_DATA_FIELDS =
  FieldMap(
    field_list =
      list(
        TAG_ID_FIELD =
          Field(
            name = "tag_id",
            data_type = "integer"
          ),
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
            units = "°"
          ),
        TILT_Y_FIELD =
          Field(
            name = "tilt_y",
            units = "°"
          ),
        INCLINATION_FIELD =
          Field(
            name = "inclination",
            units = "°"
          ),
        MAGNETIC_STRENGTH_FIELD =
          Field(
            name = "magnetic_field_strength",
            units = "nanoteslas"
          )
      )
  )

#----------------
# TAG FIELDS
#----------------
TAG_FIELDS =
  FieldMap(
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











