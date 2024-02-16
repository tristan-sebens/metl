# MESA Tag ETL Pipeline (mesa_tag_etl)

A simple ETL pipeline to compile and consolidate data collected from satellite/archival tags collected from a host of species in and around the Alaska EEZ. The intended purpose of this pipeline is to:
1. Parse/decode the raw datafiles output from the tags, or the immediate products of any software used to extract said data (e.g. tagtalk32). This pipeline is NOT intended to ingest datafiles that have been altered in any way by users.
2. Transform parsed data into a consistant and standardized format.
3. Upload transformed data into a targeted DB, following best possible practices with regards to tabular structure of data. 

### Contact

Tristan N G Sebens, M.S.
NOAA Affiliate - MESA Program
tristan.sebens@NOAA.gov
tristan.ng.sebens@gmail.com
1(907)-500-5430
