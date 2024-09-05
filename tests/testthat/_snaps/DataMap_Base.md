# DataMap::get_field_data

    Code
      dm$get_field_data(dat__ = build_test_dataset(), input_field_obj_ = fm1$
        field_list$TEMPERATURE_FIELD)
    Output
       [1] 5.3 5.3 5.3 5.3 5.3 5.3 5.3 5.3 5.3 5.3

# DataMap::transform_fields

    Code
      dm$transform_fields(dat__, op_fm)
    Output
         TIMESTAMP_POSIXCT     DEPTH TEMPERATURE                TIMESTAMP
      1         1659312000 228.5 [m]    5.3 [°C] 2022-07-31 16:00:00 AKDT
      2         1659312600 241.0 [m]    5.3 [°C] 2022-07-31 16:10:00 AKDT
      3         1659313200 228.5 [m]    5.3 [°C] 2022-07-31 16:20:00 AKDT
      4         1659313800 213.5 [m]    5.3 [°C] 2022-07-31 16:30:00 AKDT
      5         1659314400 219.5 [m]    5.3 [°C] 2022-07-31 16:40:00 AKDT
      6         1659315000 241.0 [m]    5.3 [°C] 2022-07-31 16:50:00 AKDT
      7         1659315600 241.0 [m]    5.3 [°C] 2022-07-31 17:00:00 AKDT
      8         1659316200 241.0 [m]    5.3 [°C] 2022-07-31 17:10:00 AKDT
      9         1659316800 241.0 [m]    5.3 [°C] 2022-07-31 17:20:00 AKDT
      10        1659317400 228.5 [m]    5.3 [°C] 2022-07-31 17:30:00 AKDT

