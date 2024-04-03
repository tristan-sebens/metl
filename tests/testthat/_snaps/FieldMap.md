# FieldMap::generate_data_type_list

    Code
      test_fm_1$generate_data_type_list()
    Output
      $id
      [1] "integer"
      
      $make
      [1] "varchar(32)"
      
      $model
      [1] "varchar(32)"
      

# FieldMap::common_fields

    Code
      names(fm1_fm2_cf)
    Output
      [1] "ID_FIELD"    "MAKE_FIELD"  "MODEL_FIELD"

# FieldMap::uncommon_fields

    Code
      names(fm1_fm2_ucf)
    Output
      character(0)

---

    Code
      names(fm2_fm1_ucf)
    Output
      [1] "DATA_FIELD_1"

# FieldMap::get_id_fields

    Code
      names(t_fm1$get_id_fields())
    Output
      [1] "ID_FIELD"

# FieldMap::get_id_field_names

    Code
      t_fm1$get_id_field_names()
    Output
      [1] "id"

