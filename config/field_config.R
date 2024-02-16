#----------------
# TAG_DATA TABLE FIELDS
#----------------
TAG_DATA_FIELDS =
  FieldMap(
    field_list =
      list(
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
            units = "°C",
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
            # units = units(units::set_units(1, "psi"))
            units = "psi"
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "Temperature.C",
            # units = units(units::set_units(1, "°C"))
            units = "°C"
          )
      )
  )




