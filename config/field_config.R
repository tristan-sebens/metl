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
        TEMPERATURE_FIELD =
          Field(
            name = "temperature",
            units = "°F",
            data_type = "double(10, 2)"
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

LOTEK_300_FIELDS =
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





