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
       [1] "TIMESTAMP_FIELD"                          
       [2] "DEPTH_FIELD"                              
       [3] "LOCATION_TYPE_FIELD"                      
       [4] "LATITUDE_FIELD"                           
       [5] "LONGITUDE_FIELD"                          
       [6] "DEPTH_INCREASE_LIMIT_EXCEEDED_FIELD"      
       [7] "DEPTH_DECREASE_LIMIT_EXCEEDED_FIELD"      
       [8] "TEMPERATURE_FIELD"                        
       [9] "TEMPERATURE_INCREASE_LIMIT_EXCEEDED_FIELD"
      [10] "TEMPERATURE_DECREASE_LIMIT_EXCEEDED_FIELD"

# FieldMap::uncommon_fields

    Code
      names(fm1_fm2_ucf)
    Output
      character(0)

---

    Code
      names(fm2_fm1_ucf)
    Output
       [1] "TAG_ID_FIELD"                            
       [2] "LATITUDE_N_ERROR_FIELD"                  
       [3] "LATITUDE_S_ERROR_FIELD"                  
       [4] "LATITUDE_U_FIELD"                        
       [5] "LONGITUDE_ERROR_FIELD"                   
       [6] "LOCATION_ERROR_ELLIPSE_ORIENTATION_FIELD"
       [7] "LOCATION_ERROR_SEMI_MINOR_AXIS_FIELD"    
       [8] "LOCATION_ERROR_SEMI_MAJOR_AXIS_FIELD"    
       [9] "LOCATION_ERROR_RADIUS"                   
      [10] "PRESSURE_FIELD"                          
      [11] "TILT_X_FIELD"                            
      [12] "TILT_Y_FIELD"                            
      [13] "TILT_S_FIELD"                            
      [14] "INCLINATION_FIELD"                       
      [15] "MAGNETIC_STRENGTH_FIELD"                 

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

