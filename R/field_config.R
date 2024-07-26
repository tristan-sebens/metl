# source(here::here('R', 'class.R'))


#----------------
# USER DEFINED FIELDS
#----------------
#' @export ABLTAG_USER_INPUT_FIELDS
ABLTAG_USER_INPUT_FIELDS =
  FieldMap(
    field_list =
      list(
        TAG_ID_FIELD =
          Field(
            name = "TAG_NUM",
            data_type = "double(7, 0)",
            id_field = T,
            description = "The ID # of the tag. This may or may not be the same as the number printed on the tag itself."
          ),
        TAG_TYPE_FIELD =
          Field(
            name = "TAG_TYPE",
            data_type = "varchar(3)",
            id_field = T,
            description = "A 2-3 letter code describing how this tag was deployed. The plain English description of each code type can be found in the TAG_TYPE table in the ABLTAG DB."
          ),
        TAG_SEQ_NUM_FIELD =
          Field(
            name = "REL_SEQ",
            data_type  = "integer",
            id_field = T,
            description = "The seqence number of deployment. Sometimes a tag is deployed multiple times with the same tag ID # and same tag-type code. This value helps to distinguish between these deployments."
          ),
        TAG_SPECIES_CODE_FIELD =
          Field(
            name = "SPECIES_CODE",
            data_type = "integer",
            id_field = T,
            description = "A numeric code representing the species of the animal tagged. The plain English description of each species code can be found in the SPECIES table in the ABLTAG DB."
          )
      )
  )


#----------------
# TAG TABLE FIELDS
#----------------
#' @export ABLTAG_METADATA_TABLE_FIELDS
ABLTAG_METADATA_TABLE_FIELDS =
  FieldMap(
    table = "TAG",
    field_list =
      list(
        TAG_ID_FIELD =
          ABLTAG_USER_INPUT_FIELDS$field_list$TAG_ID_FIELD,
        TAG_TYPE_FIELD =
          ABLTAG_USER_INPUT_FIELDS$field_list$TAG_TYPE_FIELD,
        TAG_SEQ_NUM_FIELD =
          ABLTAG_USER_INPUT_FIELDS$field_list$TAG_SEQ_NUM_FIELD,
        TAG_SPECIES_CODE_FIELD =
          ABLTAG_USER_INPUT_FIELDS$field_list$TAG_SPECIES_CODE_FIELD,
        TAG_MAKE_FIELD =
          Field(
            name = "MAKE",
            data_type = "varchar(32)",
            description = "The tag's manufacturer."
          ),
        TAG_MODEL_FIELD =
          Field(
            name = "MODEL",
            data_type = "varchar(32)",
            description = "The tag model."
          )
      )
  )


#----------------
# INSTANT TAG DATA TABLE FIELDS
#----------------
#' @export ABLTAG_DATA_INSTANT_TABLE_FIELDS
ABLTAG_DATA_INSTANT_TABLE_FIELDS =
  FieldMap(
    table = "TAG_DATA_INSTANT",
    field_list =
      list(
        # Link tag id field to TAG table primary key field
        TAG_ID_FIELD =
          ABLTAG_USER_INPUT_FIELDS$field_list$TAG_ID_FIELD,
        TAG_TYPE_FIELD =
          ABLTAG_USER_INPUT_FIELDS$field_list$TAG_TYPE_FIELD,
        TIMESTAMP_FIELD =
          Field(
            name = "TIMESTAMP",
            data_type = "integer",
            id_field = T,
            trans_fn =
              function(v, ...) {
                # Make sure that all incoming timestamps are unique, to satisfy the UNIQUE constraint on the table
                bump_timestamps(v = as.numeric(v), incr = 1e-1)
              },
            description = "The instant in time to which this record corresponds, expressed as a POSIXct timestamp."
          ),
        LATITUDE_FIELD =
          Field(
            name = "LATITUDE",
            data_type = "double(10, 6)",
            description = "The latitude of the tag at the time of this record. Expressed as standard WGS84 units"
          ),
        LONGITUDE_FIELD =
          Field(
            name = "LONGITUDE",
            data_type = "double(10, 6)",
            description = "The longitude of the tag at the time of this record. Expressed as standard WGS84 units"
          ),
        LOCATION_TYPE_FIELD =
          Field(
            name = "LOCATION_TYPE",
            data_type = "varchar(16)",
            description = "The method used to determine the location of this tag: GPS, Light-based geolocation, etc."
          ),
        LATITUDE_N_ERROR_FIELD =
          Field(
            name = "LATITUDE_N_ERROR",
            data_type = "double(10, 2)"
          ),
        LATITUDE_S_ERROR_FIELD =
          Field(
            name = "LATITUDE_s_ERROR",
            data_type = "double(10, 2)"
          ),
        LATITUDE_U_FIELD =
          Field(
            name = "LATITUDE_U",
            data_type = "double(10, 2)"
          ),
        LONGITUDE_ERROR_FIELD =
          Field(
            name = "LONGITUDE_U",
            data_type = "double(10, 2)"
          ),
        LOCATION_ERROR_ELLIPSE_ORIENTATION_FIELD =
          Field(
            name = "LOCATION_ERROR_ELLIPSE_ORIENTATION",
            data_type = "double(10, 2)"
          ),
        LOCATION_ERROR_SEMI_MINOR_AXIS_FIELD =
          Field(
            name = "LOCATION_ERROR_SEMI_MINOR_AXIS",
            data_type = "double(10, 2)"
          ),
        LOCATION_ERROR_SEMI_MAJOR_AXIS_FIELD =
          Field(
            name = "LOCATION_ERROR_SEMI_MAJOR_AXIS",
            data_type = "double(10, 2)"
          ),
        LOCATION_ERROR_RADIUS=
          Field(
            name = "LOCATION_ERROR_RADIUS",
            data_type = "double(10, 2)"
          ),
        PRESSURE_FIELD =
          Field(
            name = "PRESSURE",
            units = "psi",
            data_type = "double(10, 2)",
            description = "The pressure reading of the tag at the time of this record."
          ),
        DEPTH_FIELD =
          Field(
            name = "DEPTH",
            units = "m",
            data_type = "double(10, 2)",
            description = "The depth reading of the tag at the time of this record."
          ),
        DEPTH_INCREASE_LIMIT_EXCEEDED_FIELD =
          Field(
            name = "DEPTH_INCREASE_DELTA_LIMIT",
            data_type = "boolean",
            description = "Due to the manner in which their data is transmitted, Microwave Telemetry X-Tags tags can only record a limited amount of change in depth per record. If this limit is exeeded, the true depth is AT LEAST the recorded depth."
          ),
        DEPTH_DECREASE_LIMIT_EXCEEDED_FIELD =
          Field(
            name = "DEPTH_DECREASE_DELTA_LIMIT",
            data_type = "boolean",
            description = "Due to the manner in which their data is transmitted, Microwave Telemetry X-Tags tags can only record a limited amount of change in depth per record. If this limit is exeeded, the true depth is AT MOST the recorded depth."
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "TEMPERATURE",
            units = "degrees_Celsius",
            data_type = "double(10, 2)",
            description = "The temperature reading of the tag at the time of this record."
          ),
        TEMPERATURE_INCREASE_LIMIT_EXCEEDED_FIELD =
          Field(
            name = "TEMP_INCREASE_DELTA_LIMIT",
            data_type = "boolean",
            description = "Due to the manner in which their data is transmitted, Microwave Telemetry X-Tags tags can only record a limited amount of change in temperature per record. If this limit is exeeded, the true temperature is AT LEAST the recorded temperature."
          ),
        TEMPERATURE_DECREASE_LIMIT_EXCEEDED_FIELD =
          Field(
            name = "TEMP_DECREASE_DELTA_LIMIT",
            data_type = "boolean",
            description = "Due to the manner in which their data is transmitted, Microwave Telemetry X-Tags tags can only record a limited amount of change in temperature per record. If this limit is exeeded, the true temperature is AT MOST the recorded temperature."
          ),
        TILT_X_FIELD =
          Field(
            name = "TILT_X",
            units = "degrees",
            data_type = "double(10, 2)",
            description = "The tilt of the tag on the X axis (pitch) at the time of this record."
          ),
        TILT_Y_FIELD =
          Field(
            name = "TILT_Y",
            units = "degrees",
            data_type = "double(10, 2)",
            description = "The tilt of the tag on the Y axis (yaw) at the time of this record."
          ),
        TILT_Z_FIELD =
          Field(
            name = "TILT_Z",
            units = "degrees",
            data_type = "double(10, 2)",
            description = "The tilt of the tag on the Z axis (roll) at the time of this record."
          ),
        INCLINATION_FIELD =
          Field(
            name = "INCLINATION",
            units = "degrees",
            data_type = "double(10, 2)"
          ),
        MAGNETIC_STRENGTH_FIELD =
          Field(
            name = "MAGNETIC_FIELD_STRENGTH",
            units = "nanoteslas",
            data_type = "double(10, 2)",
            description = "The strength of the Earth's magnetic field at the time of this record."
          )
      )
  )

#----------------
# SUMMARY TAG DATA TABLE FIELDS
#----------------
#' @export ABLTAG_DATA_SUMMARY_TABLE_FIELDS
ABLTAG_DATA_SUMMARY_TABLE_FIELDS =
  FieldMap(
    table = "TAG_DATA_SUMMARY",
    field_list =
      list(
        # Link tag id field to TAG table primary key field
        TAG_ID_FIELD =
          ABLTAG_USER_INPUT_FIELDS$field_list$TAG_ID_FIELD,
        TAG_TYPE_FIELD =
          ABLTAG_USER_INPUT_FIELDS$field_list$TAG_TYPE_FIELD,
        START_TIME_FIELD =
          Field(
            name = "START_TIME",
            data_type = "integer",
            id_field = T,
            trans_fn =
              function(v, ...) {
                as.numeric(v)
              },
            description = "The start time of the summary period, expressed as a POSIXct timestamp."
          ),
        END_TIME_FIELD =
          Field(
            name = "END_TIME",
            data_type = "integer",
            id_field = T,
            trans_fn =
              function(v, ...) {
                as.numeric(v)
              },
            description = "The end time of the summary period, expressed as a POSIXct timestamp."
          ),
        LATITUDE_FIELD =
          Field(
            name = "LATITUDE",
            data_type = "double(10, 6)",
            description = "The latitude of the tag during the summary period. Expressed as standard WGS84 units"
          ),
        LONGITUDE_FIELD =
          Field(
            name = "LONGITUDE",
            data_type = "double(10, 6)",
            description = "The longitude of the tag during the summary period. Expressed as standard WGS84 units"
          ),
        LOCATION_TYPE_FIELD =
          Field(
            name = "LOCATION_TYPE",
            data_type = "varchar(16)",
            description = "The method used to determine the location of the tag: GPS, Light-based geolocation, etc."
          ),
        MIN_DEPTH_FIELD =
          Field(
            name = "MIN_DEPTH",
            units = "m",
            data_type = "double(10, 2)",
            description = "The minimum depth recorded during the summary period."
          ),
        MEAN_DEPTH_FIELD =
          Field(
            name = "MEAN_DEPTH",
            units = "m",
            data_type = "double(10, 2)",
            description = "The mean depth recorded during the summary period."
          ),
        MAX_DEPTH_FIELD =
          Field(
            name = "MAX_DEPTH",
            units = "m",
            data_type = "double(10, 2)",
            description = "The maximum depth recorded during the summary period."
          ),
        MIN_TEMP_FIELD =
          Field(
            name = "MIN_TEMP",
            units = "degrees_Celsius",
            data_type = "double(10, 2)",
            description = "The minimum temperature recorded during the summary period."
          ),
        MEAN_TEMP_FIELD =
          Field(
            name = "MEAN_TEMP",
            units = "degrees_Celsius",
            data_type = "double(10, 2)",
            description = "The mean temperature recorded during the summary period."
          ),
        MAX_TEMP_FIELD =
          Field(
            name = "MAX_TEMP",
            units = "degrees_Celsius",
            data_type = "double(10, 2)",
            description = "The maximum temperature recorded during the summary period."
          ),
        UPRIGHT_FIELD =
          Field(
            name = "PERCENT_UPRIGHT",
            units = "%",
            data_type = "double(10, 2)",
            description = "The percentage of time the tag was upright during the summary period."
          ),
        KNOCKDOWN_FIELD =
          Field(
            name = "KNOCKDOWNS",
            units = "1",
            data_type = "double(10, 2)",
            description = "The number of times the tag was knocked down during the summary period."
          )
      )
  )

#' @export ABLTAG_HISTOGRAM_METADATA_TABLE_FIELDS
ABLTAG_HISTOGRAM_METADATA_TABLE_FIELDS =
  FieldMap(
    table = "TAG_DATA_HISTOGRAM_META",
    field_list =
      list(
        TAG_ID_FIELD =
          ABLTAG_USER_INPUT_FIELDS$field_list$TAG_ID_FIELD,
        TAG_TYPE_FIELD =
          ABLTAG_USER_INPUT_FIELDS$field_list$TAG_TYPE_FIELD,
        BIN_DATA_TYPE_FIELD =
          Field(
            name = "DATA_TYPE",
            data_type = "varchar(32)",
            id_field = T,
            description = "The type of data described by this bin, e.g. temperature, depth, etc."
          ),
        BIN_NUMBER_FIELD =
          Field(
            name = "BIN",
            data_type = "integer",
            id_field = T,
            description = "The bin number. Bins are numbered from 1 to N, where N is the number of bins in the histogram."
          ),
        BIN_UPPER_LIMIT_FIELD =
          Field(
            name = "UPPER_LIMIT",
            data_type = "double(10, 2)",
            trans_fn =
              function(v, ...) {
                # The upper limit is sometimes recorded as Inf. Replace these with a large number, because Oracle can't deal with Inf
                v[which(is.infinite(v))] = 1e7
                return(v)
              },
            description = "The upper limit of the bin. The bin is inclusive of this value. The non-inclusive lower limit is defined by the upper-limit of the previous bin."
          ),
        BIN_UNITS_FIELD =
          Field(
            name = "UNITS",
            data_type = "varchar(8)",
            description = "The SI units of the bin data."
          )
      )
  )

#' @export ABLTAG_HISTOGRAM_DATA_TABLE_FIELDS
ABLTAG_HISTOGRAM_DATA_TABLE_FIELDS =
  FieldMap(
    table = "TAG_DATA_HISTOGRAM",
    field_list =
      list(
        TAG_ID_FIELD =
          ABLTAG_USER_INPUT_FIELDS$field_list$TAG_ID_FIELD,
        TAG_TYPE_FIELD =
          ABLTAG_USER_INPUT_FIELDS$field_list$TAG_TYPE_FIELD,
        START_TIME_FIELD =
          Field(
            name = "START_TIME",
            data_type = "integer",
            id_field = T,
            trans_fn =
              function(v, ...) {
                as.numeric(v)
              },
            description = "The start time of the summary period, expressed as a POSIXct timestamp."
          ),
        END_TIME_FIELD =
          Field(
            name = "END_TIME",
            data_type = "integer",
            id_field = T,
            trans_fn =
              function(v, ...) {
                as.numeric(v)
              },
            description = "The end time of the summary period. UTC"
          ),
        HISTOGRAM_DATA_TYPE_FIELD =
          Field(
            name = "DATA_TYPE",
            data_type = "varchar(32)",
            id_field = T,
            description = "The type of data described by this histogram, e.g. temperature, depth, etc."
          ),
        BIN_NUMBER_FIELD =
          Field(
            name = "BIN",
            data_type = "integer",
            id_field = T,
            description = "The bin number. Bins are numbered from 1 to N, where N is the number of bins in the histogram."
          ),
        TIME_OFFSET_FIELD =
          Field(
            name = "TIME_OFFSET",
            data_type = "integer",
            description = "Calculated difference between the tag's clock and the time reported by Argos."
          ),
        BIN_VALUE_FIELD =
          Field(
            name = "VALUE",
            data_type = "numeric(8, 2)",
            description = "The value of the bin, expressed as the percentage of data points which fell within this bin."
          )
      )
  )

#' @export ABLTAG_PDT_DATA_TABLE_FIELDS
ABLTAG_PDT_DATA_TABLE_FIELDS =
  FieldMap(
    table = "TAG_DATA_PDT",
    field_list =
      list(
        TAG_ID_FIELD =
          ABLTAG_USER_INPUT_FIELDS$field_list$TAG_ID_FIELD,
        TAG_TYPE_FIELD =
          ABLTAG_USER_INPUT_FIELDS$field_list$TAG_TYPE_FIELD,
        START_TIME_FIELD =
          Field(
            name = "START_TIME",
            id_field = T,
            data_type = "integer",
            trans_fn =
              function(v, ...) {
                as.numeric(v)
              },
            description = "The start time of the summary period, expressed as a POSIXct timestamp."
          ),
        END_TIME_FIELD =
          Field(
            name = "END_TIME",
            id_field = T,
            data_type = "integer",
            trans_fn =
              function(v, ...) {
                as.numeric(v)
              },
            description = "The end time of the summary period. UTC"
          ),
        TIME_OFFSET_FIELD =
          Field(
            name = "TIME_OFFSET",
            data_type = "integer",
            description = "Calculated difference between the tag's clock and the time reported by Argos."
          ),
        DEPTH_FIELD =
          Field(
            name = "DEPTH",
            data_type = "double(10, 2)",
            units = "m",
            id_field = T,
            description = "The depth at which this series of readings were taken."
          ),
        DEPTH_ERROR_FIELD =
          Field(
            name = "DEPTH_ERROR",
            data_type = "double(10, 2)",
            units = "m",
            description = "The accuracy of the depth-reading which is related to the resolution of the encoded depth. For example, 4 means the measured depth is within +/- 4 meters of the reported value."
          ),
        TEMP_MIN_FIELD =
          Field(
            name = "TEMP_MIN",
            data_type = "double(10, 2)",
            units = "degrees_Celsius",
            description = "The minimum temperature recorded during the summary period."
          ),
        TEMP_MAX_FIELD =
          Field(
            name = "TEMP_MAX",
            data_type = "double(10, 2)",
            units = "degrees_Celsius",
            description = "The maximum temperature recorded during the summary period."
          ),
        PCT_DOX_FIELD =
          Field(
            name = "PCT_DOX",
            data_type = "double(10, 2)",
            units = "%",
            description = "The % dissolved oxygen at the corresponding depth."
          ),
        DISCONTINUITY_FIELD =
          Field(
            name = "DISCONTINUITY_FLAG",
            data_type = "numeric(1, 0)",
            description = "Flag indicating a discontinuity at this depth. 1 = discontinuity, 0 = no discontinuity."
          )
      )
  )

#` Fields describing the metadata for each field uploaded to the DB
#' @export ABLTAG_FIELD_METADATA_TABLE_FIELDS
ABLTAG_FIELD_METADATA_TABLE_FIELDS =
  FieldMap(
    table = "TAG_FIELD_METADATA",
    field_list =
      list(
        TABLE_NAME_FIELD =
          Field(
            name = "TABLE_NAME",
            data_type = "varchar(32)",
            id_field = T
          ),
        FIELD_NAME_FIELD =
          Field(
            name = "FIELD_NAME",
            data_type = "varchar(32)",
            id_field = T
          ),
        FIELD_UNITS_FIELD =
          Field(
            name = "UNITS",
            data_type = "varchar(8)"
          ),
        FIELD_DESCRIPTION_FIELD =
          Field(
            name = "DESCRIPTION",
            data_type = "varchar(255)"
          )
      )
  )

#----------------
# METADATA INPUT MAPS
#----------------

#' Fields automatically provided by the metadata DataMap
#' @export AUTOGENERATED_METADATA_FIELDS
AUTOGENERATED_METADATA_FIELDS =
  FieldMap(
    field_list =
      list(
        TAG_MAKE_FIELD =
          Field(
            name = "make"
          ),
        TAG_MODEL_FIELD =
          Field(
            name = "model"
          )
      )
  )

#' Data automatically generated by the system to describe the fields in the outgoing data
#' @export AUTOGENERATED_FIELD_METADATA_TABLE_FIELDS
AUTOGENERATED_FIELD_METADATA_TABLE_FIELDS =
  FieldMap(
    field_list =
      list(
        TABLE_NAME_FIELD =
          Field(
            name = "table"
          ),
        FIELD_NAME_FIELD =
          Field(
            name = "field"
          ),
        FIELD_UNITS_FIELD =
          Field(
            name = "units"
          ),
        FIELD_DESCRIPTION_FIELD =
          Field(
            name = "description"
          )
      )
  )

#' Fields provided by the user
#' @export USER_INPUT_FIELDS
USER_INPUT_FIELDS =
  FieldMap(
    field_list =
      list(
        TAG_ID_FIELD =
          Field(
            name = "tag_num"
          ),
        TAG_TYPE_FIELD =
          Field(
            name = "tag_type"
          ),
        TAG_SEQ_NUM_FIELD =
          Field(
            name = "rel_seq"
          ),
        TAG_SPECIES_CODE_FIELD =
          Field(
            name = "species_code"
          )
      )
  )



#----------------
# LOTEK TAGS
#----------------
#' @export LOTEK_1000.1100.1250_INSTANT_DATA_FIELDS
LOTEK_1000.1100.1250_INSTANT_DATA_FIELDS =
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
            alternate_names = list("Pressure"),
            units = "psi"
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "Temperature.C",
            alternate_names = list("Temperature"),
            units = "degrees_Celsius"
          )
      )
  )

#' @export LOTEK_1300_INSTANT_DATA_FIELDS
LOTEK_1300_INSTANT_DATA_FIELDS =
  FieldMap(
    field_list =
      list(
        TIMESTAMP_FIELD =
          Field(
            name = "TimeS",
            trans_fn =
              function(v, ...) {
                # For some reason, the timestamps can come in one of two formats
                # which OF COURSE are INTERMIXED with one another
                lubridate::parse_date_time(
                  x =
                    v,
                  orders =
                    c(
                      "%d/%m/%Y %H:%M",
                      "%H:%M:%S %d/%m/%y"
                    )
                )
              }
          ),
        PRESSURE_FIELD =
          Field(
            name = "Pressure",
            units = "decibars"
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "IntTemp",
            units = "degrees_Celsius"
          )
      )
  )


#' @export LOTEK_1400.1800_INSTANT_DATA_FIELDS
LOTEK_1400.1800_INSTANT_DATA_FIELDS =
  FieldMap(
    field_list =
      list(
        DATE_FIELD =
          Field(
            name = "Date"
          ),
        TIME_FIELD =
          Field(
            name = "Time"
          ),
        TIMESTAMP_FIELD =
          Field(
            name = "Datetime",
            independent = T,
            trans_fn =
              function(v, dat, ...) {
                as.POSIXct(
                  paste(
                    dat[["Date"]],
                    dat[["Time"]]
                  ),
                  format = "%m/%d/%Y %H:%M:%S",
                  tz = "UTC"
                )
              }
          ),
        PRESSURE_FIELD =
          Field(
            name = "Pressure..dBars.",
            alternate_names = list("Pressure"),
            units = "decibars"
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "IntTemp..C.",
            alternate_names = list("IntTemp"),
            units = "degrees_Celsius"
          )

      )
  )


#----------------
# MICROWAVE TELEMETRY TAGS
#----------------
#' @export MICROWAVE_TELEMETRY_XTAG_TRANSMITTED_INSTANT_DATA_FIELDS
MICROWAVE_TELEMETRY_XTAG_TRANSMITTED_INSTANT_DATA_FIELDS =
  FieldMap(
    field_list =
      list(
        TIMESTAMP_FIELD =
          Field(
            name = "Date/Time"
          ),
        DEPTH_FIELD =
          Field(
            name = "Depth(m)",
            units = "m",
            # Initially recorded as negative depth. Invert the values
            trans_fn = function(v, ...) {return(v * -1)}
          ),
        LOCATION_TYPE_FIELD =
          Field(
            name = "Location Type",
            independent = T,
            trans_fn = function(v, ...) {return(LOCATION_TYPE__SATELLITE)}
          ),
        LATITUDE_FIELD =
          Field(
            name = "Latitude (N)"
          ),
        LONGITUDE_FIELD =
          Field(
            name = "Longitude (W)"
          ),
        DEPTH_INCREASE_LIMIT_EXCEEDED_FIELD =
          Field(
            name = "Δ Lim Dives",
            nullable = T,
            trans_fn = function(v, ...) {return(ifelse(is.na(v), 0, 1))}
          ),
        DEPTH_DECREASE_LIMIT_EXCEEDED_FIELD =
          Field(
            name = "Δ Lim Ascents",
            nullable = T,
            trans_fn = function(v, ...) {return(ifelse(is.na(v), 0, 1))}
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "Temp(C)",
            units = "degrees_Celsius"
          ),
        TEMPERATURE_INCREASE_LIMIT_EXCEEDED_FIELD =
          Field(
            name = "Δ Lim +Temp",
            nullable = T,
            trans_fn = function(v, ...) {return(ifelse(is.na(v), 0, 1))}
          ),
        TEMPERATURE_DECREASE_LIMIT_EXCEEDED_FIELD =
          Field(
            name = "Δ Lim -Temp",
            nullable = T,
            trans_fn = function(v, ...) {return(ifelse(is.na(v), 0, 1))}
          )
      )
  )

#' @export MICROWAVE_TELEMETRY_XTAG_RECOVERED_INSTANT_DATA_FIELDS
MICROWAVE_TELEMETRY_XTAG_RECOVERED_INSTANT_DATA_FIELDS =
  FieldMap(
    field_list =
      list(
        TIMESTAMP_FIELD =
          Field(
            name = "Date/Time"
          ),
        DEPTH_FIELD =
          Field(
            name = "Depth (m)",
            units = "m",
            # Initially recorded as negative depth. Invert the values
            trans_fn = function(v, ...) {return(v * -1)}
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "Temp (ºC)",
            units = "degrees_Celsius"
          ),
        LOCATION_TYPE_FIELD =
          Field(
            name = "Location Type",
            independent = T,
            trans_fn = function(v, ...) {return(LOCATION_TYPE__SATELLITE)}
          ),
        LATITUDE_FIELD =
          Field(
            name = "Latitude"
          ),
        LONGITUDE_FIELD =
          Field(
            name = "Longitude"
          )
      )
  )

#' @export MICROWAVE_TELEMETRY_XTAG_TRANSMITTED_SUMMARY_DATA_FIELDS
MICROWAVE_TELEMETRY_XTAG_TRANSMITTED_SUMMARY_DATA_FIELDS =
  FieldMap(
    field_list =
      list(
        START_TIME_FIELD =
          Field(
            name = "Date"
          ),
        END_TIME_FIELD =
          Field(
            name = "End",
            independent = T,
            trans_fn =
              function(v, dat, ...) {
                timechange::time_add(
                  dat[['Date']],
                  hour = 23, minute = 59, second = 59
                )
              }
          ),
        LOCATION_TYPE_FIELD =
          Field(
            name = "Location Type",
            independent = T,
            trans_fn = function(v, ...) {return(LOCATION_TYPE__LIGHT_BASED_GEOLOCATION)}
          ),
        LATITUDE_FIELD =
          Field(
            name = "Lat (N)"
          ),
        LONGITUDE_FIELD =
          Field(
            name = "Long (W)"
          )
      )
  )

#' @export MICROWAVE_TELEMETRY_XTAG_RECOVERED_SUMMARY_DATA_FIELDS
MICROWAVE_TELEMETRY_XTAG_RECOVERED_SUMMARY_DATA_FIELDS =
  FieldMap(
    field_list =
      list(
        START_TIME_FIELD =
          Field(
            name = "Date"
          ),
        END_TIME_FIELD =
          Field(
            name = "End",
            independent = T,
            trans_fn =
              function(v, dat, ...) {
                timechange::time_add(
                  dat[['Date']],
                  hour = 23, minute = 59, second = 59
                )
              }
          ),
        LOCATION_TYPE_FIELD =
          Field(
            name = "Location Type",
            independent = T,
            trans_fn = function(v, ...) {return(LOCATION_TYPE__LIGHT_BASED_GEOLOCATION)}
          ),
        LATITUDE_FIELD =
          Field(
            name = "Lat."
          ),
        LONGITUDE_FIELD =
          Field(
            name = "Long."
          )
      )
  )

#----------------
# STAR ODDI TAGS
#----------------
#' @export STAR_ODDI_DST_FIELDS
STAR_ODDI_DST_FIELDS =
  FieldMap(
    field_list =
      list(
        TIMESTAMP_FIELD =
          Field(
            name = "Date & Time",
            # Excel datestamps are recorded as days from a unique origin
            # The reason for this is actually quite interesting, and has to do
            # with backwards compatibility with data from an application known
            # as 'Lotus 123'
            trans_fn = function(v, ...) {return(as.POSIXct(as.Date(v, origin = "1899-12-30")))}
          ),
        DEPTH_FIELD =
          Field(
            name = "Depth(m)",
            units = "m",
            # Initially recorded as negative depth. Invert the values
            trans_fn = function(v, ...) {return(v * -1)}
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "Temp(°C)",
            alternate_names = list("Temperature(°C)"),
            units = "degrees_Celsius"
          )
      )
  )

#' @export STAR_ODDI_DST_MAGNETIC_FIELDS
STAR_ODDI_DST_MAGNETIC_FIELDS =
  FieldMap(
    field_list =
      list(
        TIMESTAMP_FIELD =
          Field(
            name = "Date & Time",
            # Excel datestamps are recorded as days from a unique origin
            # The reason for this is actually quite interesting, and has to do
            # with backwards compatibility with data from an application known
            # as 'Lotus 123'
            trans_fn = function(v, ...) {return(as.POSIXct(as.Date(v, origin = "1899-12-30")))}
          ),
        DEPTH_FIELD =
          Field(
            name = "Depth(m)",
            units = "m",
            # Initially recorded as negative depth. Invert the values
            trans_fn = function(v, ...) {return(v * -1)}
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "Temp(°C)",
            alternate_names = list("Temperature(°C)"),
            units = "degrees_Celsius"
          ),
        TILT_X_FIELD =
          Field(
            name = "Tilt-X(°)",
            units = "degrees"
          ),
        TILT_Y_FIELD =
          Field(
            name = "Tilt-Y(°)",
            units = "degrees"
          ),
        # EAL_FIELD =
        #   Field(
        #     name = "EAL"
        #   ),
        COMPASS_HEADING_FIELD =
          Field(
            name = "Comp.Head(°)",
            units = "degrees"
          ),
        INCLINATION_FIELD =
          Field(
            name = "Inclination(°)",
            units = "degrees"
          ),
        MAGNETIC_STRENGTH_FIELD =
          Field(
            name = "Mag.vec(nT)",
            units = "nanoteslas"
          )
      )
  )


#' @export WILDLIFE_COMPUTERS_MINIPAT_INSTANT_DATA_FIELDS
WILDLIFE_COMPUTERS_MINIPAT_INSTANT_DATA_FIELDS =
  FieldMap(
    field_list =
      list(
        DAY_FIELD =
          Field(
            name = "Day"
          ),
        TIME_FIELD =
          Field(
            name = "Time"
          ),
        TIMESTAMP_FIELD =
          Field(
            name = "Datetime",
            independent = T,
            trans_fn =
              function(v, dat, ...)
              {
                 as.POSIXct(
                   paste0(dat$Day, dat$Time),
                   format = "%d-%b-%Y %H:%M:%S"
                 )
              }
          ),
        DEPTH_FIELD =
          Field(
            name = "Depth",
            units = "m"
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "Temperature",
            units = "degrees_Celsius"
          )
      )
  )


#' @export WILDLIFE_COMPUTERS_MINIPAT_SUMMARY_DATA_FIELDS
WILDLIFE_COMPUTERS_MINIPAT_SUMMARY_DATA_FIELDS =
  FieldMap(
    field_list =
      list(
        START_TIME_FIELD =
          Field(
            name = "Start",
            data_type = "varchar(32)",
            trans_fn =
              function(v, ...) {
                as.POSIXct(v, format = "%H:%M:%S %d-%b-%Y")
              }
          ),
        END_TIME_FIELD =
          Field(
            name = "End",
            data_type = "varchar(32)",
            trans_fn =
              function(v, ...) {
                as.POSIXct(v, format = "%H:%M:%S %d-%b-%Y")
              }
          ),
        MIN_DEPTH_FIELD =
          Field(
            name = "MinDepth",
            units = "m"
          ),
        MAX_DEPTH_FIELD =
          Field(
            name = "MaxDepth",
            units = "m"
          ),
        MIN_TEMP_FIELD =
          Field(
            name = "MinTemp",
            units = "degrees_Celsius"
          ),
        MAX_TEMP_FIELD =
          Field(
            name = "MaxTemp",
            units = "degrees_Celsius"
          )
      )
  )

#' @export WILDLIFE_COMPUTERS_MINIPAT_HISTOGRAM_META_FIELDS
WILDLIFE_COMPUTERS_MINIPAT_HISTOGRAM_META_FIELDS =
  FieldMap(
    field_list =
      list(
        BIN_DATA_TYPE_FIELD =
          Field(
            name = "type"
          ),
        BIN_NUMBER_FIELD =
          Field(
            name = "bin"
          ),
        BIN_UPPER_LIMIT_FIELD =
          Field(
            name = "upper_limit"
          ),
        BIN_UNITS_FIELD =
          Field(
            name = "unit",
            independent = T,
            trans_fn =
              function(v, dat, ip_fm, ...) {
                data_type_v =
                  dat[[ip_fm$field_list$BIN_DATA_TYPE_FIELD$name]]

                units_v =
                  plyr::mapvalues(
                    data_type_v,
                    from = c("depth", "temperature"),
                    to = c("m", "degrees_Celsius")
                  )

                return(units_v)
              }
          )
      )
  )

#' @export WILDLIFE_COMPUTERS_MINIPAT_HISTOGRAM_DATA_FIELDS
WILDLIFE_COMPUTERS_MINIPAT_HISTOGRAM_DATA_FIELDS =
  FieldMap(
    field_list =
      list(
        START_TIME_FIELD =
          Field(
            name = "Date",
            trans_fn =
              function(v, ...) {
                return(as.POSIXct(v, format = "%H:%M:%S %d-%b-%Y"))
              }
          ),
        END_TIME_FIELD =
          Field(
            name = "End",
            independent = T,
            trans_fn =
              function(v, dat, ip_fm, ...) {
                # Get the start time field
                start_time_field = ip_fm$field_list[["START_TIME_FIELD"]]
                # Get the start time data, and transform it into a POSIXct object
                start_times =
                  start_time_field$trans_fn(
                    dat[[start_time_field$name]]
                  )

                end_times = wc_minipat_calc_end_times(start_times)
              }
          ),
        DEPTH_SENSOR_RESOLUTION_FIELD =
          Field(
            name = "DepthSensor",
            units = "m"
          ),
        HISTOGRAM_DATA_TYPE_FIELD =
          Field(
            name = "HistType"
          ),
        TIME_OFFSET_FIELD =
          Field(
            name = "Time.Offset",
            units = "s"
          ),
        BIN_NUMBER_FIELD =
          Field(
            name = "Bin"
          ),
        BIN_VALUE_FIELD =
          Field(
            name = "Value"
          )
      )
  )

#' @export WILDLIFE_COMPUTERS_MINIPAT_PDT_DATA_FIELDS
WILDLIFE_COMPUTERS_MINIPAT_PDT_DATA_FIELDS =
  FieldMap(
    field_list =
      list(
        START_TIME_FIELD =
          Field(
            name = "Date",
            trans_fn =
              function(v, ...) {
                return(as.POSIXct(v, format = "%H:%M:%S %d-%b-%Y"))
              }
          ),
        END_TIME_FIELD =
          Field(
            name = "End",
            independent = T,
            trans_fn =
              function(v, dat, ip_fm, ...) {
                # Get the start time field
                start_time_field = ip_fm$field_list[["START_TIME_FIELD"]]
                # Get the start time data, and transform it into a POSIXct object
                start_times =
                  start_time_field$trans_fn(
                    dat[[start_time_field$name]]
                  )

                end_times = wc_minipat_calc_end_times(start_times)
              }
          ),
        TIME_OFFSET_FIELD =
          Field(
            name = "Time.Offset",
            units = "s"
          ),
        DEPTH_FIELD =
          Field(
            name = "Depth",
            units = "m"
          ),
        DEPTH_ERROR_FIELD =
          Field(
            name = "DepthError",
            units = "m"
          ),
        TEMP_MIN_FIELD =
          Field(
            name = "MinTemp",
            units = "degrees_Celsius"
          ),
        TEMP_MAX_FIELD =
          Field(
            name = "MaxTemp",
            units = "degrees_Celsius"
          ),
        PCT_DOX_FIELD =
          Field(
            name = "X.Ox",
            units = "%"
          ),
        DISCONTINUITY_FIELD =
          Field(
            name = "Discont"
          )
      )
  )



#' @export WILDLIFE_COMPUTERS_BENTHIC_SPAT_INSTANT_DATA_FIELDS
WILDLIFE_COMPUTERS_BENTHIC_SPAT_INSTANT_DATA_FIELDS =
  FieldMap(
    field_list =
      list(
        TIMESTAMP_FIELD =
          Field(
            name = "Date",
            trans_fn =
              function(v, ...) {
                as.POSIXct(v, format = "%H:%M:%S %d-%b-%Y")
              }
          ),
        LATITUDE_FIELD =
          Field(
            name = "Latitude"
          ),
        LONGITUDE_FIELD =
          Field(
            name = "Longitude"
          ),
        LOCATION_ERROR_RADIUS =
          Field(
            name = "Error radius"
          ),
        LOCATION_ERROR_SEMI_MINOR_AXIS_FIELD =
          Field(
            name = "Error Semi-major axis"
          ),
        LOCATION_ERROR_SEMI_MAJOR_AXIS_FIELD =
          Field(
            name = "Error Semi-minor axis"
          ),
        LOCATION_ERROR_ELLIPSE_ORIENTATION_FIELD =
          Field(
            name = "Error Ellipse orientation"
          )
      )
  )


#' @export WILDLIFE_COMPUTERS_BENTHIC_SPAT_SUMMARY_DATA_FIELDS
WILDLIFE_COMPUTERS_BENTHIC_SPAT_SUMMARY_DATA_FIELDS =
  FieldMap(
    field_list =
      list(
        START_TIME_FIELD =
          Field(
            name = "Start",
            data_type = "varchar(32)",
            trans_fn =
              function(v, ...) {
                as.POSIXct(v, format = "%H:%M:%S %d-%b-%Y")
              }
          ),
        END_TIME_FIELD =
          Field(
            name = "End",
            data_type = "varchar(32)",
            trans_fn =
              function(v, ...) {
                as.POSIXct(v, format = "%H:%M:%S %d-%b-%Y")
              }
          ),
        UPRIGHT_FIELD =
          Field(
            name = "Upright",
            units = "%"
          ),
        KNOCKDOWN_FIELD =
          Field(
            name = "KnockDowns",
            units = "1"
          )
      )
  )


#' @export DESERTSTAR_SEATAG_MOD_INSTANT_DATA_FIELDS
DESERTSTAR_SEATAG_MOD_INSTANT_DATA_FIELDS =
  FieldMap(
    field_list =
      list(
        TIMESTAMP_FIELD =
          Field(
            name = "date(dd/mm/yyy)/time",
            trans_fn =
              function(v, ...) {
                # Because of how the DesertStar data is organized, and how we parse it, the timestamp field ends up getting parsed TWICE, with different formats each time. This will allow the package to read the stamps both times
                lubridate::parse_date_time(
                  x =
                    v,
                  orders =
                    c(
                      "%m/%d/%Y %H:%M",
                      "%Y-%m-%d %H:%M:%S",
                      "%Y-%m-%d"
                    )
                )
              }
          ),
        TAG_ID_FIELD =
          Field(
            name = "Tag SN"
          ),
        DEPTH_FIELD =
          Field(
            name = "depth(m)",
            units = 'm',
            trans_fn = function(v, ...) {return(as.numeric(v))}
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "temp(deg C)",
            units = "degrees_Celsius",
            trans_fn = function(v, ...) {return(as.numeric(v))}
          ),
        MAGNETIC_STRENGTH_X_FIELD =
          Field(
            name = "magX(nT)",
            units = "nT",
            trans_fn = function(v, ...) {return(as.numeric(v))}
          ),
        MAGNETIC_STRENGTH_Y_FIELD =
          Field(
            name = "magY(nT)",
            units = "nT",
            trans_fn = function(v, ...) {return(as.numeric(v))}
          ),
        MAGNETIC_STRENGTH_Z_FIELD =
          Field(
            name = "magZ(nT)",
            units = "nT",
            trans_fn = function(v, ...) {return(as.numeric(v))}
          ),
        ACCELERATION_X_FIELD =
          Field(
            name = "accelX(G)",
            units = "gravity",
            trans_fn = function(v, ...) {return(as.numeric(v))}
          ),
        ACCELERATION_Y_FIELD =
          Field(
            name = "accelY(G)",
            units = "gravity",
            trans_fn = function(v, ...) {return(as.numeric(v))}
          ),
        ACCELERATION_Z_FIELD =
          Field(
            name = "accelZ(G)",
            units = "gravity",
            trans_fn = function(v, ...) {return(as.numeric(v))}
          ),
        ACCELERATION_DELTA_MAGNITUDE_FIELD =
          Field(
            name = "accel delta mag(G)",
            units = "gravity",
            trans_fn = function(v, ...) {return(as.numeric(v))}
          )
      )
  )

