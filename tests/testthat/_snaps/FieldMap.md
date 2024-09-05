# FieldMap::generate_data_type_list

    Code
      test_fm_1$generate_data_type_list()
    Output
      $TAG_NUM
      [1] "double(7, 0)"
      
      $TAG_TYPE
      [1] "varchar(3)"
      
      $TIMESTAMP_POSIXCT
      [1] "integer"
      
      $TIMESTAMP
      [1] "varchar(32)"
      
      $LATITUDE
      [1] "double(10, 6)"
      
      $LONGITUDE
      [1] "double(10, 6)"
      
      $LOCATION_TYPE
      [1] "varchar(16)"
      
      $LATITUDE_N_ERROR
      [1] "double(10, 2)"
      
      $LATITUDE_s_ERROR
      [1] "double(10, 2)"
      
      $LATITUDE_U
      [1] "double(10, 2)"
      
      $LONGITUDE_U
      [1] "double(10, 2)"
      
      $LOCATION_ERROR_ELLIPSE_ORIENTATION
      [1] "double(10, 2)"
      
      $LOCATION_ERROR_SEMI_MINOR_AXIS
      [1] "double(10, 2)"
      
      $LOCATION_ERROR_SEMI_MAJOR_AXIS
      [1] "double(10, 2)"
      
      $LOCATION_ERROR_RADIUS
      [1] "double(10, 2)"
      
      $PRESSURE
      [1] "double(10, 2)"
      
      $DEPTH
      [1] "double(10, 2)"
      
      $DEPTH_INCREASE_DELTA_LIMIT
      [1] "boolean"
      
      $DEPTH_DECREASE_DELTA_LIMIT
      [1] "boolean"
      
      $TEMPERATURE
      [1] "double(10, 2)"
      
      $TEMP_INCREASE_DELTA_LIMIT
      [1] "boolean"
      
      $TEMP_DECREASE_DELTA_LIMIT
      [1] "boolean"
      
      $TILT_X
      [1] "double(10, 2)"
      
      $TILT_Y
      [1] "double(10, 2)"
      
      $TILT_Z
      [1] "double(10, 2)"
      
      $INCLINATION
      [1] "double(10, 2)"
      
      $MAGNETIC_FIELD_STRENGTH
      [1] "double(10, 2)"
      

# FieldMap::common_fields

    Code
      names(fm1_fm2_cf)
    Output
      [1] "TIMESTAMP_POSIX_FIELD" "DEPTH_FIELD"           "TEMPERATURE_FIELD"    

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
       [2] "TAG_TYPE_FIELD"                           
       [3] "TIMESTAMP_CHARACTER_FIELD"                
       [4] "LATITUDE_FIELD"                           
       [5] "LONGITUDE_FIELD"                          
       [6] "LOCATION_TYPE_FIELD"                      
       [7] "LATITUDE_N_ERROR_FIELD"                   
       [8] "LATITUDE_S_ERROR_FIELD"                   
       [9] "LATITUDE_U_FIELD"                         
      [10] "LONGITUDE_ERROR_FIELD"                    
      [11] "LOCATION_ERROR_ELLIPSE_ORIENTATION_FIELD" 
      [12] "LOCATION_ERROR_SEMI_MINOR_AXIS_FIELD"     
      [13] "LOCATION_ERROR_SEMI_MAJOR_AXIS_FIELD"     
      [14] "LOCATION_ERROR_RADIUS"                    
      [15] "PRESSURE_FIELD"                           
      [16] "DEPTH_INCREASE_LIMIT_EXCEEDED_FIELD"      
      [17] "DEPTH_DECREASE_LIMIT_EXCEEDED_FIELD"      
      [18] "TEMPERATURE_INCREASE_LIMIT_EXCEEDED_FIELD"
      [19] "TEMPERATURE_DECREASE_LIMIT_EXCEEDED_FIELD"
      [20] "TILT_X_FIELD"                             
      [21] "TILT_Y_FIELD"                             
      [22] "TILT_Z_FIELD"                             
      [23] "INCLINATION_FIELD"                        
      [24] "MAGNETIC_STRENGTH_FIELD"                  

---

    Code
      names(fm1_fm1_ucf)
    Output
      character(0)

# FieldMap::get_id_fields

    Code
      names(t_fm1$get_id_fields())
    Output
      [1] "TAG_ID_FIELD"          "TAG_TYPE_FIELD"        "TIMESTAMP_POSIX_FIELD"

# FieldMap::get_id_field_names

    Code
      t_fm1$get_id_field_names()
    Output
      [1] "TAG_NUM"           "TAG_TYPE"          "TIMESTAMP_POSIXCT"

# FieldMap::get_field_names

    Code
      t_fm1$get_field_names()
    Output
       [1] "TAG_NUM"                            "TAG_TYPE"                          
       [3] "TIMESTAMP_POSIXCT"                  "TIMESTAMP"                         
       [5] "LATITUDE"                           "LONGITUDE"                         
       [7] "LOCATION_TYPE"                      "LATITUDE_N_ERROR"                  
       [9] "LATITUDE_s_ERROR"                   "LATITUDE_U"                        
      [11] "LONGITUDE_U"                        "LOCATION_ERROR_ELLIPSE_ORIENTATION"
      [13] "LOCATION_ERROR_SEMI_MINOR_AXIS"     "LOCATION_ERROR_SEMI_MAJOR_AXIS"    
      [15] "LOCATION_ERROR_RADIUS"              "PRESSURE"                          
      [17] "DEPTH"                              "DEPTH_INCREASE_DELTA_LIMIT"        
      [19] "DEPTH_DECREASE_DELTA_LIMIT"         "TEMPERATURE"                       
      [21] "TEMP_INCREASE_DELTA_LIMIT"          "TEMP_DECREASE_DELTA_LIMIT"         
      [23] "TILT_X"                             "TILT_Y"                            
      [25] "TILT_Z"                             "INCLINATION"                       
      [27] "MAGNETIC_FIELD_STRENGTH"           

