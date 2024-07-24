---
title: "METL pipeline"
subtitle: "Marine Ecosystem & Stock Assessment (**M**ESA) Extract/Transform/Load (**ETL**) pipeline"
author: "Tristan N. G. Sebens, M.S."
output: 
  html_document:
    title: 'README.md'
    keep_md: yes
    css: dark_readme.css
    toc: True
    toc_depth: 4
    number_sections: True
---


```
## ℹ Loading metl
```


# **Description**

  `metl` provides an R interface for users to extract raw sensor data from a variety of different makes/models of marine biological research tags, and standardize the format of their output. This data can be output in one of three ways:

1. returning the data as `data.frame` objects
2. writing the data to `.csv` files
3. loading the data directly into a database


# **Requirements**

`metl` requires the following R packages to be installed:

- `tidyverse` (>= `2.0.0`)
- `DBI` (>=`1.2.3`)
- `odbc` (>= `1.5.0`)

These package dependencies and others are recorded in the package description, and should be automatically handled by the package manager. We highlight these three here because they are exceptional examples in terms of causing problems for the package when out of date.

In addition, when using `metl` to load data directly into an **Oracle** database, users must have an up-to-date Oracle obdc driver installed on their machine. Other DB systems (Microsoft SQL Server, PostGRESQL, SQLite, etc.) should work natively with the package.

# **Installation**
`metl` can be installed with `devtools`


``` r
devtools::install_github("https://github.com/tristan-sebens/metl", upgrade="never")
```

# **Quickstart**

This section will guide you through the basic steps of using `metl` to extract data from a tag data directory and load it into a database. A lot of underlying detail is glossed over, but this should get you started.

`metl` currently supports [13 models](#list-of-supported-tags) of tags, but users can extend `metl` to support additional tags.

### **Data directories**

`metl` is designed to extract data from one directory at a time. A tag's data directory (referred to in this document as `d`) should contain all of the data produced only a single tag. Data for multiple tags should be separated into multiple directories, one directory for each tag (***DesertStar*** brand tags are an exception to this).

The file structure of each data directory will vary depending on the make and model of the tag, but in general, `d` should contain all of the files produced by the post-processing software for the tag.

### **The Decoder object**

The primary work object of the `metl` package is the `Decoder` object, which is responsible for extracting all data from a single tag data directory, transforming it into its output format, and loading it into its final destination. The `Decoder` objects can load the data to a database, write data to `.csv` files, or return the data as `data.frame` objects.

`metl` ships with a number of pre-configured `Decoder` objects, one for each supported tag type. These objects are stored in the `decoders` list, and can be accessed by name. `metl` is also designed to facilitate extending its functionality to easily cover unsupported tags. See ["Extending `metl`""](#extending-metl) for more information.

For the quickstart example, we will use an included `Decoder` object, one configured for the StarOddi DST magnetic tag:


``` r
decoder = metl::decoders$Decoder_StarOddi_DST
```

A list of supported tags can be found [here](#list-of-supported-tags), and a full list of the pre-configured `Decoder` objects shipped with `metl` can be seen by running the following code:


``` r
names(metl::decoders)
```

Sensor data and some metadata can be read directly from the target directory, but additional metadata must be supplied in the function call via a `data.frame` object passed in to the `meta` parameter of the function call:


``` r
meta =
  data.frame(
    tag_num = "1234",
    tag_type = "SuperTag"
  )
```

## **Use case 1: Load data directly into database**

### **Establish a connection to the output database**

First we need to establish a connection to our database. We do this by constructing a database connection object using `DBI::dbConnect`.


``` r
db_conn =
  DBI::dbConnect(
    ... # Database connection details. See DBI documentation for specifics
  )
```

If you are uploading to the ABLTAG database, this step will require that you are currently able to connect to the ABLTAG DB. Ensure that IT has installed ODBC and Oracle on your local machine, and that you are connected to the ABL internal network. Your connection code will look like this:


``` r
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

### **Initiate extraction**

Once we have connected to the database, we call the `process_to_db` method, passing the connection object in as a parameter.


``` r
decoder$decode_to_db(d = d, con = db_conn, meta = meta)
```

The `Decoder` object will now extract all possible data from the data directory, then attempt to load that data into the target database.

## **Use case 2: Extracting data to data.frames**

The `Decoder` can produce the extracted data as a collection of `data.frames`. These are provided as the elements of a named list, with the names corresponding to the type of data extracted. Which types of data are available will depend on what types of data are produced. You can find a table of data types produced by each supported tag type.


``` r
res = decoder$decode_to_dataframes(d = d, meta=meta)

metadata = res[['meta']]
instant_data = res[['instant']]
summary_data = res[['summary']]
```

## **Use case 3: Extract data to `.csv` files**

Finally, the `Decoder` object can write the extracted data to a collection of `.csv` files in a specified directory.

``` r
csv_directory = here::here() # Specify the directory into which the csv files should be written

decoder$decode_to_csv(d = d, op_d = csv_directory, meta = meta)
```

# **Input/Output Data**

## **Output data types**
Tags can record a multitude of different kinds of data and/or data products. For example, a tag may record instantaneous sensor readings, and periodically calculate aggregate summary statistics of those readings over given intervals of time. Most tags also record internal status records, such as current battery levels or details about successful connections to satellites. Each of these data sets are fundamentally distinct from one another, and so they should be kept separate. However, it is still important that when we extract data from the tag that all relevant data is extracted and provided to the user.

To accommodate this, each `Decoder` object contains one or more `DataMap` objects, stored as in the `data_maps` list attribute. Each `DataMap` is responsible for the data of a particular type. When a `Decoder` is used to extract data from a directory, it outputs one data product for each type of data produced by the tag. Additionally, all `Decoders` output one additional data product called `field_meta`, which provides a plain-text description of each field in each output data product, and specified which units are used by the field, if any. 


The format of the data products depends on the method employed:

- When using `decode_to_db`, the `Decoder` will attempt to write each data type to its own table. 
- When using `decode_to_data.frames`, the `Decoder` will produce one `data.frame` for each data type.
- When using `decoder_to_csv`, the `Decoder` will produce one `.csv` file for each data type.

`Decoders` can be configured with any number of `DataMaps` in order to support the extraction of any necessary data type. During extraction, the `Decoder` will iterate over the `data_maps` attribute, using the logic defined within the `DataMap` to first extract and then transform the corresponding data.

Those pre-configured `Decoder` objects which ship with `metl` already have a number `DataMap` objects defined for them. Which tags produce which types of data is listed [here](#output-data-types-by-tag), and a description of each of these data types is also provided [here](#metl-data-type-descriptions).

## **Timestamps**
All timestamp fields in `metl` are formatted as `POSIXct` timestamp objects. This has the advantage of allowing us to specify a given instant in time without having to introduce the complexity of timezones, and sidestepping the confusion of preferred date/time string formats (YYYY-MM-DD HH:MM:SS, DD/MM/YY HH:MM, HH:MM:SS, HH:MM MM DD YYYY, etc). However, it has the notable disadvantage of being completely unreadable to humans in its native form of 10-digit integers (e.g. 1246458240).

To address this users can convert POSIXct timestamps to the character representation of their choice using the `as.POSIXct` function [(documentation here)](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/as.POSIX*):


``` r
posix_int_timestamps =
  c(
    1246458240,
    1246458480,
    1246458720,
    1246458960
  )

as.POSIXct(posix_int_timestamps)

# Output
# [1] "2009-07-01 06:24:00 AKDT"
# [2] "2009-07-01 06:28:00 AKDT"
# [3] "2009-07-01 06:32:00 AKDT"
# [4] "2009-07-01 06:36:00 AKDT"
```

# **Units**
All units in `metl` are specified using the `units` package, the documentation for which can be found [here](https://www.rdocumentation.org/packages/units/versions/0.8-5). This package provides a comprehensive list of SI units, and facilitates conversion from one unit to another. This is particularly useful when dealing with sensor data, as different tags may use different units to represent the same physical quantity.

The units in which a field is recorded are specified in the `units` attribute of the `Field` object that corresponds to the data field. During extraction, the `Decoder` compares the units of the input `Field` object to those of the output `Field` object, and performs any necessary conversions. This is of particular use when we have multiple type of tags which record the same data, but in different units.

## **Proprietary post-processing software**

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

## **Output data-types by tag**
The types of data output by each of the supported tag types. For a more detailed description of what kind of data is represented by each data-type, read [here](#metl-data-type-descriptions).

|   |make                |model                    |meta |instant |summary |histogram_meta |histogram |pdt |
|:--|:-------------------|:------------------------|:----|:-------|:-------|:--------------|:---------|:---|
|1  |Lotek               |1000/1100/1250           |✓    |✓       |        |               |          |    |
|2  |Lotek               |1300                     |✓    |✓       |        |               |          |    |
|3  |Lotek               |1400/1800                |✓    |✓       |        |               |          |    |
|4  |Microwave Telemetry |X-Tag                    |✓    |✓       |✓       |               |          |    |
|6  |Star Oddi           |DST (centi/milli)-(TD/F) |✓    |✓       |        |               |          |    |
|7  |Star Oddi           |DST magnetic             |✓    |✓       |        |               |          |    |
|8  |Wildlife Computers  |MiniPAT                  |✓    |✓       |✓       |✓              |✓         |✓   |
|9  |Wildlife Computers  |Benthic sPAT             |✓    |✓       |✓       |               |          |    |

## **`metl` data type descriptions**

|Data type      |Description                                                                                         |
|:--------------|:---------------------------------------------------------------------------------------------------|
|meta           |Metadata. Data describing the tag itself, and its deployment                                        |
|instant        |Instantaneous sensor data. Sensor reading data, each of which refers to a specific instant in time. |
|summary        |Summary data. Aggregate statistics calculated over a given interval of time.                        |
|histogram      |Histogram data. Summary data which is reported using bins, rather than aggregate statistics.        |
|histogram_meta |Histogram metadata. Describes the bins used in the histogram data.                                  |
|pdt            |Profile of Depth & Temperature. Describes the temperature associated with various depths.           |


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

  #### **The `extract_fn`**

  To start with, we'll define our `extract_fn`. This is a function which must accept `d` as its only parameter, and return a single `data.frame`, the instant data in its raw input format.

Tuff1 tags are simple devices, and very conveniently store all of their instantaneous sensor data in a single `.csv` file. This `.csv` file is always named 'sensor_<id>.csv', where <id> is the four digit ID used to identify the tag. Luckily for us, all of the instant sensor data fields are stored in this `.csv` file, so our `extract_fn` function will be very simple:

```r
tuff1_extract_fn = function(d) {
  # Use a regular expression to find the instant sensor data
  instant_data_filepath = list.files(d, pattern = "sensor_\\d*\\.csv")[[1]]

  # Read in the instant sensor data from the file
  instant_sensor_data = read.csv(instant_data_filepath)

  # Return the data
  return(instant_sensor_data)
}
```

We can now use `tuff1_extract_fn()` to quickly extract the instant sensor data from any data directory produced by a Tuff1 tag.

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

`Field` objects are capable of describing a host of attributes about the field, including units, data type, and more. For a full list of available attributes, see the [Field class documentation](Field.md).

#### **Building a `DataMap`**

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

We will also need to be able to extract the appropriate tag metadata from each Tuff1 tag. In our simple use-case, the necessary metadata will be limited to the make and model of the tag. We'll expect that the user will provide the tag # in the `meta` data.frame.

```r
# We'll start by constructing a FieldMap for the make and model Fields:
  tuff1_meta_fieldmap =
  FieldMap(
    field_list =
      list(
        MAKE_FIELD =
          Field(
            name = "make"
          ),
        MODEL_FIELD =
          Field(
            name = "model"
          )
      )
  )


# We'll then construct a DataMap object to provide the metadata as a data.frame.
tuff1_meta_datamap =
  DataMap(
    input_data_field_map = tuff1_meta_fieldmap,
    extract_fn =
      function(d) {
        # In this example case, the metadata is static, so we'll just return a data.frame with the make and model
        return(
          data.frame(
            make = "TuffTags INC.",
            model = "Tuff1"
          )
        )
      }
  )

```

Now when we call the `extract()` method on our new object, we'll receive a `data.frame` describing the metadata needed for this tag:

```
tuff1_metadata = tuff1_meta_datamap$extract(d)

head(tuff1_metadata)
```

### **Building the `Decoder`**

We're nearly done extending `metl` to support the Tuff1 tag!

  We now have all of the pieces we need to define a `Decoder` object for our Tuff1 tag.

```
tuff1_decoder =
  Decoder(
    datamaps =
      list(
        meta = tuff1_meta_datamap,
        instant = tuff1_instant_sensor_datamap
      )
  )
```
This `Decoder` can now be used to extract all of the necessary data from any data directory which has been produced by a Tuff1 tag. HOWEVER, ther


# **Adding additional data to the `Decoder` object**

Often times when extracting data from a data directory, there may be many types of data which we wish to extract. Often, these types of data will be fundamentally distinct from one another, and therefore not appropriate to store in the same `data.frame` or database table. For example, a tag may produce the following kinds of data:

  - **System status data**: *data which describes the state of the tag, such as battery voltage, memory usage, etc.*
  - **Instantaneous sensor data**: *data which describes the instantaneous state of the tags sensors such as temperature, depth, etc.*
  - **Summary sensor data**: *data which provides aggregate statistics of the state of the tags sensors over a given time period.*

  While these data are distinct, they are also interrelated, and we may wish to keep the associated with one another even if they are not stored in the same table.

`metl` accomplishes this using its `DataMap` objects. Each `Decoder` has a `data_maps` attribute: a named list of `DataMap` objects, each of which is responsible for extracting a single type of data from a data directory. The names of the `DataMap` objects in the `data_maps` list are used to identify the type of data they extract.

If we wished to extend our `tuff1_decoder` to also extract summary sensor data, we would simply define a new `DataMap` object for this data, and add it to the `data_maps` list of our `tuff1_decoder` object:

  ```r
# Define the FieldMap for the summary sensor data
tuff1_summary_fieldmap =
  FieldMap(
    field_list =
      list(
        START_TIME_FIELD =
          Field(
            name = "start_time"
          ),
        END_TIME_FIELD =
          Field(
            name = "end_time"
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

tuff1_summary_datamap =
  DataMap(
    input_data_field_map = tuff1_summary_fieldmap,
    extract_fn =
      function(d) {
        # Retrieve the summary sensor data from `d`
        ...
      }
  )

tuff1_decoder$data_maps$summary = tuff1_summary_datamap
```

Our `tuff1_decoder` object can now extract summary sensor data, in addition to the other data it already supports.

However, there is a missing piece. We've defined how `tuff1_decoder` should extract the summary data, and the structure of that data, but we haven't defined the ***output*** format of the summary data.

# **Configuring data input/output format**

## **FieldMap objects**
As mentioned before, `metl` defines the fields present in a dataset using `FieldMap` objects. These objects are made up of a list of `Field` objects, each of which describes a single field in the dataset. `metl` uses `FieldMap` objects to define both the input format of the data, and using these two together it can transform incoming data into its output format.

To do this, `metl` has to be able to recognize which fields in the input `FieldMap` correspond to the fields in the output `FieldMap`. This is done by matching the list names of the `Field` objects in the input and output `FieldMap` objects. For example, if in our input `FieldMap` object we have a `Field` object with the list name `DEPTH_FIELD`, then in our output `FieldMap` object we must also have a `Field` object with the list name `DEPTH_FIELD`, then `metl` will know that these two fields correspond to one another.

```r
# Example input FieldMap
input_field_map =
  FieldMap(
    field_list =
      list(
        ...,
        DEPTH_FIELD =
          Field(
            name = "depth",
            units = "m"
          ),
        ...
      )
  )

# Example output FieldMap
output_field_map =
  FieldMap(
    field_list =
      list(
        ...,
        DEPTH_FIELD = "SensorD",
        units = "fth"
      )
  )

# Despite the fact that the depth field has completely different names and units in both datasets, `metl` will still be able to match them up because the list names of the `Field` objects are the same.
```

The `Decoder` objects which `metl` ships with are already pre-configured with `FieldMap` objects for each type of data they extract. These `FieldMap` objects are stored in the `output_fieldmaps` list of the `Decoder` object. The `FieldMap` objects are named according to the type of data they describe: `metadata`, `instant`, and `summary`. However, these fieldmaps can be altered or overwritten.

For example, here we can change the output units of the DEPTH or TEMPERATURE fields:

  ```r
# Change the output units of the DEPTH field to feet:
tuff1_decoder$output_fieldmaps$instant$field_list$DEPTH_FIELD$units = "ft"
# Change the output units of the TEMPERATURE field to F:
tuff1_decoder$output_fieldmaps$instant$field_list$TEMPERATURE_FIELD$units = "°F"
```

The `tuff1_decoder` will now output the DEPTH and TEMPERATURE fields in `ft` and `°F`, respectively.



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
