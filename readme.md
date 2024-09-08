METL
================
Tristan N. G. Sebens, M.S.

Last updated: 08 September, 2024

- [1 **Description**](#1-description)
- [2 **Requirements**](#2-requirements)
- [3 **Installation**](#3-installation)
- [4 **Quickstart**](#4-quickstart)
  - [4.0.1 **Data directories**](#401-data-directories)
  - [4.0.2 **The Decoder object**](#402-the-decoder-object)
    - [4.0.2.1 **The `meta` data.frame**](#4021-the-meta-dataframe)
  - [4.1 **Use case 1: Load data directly into
    database**](#41-use-case-1-load-data-directly-into-database)
    - [4.1.1 **Establish a connection to the output
      database**](#411-establish-a-connection-to-the-output-database)
    - [4.1.2 **Initiate extraction**](#412-initiate-extraction)
  - [4.2 **Use case 2: Extracting data to
    data.frames**](#42-use-case-2-extracting-data-to-dataframes)
  - [4.3 **Use case 3: Extract data to `.csv`
    files**](#43-use-case-3-extract-data-to-csv-files)
- [5 **Input/Output Data**](#5-inputoutput-data)
  - [5.1 **Output data types**](#51-output-data-types)
  - [5.2 **Timestamps**](#52-timestamps)
  - [5.3 **Units**](#53-units)
  - [5.4 **Proprietary post-processing
    software**](#54-proprietary-post-processing-software)
  - [5.5 **Overwriting data**](#55-overwriting-data)
  - [5.6 **DesertStar tags**](#56-desertstar-tags)
- [6 **List of supported tags**](#6-list-of-supported-tags)
  - [6.1 **Output data-types by tag**](#61-output-data-types-by-tag)
  - [6.2 **`metl` data type
    descriptions**](#62-metl-data-type-descriptions)
- [7 **Extending `metl`**](#7-extending-metl)
  - [7.1 **Classes of the `metl`
    package**](#71-classes-of-the-metl-package)
  - [7.2 **Basic example: adding a new type of tag to
    `metl`**](#72-basic-example-adding-a-new-type-of-tag-to-metl)
    - [7.2.1 **Building a custom
      `DataMap`**](#721-building-a-custom-datamap)
      - [7.2.1.1 **The `extract_fn`**](#7211-the-extract_fn)
      - [7.2.1.2 **Defining a `FieldMap`**](#7212-defining-a-fieldmap)
      - [7.2.1.3 **Building a `DataMap`**](#7213-building-a-datamap)
    - [7.2.2 **Building a metadata
      `DataMap`**](#722-building-a-metadata-datamap)
    - [7.2.3 **Building the `Decoder`**](#723-building-the-decoder)
      - [7.2.3.1 **The output `FieldMap`**](#7231-the-output-fieldmap)
- [8 **Adding additional data to the `Decoder`
  object**](#8-adding-additional-data-to-the-decoder-object)
- [9 **Configuring data input/output
  format**](#9-configuring-data-inputoutput-format)
  - [9.1 **FieldMap objects**](#91-fieldmap-objects)
- [10 **Uploading duplicate data to a database - UNIQUE
  constraints**](#10-uploading-duplicate-data-to-a-database---unique-constraints)
- [11 **Field vocabulary**](#11-field-vocabulary)
  - [11.0.1 **Metadata**](#1101-metadata)
  - [11.0.2 **Instant Data**](#1102-instant-data)
  - [11.0.3 **Summary data**](#1103-summary-data)
- [12 **ABLTAG Database**](#12-abltag-database)
  - [12.1 **Table metadata**](#121-table-metadata)
  - [12.2 **Field metadata**](#122-field-metadata)
- [13 **Bug Reporting**](#13-bug-reporting)
- [14 **Disclaimer**](#14-disclaimer)

# 1 **Description**

`metl` (Marine Ecosystem & Stock Assessment (**M**ESA)
**E**xtract/**T**ransform/**L**oad) provides an R interface for users to
extract raw sensor data from a variety of different makes/models of
marine biological research tags, and standardize the format of their
output. This data can be output in one of three ways:

1.  returning the data as `data.frame` objects
2.  writing the data to `.csv` files
3.  loading the data directly into a database

`metl` was designed and implemented by the MESA group of Auke Bay
Laboratories specifically to upload data into the `ABLTAG` database. The
relevant tables in ABLTAG are described [here](#12-abltag-database).
However, the package is designed to be easily extended to support
additional tag types and output formats, and to be configured to upload
to different databases.

# 2 **Requirements**

`metl` requires the following R packages to be installed:

- `tidyverse` (\>= `2.0.0`)
- `DBI` (\>=`1.2.3`)
- `odbc` (\>= `1.5.0`)

These package dependencies and others are recorded in the package
description, and should be automatically handled by the package manager.
We highlight these three here because they are exceptional in terms of
causing problems for the package when out of date.

In addition, when using `metl` to load data directly into an **Oracle**
database, users must have an up-to-date Oracle obdc driver installed on
their machine. Other DB systems (Microsoft SQL Server, PostGRESQL,
SQLite, etc.) should work natively with the package.

# 3 **Installation**

`metl` can be installed with `devtools`

``` r
devtools::install_github("https://github.com/tristan-sebens/metl")
```

# 4 **Quickstart**

This section will guide you through the basic steps of using `metl` to
extract data from a tag data directory and load it into a database. A
lot of underlying detail is glossed over, but this should get you
started.

`metl` currently supports [13 models](#6-list-of-supported-tags) of
tags, but users can extend `metl` to support additional tags.

### 4.0.1 **Data directories**

`metl` is designed to extract data from one directory at a time. A tag’s
data directory (referred to in this document as `d`) should contain all
of the data produced only a single tag. Data for multiple tags should be
separated into multiple directories, one directory for each tag
(***DesertStar*** brand tags are an exception to this).

The file structure of each data directory will vary depending on the
make and model of the tag, but in general, `d` should contain all of the
files produced by the post-processing software for the tag.

``` r
# d specifies the path of the data directory
# e.g. 
d = tcltk::tk_choose.dir()
```

### 4.0.2 **The Decoder object**

The primary work object of the `metl` package is the `Decoder` object,
which is responsible for extracting all data from a single tag data
directory, transforming it into its output format, and loading it into
its final destination. The `Decoder` objects can load the data to a
database, write data to `.csv` files, or return the data as `data.frame`
objects.

`metl` ships with a number of pre-configured `Decoder` objects, one for
each supported tag type. These objects are stored in the `decoders`
list, and can be accessed by name. `metl` is also designed to facilitate
extending its functionality to easily cover unsupported tags. See
[“Extending `metl`””](#7-extending-metl) for more information.

For the quickstart example, we will use an included `Decoder` object,
one configured for the Wildlife Computers Benthic sPAT tag:

``` r
library(metl)

decoder = decoders$WildlifeComputers$BenthicSPAT
```

A list of supported tags can be found [here](#6-list-of-supported-tags),
and a full list of the pre-configured `Decoder` objects shipped with
`metl` can be seen by running the following code:

``` r
supported_decoders()
```

#### 4.0.2.1 **The `meta` data.frame**

Ssome metadata can be read directly from the target directory, but
additional metadata must be supplied by the user. This additional data
is passed into the function call via the `meta` parameter, and must be
formatted as a `data.frame` object.

Below is an example of a `meta` `data.frame`. This example includes all
of the fields which are required to be provided by the user when
inserting into the ABLTAG DB. When using this code, you will need to
change these values to match the tag you are importing.

``` r
meta =
  data.frame(
    tag_num = "1234", # Tag ID number
    tag_type = "SuperTag", # Tag type, as specified in ABLTAG DB
    tag_num_secondary = "", # Secondary tag ID number
    tag_type_secondary = "", # Secondary tag type
    species_code = 20510, # Species code, as specified in ABLTAG DB
    seq_num = 1 # Sequence number. Check DB doc for more details.
  )
```

Due to the way that their data is stored, DesertStar tags require a
slight modification to this process. See here for more details.

## 4.1 **Use case 1: Load data directly into database**

### 4.1.1 **Establish a connection to the output database**

First we need to establish a connection to our database. We do this by
constructing a database connection object using `DBI::dbConnect`.

If you are uploading to the ABLTAG database, this step will require that
you are currently able to connect to the ABLTAG DB. Ensure that IT has
installed ODBC and Oracle on your local machine, and that you are
connected to the ABL internal network. Your connection code will look
like this:

``` r
library(DBI)

db_conn =
  dbConnect(
    odbc::odbc(),
    Driver="{Oracle in instantclient_19_18}",
    Dbq="AFSC",
    # ABLTAG login information
    UID = abltag_username, # --- Username
    PWD = abltag_password  # --- Password
  )
```

### 4.1.2 **Initiate extraction**

Once we have connected to the database, we call the `process_to_db`
method, passing the connection object in as a parameter. The `Decoder`
will extract data from the data directory, load it into the DB, and
report the results.

If you are uploading to a database other than `ABLTAG`, you will first
have to configure the output of the `Decoder` object to match the
internal structure of your database. Learn more
[here](#9-configuring-data-inputoutput-format)

``` r
decoder$decode_to_db(d = d, con = db_conn, meta = meta)
```

    ## Data inserted into DB succesfully.
    ## Row counts:
    ##  - ELECTRONIC_TAG_METADATA: 1
    ##  - ELECTRONIC_TAG_DATA_INSTANT: 350
    ##  - ELECTRONIC_TAG_DATA_SUMMARY: 73
    ##  - ELECTRONIC_TAG_FIELD_METADATA: 88

Read [here](#55-overwriting-data) to learn how `metl` handles uploading
data to a DB which is already present.

## 4.2 **Use case 2: Extracting data to data.frames**

The `Decoder` can produce the extracted data as a collection of
`data.frame`s. These are provided as the elements of a named list, with
the names corresponding to the type of data extracted. Which types of
data are available will depend on what types of data are produced. You
can find a table of data types produced by each supported tag type
[here](#61-output-data-types-by-tag).

In this example we used the Benthic sPAT tag from Wildlife Computers,
which produces three types of data: `meta`, `instant`, and `summary`.

``` r
res = decoder$decode_to_dataframes(d = d, meta=meta)

metadata = res[['meta']]
instant_data = res[['instant']]
summary_data = res[['summary']]

head(metadata)
```

| MAKE               | MODEL        | INSTRUMENT_TYPE | TAG_NUM | TAG_TYPE | TAG_NUM_SECONDARY | TAG_TYPE_SECONDARY | SEQ_NUM | SPECIES_CODE |
|:-------------------|:-------------|:----------------|:--------|:---------|:------------------|:-------------------|--------:|-------------:|
| Wildlife Computers | Benthic sPAT | popup           | 1234    | SuperTag |                   |                    |       1 |        20510 |

## 4.3 **Use case 3: Extract data to `.csv` files**

Finally, the `Decoder` object can write the extracted data to a
collection of `.csv` files in a specified directory. The `Decoder` will
create one `.csv` file for each type of data produced.

``` r
# `csv_directory` specifies the directory into which the csv files should be written
decoder$decode_to_csv(d = d, op_d = csv_directory, meta = meta)

print(list.files(csv_directory))
```

    ## [1] "field_meta.csv" "instant.csv"    "meta.csv"       "summary.csv"

# 5 **Input/Output Data**

## 5.1 **Output data types**

Tags can record a multitude of different kinds of data and/or data
products. For example, a tag may record instantaneous sensor readings,
and periodically calculate aggregate summary statistics of those
readings over given intervals of time. Most tags also record internal
status records, such as current battery levels or details about
successful connections to satellites. Each of these data sets are
fundamentally distinct from one another, and so they should be kept
separate. However, it is still important that when we extract data from
the tag that all relevant data is extracted and provided to the user.

To accommodate this, each `Decoder` object contains one or more
`DataMap` objects, stored in the `data_maps` list attribute. Each
`DataMap` is responsible for extracting the data of a particular type.
When a `Decoder` is used to extract data from a directory, it outputs
one data product for each `DataMap`. Additionally, all `Decoders` output
one additional data product called `field_meta`, which provides a
plain-text description of each field in each output data product, and
specified which units are used by the field, if any.

The format of the data products depends on the method employed:

- When using `decode_to_db`, the `Decoder` will attempt to write each
  data type to its own table.
- When using `decode_to_data.frames`, the `Decoder` will produce one
  `data.frame` for each data type.
- When using `decoder_to_csv`, the `Decoder` will produce one `.csv`
  file for each data type.

`Decoders` can be configured with any number of `DataMaps` in order to
support the extraction of any necessary data type. During extraction,
the `Decoder` will iterate over the `data_maps` attribute, using the
logic defined within the `DataMap` to first extract and then transform
the corresponding data.

Those pre-configured `Decoder` objects which ship with `metl` already
have a number `DataMap` objects defined for them. Which tags produce
which types of data is listed [here](#61-output-data-types-by-tag), and
a description of each of these data types is also provided
[here](#62-metl-data-type-descriptions).

## 5.2 **Timestamps**

All timestamp fields in `metl` are formatted as `POSIXct` timestamp
objects. This has the advantage of allowing us to specify a given
instant in time without having to introduce the complexity of timezones,
and sidestepping the confusion of preferred date/time string formats
(YYYY-MM-DD HH:MM:SS, DD/MM/YY HH:MM, HH:MM:SS, HH:MM MM DD YYYY, etc).
However, it has the notable disadvantage of being completely unreadable
to humans in its native form of 10-digit integers (e.g. 1246458240).

To address this users can convert POSIXct timestamps to the character
representation of their choice using the `as.POSIXct` function
[(documentation
here)](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/as.POSIX*):

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

## 5.3 **Units**

All units in `metl` are specified using the `units` package, the
documentation for which can be found
[here](https://www.rdocumentation.org/packages/units/versions/0.8-5).
This package provides a comprehensive list of SI units, and facilitates
conversion from one unit to another. This is particularly useful when
dealing with sensor data, as different tags may use different units to
represent the same physical quantity.

The units in which a field is recorded are specified in the `units`
attribute of the `Field` object that corresponds to the data field.
`metl` automatically applies the specified units to the incoming data
during extraction. During the transformation step the `Decoder` compares
the units of the input `Field` object to those of the output `Field`
object, and performs any necessary conversions. This is of particular
use when we have multiple type of tags which record the same readings in
different units and we wish to standardize their outputs.

## 5.4 **Proprietary post-processing software**

When dealing with telemetry tags, very often there is a post-processing
step which takes the raw data files from the tag and converts them into
usable files. Examples of this post-processing software include
*tag-talk32* for Lotek tags, *SeaStar* for StarOddi tags, or *SeaDock*
for Desert Star tags. Typically, the raw data which is actually output
by the tag is encoded in a proprietary file format which only the
post-processing software is capable of reading. Alternatively, the files
may be readable, but only interpretable when the organization of the
underlying data is understood *a priori*.

Either way, the use of these post-processing software packages is
typically unavoidable when obtaining data from telemetry tags. As such,
`metl` is NOT intended as a replacement for these software packages, but
is rather a followup step used to quickly and consistently read and
format the data output by these post-processing packages. [The expected
inputs for each of the supported tag types are listed
below](#6-list-of-supported-tags).

When using `metl` to process tag data, it is **CRITICAL** that the
structure and contents of the data have not been altered in ANY way. In
order to identify the make/model of the tag which produced a given data
directory, `metl` must make some *very* specific assumptions about the
naming conventions, file formats, and presence/absence of files in a
given directory. Even files which are not actually read by the
extraction code may be important markers used by `metl` to identify
which tag type was used to produce the data, and therefore how to
extract and format the data within.

## 5.5 **Overwriting data**

When inserting into a DB, `metl` first checks to see if any of the
uploaded data is already present in the DB. This is accomplished by
using `UNIQUE` constraints set on the target table. As an example,
instantaneous sensor data is loaded into the *TAG_DATA_INSTANT* table in
the ABLTAG database. This table has a `UNIQUE` constraint on three
fields: *TAG_NUM*, *TAG_TYPE*, and *TIMESTAMP*. Only one record can
exist in the table for a given combination of values for these three
fields, effectively meaning that each tag (identified by *TAG_NUM* and
*TAG_TYPE*) can only have one record per instant in time.

When loading to a DB, `metl` first loads the data into a temporary
table, and then uses a `MERGE` query to join the new data to the extant
data in the table. Any records which were already present in the table
and which match records in the new data (according to the `UNIQUE`
constraint) are overwritten by their counterparts in the new data. This
is typically expected to have no effect, as the records recorded by a
tag are not expected to change between uploads. However it does mean
that if **additional** data is retrieved for a tag, the entire dataset
can be uploaded to the DB without duplicating records already present in
the DB.

If you are configuring `metl` to upload into a database with a different
schema, you will need to implement appropriate `UNIQUE` constraints on
all of your tables (theoretically, this can also be accomplished by
using the same fields to define a `PRIMARY KEY`, but this remains
untested). Additionally, you will need to identify all of the `Field`
objects in your output `FieldMap` which correspond to these `UNIQUE`
fields and mark them as such by setting the `id_field` attribute of each
of them to `TRUE`

## 5.6 **DesertStar tags**

DesertStar tags are unique amongst the supported tags because of the
manner in which their data is reported and stored. Most tags, sanely,
produce one set of data per tag. By contrast, DesertStar tags report
their data by dat, *en masse*. If, for example, you have ten DesertStar
tags active in the field, then every day you will receive a report of
all of the transmissions which ANY of those tags made, all in a single
document. Over the course of several weeks, months, or years, this means
that all of the data from our tags will be hopelessly intermixed. In
order to import this data, we must first parse it all so that we can
distinguish which data is being reported by each tag.

`metl` does implement a `Decoder` object which is capable of doing this,
and as such DesertStar tags can be processed in the same manner as all
of the other tags. However, there is one caveat: the `meta` input.
Typically, this `data.frame` contains metadata which corresponds to a
single tag. In the case of DesertStar tags, it must instead contain
metadata for *all* of the tags which have data present in the directory.
This can be thought of as all of the `meta` `data.frame`s for each of
the individual DesertStar tags bound into a single `data.frame`.

``` r
meta =
  data.frame(
    tag_num = c("1234", "2384", "2239", "9867"), # Tag ID number
    tag_type = c("AB", "AB", "ET", "EC", "TX", "LF"), # Tag type, as specified in ABLTAG DB
    species_code = 20510, # Species code, as specified in ABLTAG DB
    seq_num = c(1, 2, 2, 1, 3) # Sequence number. Check DB doc for more details.
  )

head(meta)
```

| tag_num | tag_type | species_code | seq_num |
|:--------|:---------|-------------:|--------:|
| 1234    | AB       |        20510 |       1 |
| 2384    | AB       |        20510 |       2 |
| 2239    | ET       |        20510 |       2 |
| 9867    | EC       |        20510 |       1 |
| 8273    | TX       |        20510 |       3 |

# 6 **List of supported tags**

The following tags are currently supported on the main branch. However,
it should be noted that the package has been designed to make adding
support for additional tag types to be as accessible as possible.

| Manufacture         | Model        | `metl` expected inputs                                                                                |
|:--------------------|:-------------|:------------------------------------------------------------------------------------------------------|
| Lotek               | LTD 1000     | Output of [**tagtalk32**](https://www.lotek.com/)                                                     |
| Lotek               | LTD 1100     | Output of [**tagtalk32**](https://www.lotek.com/)                                                     |
| Lotek               | LTD 1250     | Output of [**tagtalk32**](https://www.lotek.com/)                                                     |
| Lotek               | LTD 1300     | Output of [**tagtalk32**](https://www.lotek.com/)                                                     |
| Lotek               | LAT 1400     | Output of [**tagtalk32**](https://www.lotek.com/)                                                     |
| Lotek               | LAT 1800     | Output of [**tagtalk32**](https://www.lotek.com/)                                                     |
| Microwave Telemetry | X-Tag        | `.xls` file, product of post-processing software                                                      |
| Star Oddi           | DST          | Output of [**SeaStar**](https://www.star-oddi.com/products/accessories/seastar--application-software) |
| Star Oddi           | DST milli-F  | Output of [**SeaStar**](https://www.star-oddi.com/products/accessories/seastar--application-software) |
| Star Oddi           | DST magnetic | Output of [**SeaStar**](https://www.star-oddi.com/products/accessories/seastar--application-software) |
| Wildlife Computers  | Benthic sPAT | Data downloaded from [Wildlife Computers portal](https://my.wildlifecomputers.com/)                   |
| Wildlife Computers  | MiniPAT      | Data downloaded from [Wildlife Computers portal](https://my.wildlifecomputers.com/)                   |
| Desert Star         | SeaTag MOD   | Output of [**SeaDock**](https://desert-star-systems-llc1.odoo.com/page/software)                      |

## 6.1 **Output data-types by tag**

The types of data output by each of the supported tag types. For a more
detailed description of what kind of data is represented by each
data-type, read [here](#62-metl-data-type-descriptions).

|     | make                | model                    | meta | instant | summary | histogram_meta | histogram | pdt |
|-----|:--------------------|:-------------------------|:-----|:--------|:--------|:---------------|:----------|:----|
| 1   | Lotek               | 1000/1100/1250           | ✓    | ✓       |         |                |           |     |
| 2   | Lotek               | 1300                     | ✓    | ✓       |         |                |           |     |
| 3   | Lotek               | 1400/1800                | ✓    | ✓       |         |                |           |     |
| 4   | Microwave Telemetry | X-Tag                    | ✓    | ✓       | ✓       |                |           |     |
| 6   | Star Oddi           | DST (centi/milli)-(TD/F) | ✓    | ✓       |         |                |           |     |
| 7   | Star Oddi           | DST magnetic             | ✓    | ✓       |         |                |           |     |
| 9   | Wildlife Computers  | MiniPAT                  | ✓    | ✓       | ✓       | ✓              | ✓         | ✓   |
| 10  | Wildlife Computers  | Benthic sPAT             | ✓    | ✓       | ✓       |                |           |     |
| 11  | Desert Star         | SeaTag MOD               | ✓    | ✓       |         |                |           |     |

## 6.2 **`metl` data type descriptions**

| table                              | description                                                                                 |
|:-----------------------------------|:--------------------------------------------------------------------------------------------|
| ELECTRONIC_TAG_METADATA            | Metadata for individual tags, including make, model, and instrument type.                   |
| ELECTRONIC_TAG_DATA_INSTANT        | Instantaneous sensor data from electronic tags, including temperature, depth, and location. |
| ELECTRONIC_TAG_DATA_SUMMARY        | Aggregate statistics summarizing sensor readings over a specified period of time.           |
| ELECTRONIC_TAG_DATA_HISTOGRAM_META | Metadata for the histogram bins used in the histogram data collected by tags.               |
| ELECTRONIC_TAG_DATA_HISTOGRAM      | Histogram (binned) data collected by tags.                                                  |
| ELECTRONIC_TAG_DATA_PDT            | Profile of Depth and Temperature (PDT) data. Describes temperature ranges at given depths.  |
| ELECTRONIC_TAG_TABLE_METADATA      | Descriptions of the electronic tag data tables in the ABLTAG database.                      |
| ELECTRONIC_TAG_FIELD_METADATA      | Descriptions of the fields in the electronic tag data tables in the ABLTAG database.        |

# 7 **Extending `metl`**

Users can extend `metl` to support additional makes and models of tags,
and can customize its inputs/outputs to suit their needs. Doing so
requires a stronger overview of the internal mechanics of the package.

## 7.1 **Classes of the `metl` package**

`metl` is an object-oriented package, and uses a handful of custom
object classes to define how data is extracted and exported from tags.

- `Decoder` - Encapsulates all logic required to extract and transform
  all data produced by a particular make/model of tag.

- `DataMap` - Defines the logic required to extract and transform a
  single type of data (see [data-types
  documentation](#62-metl-data-type-descriptions)) produced by a
  particular make/model of tag.

- `FieldMap` - Defines the fields present in a dataset. Can describe
  both input and output datasets. Used by the `DataMap` class to define
  how input fields map to output fields.

- `Field` - Defines a single field in a dataset, either input or output.

## 7.2 **Basic example: adding a new type of tag to `metl`**

Let’s consider a basic example. Suppose we have a new tag type, as-yet
unsupported by the `metl` package: the ‘Tuff1’ tag, made by ‘TuffTags
INC.’ We have a data directory at path `tuff1_d`, which is the output
data products collected from a single Tuff1 tag.

### 7.2.1 **Building a custom `DataMap`**

First, we’ll need to define one `DataMap` object for each type of data
produced by the Tuff1 tag. See here for more on
[data-types](#metl-output-data-types). All tags have metadata, so we’ll
need to define a metadata `DataMap`. For simplicity, we’ll assume that
the Tuff1 tag only produces instantaneous sensor data, a common pattern
in older tags. This means we’ll only have to define 2 `DataMap` objects:
one for the metadata, and one for the instantaneous sensor data.

We’ll start with the `DataMap` for instantaneous data.

#### 7.2.1.1 **The `extract_fn`**

To start with, we’ll define our `extract_fn`. This is a function which
must accept `d` as its only parameter, and return a single `data.frame`,
the instant data in its raw input format.

Tuff1 tags are simple devices, and very conveniently store all of their
instantaneous sensor data in a single `.csv` file. This `.csv` file is
always named ‘sensor\_<id>.csv’, where <id> is the four digit ID used to
identify the tag. Luckily for us, all of the instant sensor data fields
are stored in this `.csv` file, so our `extract_fn` function will be
very simple:

``` r
tuff1_extract_fn = 
  function(d) {
    # Use a regular expression to find the instant sensor data
    instant_data_filepath = 
      list.files(
        d,
        pattern = "sensor_\\d*\\.csv",
        full.names = T
      )

    # Read in the instant sensor data from the file
    instant_sensor_data = read.csv(instant_data_filepath)   

    # Return the data in a data.frame
    return(instant_sensor_data)
  }
```

We can now use `tuff1_extract_fn()` to extract the instant sensor data
from any data directory produced by a Tuff1 tag.

``` r
tuff1_dat = 
  tuff1_extract_fn(d = tuff1_d)

knitr::kable(head(tuff1_dat))
```

| timestamp           |      press |     temp |
|:--------------------|-----------:|---------:|
| 2002-05-10 04:00:00 | -0.2274082 | 68.23019 |
| 2002-05-10 04:15:00 | -0.2725804 | 68.23019 |
| 2002-05-10 04:30:00 | -0.2274082 | 68.23019 |
| 2002-05-10 04:45:00 | -0.0918991 | 68.39158 |
| 2002-05-10 05:00:00 | -0.0015659 | 68.39158 |
| 2002-05-10 05:15:00 | -0.0015659 | 68.35122 |

#### 7.2.1.2 **Defining a `FieldMap`**

Looking at the data returned by our `tuff1_extract_fn`, we see that it
contains the fields `timestamp`, `press`, and `temp`, which refer to the
timestamp, pressure, and temperature fields respectively. However,
`metl` doesn’t know anything about the structure of the data we’ve
collected. We need to define a `FieldMap` object to define which fields
are present in the dataset.

A `FieldMap` object is primarily composed of a list of `Field` objects.
Each `Field` object represents a single field in a `data.frame`. The
`Field` object describes a number of attributes about the field, but for
now we’ll focus on just two: the name of the field, and the units it’s
in, if any.

We’ll say that we know that the Tuff1 tags record temperature in degrees
Fahrenheit, and pressure in bars.

The `FieldMap` for the Tuff1 tag looks something like this:

``` r
tuff1_input_fieldmap =
  FieldMap(
    # A list of the fields contained within the incoming dataset
    field_list =
      list(
        TIMESTAMP_FIELD =
          Field(
            name = "timestamp"
          ),
        PRESSURE_FIELD =
          Field(
            name = "press",
            units = "bar"
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "temp",
            units = "fahrenheit"
          )
      )
  )
```

##### 7.2.1.2.1 **Converting to POSIXct timestamps**

There is an outstanding problem with our incoming data: the `timestamp`
field is a character field. `metl` expects that any and all timestamp
fields will be formatted as `POSIXct` timestamp objects. This is because
by using `POSIXct` objects, we can avoid all of the headaches and
complexities associated with timezones.

What is the optimal way to address this? We could simply modify the
`extract_fn` to convert the `timestamp` field to a `POSIXct` object
before returning the data. However, this would be a poor choice, as it
would mean that the `extract_fn` would be responsible for both
extracting the data and transforming it, meaning that it would have to
have knowledge about the structure and naming of the `data.frame` it was
extracting. This would make the `extract_fn` less flexible, and more
difficult to maintain.

Fortunately there is a better method:

##### 7.2.1.2.2 **The `trans_fn` attribute**

`Field` objects have a number of attributes which we can use to describe
and alter each data field to suit our needs. For now, we’ll cover one
additional attribute, the `trans_fn`. This is a function which can be
used to define simple transformations which should be applied to
individual data fields. For a full list of `Field` object attributes,
see the [Field class documentation](Field.md).

The `trans_fn` is passed the values of the field in the vector `v`.
`trans_fn` is also passed a handful of other parameters which may be
useful to us when transforming our data, but we won’t need any of these
so we’ll simply include the `...` argument to catch them for us.

Now we can update our `FieldMap` object to perform the timestamp
conversion for us:

``` r
tuff1_input_fieldmap =
  FieldMap(
    # A list of the fields contained within the incoming dataset
    field_list =
      list(
        TIMESTAMP_FIELD =
          Field(
            name = "timestamp",
            # Here we add the timestamp conversion function
            trans_fn = 
              function(v, ...) {
                return(as.POSIXct(v, format = "%Y-%m-%d %H:%M:%S"))
              }
          ),
        PRESSURE_FIELD =
          Field(
            name = "press",
            units = "bar"
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "temp",
            units = "fahrenheit"
          )
      )
  )
```

#### 7.2.1.3 **Building a `DataMap`**

We can now use our `tuff1_extract` and `tuff1_input_fieldmap` to
construct a `DataMap` for instant sensor data collected by Tuff1 tags:

``` r
tuff1_instant_sensor_datamap =
  DataMap(
    input_data_field_map = tuff1_input_fieldmap,
    extract_fn = tuff1_extract_fn
  )
```

That’s it! Our datamap can now be used to extract instantaneous sensor
data from any data directory produced by a Tuff1 tag. We can confirm
this is true by extracting from our example directory `tuff1_d`:

``` r
tuff1_datamap_dat = 
  tuff1_instant_sensor_datamap$extract(d = tuff1_d)

knitr::kable(head(tuff1_datamap_dat))
```

| timestamp           |      press |     temp |
|:--------------------|-----------:|---------:|
| 2002-05-10 04:00:00 | -0.2274082 | 68.23019 |
| 2002-05-10 04:15:00 | -0.2725804 | 68.23019 |
| 2002-05-10 04:30:00 | -0.2274082 | 68.23019 |
| 2002-05-10 04:45:00 | -0.0918991 | 68.39158 |
| 2002-05-10 05:00:00 | -0.0015659 | 68.39158 |
| 2002-05-10 05:15:00 | -0.0015659 | 68.35122 |

For the sake of simplicity, we’re assuming that Tuff1 tags don’t record
any data other than instantaneous sensor data. However, if they did, we
would simply repeat the steps we followed to create our
`tuff1_instant_sensor_datamap` but altering the `extract_` function and
the `input_data_field_map` as needed to extract the other types of data
from the data directory.

You may notice that despite defining units and a `trans_fn` in out
`FieldMap` none of the data fields have been transformed. This is
because all transformations happen in the `transform` method of the
`DataMap` which is called by the `Decoder` object. We’ll cover this
shortly.

### 7.2.2 **Building a metadata `DataMap`**

We will also need to be able to extract the appropriate tag metadata
from each Tuff1 tag. In our simple use-case, the necessary metadata will
be limited to the make and model of the tag. We’ll expect that the user
will provide the tag \# in the `meta` `data.frame`.

``` r
# We'll start by constructing a FieldMap for the make and model Fields:
tuff1_input_meta_fieldmap =
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
    input_data_field_map = tuff1_input_meta_fieldmap,
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

Now when we call the `extract()` method on our new object, we’ll receive
a `data.frame` describing the metadata needed for this tag:

### 7.2.3 **Building the `Decoder`**

We’re nearly done extending support to the Tuff1 tag! The final step is
to construct the `Decoder` object. Once we have this in place, we can
use it to quickly and easily extract data from any data directory
produced by a Tuff1 tag.

``` r
tuff1_decoder =
  Decoder(
    data_maps =
      list(
        "meta" = tuff1_meta_datamap,
        "instant" = tuff1_instant_sensor_datamap
      )
  )
```

This `Decoder` can now be used to extract all of the necessary data from
any data directory which has been produced by a Tuff1 tag. We can
confirm this by extracting data from our example directory `tuff1_d`:

``` r
tuff1_dats = 
  tuff1_decoder$decode_to_dataframes(
    d = tuff1_d,
    # We'll explain more about this parameter later
    meta = data.frame()
  )

tuff1_meta_dat = tuff1_dats$meta
tuff1_instant_dat = tuff1_dats$instant

knitr::kable(head(tuff1_instant_dat))
```

|            PRESSURE |     TEMPERATURE | TIMESTAMP |
|--------------------:|----------------:|:----------|
| -3.29827700 $$psi$$ | 20.12788 $$°C$$ | NA        |
| -3.95344400 $$psi$$ | 20.12788 $$°C$$ | NA        |
| -3.29827700 $$psi$$ | 20.12788 $$°C$$ | NA        |
| -1.33288400 $$psi$$ | 20.21755 $$°C$$ | NA        |
| -0.02271176 $$psi$$ | 20.21755 $$°C$$ | NA        |
| -0.02271176 $$psi$$ | 20.19512 $$°C$$ | NA        |

Just like that our Tuff1 `Decoder` is successfully extracting tag data
and transforming it to a standardized format! But wait, there’s a piece
missing! If we look at the instant sensor data output by the `Decoder`
we see it’s been transformed! The names of the fields have changed, and
so have the units of the pressure and temperature fields. How did `metl`
know to do this?

There is an additional piece which we have not yet covered, which is the
output `FieldMap` object. Just as we used a `FieldMap` to define the
structure of our input data, so a second `FieldMap` is used to define
the structure of the output data, including the names of the fields,
their units, and other miscellaneous attributes.

`metl` was designed and implemented by the MESA group of Auke Bay
Laboratories specifically to upload data into the ABLTAG database. As
such, `Decoder` objects default to using output `FieldMap` objects which
are pre-configured to output data in the format expected by the ABLTAG
database. However, these `FieldMap` objects can be easily customized to
output data in any format desired.

#### 7.2.3.1 **The output `FieldMap`**

Often times when we extract data from a raw source, we want to perform
some kind of transformation on it in order to standardize it. This is
particularly true when, as in the case of electronic tag data, we are
extracting data recorded in many different forms and formats, but want
to standardize them all into the same format.

`metl` is designed to automatically standardize the incoming data into a
common form. To do this, we define the structure of that standardized
output format. This is done by using another `FieldMap` object. Here is
an example of an output `FieldMap` object for the instant sensor data of
the Tuff1 tag:

``` r
tuff1_output_fieldmap =
  FieldMap(
    field_list =
      list(
        TIMESTAMP_FIELD =
          Field(
            name = "TIME"
          ),
        PRESSURE_FIELD =
          Field(
            name = "PRESSURE",
            units = "psi"
          ),
        TEMPERATURE_FIELD =
          Field(
            name = "TEMPERATURE",
            units = "degrees_Celsius"
          )
      )
  )
```

The output `FieldMap` references the same data fields as the input
`FieldMap`, but the names have changed, as have the units for the
pressure and temperature fields. So how does `metl` know which fields in
the input `FieldMap` correspond to which fields in the output
`FieldMap`?

`metl` determines this by looking at the list-names of each `Field`
object in the `field_list`s of the input and output `FieldMap`s. If an
element in the `field_list` of the input `FieldMap` has the same name as
an element in the `field_list` of the output `FieldMap`, then `metl`
will assume that these two fields correspond to one another. For this
reason, it is important that the list names of the different fields
remain consistent between input and output `FieldMap` objects.

As mentioned before, `metl` uses a number of default output `FieldMap`
objects to standardize incoming data. If new data is added to the
pipeline via a new `Decoder`, it is important that the input `FieldMap`
elements have list-names which match to elements in the output
`FieldMap`. A list of all currently used `Field` list names can be found
[here](#11-field-vocabulary)

# 8 **Adding additional data to the `Decoder` object**

Often times when extracting data from a data directory, there may be
many types of data which we wish to extract. Often, these types of data
will be fundamentally distinct from one another, and therefore not
appropriate to store in the same `data.frame` or database table. For
example, a tag may produce the following kinds of data:

- **System status data**: *data which describes the state of the tag,
  such as battery voltage, memory usage, etc.*
- **Instantaneous sensor data**: *data which describes the instantaneous
  state of the tags sensors such as temperature, depth, etc.*
- **Summary sensor data**: *data which provides aggregate statistics of
  the state of the tags sensors over a given time period.*

While these data are distinct, they are also interrelated, and we may
wish to keep the associated with one another even if they are not stored
in the same table.

`metl` accomplishes this using its `DataMap` objects. Each `Decoder` has
a `data_maps` attribute: a named list of `DataMap` objects, each of
which is responsible for extracting a single type of data from a data
directory. The names of the `DataMap` objects in the `data_maps` list
are used to identify the type of data they extract.

If we wished to extend our `tuff1_decoder` to also extract summary
sensor data, we would simply define a new `DataMap` object for this
data, and add it to the `data_maps` list of our `tuff1_decoder` object:

``` r
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

Our `tuff1_decoder` object can now extract summary sensor data, in
addition to the other data it already supports.

However, there is a missing piece. We’ve defined how `tuff1_decoder`
should extract the summary data, and the structure of that data, but we
haven’t defined the ***output*** format of the summary data.

# 9 **Configuring data input/output format**

## 9.1 **FieldMap objects**

As mentioned before, `metl` defines the fields present in a dataset
using `FieldMap` objects. These objects are made up of a list of `Field`
objects, each of which describes a single field in the dataset. `metl`
uses `FieldMap` objects to define both the input format of the data, and
using these two together it can transform incoming data into its output
format.

To do this, `metl` has to be able to recognize which fields in the input
`FieldMap` correspond to the fields in the output `FieldMap`. This is
done by matching the list names of the `Field` objects in the input and
output `FieldMap` objects. For example, if in our input `FieldMap`
object we have a `Field` object with the list name `DEPTH_FIELD`, then
in our output `FieldMap` object we must also have a `Field` object with
the list name `DEPTH_FIELD`, then `metl` will know that these two fields
correspond to one another.

``` r
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

The `Decoder` objects which `metl` ships with are already pre-configured
with `FieldMap` objects for each type of data they extract. These
`FieldMap` objects are stored in the `output_fieldmaps` list of the
`Decoder` object. The `FieldMap` objects are named according to the type
of data they describe: `metadata`, `instant`, and `summary`. However,
these fieldmaps can be altered or overwritten.

For example, here we can change the output units of the DEPTH or
TEMPERATURE fields:

``` r
# Change the output units of the DEPTH field to feet:
tuff1_decoder$output_fieldmaps$instant$field_list$DEPTH_FIELD$units = "ft"
# Change the output units of the TEMPERATURE field to F:
tuff1_decoder$output_fieldmaps$instant$field_list$TEMPERATURE_FIELD$units = "°F"
```

The `tuff1_decoder` will now output the DEPTH and TEMPERATURE fields in
`ft` and `°F`, respectively.

# 10 **Uploading duplicate data to a database - UNIQUE constraints**

When writing to a database, it is expected that we may be attempting to
insert data which is already present. This could occur because we are
reprocessing a directory in which some of the tags have already been
loaded, or because additional data became after a tag was physically
recovered, or some other reason. To prevent duplicate data from being
inserted into the database, `Pipe` performs an **upsert** operation when
writing to the database. It first loads the data into a temporary table
in the database (this table is automatically deleted afterwards), and
then performs a merge operation between the temporary table and the
target table. This ensures that any records in the target table which
are also present in the temporary table are overwritten with the new
data.

In order to do this, we must have a method of identifying whether or not
two records refer to the same data point. `metl` accomplishes this by
looking for **UNIQUE** constraints in the database table. As such, each
table into which `Pipe` loads its data must have at least one UNIQUE
constraint defined.

ABLTAG uses the following constraints, and we recommend following the
same pattern:

- metadata table - UNIQUE constraint on the ‘tag_id’ field.
- instant data table - UNIQUE constraint on the combination of the
  ‘tag_id’ and ‘timestamp’ fields
- summary data table - UNIQUE constraint on the combination of the
  ‘tag_id’, ‘start_time’, and ‘end_time’ fields

Input `FieldMap` objects are already defined and used for all supported
tags. A list of the list names for each of the fields can be found in
the section on [field vocabulary](#11-field-vocabulary).

# 11 **Field vocabulary**

This section lists the standardized names for each type of data produced
by the supported tags. Output `FieldMaps` must use these same terms for
their `Field` objects in order for the corresponding input fields to be
mapped properly.

### 11.0.1 **Metadata**

| Data type                      | Field name        |
|:-------------------------------|:------------------|
| Tag ID \#                      | `TAG_ID_FIELD`    |
| Tag brand / make / manufacture | `TAG_MAKE_FIELD`  |
| Tag model                      | `TAG_MODEL_FIELD` |

### 11.0.2 **Instant Data**

| Data type                                     | Field name                                  | Units                                     | Notes                                                                                                                                                                                                                      |
|:----------------------------------------------|:--------------------------------------------|:------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Tag ID \#                                     | `TAG_ID_FIELD`                              | Used to link instant data to tag metadata |                                                                                                                                                                                                                            |
| Timestamp / Datetime                          | `TIMESTAMP_FIELD`                           | POSIXct timestamp                         |                                                                                                                                                                                                                            |
| Latitude                                      | `LATITUDE_FIELD`                            | °                                         |                                                                                                                                                                                                                            |
| Longitude                                     | `LONGITUDE_FIELD`                           | °                                         |                                                                                                                                                                                                                            |
| Location type (satellite/geolocation)         | `LOCATION_TYPE_FIELD`                       |                                           | Indicates whether this location estimate was produced by a GPS satellite fix, or geolocation                                                                                                                               |
| Latitude error (N)                            | `LATITUDE_N_ERROR_FIELD`                    |                                           |                                                                                                                                                                                                                            |
| Latitude error (S)                            | `LATITUDE_S_ERROR_FIELD`                    |                                           |                                                                                                                                                                                                                            |
| Latitude (U)                                  | `LATITUDE_U_FIELD`                          |                                           | Some kind of error metric produced by the GPE2 geolocation software. Still not sure what it means.                                                                                                                         |
| Longitude error                               | `LONGITUDE_ERROR_FIELD`                     |                                           |                                                                                                                                                                                                                            |
| Location error - ellipse orientation          | `LOCATION_ERROR_ELLIPSE_ORIENTATION_FIELD`  |                                           | This field, along with the next three, define an elliptical area of location. I assume this is associated with some kind of confidence interval, but as of yet I don’t know which.                                         |
| Location error - semi minor axis              | `LOCATION_ERROR_ELLIPSE_ORIENTATION_FIELD`  |                                           |                                                                                                                                                                                                                            |
| Location error - semi major axis              | `LOCATION_ERROR_ELLIPSE_ORIENTATION_FIELD`  |                                           |                                                                                                                                                                                                                            |
| Location error - radius                       | `LOCATION_ERROR_SEMI_MINOR_AXIS_FIELD`      |                                           |                                                                                                                                                                                                                            |
| Pressure                                      | `PRESSURE_FIELD`                            | psi                                       |                                                                                                                                                                                                                            |
| Temperature                                   | `TEMPERATURE_FIELD`                         | °C                                        |                                                                                                                                                                                                                            |
| Depth                                         | `DEPTH_FIELD`                               | m                                         |                                                                                                                                                                                                                            |
| Temperature - delta limit breached (increase) | `TEMPERATURE_INCREASE_LIMIT_EXCEEDED_FIELD` |                                           | This field is produced by Microwave Telemetry X-Tags. The full explanation is too complex for this format. Essentially this field flags records for which the temperature rose too quickly for the reading to be accurate. |
| Temperature - delta limit breached (decrease) | `TEMPERATURE_DECREASE_LIMIT_EXCEEDED_FIELD` |                                           | Same as above, but for temperature decreases.                                                                                                                                                                              |
| Depth - delta limit breached (ascending)      | `DEPTH_DECREASE_LIMIT_EXCEEDED_FIELD`       |                                           | Same as above, but for depth.                                                                                                                                                                                              |
| Depth - delta limit breached (descending)     | `DEPTH_INCREASE_LIMIT_EXCEEDED_FIELD`       |                                           | Same as above, but for depth.                                                                                                                                                                                              |
| Tilt (x axis)                                 | `TILT_X_FIELD`                              | °                                         | Change in orientation from vertical, x-axis.                                                                                                                                                                               |
| Tilt (y axis)                                 | `TILT_Y_FIELD`                              | °                                         | Change in orientation from vertical, y-axis.                                                                                                                                                                               |
| Tilt (z axis)                                 | `TILT_Z_FIELD`                              | °                                         | Change in orientation from vertical, z-axis.                                                                                                                                                                               |
| Inclination (away from vertical)              | `INCLINATION_FIELD`                         | °                                         | Absolute angle of deviation from vertical                                                                                                                                                                                  |
| Magnetic field strength                       | `MAGNETIC_STRENGTH_FIELD`                   | nT                                        | Strength of the Earth’s magnetic field                                                                                                                                                                                     |

### 11.0.3 **Summary data**

| Data type                             | Field name            | Units                                     | Notes                                                                                        |
|:--------------------------------------|:----------------------|:------------------------------------------|:---------------------------------------------------------------------------------------------|
| Tag ID \#                             | `TAG_ID_FIELD`        | Used to link summary data to tag metadata |                                                                                              |
| Start time                            | `START_TIME_FIELD`    | POSIXct timestamp                         | The start of the time period which this data describes                                       |
| End time                              | `END_TIME_FIELD`      | POSIXct timestamp                         | The end of the time period which this data describes                                         |
| Latitude                              | `LATITUDE_FIELD`      | °                                         | The average latitude over the time period                                                    |
| Longitude                             | `LONGITUDE_FIELD`     | °                                         | The average latitude over the time period                                                    |
| Location type (satellite/geolocation) | `LOCATION_TYPE_FIELD` |                                           | Indicates whether this location estimate was produced by a GPS satellite fix, or geolocation |
| Minimum depth                         | `MIN_DEPTH_FIELD`     | m                                         | The minimum depth reading encountered by the tag during the time period                      |
| Maximum depth                         | `MAX_DEPTH_FIELD`     | m                                         | The maximum depth reading encountered by the tag during the time period                      |
| Average depth                         | `MEAN_DEPTH_FIELD`    | m                                         | The average depth reading encountered by the tag during the time period                      |
| Minimum temperature                   | `MIN_TEMP_FIELD`      | °                                         | Same as above, but for temperature                                                           |
| Maximum temperature                   | `MAX_TEMP_FIELD`      | °                                         | Same as above, but for temperature                                                           |
| Average temperature                   | `MEAN_TEMP_FIELD`     | °                                         | Same as above, but for temperature                                                           |
| Percentage upright                    | `UPRIGHT_FIELD`       | %                                         | The percentage of the time period that the tag was upright (vertical)                        |
| Knockdowns                            | `KNOCKDOWN_FIELD`     |                                           | The number of times that the tag was knocked over during this time period                    |

# 12 **ABLTAG Database**

`ABLTAG` is an internal Oracle database hosted by Auke Bay Laboratories,
and is intended to be a centralized clearinghouse where sensor data
collected by all manners of electronic tags can be stored in a
standardized format. The `metl` package has been designed to support
`ABLTAG` specifically, and so ships pre-configured to interface with
`ABLTAG` (it is possible to alter this configuration to fit a custom
configuration. Please see **[Configuring data input/output
format](#9-configuring-data-inputoutput-format)** for more information.)

For convenience, below is a compilation of metadata for the tables and
fields in the `ABLTAG` database which this package has been
pre-configured to write to:

## 12.1 **Table metadata**

| table                              | description                                                                                 |
|:-----------------------------------|:--------------------------------------------------------------------------------------------|
| ELECTRONIC_TAG_METADATA            | Metadata for individual tags, including make, model, and instrument type.                   |
| ELECTRONIC_TAG_DATA_INSTANT        | Instantaneous sensor data from electronic tags, including temperature, depth, and location. |
| ELECTRONIC_TAG_DATA_SUMMARY        | Aggregate statistics summarizing sensor readings over a specified period of time.           |
| ELECTRONIC_TAG_DATA_HISTOGRAM_META | Metadata for the histogram bins used in the histogram data collected by tags.               |
| ELECTRONIC_TAG_DATA_HISTOGRAM      | Histogram (binned) data collected by tags.                                                  |
| ELECTRONIC_TAG_DATA_PDT            | Profile of Depth and Temperature (PDT) data. Describes temperature ranges at given depths.  |
| ELECTRONIC_TAG_TABLE_METADATA      | Descriptions of the electronic tag data tables in the ABLTAG database.                      |
| ELECTRONIC_TAG_FIELD_METADATA      | Descriptions of the fields in the electronic tag data tables in the ABLTAG database.        |

## 12.2 **Field metadata**

##### ELECTRONIC_TAG_METADATA

Metadata for individual tags, including make, model, and instrument
type.

| field              | description                                                                                                                                                                             | units |
|:-------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:------|
| TAG_NUM            | The ID \# of the tag. This may or may not be the same as the number printed on the tag itself.                                                                                          |       |
| TAG_TYPE           | A 2-3 letter code describing how this tag was deployed. The plain English description of each code type can be found in the TAG_TYPE table in the ABLTAG DB.                            |       |
| TAG_NUM_SECONDARY  | Secondary tag id value.                                                                                                                                                                 |       |
| TAG_TYPE_SECONDARY | Secondary tag type value.                                                                                                                                                               |       |
| SEQ_NUM            | The seqence number of deployment. Sometimes a tag is deployed multiple times with the same tag ID \# and same tag-type code. This value helps to distinguish between these deployments. |       |
| SPECIES_CODE       | A numeric code representing the species of the animal tagged. The plain English description of each species code can be found in the SPECIES table in the ABLTAG DB.                    |       |
| MAKE               | The tag’s manufacturer.                                                                                                                                                                 |       |
| MODEL              | The tag model.                                                                                                                                                                          |       |
| INSTRUMENT_TYPE    | One of: archival, popup, acoustic tag, acoustic receiver                                                                                                                                |       |

##### ELECTRONIC_TAG_DATA_INSTANT

Instantaneous sensor data from electronic tags, including temperature,
depth, and location.

| field                              | description                                                                                                                                                                                                                                      | units           |
|:-----------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------|
| TAG_NUM                            | The ID \# of the tag. This may or may not be the same as the number printed on the tag itself.                                                                                                                                                   |                 |
| TAG_TYPE                           | A 2-3 letter code describing how this tag was deployed. The plain English description of each code type can be found in the TAG_TYPE table in the ABLTAG DB.                                                                                     |                 |
| TIMESTAMP_POSIXCT                  | The instant in time to which this record corresponds, expressed as a POSIXct timestamp.                                                                                                                                                          |                 |
| TIMESTAMP                          | The instant in time to which this record corresponds, expressed as a character string.                                                                                                                                                           |                 |
| LATITUDE                           | The latitude of the tag at the time of this record. Expressed as standard WGS84 units                                                                                                                                                            |                 |
| LONGITUDE                          | The longitude of the tag at the time of this record. Expressed as standard WGS84 units                                                                                                                                                           |                 |
| LOCATION_TYPE                      | The method used to determine the location of this tag: GPS, Light-based geolocation, etc.                                                                                                                                                        |                 |
| LATITUDE_N_ERROR                   | No description available                                                                                                                                                                                                                         |                 |
| LATITUDE_s_ERROR                   | No description available                                                                                                                                                                                                                         |                 |
| LATITUDE_U                         | No description available                                                                                                                                                                                                                         |                 |
| LONGITUDE_U                        | No description available                                                                                                                                                                                                                         |                 |
| LOCATION_ERROR_ELLIPSE_ORIENTATION | No description available                                                                                                                                                                                                                         |                 |
| LOCATION_ERROR_SEMI_MINOR_AXIS     | No description available                                                                                                                                                                                                                         |                 |
| LOCATION_ERROR_SEMI_MAJOR_AXIS     | No description available                                                                                                                                                                                                                         |                 |
| LOCATION_ERROR_RADIUS              | No description available                                                                                                                                                                                                                         |                 |
| PRESSURE                           | The pressure reading of the tag at the time of this record.                                                                                                                                                                                      | psi             |
| DEPTH                              | The depth reading of the tag at the time of this record.                                                                                                                                                                                         | m               |
| DEPTH_INCREASE_DELTA_LIMIT         | Due to the manner in which their data is transmitted, Microwave Telemetry X-Tags tags can only record a limited amount of change in depth per record. If this limit is exeeded, the true depth is AT LEAST the recorded depth.                   |                 |
| DEPTH_DECREASE_DELTA_LIMIT         | Due to the manner in which their data is transmitted, Microwave Telemetry X-Tags tags can only record a limited amount of change in depth per record. If this limit is exeeded, the true depth is AT MOST the recorded depth.                    |                 |
| TEMPERATURE                        | The temperature reading of the tag at the time of this record.                                                                                                                                                                                   | degrees_Celsius |
| TEMP_INCREASE_DELTA_LIMIT          | Due to the manner in which their data is transmitted, Microwave Telemetry X-Tags tags can only record a limited amount of change in temperature per record. If this limit is exeeded, the true temperature is AT LEAST the recorded temperature. |                 |
| TEMP_DECREASE_DELTA_LIMIT          | Due to the manner in which their data is transmitted, Microwave Telemetry X-Tags tags can only record a limited amount of change in temperature per record. If this limit is exeeded, the true temperature is AT MOST the recorded temperature.  |                 |
| TILT_X                             | The tilt of the tag on the X axis (pitch) at the time of this record.                                                                                                                                                                            | degrees         |
| TILT_Y                             | The tilt of the tag on the Y axis (yaw) at the time of this record.                                                                                                                                                                              | degrees         |
| TILT_Z                             | The tilt of the tag on the Z axis (roll) at the time of this record.                                                                                                                                                                             | degrees         |
| INCLINATION                        | No description available                                                                                                                                                                                                                         | degrees         |
| MAGNETIC_FIELD_STRENGTH            | The strength of the Earth’s magnetic field at the time of this record.                                                                                                                                                                           | nanoteslas      |

##### ELECTRONIC_TAG_DATA_SUMMARY

Aggregate statistics summarizing sensor readings over a specified period
of time.

| field              | description                                                                                                                                                  | units           |
|:-------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------|
| TAG_NUM            | The ID \# of the tag. This may or may not be the same as the number printed on the tag itself.                                                               |                 |
| TAG_TYPE           | A 2-3 letter code describing how this tag was deployed. The plain English description of each code type can be found in the TAG_TYPE table in the ABLTAG DB. |                 |
| START_TIME_POSIXCT | The start time of the summary period, expressed as a POSIXct timestamp.                                                                                      |                 |
| START_TIME         | The start time of the summary period, expressed as a character string.                                                                                       |                 |
| END_TIME_POSIXCT   | The end time of the summary period, expressed as a POSIXct timestamp.                                                                                        |                 |
| END_TIME           | The end time of the summary period, expressed as a character string.                                                                                         |                 |
| LATITUDE           | The latitude of the tag during the summary period. Expressed as standard WGS84 units                                                                         |                 |
| LONGITUDE          | The longitude of the tag during the summary period. Expressed as standard WGS84 units                                                                        |                 |
| LOCATION_TYPE      | The method used to determine the location of the tag: GPS, Light-based geolocation, etc.                                                                     |                 |
| MIN_DEPTH          | The minimum depth recorded during the summary period.                                                                                                        | m               |
| MEAN_DEPTH         | The mean depth recorded during the summary period.                                                                                                           | m               |
| MAX_DEPTH          | The maximum depth recorded during the summary period.                                                                                                        | m               |
| MIN_TEMP           | The minimum temperature recorded during the summary period.                                                                                                  | degrees_Celsius |
| MEAN_TEMP          | The mean temperature recorded during the summary period.                                                                                                     | degrees_Celsius |
| MAX_TEMP           | The maximum temperature recorded during the summary period.                                                                                                  | degrees_Celsius |
| PERCENT_UPRIGHT    | The percentage of time the tag was upright during the summary period.                                                                                        | %               |
| KNOCKDOWNS         | The number of times the tag was knocked down during the summary period.                                                                                      | 1               |

##### ELECTRONIC_TAG_DATA_HISTOGRAM_META

Metadata for the histogram bins used in the histogram data collected by
tags.

| field       | description                                                                                                                                                  | units |
|:------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------|:------|
| TAG_NUM     | The ID \# of the tag. This may or may not be the same as the number printed on the tag itself.                                                               |       |
| TAG_TYPE    | A 2-3 letter code describing how this tag was deployed. The plain English description of each code type can be found in the TAG_TYPE table in the ABLTAG DB. |       |
| DATA_TYPE   | The type of data described by this bin, e.g. temperature, depth, etc.                                                                                        |       |
| BIN         | The bin number. Bins are numbered from 1 to N, where N is the number of bins in the histogram.                                                               |       |
| UPPER_LIMIT | The upper limit of the bin. The bin is inclusive of this value. The non-inclusive lower limit is defined by the upper-limit of the previous bin.             |       |
| UNITS       | The SI units of the bin data.                                                                                                                                |       |

##### ELECTRONIC_TAG_DATA_HISTOGRAM

Histogram (binned) data collected by tags.

| field              | description                                                                                                                                                  | units |
|:-------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------|:------|
| TAG_NUM            | The ID \# of the tag. This may or may not be the same as the number printed on the tag itself.                                                               |       |
| TAG_TYPE           | A 2-3 letter code describing how this tag was deployed. The plain English description of each code type can be found in the TAG_TYPE table in the ABLTAG DB. |       |
| START_TIME_POSIXCT | The start time of the summary period, expressed as a POSIXct timestamp.                                                                                      |       |
| START_TIME         | The start time of the summary period, expressed as a character string.                                                                                       |       |
| END_TIME_POSIXCT   | The end time of the summary period, expressed as a POSIXct timestamp.                                                                                        |       |
| END_TIME           | The end time of the summary period, expressed as a character string.                                                                                         |       |
| DATA_TYPE          | The type of data described by this histogram, e.g. temperature, depth, etc.                                                                                  |       |
| BIN                | The bin number. Bins are numbered from 1 to N, where N is the number of bins in the histogram.                                                               |       |
| TIME_OFFSET        | Calculated difference between the tag’s clock and the time reported by Argos.                                                                                |       |
| VALUE              | The value of the bin, expressed as the percentage of data points which fell within this bin.                                                                 |       |

##### ELECTRONIC_TAG_DATA_PDT

Profile of Depth and Temperature (PDT) data. Describes temperature
ranges at given depths.

| field              | description                                                                                                                                                                      | units           |
|:-------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------|
| TAG_NUM            | The ID \# of the tag. This may or may not be the same as the number printed on the tag itself.                                                                                   |                 |
| TAG_TYPE           | A 2-3 letter code describing how this tag was deployed. The plain English description of each code type can be found in the TAG_TYPE table in the ABLTAG DB.                     |                 |
| START_TIME_POSIXCT | The start time of the summary period, expressed as a POSIXct timestamp.                                                                                                          |                 |
| START_TIME         | The start time of the summary period, expressed as a character string.                                                                                                           |                 |
| END_TIME_POSIXCT   | The end time of the summary period, expressed as a POSIXct timestamp.                                                                                                            |                 |
| END_TIME           | The end time of the summary period, expressed as a character string.                                                                                                             |                 |
| TIME_OFFSET        | Calculated difference between the tag’s clock and the time reported by Argos.                                                                                                    |                 |
| DEPTH              | The depth at which this series of readings were taken.                                                                                                                           | m               |
| DEPTH_ERROR        | The accuracy of the depth-reading which is related to the resolution of the encoded depth. For example, 4 means the measured depth is within +/- 4 meters of the reported value. | m               |
| TEMP_MIN           | The minimum temperature recorded during the summary period.                                                                                                                      | degrees_Celsius |
| TEMP_MAX           | The maximum temperature recorded during the summary period.                                                                                                                      | degrees_Celsius |
| PCT_DOX            | The % dissolved oxygen at the corresponding depth.                                                                                                                               | %               |
| DISCONTINUITY_FLAG | Flag indicating a discontinuity at this depth. 1 = discontinuity, 0 = no discontinuity.                                                                                          |                 |

##### ELECTRONIC_TAG_TABLE_METADATA

Descriptions of the electronic tag data tables in the ABLTAG database.

| field       | description                            | units |
|:------------|:---------------------------------------|:------|
| TABLE_NAME  | The name of the table.                 |       |
| DESCRIPTION | A plain text description of the table. |       |

##### ELECTRONIC_TAG_FIELD_METADATA

Descriptions of the fields in the electronic tag data tables in the
ABLTAG database.

| field       | description                                        | units |
|:------------|:---------------------------------------------------|:------|
| TABLE_NAME  | The name of the table to which this field belongs. |       |
| FIELD_NAME  | The name of the field.                             |       |
| UNITS       | The SI units of the field.                         |       |
| DESCRIPTION | A plain text description of the field.             |       |

# 13 **Bug Reporting**

The MESA development team appreciates and strongly encourages feedback
on this product. If you are having difficulties with the package, have
suggestions on future improvements, or have any other form of input,
please create an issue on the [GitHub
website](https://github.com/tristan-sebens/metl/issues). Our only
request is that you first take some time to review *existing* issues to
ensure that the challenge you are facing has not already been identified
by other users, to prevent any buildup of duplicate tickets.

# 14 **Disclaimer**

This repository is a scientific product and is not official
communication of the National Oceanic and Atmospheric Administration, or
the United States Department of Commerce. All NOAA GitHub project code
is provided on an ‘as is’ basis and the user assumes responsibility for
its use. Any claims against the Department of Commerce or Department of
Commerce bureaus stemming from the use of this GitHub project will be
governed by all applicable Federal law. Any reference to specific
commercial products, processes, or services by service mark, trademark,
manufacturer, or otherwise, does not constitute or imply their
endorsement, recommendation or favoring by the Department of Commerce.
The Department of Commerce seal and logo, or the seal and logo of a DOC
bureau, shall not be used in any manner to imply endorsement of any
commercial product or activity by DOC or the United States Government.

\# Contact

Tristan N G Sebens, M.S.

NOAA Affiliate - MESA Program

<tristan.sebens@NOAA.gov>

<tristan.ng.sebens@gmail.com>

1(907)-500-5430
