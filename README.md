---
title: "METL pipe"
subtitle: "Marine Ecosystem & Stock Assessment (**M**ESA) Extract/Transform/Load (**ETL**) pipe"
author: "Tristan N. G. Sebens, M.S."
output:
  html_document:
    css: dark_readme.css
    toc: true
    toc_depth: 4
    number_sections: true
---

# **Description**

`metl` provides an R interface for users to extract raw sensor data from a variety of different makes/models of marine biological research tags, and standardize the format of their output. This data can be output in one of three ways:

1. returning the data as `data.frame` objects
2. writing the data to `.csv` files
3. loading the data directly into a database

# **Installation**
`metl` can be installed with `devtools`

```
devtools::install_github("https://github.com/tristan-sebens/metl", upgrade="never")
```

# **Use**

`metl` assumes that the data from individual tags is organized into individual data directories. Each directory must contain all data from a single tag, and only data from that tag. Additionally, no sub-directories may be present in a data directory. However, tag data directories can then be nested in any kind of directory structure. 

`metl` currently supports [13 models](#list-of-supported-tags) of tags, but users can extend `metl` to support additional tags.

## **Use case 1: Extracting data to data.frames**

We will start with the simplest example: extracting the tag data as data.frames. We will also cover [extracting to csv files](#use-case-2-extract-data-to-.csv-files), and [loading to a database](#use-case-3-load-data-directly-into-database).

### **Instantiate the Pipe object**

The `Pipe` object is the workhorse of the `metl` package, and coordinates processing the tag data from its raw format on disk to its final standardized format.

```
# Set this variable to the root of your tag data directory
tag_data_directory = here::here() 

# Instantiate the Pipe object
metl_pipe = 
  Pipe(
    d = tag_data_directory # Root directory of tag data
  ) 
```
### **Initiate extraction**

Once instantiated, we can use the `Pipe` object to extract tag data. 
```
res = metl_pipe$process_to_dataframes()
```
The `Pipe` will now traverse the entire directory tree rooted in `d`, and will attempt to extract all data within.

### **View report**

`Pipe` can produce a detailed report which specifies which directories `metl` was able to successfully extract from, as well as an error report for those directories for which extraction failed.
```
report = metl_pipe$build_report()
print(report)
```

### **Retrieve results**

Finally, we can retrieve the raw data which have been extracted from our tags.

The `metl` package categorizes all data produced by eTags into one of three categories: 

- **Metadata** - *data describing the tag itself*
- **Instantaneous data** - *data which describe individual instants in time*
- **Summary data** - *data which describe blocks of time*

Following this, whenever the `Pipe` object extracts data from a tag data directory, it produces that data as three separate collections of data, one for each category. `process_to_dataframes` returns one data.frame, for each category.

```
metadata = res$meta
instant_data = res$instant
summary_data = res$summary
```

## **Use case 2: Extract data to `.csv` files**

The `Pipe` can also output the data as three `.csv` files written to disk. To do this, we call `process_to_csv`, and specify a directory into which the files should be written:
```

csv_directory = here::here() # Specify the directory into which the csv files should be written

metl_pipe$process_to_csv(out_d = csv_directory) 
```

## **Use case 3: Load data directly into database**

`Pipe` is capable of loading the data extracted from the tag directories directly into a suitably formatted database. `Pipe` is, by default, configured with an output data structure matching that of the AFSC ABLTAG database. If you are not loading into this database, you will either need to ensure that your database conforms to the same data structure as ABLTAG, or you will need to [adjust the configuration of `Pipe` to your database's structure](#configuring-Pipe-object).

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
metl_pipe$process_to_db(con = db_conn)
```

As before, the `Pipe` object will now extract all possible data from the data directory, then attempt to load that data into the target database.

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


# **Extending `metl`**

Users can extend `metl` to support additional makes and models of tags, and can customize its inputs/outputs to suit their needs. Doing so requires a stronger overview of the internal mechanics of the package.

## **Classes of the `metl` package**

`metl` is an object-oriented package, and uses a handful of custom object classes to define how data is extracted and exported from tags.

- `Decoder` - Defines all logic required to process a particular make/model of tag.
  - Attributes:
    - `identifier` - An `Identifier` object used to determine whether or not a data directory was produced by the given tag type.
    - `metadata_map`, `instant_datamap`, and `summary_datamap` - `DataMap` objects which define how to extract each of the three types of data from a data directory.
- `DataMap` - Defines all logic required to take data of a single type (meta/instant/summary) from a data directory all the way to the final output format. 
  - Attributes:
    - `extract_`
      - Function which accepts a single parameter `d`, which is the path to a data directory, and returns a single `data.frame` object, which is the raw input data to be transformed and then loaded by the pipeline.
    - `input_data_field_map`
      - `FieldMap` object which describes the fields that are present in the `data.frame` returned by `extract_`.
- `FieldMap` - Defines the fields present in a dataset. Can describe both input and output datasets. Used by the `DataMap` class to define how input fields map to output fields.
  - Attributes:
    `field_list` - List of `Field` objects, each of which describes a single field in the corresponding dataset.
- `Field`
  - Defines a single field in a dataset, either input or output.
  - Attributes:
    - `name` - The name of the field in the dataset
    - `units` - Units of the field. Must be valid units as described by `units::valid_udunits()`
    
    
## **Basic example: adding a new type of tag to `metl`**

Let's consider a basic example. Suppose we have a new tag type, as-yet unsupported by the `metl` package: the 'Tuff1' tag, made by 'TuffTags INC.' We have a data directory at path `d`, which is the output data products collected from a single Tuff1 tag.

For the simplicity, we'll assume that the Tuff1 tag only produces instantaneous data, a common pattern in older tags. We'll start by defining the ETL pathway for the instant data.

### **Building a custom `DataMap`**

#### **The `extract_` function**

To start with, we'll define our `extract_` function. This function must accept `d` as its only parameter, and return a single `data.frame`, the instant data in its raw input format.

Tuff1 tags are simple devices, and very conveniently store all of their instantaneous sensor data in a single `.csv` file. This `.csv` file is always named 'sensor_<id>.csv', where <id> is the four digit ID used to identify the tag. Luckily for us, all of the instant sensor data fields are stored in this `.csv` file, so our `extract_` function will be very simple:

```
tuff1_extract = function(d) {
  # Use a regular expression to find the instant sensor data
  instant_data_filepath = list.files(d, pattern = "sensor_\\d*\\.csv")[[1]]
  
  # Read in the instant sensor data from the file
  instant_sensor_data = read.csv(instant_data_filepath)
  
  # Return the data
  return(instant_sensor_data)
}
```

We can now use `tuff1_extract()` to quickly extract the instant sensor data from any data directory produced by a Tuff1 tag. 

#### **Defining a `FieldMap`**

Next we need to define a `FieldMap` for our extracted data. Tuff1 tags record temperature and depth data, along with the date and time of the reading:

timestamp | depth | temperature
-- | -- | --
2024-04-01 13:00:00 | -48 | 5.3
2024-04-01 14:00:00 | -56 | 5.1
2024-04-01 15:00:00 | -47 | 4.9
2024-04-01 16:00:00 | -51 | 5.2
2024-04-01 16:00:00 | -53 | 5.6
2024-04-01 16:00:00 | -56 | 5.5
... | ... | ...

Based on this, we define a `FieldMap` which identifies each field within the dataset:

```
tuff1_input_fieldmap = 
  FieldMap(
    # A list of the fields contained within the incoming dataset
    field_list = 
      list(
        TIMESTAMP_FIELD = 
          Field(
            name = "timestamp"
          ),
        DEPTH_FIELD = 
          Field(
            name = "depth"
          ),
        TEMPERATURE_FIELD = 
          Field(
            name = "temperature"
          )
      )
  )
```
By choosing these list-names for each of our `Field` objects in `field_list`, we implicitly identify the *type* of data contained in each field. The full list of available names can be found in the [field vocabulary](#field-vocabulary). If you are extracting a field for which there is not an established list-name, you can use any name. Just be sure that the corresponding field object in the output `FieldMap` object uses the same list-name.

We also have to define the units of our fields wherever possible. The `timestamp` field has no units, but both `depth` and `temperature` do. We can update our `FieldMap` to reflect this:

```
tuff1_input_fieldmap = 
  FieldMap(
    # A list of the fields contained within the incoming dataset
    field_list = 
      list(
        TIMESTAMP_FIELD = 
          Field(
            name = "timestamp"
          ),
        DEPTH_FIELD = 
          Field(
            name = "depth",
            units = "m"
          ),
        TEMPERATURE_FIELD = 
          Field(
            name = "temperature",
            units = "°C"
          )
      )
  )
```

#### **Building the `DataMap`**

We can now use our `tuff1_extract` and `tuff1_input_fieldmap` to construct a `DataMap` for instant sensor data collected by Tuff1 tags:

```
tuff1_instant_sensor_datamap =
  DataMap(
    input_data_field_map = tuff1_input_fieldmap,
    extract_fn = tuff1_extract
  )
```

That's it! Our datamap can now be used to extract instantaneous sensor data from any data directory produced by a Tuff1 tag. We can confirm this is true by extracting from our example directory `d`:

```
tuff1_inst_dat = 
  tuff1_instant_sensor_datamap$extract(d)
  
head(tuff1_inst_dat)
```

For the sake of simplicity, we'll assume that Tuff1 tags don't record any summary data. However, if they did, we would simply repeat the steps we followed to create our `tuff1_instant_sensor_datamap` but altering the `extract_` function and the `input_data_field_map` as appropriate. 

### **Building a metadata `DataMap`**

Regardless, we will also need to be able to extract the appropriate tag metadata from each Tuff1 tag. In our simple use-case, the necessary metadata will be limited to the make and model of the tag, but also the tag ID number. Recall, this number was contained in the filename of the sensor data `.csv` file. Whenever we extract from a Tuff1 data directory we will need to be able to get these metadata values. 

To accomplish this, we'll use the `DataMap_TagMetaData` class. This is a special kind of `DataMap` specifically designed for extracting metadata. 

#### **The `get_tag_id` function**

The `extract_` function is already defined for this class, but we have to define a new function; the `get_tag_id` function. This operates identically to the `extract_` function, but rather that returning an entire `data.frame` it just returns the ID of the tag.

```
tuff1_get_id = 
  function(d) {
    # Again, identify the instant sensor data .csv file
    instant_data_filepath = list.files(d, pattern = "sensor_\\d*\\.csv")[[1]]
    
    # Use a second regular expression to extract the tag ID string from the filename
    tag_id = 
      stringr::str_extract(
        instant_data_filepath, 
        pattern = "sensor_(\\d*)\\.csv",
        group = 1
      )
      
    # Return the tag id as a string
    return(tag_id)
  }
```

#### **Building the metadata `DataMap`

Now we can define our `DataMap_TagMetaData` object for Tuff1 tags. `DataMap_TagMetaData` objects also define `make` and `model` attributes which we'll supply values for here: 

```
tuff1_meta_datamap = 
  DataMap_TagMetaData(
    get_tag_id = tuff1_get_id,
    make = "TuffTags",
    model = "Tuff1"
  )
```

Now when we call the `extract()` method on our new object, we'll receive a `data.frame` describing all of the metadata needed for a tag:

```
tuff1_metadata = tuff1_meta_datamap$extract(d) 

head(tuff1_metadata)
```

### **Building the `Decoder`**

We're nearly done extending `metl` to support the Tuff1 tag! 

Often, data from multiple makes/models of tags can be stored within the same directory tree. In these cases, if we want the `Pipe` to be able to apply the appropriate `Decoder` to each data directory, we will have to provide a method by which it can determine the type of tag which produced a given data directory. This is where the `Identifier` class comes in. [More detail here](#the-identifier-class).

For this simple example however, we'll assume that the we only have Tuff1 tag data to decode. As such, we can now define a `Decoder` object for our Tuff1 tag. Because we are not defining an `Identifier` object for this `Decoder`, it will be instantiated with the default placeholder `Identifier` object, which always yields a positive match to a directory. 

```
tuff1_decoder = 
  Decoder(
    metadata_map =
      tuff1_meta_datamap,
    instant_datamap =
      tuff1_instant_sensor_datamap,
  )
```
This `Decoder` can now be used to extract all of the necessary data from any data directory which has been produced by a Tuff1 tag. However, the `Decoder` object is not designed to be used directly by users. Instead, we plug our new `Decoder` into a `Pipe` object. The `Pipe` object traverses a directory tree and uses `Decoders` to extract all relevant data from each data directory it finds.

A `Pipe` is given a list of `Decoder` objects to use upon instantiation. By default, this list includes all of the tags currently supported by `metl`, but we can override this list to only include our custom Tuff1 `Decoder`.

We'll also assume that we have data from a large number of Tuff1 tags, with each tag's data stored in its own directory within the directory tree. This directory tree will be rooted in the directory specified by `root`.

```
tuff1_metl_pipe= 
  Pipe(
    d = root,
    decoders = list(tuff1_decoder)
  )
  
dats = tuff1_metl_pipe$process_to_dataframes()
```

As before, our

```

metadata = dats$meta
instant_data = dats$instant
summary_data = dats$summary
```



### **The `Identifier` class**

`Identifier` objects are used by `metl` to determine which tag type produced a given data directory. This allows the `Pipe` to process a directory tree which contains data from a variety of potential tag types and apply the appropriate `Decoder` object to each data directory. 

# **Uploading duplicate data to a database - UNIQUE constraints**

When writing to a database, it is expected that we may be attempting to insert data which is already present. This could occur because we are reprocessing a directory in which some of the tags have already been loaded, or because additional data became after a tag was physically recovered, or some other reason. To prevent duplicate data from being inserted into the database, `Pipe` performs an **upsert** operation when writing to the database. It first loads the data into a temporary table in the database (this table is automatically deleted afterwards), and then performs a merge operation between the temporary table and the target table. This ensures that any records in the target table which are also present in the temporary table are overwritten with the new data.

In order to do this, we must have a method of identifying whether or not two records refer to the same data point. `metl` accomplishes this by looking for **UNIQUE** constraints in the database table. As such, each table into which `Pipe` loads its data must have at least one UNIQUE constraint defined.

ABLTAG uses the following constraints, and we recommend following the same pattern:

 - metadata table - UNIQUE constraint on the 'tag_id' field. 
 - instant data table - UNIQUE constraint on the combination of the 'tag_id' and 'timestamp' fields
 - summary data table - UNIQUE constraint on the combination of the 'tag_id', 'start_time', and 'end_time' fields

### **Configuring `Pipe` object**

Configuring the `Pipe` object means specifying where each type of data retrieved from the tags should be loaded in the database.

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
Notice that the list name of each `Field` object is the same, but the `name` of each `Field` has changed. This second `FieldMap` describes the same three fields, but with different names (`TAG_ID`, `TAG_MAKE`, and `TAG_MODEL`). `metl` uses an input `FieldMap` and output `FieldMap` to determine how input fields are mapped to output fields, and matches `Field` objects in the input and ouput `FieldMaps` based on their list names.

Input `FieldMap` objects are already defined and used for all supported tags. A list of the list names for each of the fields can be found in the section on [field vocabulary](#field-vocabulary).

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
