# FieldMap::generate_data_type_list

    Code
      test_fm_1$generate_data_type_list()
    Output
      $tag_id
      [1] "integer"
      
      $timestamp
      [1] "varchar(32)"
      
      $Depth
      [1] "double(10, 2)"
      
      $Pressure
      [1] "double(10, 2)"
      
      $Weight
      [1] "double(10, 2)"
      

# FieldMap::common_fields

    Code
      names(fm1_fm2_cf)
    Output
      [1] "TIMESTAMP_FIELD" "DATA_FIELD_1"    "DATA_FIELD_2"   

# FieldMap::uncommon_fields

    Code
      names(fm1_fm2_ucf)
    Output
      [1] "DATA_FIELD_4"

---

    Code
      names(fm2_fm1_ucf)
    Output
      [1] "ID_FIELD"     "DATA_FIELD_3"

---

    Code
      names(fm1_fm1_ucf)
    Output
      character(0)

# FieldMap::get_id_fields

    Code
      names(t_fm1$get_id_fields())
    Output
      [1] "ID_FIELD"        "TIMESTAMP_FIELD"

# FieldMap::get_id_field_names

    Code
      t_fm1$get_id_field_names()
    Output
      [1] "tag_id"    "timestamp"

