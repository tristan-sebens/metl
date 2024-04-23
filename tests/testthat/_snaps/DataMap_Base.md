# DataMap::get_field_data

    Code
      dm$get_field_data(dat__ = build_test_dataset(), input_field_obj_ = fm1$
        field_list$TIMESTAMP_FIELD)

---

    Code
      dm$get_field_data(dat__ = build_test_dataset(), input_field_obj_ = fm1$
        field_list$TEMPERATURE_FIELD)
    Output
       [1] 5.3 5.3 5.3 5.3 5.3 5.3 5.3 5.3 5.3 5.3

# DataMap::transform_fields

    Code
      dm$transform_fields(dat__, op_fm)
    Output
                   TIMESTAMP     DEPTH TEMPERATURE
      1  2022-07-31 16:00:00 228.5 [m]    5.3 [°C]
      2  2022-07-31 16:10:00 241.0 [m]    5.3 [°C]
      3  2022-07-31 16:20:00 228.5 [m]    5.3 [°C]
      4  2022-07-31 16:30:00 213.5 [m]    5.3 [°C]
      5  2022-07-31 16:40:00 219.5 [m]    5.3 [°C]
      6  2022-07-31 16:50:00 241.0 [m]    5.3 [°C]
      7  2022-07-31 17:00:00 241.0 [m]    5.3 [°C]
      8  2022-07-31 17:10:00 241.0 [m]    5.3 [°C]
      9  2022-07-31 17:20:00 241.0 [m]    5.3 [°C]
      10 2022-07-31 17:30:00 228.5 [m]    5.3 [°C]

