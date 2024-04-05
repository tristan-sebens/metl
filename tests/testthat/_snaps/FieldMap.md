# FieldMap::generate_data_type_list

    Code
      test_fm_1$generate_data_type_list()
    Output
      $id
      [1] "integer"
      
      $timestamp
      [1] "varchar(32)"
      
      $make
      [1] "varchar(32)"
      
      $model
      [1] "varchar(32)"
      
      $data_1
      [1] "double(10, 2)"
      
      $data_2
      [1] "double(10, 2)"
      
      $data_3
      [1] "double(10, 2)"
      
      $data_4
      [1] "double(10, 2)"
      

# FieldMap::common_fields

    Code
      names(fm1_fm2_cf)
    Output
      [1] "ID_FIELD"        "TIMESTAMP_FIELD" "MAKE_FIELD"      "MODEL_FIELD"    
      [5] "DATA_FIELD_1"    "DATA_FIELD_2"    "DATA_FIELD_4"   

# FieldMap::uncommon_fields

    Code
      names(fm1_fm2_ucf)
    Output
      [1] "DATA_FIELD_3"

---

    Code
      names(fm2_fm1_ucf)
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
      [1] "id"        "timestamp"
