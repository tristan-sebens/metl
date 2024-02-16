#----------------
# TAG_DATA TABLE FIELDS
#----------------
# The output fields
# TAG_DATA_FIELDS =
#   c(
#     TIMESTAMP_FIELD =
#       Field(
#         name = "timestamp",
#         units = units(units::set_units(1, '1')),
#         convert = F
#       ),
#     PRESSURE_FIELD =
#       Field(
#         name = "pressure",
#         units = units(units::set_units(1, "psi")),
#         data_type = "double (10, 2)"
#       ),
#     TEMPERATURE_FIELD =
#       Field(
#         name = "temperature",
#         units = units(units::set_units(1, "°C")),
#         data_type = "double (10, 2)"
#       )
#   )

TAG_DATA_FIELDS =
  FieldMap(
    field_list =
      list(
        TIMESTAMP_FIELD =
          Field(
            name = "timestamp",
            # units = units(units::set_units(1, '1')),
            # convert = F
          ),
        PRESSURE_FIELD =
          Field(
            name = "pressure",
            units = units(units::set_units(1, "Pa")),
            data_type = "double (10, 2)"
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "temperature",
            units = units(units::set_units(1, "°C")),
            data_type = "double (10, 2)"
          )
      )
  )

#----------------
# LOTEK TAGS
#----------------
# LOTEK_1000.1100.1250_FIELDS =
#   c(
#     TIMESTAMP_FIELD =
#       Field(
#         name = "Time",
#         units = units(units::set_units(1, '1'))
#       ),
#     PRESSURE_FIELD =
#       Field(
#         name = "Pressure.PSI",
#         units = units(units::set_units(1, "psi"))
#       ),
#     TEMPERATURE_FIELD =
#       Field(
#         name = "Temperature.C",
#         units = units(units::set_units(1, "°C"))
#       )
#   )


LOTEK_1000.1100.1250_FIELDS =
  FieldMap(
    field_list =
      list(
        TIMESTAMP_FIELD =
          Field(
            name = "Time",
            units = units(units::set_units(1, '1'))
          ),
        PRESSURE_FIELD =
          Field(
            name = "Pressure.PSI",
            units = units(units::set_units(1, "psi"))
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "Temperature.C",
            units = units(units::set_units(1, "°C"))
          )
      )
  )




