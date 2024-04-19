# FieldMap::generate_data_type_list

    Code
      test_fm_1$generate_data_type_list()
    Output
      $tag_id
      [1] "integer"
      
      $timestamp
      [1] "varchar(32)"
      
      $latitude
      [1] "double(10, 6)"
      
      $longitude
      [1] "double(10, 6)"
      
      $location_type
      [1] "varchar(16)"
      
      $latitude_n_error
      [1] "double(10, 2)"
      
      $latitude_s_error
      [1] "double(10, 2)"
      
      $latitude_u
      [1] "double(10, 2)"
      
      $longtitude_error
      [1] "double(10, 2)"
      
      $location_error_ellipse_orientation
      [1] "double(10, 2)"
      
      $location_error_semi_minor_axis
      [1] "double(10, 2)"
      
      $location_error_semi_major_axis
      [1] "double(10, 2)"
      
      $location_error_radius
      [1] "double(10, 2)"
      
      $pressure
      [1] "double(10, 2)"
      
      $depth
      [1] "double(10, 2)"
      
      $depth_increase_delta_limit
      [1] "boolean"
      
      $depth_decrease_delta_limit
      [1] "boolean"
      
      $temperature
      [1] "double(10, 2)"
      
      $temp_increase_delta_limit
      [1] "boolean"
      
      $temp_decrease_delta_limit
      [1] "boolean"
      
      $tilt_x
      [1] "double(10, 2)"
      
      $tilt_y
      [1] "double(10, 2)"
      
      $tilt_z
      [1] "double(10, 2)"
      
      $inclination
      [1] "double(10, 2)"
      
      $magnetic_field_strength
      [1] "double(10, 2)"
      

# FieldMap::common_fields

    Code
      names(fm1_fm2_cf)
    Output
      [1] "TIMESTAMP_FIELD"   "DEPTH_FIELD"       "TEMPERATURE_FIELD"

# FieldMap::uncommon_fields

    Code
      names(fm1_fm2_ucf)
    Output
      [1] "DAY_FIELD"  "TIME_FIELD"

---

    Code
      names(fm2_fm1_ucf)
    Output
       [1] "TAG_ID_FIELD"                             
       [2] "LATITUDE_FIELD"                           
       [3] "LONGITUDE_FIELD"                          
       [4] "LOCATION_TYPE_FIELD"                      
       [5] "LATITUDE_N_ERROR_FIELD"                   
       [6] "LATITUDE_S_ERROR_FIELD"                   
       [7] "LATITUDE_U_FIELD"                         
       [8] "LONGITUDE_ERROR_FIELD"                    
       [9] "LOCATION_ERROR_ELLIPSE_ORIENTATION_FIELD" 
      [10] "LOCATION_ERROR_SEMI_MINOR_AXIS_FIELD"     
      [11] "LOCATION_ERROR_SEMI_MAJOR_AXIS_FIELD"     
      [12] "LOCATION_ERROR_RADIUS"                    
      [13] "PRESSURE_FIELD"                           
      [14] "DEPTH_INCREASE_LIMIT_EXCEEDED_FIELD"      
      [15] "DEPTH_DECREASE_LIMIT_EXCEEDED_FIELD"      
      [16] "TEMPERATURE_INCREASE_LIMIT_EXCEEDED_FIELD"
      [17] "TEMPERATURE_DECREASE_LIMIT_EXCEEDED_FIELD"
      [18] "TILT_X_FIELD"                             
      [19] "TILT_Y_FIELD"                             
      [20] "TILT_S_FIELD"                             
      [21] "INCLINATION_FIELD"                        
      [22] "MAGNETIC_STRENGTH_FIELD"                  

---

    Code
      names(fm1_fm1_ucf)
    Output
      character(0)

# FieldMap::get_id_fields

    Code
      names(t_fm1$get_id_fields())
    Output
      [1] "TAG_ID_FIELD"    "TIMESTAMP_FIELD"

# FieldMap::get_id_field_names

    Code
      t_fm1$get_id_field_names()
    Output
      [1] "tag_id"    "timestamp"

