# METL pipe
#### Marine Ecosystem & Stock Assessment (MESA) Extract Transform Load (ETL) pipe

### Description

`metl` provides a simple interface for users to extract raw sensor data from a variety of different makes/models of marine biological research tags, standardize the format of their output, and load the standardized output into a DB.

### Installation
`metl` can be installed with `devtools`
```
devtools::install_github(<afsc git repo>)
```

### Usage

`metl` assumes that data from individual tags is organized into individual directories. Each directory must contain all data from a single tag, and only data from that tag. However, tag data directories can then be nested in any kind of directory structure.

`metl` currently supports 13 types of tags, the full list can be seen below in "[supported tags](#Supported tags)". However, it also provides functionality by which users can define support for additional tags.

#### Standard use-case
When processing natively supported tags, use the following workflow:
```
# Install and load the package
devtools::install_github("afsc-git-repo")
library(metl)

# Open connection to the target DB
conn = 
  # This example builds an example SQLite test DB, however users can use any
  # connection produced by DBI::dbConnect()
  DBI::dbConnect(
    drv = RSQLite::SQLite(),
    file.path() # Use this to define where the DB should be instantiated
  )

# Define path to the root of the directory tree containing tag data directories 
root = file.path()
# Instantiate a TagProcessor class
tp = TagProcessor(d = root)

# Process directory tree 
tp$process(con = conn) 
```
The TagProcessor class will recusively traverse the directory tree rooted in `root.` Any 'leaf' directory (a directory with no other directories in it) will be considered a tag data directory and will be processed as such. For each tag data directory, the TagProcessor class will attempt to identify the make/model of the tag of origin. If the tag is supported by the package, it should be automatically identified, and the appropriate function applied to extract/standardize the data, and then load it into the DB referenced by `conn`.

At this time `metl` does not create DB tables, so 

After processing, build a report
```
# After processing is complete, build a report
report = tp$build_report()
print(report)
```
This report will detail all of the directories in the directory tree, and the results of processing for each. If a tag data directory was successfully processed the report will show the make/model that was identified. If not, the report will show any errors encountered during processing to help diagnose why a directory is not being processed successfully

### Supported tags
The following tags are currently supported by the package. However, it should be noted that the package has been designed to make adding support for additional tag types to be as simple as possible.

Manufacture  | Model
------------- | -------------
Lotek | LTD 1000
Lotek | LTD 1100
Lotek | LTD 1250
Lotek | LTD 1300
Lotek | LAT 1400
Lotek | LAT 1800
Microwave Telemetry | X-Tag
Star Oddi | DST
Star Oddi | DST milli-F
Star Oddi | DST magnetic
Wildlife Computers | Benthic sPAT
Wildlife Computers | MiniPAT
Desert Star | SeaTag MOD

### Directions for use

##### Supported tags

TagProcessor -> processing directory tree
Code example

##### Unsupported tags

If a tag is not currently supported by `metl`, users can easily construct the necessary functionality to support a novel tag-type







### Contact

Tristan N G Sebens, M.S.

NOAA Affiliate - MESA Program

tristan.sebens@NOAA.gov

tristan.ng.sebens@gmail.com

1(907)-500-5430
