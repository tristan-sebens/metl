---
title: "METL pipe"
subtitle: "Marine Ecosystem & Stock Assessment (**M**ESA) Extract Transform Load (**ETL**) pipe"
author: "Tristan N. G. Sebens, M.S."
output:
  html_document:
    css: dark_readme.css
    toc: true
    toc_depth: 2
    number_sections: true
---

# **Description**

`metl` provides a simple R interface for users to extract raw sensor data from a variety of different makes/models of marine biological research tags, and standardize the format of their output. This data can be output in one of three ways:

1. returning the data as `data.frame` objects
2. writing the data to `.csv` files
3. loading the data directly into a database

# **Installation**
`metl` can be installed with `devtools`
```
devtools::install_github("https://github.com/tristan-sebens/metl")
```

# **Use**

`metl` assumes that the data from individual tags is organized into individual data directories. Each directory must contain all data from a single tag, and only data from that tag. Additionally, no sub-directories may be present in a data directory. However, tag data directories can then be nested in any kind of directory structure. 

`metl` currently supports [13 models](#list-of-supported-tags) of tags, but also provides functionality by which users can define support for additional tags.

## **Use case 1: Extracting data to data.frames**

We will start with the simplest example: extracting the tag data as data.frames. We will also cover [extracting to csv files](#use-case-2-extract-data-to-.csv-files), and [loading to a database](#use-case-3-load-data-directly-into-database).

### **Instantiate the TagProcessor object**

The `TagProcessor` object is the workhorse of the `metl` package, and coordinates processing the tag data from its raw format on disk to its final standardized format.

```
# Set this variable to the root of your tag data directory
tag_data_directory = here::here() 

# Instantiate the TagProcessor object
tag_processor = 
  TagProcessor(
    d = tag_data_directory, # Root directory of tag data
  ) 
```
### **Initiate extraction**

Once instantiated, we can use the `TagProcessor` object to extract tag data. 
```
res = tag_processor$process_to_dataframes(con = db_conn)
```
The `TagProcessor` will now traverse the entire directory tree rooted in `d`, and will attempt to extract all data within.

### **View report**

`TagProcessor` can produce a detailed report which specifies which directories `metl` was able to successfully extract from, as well as an error report for those directories for which extraction failed.
```
report = tag_processor$build_report()
print(report)
```

### **Retrieve results**

Finally, we can retrieve the raw data which have been extracted from our tags.

The `metl` package categorizes all data produced by eTags into one of three categories: 

- **Metadata** - *data describing the tag itself*
- **Instantaneous data** - *data which describe individual instants in time*
- **Summary data** - *data which describe blocks of time*

Following this, whenever the `TagProcessor` object extracts data from a tag data directory, it produces that data as three separate collections of data, one for each category. `process_to_dataframes` returns one data.frame, for each category.

```
metadata = res$meta
instant_data = res$instant
summary_data = res$summary
```

## **Use case 2: Extract data to `.csv` files**

The `TagProcessor` can also output the data as three `.csv` files written to disk. To do this, we call `process_to_csv`, and specify a directory into which the files should be written:
```

csv_directory = here::here() # Specify the directory into which the csv files should be written

tag_processor$process_to_csv(out_d = csv_directory) 
```

## **Use case 3: Load data directly into database**

`TagProcessor` is capable of loading the data extracted from the tag directories directly into a suitably formatted database. `TagProcessor` is, by default, configured with an output data structure matching that of the AFSC ABLTAG database. If you are not loading into this database, you will either need to ensure that your database conforms to the same data structure as ABLTAG, or you will need to [adjust the configuration of `TagProcessor` to your database's structure](#configuring-tagprocessor-object).

### **Establish a connection to the output database**

First we need to establish a connection to our database. We do this by constructing a database connection object using `DBI::dbConnect`.

```
db_conn = 
  DBI::dbConnect(
    ... # Database connection details. See DBI documentation for specifics
  )
```
If you are uploading to the ABLTAG database, this step will require that you are currently able to connect to the ABLTAG DB. Ensure that IT has installed ODBC and Oracle on your local machine, and that you are connected to the ABL internal network. Your connection code will look like this: 

```
db_conn = 
  DBI::dbConnect(
    odbc::odbc(),
    Driver="{Oracle in instantclient_19_18}",
    Dbq="AFSC",
    # ABLTAG login information
    UID = abltag_username, # --- Username
    PWD = abltag_password  # --- Password
  )
```

### **Call `process_to_db`**

Once we have connected to the database, we call the `process_to_db` method, passing the connection object in as a parameter.

```
tag_processor$process_to_db(con = db_conn)
```

As before, the `TagProcessor` object will now extract all possible data from the data directory, then attempt to load that data into the target database.

# **Proprietary post-processing software**

When dealing with telemetry tags, very often there is a post-processing step which takes the raw data files from the tag and converts them into usable files. Examples of this post-processing software include *tag-talk32* for Lotek tags, *SeaStar* for StarOddi tags, or *SeaDock* for Desert Star tags. Typically, the raw data which is actually output by the tag is encoded in a proprietary file format which only the post-processing software is capable of reading. Alternatively, the files may be readable, but only interpretable when the organization of the underlying data is understood *a priori*. 

Either way, the use of these post-processing software packages is typically unavoidable when obtaining data from telemetry tags. As such, `metl` is NOT intended as a replacement for these software packages, but is rather a followup package used to quickly and consistently read and format the data output by these post-processing packages. [The expected inputs for each of the supported tag types are listed below](#list-of-supported-tags).

When using `metl` to process tag data, it is **CRITICAL** that the structure and contents of the data have not been altered in ANY way. In order to identify the make/model of the tag which produced a given data directory, `metl` must make some *very* specific assumptions about the naming conventions, file formats, and presence/absence of files in a given directory. Even files which are not actually read by the extraction code may be important markers used by `metl` to identify which tag type was used to produce the data, and therefore how to extract and format the data within.

# **List of supported tags**
The following tags are currently supported on the main branch. However, it should be noted that the package has been designed to make adding support for additional tag types to be as accessible as possible.

Manufacture  | Model | `metl` expected inputs
------------- | ------------- | -------------
Lotek | LTD 1000 | Output of [**tagtalk32**](https://www.lotek.com/)
Lotek | LTD 1100 | Output of [**tagtalk32**](https://www.lotek.com/)
Lotek | LTD 1250 | Output of [**tagtalk32**](https://www.lotek.com/)
Lotek | LTD 1300 | Output of [**tagtalk32**](https://www.lotek.com/)
Lotek | LAT 1400 | Output of [**tagtalk32**](https://www.lotek.com/)
Lotek | LAT 1800 | Output of [**tagtalk32**](https://www.lotek.com/)
Microwave Telemetry | X-Tag | `.xls` file, product of post-processing software
Star Oddi | DST | Output of [**SeaStar**](https://www.star-oddi.com/products/accessories/seastar--application-software)
Star Oddi | DST milli-F | Output of [**SeaStar**](https://www.star-oddi.com/products/accessories/seastar--application-software)
Star Oddi | DST magnetic | Output of [**SeaStar**](https://www.star-oddi.com/products/accessories/seastar--application-software)
Wildlife Computers | Benthic sPAT | Data downloaded from [Wildlife Computers portal](https://my.wildlifecomputers.com/)
Wildlife Computers | MiniPAT | Data downloaded from [Wildlife Computers portal](https://my.wildlifecomputers.com/)
Desert Star | SeaTag MOD | Output of [**SeaDock**](https://desert-star-systems-llc1.odoo.com/page/software)


# **Adding support for additional tags**

Users can extend `metl` to support additional makes and models of tags.

*This section to be expanded later*


# **Uploading duplicate data to a database - UNIQUE constraints**

When writing to a database, it is expected that we may be attempting to insert data which is already present. This could occur because we are reprocessing a directory in which some of the tags have already been loaded, or because additional data became after a tag was physically recovered, or some other reason. To prevent duplicate data from being inserted into the database, `TagProcessor` performs an **upsert** operation when writing to the database. It first loads the data into a temporary table in the database (this table is automatically deleted afterwards), and then performs a merge operation between the temporary table and the target table. This ensures that any records in the target table which are also present in the temporary table are overwritten with the new data.

In order to do this, we must have a method of identifying whether or not two records refer to the same data point. `metl` accomplishes this by looking for **UNIQUE** constraints in the database table. As such, each table into which `TagProcessor` loads its data must have at least one UNIQUE constraint defined.

ABLTAG uses the following constraints, and we recommend following the same pattern:

 - metadata table - UNIQUE constraint on the 'tag_id' field. 
 - instant data table - UNIQUE constraint on the combination of the 'tag_id' and 'timestamp' fields
 - summary data table - UNIQUE constraint on the combination of the 'tag_id', 'start_time', and 'end_time' fields

### **Configuring `TagProcessor` object**

Configuring the `TagProcessor` object means specifying where each type of data retrieved from the tags should be loaded in the database.

To do this, we use `FieldMap` objects. `FieldMap` objects describe the fields of a particular data source. They are made up of a list of `Field` objects, which describe individual fields: name, type, units, etc. We can define how one data source is mapped to another data source by defining two `FieldMap` objects, one for the input data source, and one for the output data source.

A basic example:
```
INPUT_METADATA_FIELDS =
  FieldMap(
    field_list =
      list(
        TAG_ID_FIELD =
          Field(
            name = "id"
          ),
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
```

This `FieldMap` describes a dataset with three fields, `id`, `make`, and `model`. Now we add a second `FieldMap`:

```
OUTPUT_METADATA_FIELDS =
  FieldMap(
    field_list =
      list(
        TAG_ID_FIELD =
          Field(
            name = "TAG_ID"
          ),
        TAG_MAKE_FIELD =
          Field(
            name = "TAG_MAKE"
          ),
        TAG_MODEL_FIELD =
          Field(
            name = "TAG_MODEL"
          )
      )
  )
```
Notice that the list name of each `Field` object is the same, but the `name` of each `Field` has changed. This second `FieldMap` describes the same three fields, but with different names (`TAG_ID`, `TAG_MAKE`, and `TAG_MODEL`). By defining the fields in this way, `metl` is able to understand which fields in the input data correspond to which fields in the output data.

Within `metl` the input `FieldMap` objects are already defined (for supported tags). We just have to supply the output `FieldMap` objects that detail where each field from the input data should be routed to in the database. 

In order for `metl` to understand which input fields map to the output fields we define, we have to work within a pre-defined vocabulary of `Field` list names, which can be found in the [Field vocabulary](#Field vocabulary) section


# **Extending `metl` to unsupported tags**
`metl` was intentionally structured to make extending its functionality to additional unsupported tags as easy as possible.


# **Field vocabulary**
This section lists the standardized names for each type of data produced by the supported tags. Output `FieldMaps` must use these same terms for their `Field` objects in order for the corresponding input fields to be mapped properly.

### **Metadata**

Data type | Field name
------------- | -------------
Tag ID # | `TAG_ID_FIELD` 
Tag brand / make / manufacture | `TAG_MAKE_FIELD`
Tag model | `TAG_MODEL_FIELD`

### **Instant Data**

Data type | Field name | Units | Notes
------------- | ------------- | ------------- | -------------
Tag ID # | `TAG_ID_FIELD` | Used to link instant data to tag metadata
Timestamp / Datetime | `TIMESTAMP_FIELD` | POSIXct timestamp
Latitude | `LATITUDE_FIELD` | °
Longitude | `LONGITUDE_FIELD` | °
Location type (satellite/geolocation) | `LOCATION_TYPE_FIELD` | | Indicates whether this location estimate was produced by a GPS satellite fix, or geolocation 
Latitude error (N) | `LATITUDE_N_ERROR_FIELD` 
Latitude error (S) | `LATITUDE_S_ERROR_FIELD`
Latitude (U) | `LATITUDE_U_FIELD` | | Some kind of error metric produced by the GPE2 geolocation software. Still not sure what it means.
Longitude error | `LONGITUDE_ERROR_FIELD`
Location error - ellipse orientation | `LOCATION_ERROR_ELLIPSE_ORIENTATION_FIELD` | | This field, along with the next three, define an elliptical area of location. I assume this is associated with some kind of confidence interval, but as of yet I don't know which. 
Location error - semi minor axis | `LOCATION_ERROR_ELLIPSE_ORIENTATION_FIELD`
Location error - semi major axis | `LOCATION_ERROR_ELLIPSE_ORIENTATION_FIELD`
Location error - radius | `LOCATION_ERROR_SEMI_MINOR_AXIS_FIELD`
Pressure | `PRESSURE_FIELD` | psi
Temperature | `TEMPERATURE_FIELD` | °C
Depth | `DEPTH_FIELD` | m
Temperature - delta limit breached (increase) | `TEMPERATURE_INCREASE_LIMIT_EXCEEDED_FIELD` | | This field is produced by Microwave Telemetry X-Tags. The full explanation is too complex for this format. Essentially this field flags records for which the temperature rose too quickly for the reading to be accurate. 
Temperature - delta limit breached (decrease) | `TEMPERATURE_DECREASE_LIMIT_EXCEEDED_FIELD` | | Same as above, but for temperature decreases.
Depth - delta limit breached (ascending) | `DEPTH_DECREASE_LIMIT_EXCEEDED_FIELD` | | Same as above, but for depth.
Depth - delta limit breached (descending) | `DEPTH_INCREASE_LIMIT_EXCEEDED_FIELD` | | Same as above, but for depth.
Tilt (x axis) | `TILT_X_FIELD` | ° | Change in orientation from vertical, x-axis.
Tilt (y axis) | `TILT_Y_FIELD` | ° | Change in orientation from vertical, y-axis.
Tilt (z axis) | `TILT_Z_FIELD` | ° | Change in orientation from vertical, z-axis.
Inclination (away from vertical) | `INCLINATION_FIELD` | ° | Absolute angle of deviation from vertical
Magnetic field strength | `MAGNETIC_STRENGTH_FIELD` | nT | Strength of the Earth's magnetic field

### **Summary data**

Data type | Field name | Units | Notes
------------- | ------------- | ------------- | -------------
Tag ID # | `TAG_ID_FIELD` | Used to link summary data to tag metadata
Start time | `START_TIME_FIELD` | POSIXct timestamp | The start of the time period which this data describes
End time | `END_TIME_FIELD` | POSIXct timestamp | The end of the time period which this data describes
Latitude | `LATITUDE_FIELD` | ° | The average latitude over the time period
Longitude | `LONGITUDE_FIELD` | ° | The average latitude over the time period
Location type (satellite/geolocation) | `LOCATION_TYPE_FIELD` | | Indicates whether this location estimate was produced by a GPS satellite fix, or geolocation
Minimum depth | `MIN_DEPTH_FIELD` | m | The minimum depth reading encountered by the tag during the time period
Maximum depth | `MAX_DEPTH_FIELD` | m | The maximum depth reading encountered by the tag during the time period
Average depth | `MEAN_DEPTH_FIELD` | m | The average depth reading encountered by the tag during the time period
Minimum temperature | `MIN_TEMP_FIELD` | ° | Same as above, but for temperature
Maximum temperature | `MAX_TEMP_FIELD` | ° | Same as above, but for temperature
Average temperature | `MEAN_TEMP_FIELD` | ° | Same as above, but for temperature
Percentage upright | `UPRIGHT_FIELD` | % | The percentage of the time period that the tag was upright (vertical)
Knockdowns | `KNOCKDOWN_FIELD` | | The number of times that the tag was knocked over during this time period


# **Bug Reporting**

The MESA development team appreciates and strongly encourages feedback on this product. If you are having difficulties with the package, have suggestions on future improvements, or any other form of input, please create an issue on the GitHub website. Our only request is that you first take some time to review *existing* issues to ensure that the challenge you are facing has not already been identified by other users.

# **Disclaimer** 

This repository is a scientific product and is not official communication of the National Oceanic and Atmospheric Administration, or the United States Department of Commerce. All NOAA GitHub project code is provided on an ‘as is’ basis and the user assumes responsibility for its use. Any claims against the Department of Commerce or Department of Commerce bureaus stemming from the use of this GitHub project will be governed by all applicable Federal law. Any reference to specific commercial products, processes, or services by service mark, trademark, manufacturer, or otherwise, does not constitute or imply their endorsement, recommendation or favoring by the Department of Commerce. The Department
of Commerce seal and logo, or the seal and logo of a DOC bureau, shall not be used in any manner to imply endorsement of any commercial product or activity by DOC or the United States Government. 

# Contact

Tristan N G Sebens, M.S.

NOAA Affiliate - MESA Program

tristan.sebens@NOAA.gov

tristan.ng.sebens@gmail.com

1(907)-500-5430
