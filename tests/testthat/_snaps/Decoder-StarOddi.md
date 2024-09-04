# Decoder_StarOddi_DST -> /so/dst/sf/JS7977

    Code
      names(decode_op)
    Output
      [1] "meta"       "instant"    "field_meta"

---

    Code
      decode_op[["meta"]]
    Output
             MAKE                    MODEL INSTRUMENT_TYPE TAG_NUM TAG_TYPE
      1 Star Oddi DST (centi/milli)-(TD/F)        archival    1234 SuperTag
        TAG_NUM_SECONDARY TAG_TYPE_SECONDARY SEQ_NUM SPECIES_CODE
      1              5678           UltraTag       1        56789

---

    Code
      decode_op[[data_type]]
    Output
      # A tibble: 45,369 x 6
         TIMESTAMP_POSIXCT DEPTH TEMPERATURE TIMESTAMP                TAG_NUM TAG_TYPE
                     <dbl>   [m]        [°C] <chr>                    <chr>   <chr>   
       1       1468358400.  1.1         24.8 2016-07-12 13:20:00 AKDT 1234    SuperTag
       2       1468362000.  1.58        24.0 2016-07-12 14:20:00 AKDT 1234    SuperTag
       3       1468365600.  1.1         23.4 2016-07-12 15:19:59 AKDT 1234    SuperTag
       4       1468369200.  1.1         23.0 2016-07-12 16:20:00 AKDT 1234    SuperTag
       5       1468372800.  1.1         22.6 2016-07-12 17:20:00 AKDT 1234    SuperTag
       6       1468376400.  0.62        22.4 2016-07-12 18:19:59 AKDT 1234    SuperTag
       7       1468380000.  1.1         22.2 2016-07-12 19:20:00 AKDT 1234    SuperTag
       8       1468383600.  1.58        22.0 2016-07-12 20:20:00 AKDT 1234    SuperTag
       9       1468387200.  1.1         21.9 2016-07-12 21:19:59 AKDT 1234    SuperTag
      10       1468390800.  1.1         21.7 2016-07-12 22:20:00 AKDT 1234    SuperTag
      # i 45,359 more rows

# Decoder_StarOddi_DSTmagnetic -> /so/dst_mag/sf/JS923

    Code
      names(decode_op)
    Output
      [1] "meta"       "instant"    "field_meta"

---

    Code
      decode_op[["meta"]]
    Output
             MAKE        MODEL INSTRUMENT_TYPE TAG_NUM TAG_TYPE TAG_NUM_SECONDARY
      1 Star Oddi DST magnetic        archival    1234 SuperTag              5678
        TAG_TYPE_SECONDARY SEQ_NUM SPECIES_CODE
      1           UltraTag       1        56789

---

    Code
      decode_op[[data_type]]
    Output
      # A tibble: 5,381 x 10
         TIMESTAMP_POSIXCT DEPTH TEMPERATURE TILT_X TILT_Y INCLINATION
                     <dbl>   [m]        [°C]    [°]    [°]         [°]
       1       1449144000  -12.9        5.44     -6    -22          59
       2       1449158400. -13.5        6.08     -6    -27          64
       3       1449172800. -12.6        5.97     -7    -28          63
       4       1449187200  -12.3        5.76     -6    -25          74
       5       1449201600. -13.1        4.83     -8    -27          65
       6       1449216000. -12.7        4.46     -7    -24          78
       7       1449230400  -13          4.72     -7    -28          88
       8       1449244800. -12.2        5.58     -7    -25          79
       9       1449259200. -12.9        6.33     -8    -27          82
      10       1449273600  -12.8        6.22     -7    -28          78
      # i 5,371 more rows
      # i 4 more variables: MAGNETIC_FIELD_STRENGTH [nanoteslas], TIMESTAMP <chr>,
      #   TAG_NUM <chr>, TAG_TYPE <chr>

# Decoder_StarOddi_DSTmagnetic -> /so/dst_mag/sf/JS927

    Code
      names(decode_op)
    Output
      [1] "meta"       "instant"    "field_meta"

---

    Code
      decode_op[["meta"]]
    Output
             MAKE        MODEL INSTRUMENT_TYPE TAG_NUM TAG_TYPE TAG_NUM_SECONDARY
      1 Star Oddi DST magnetic        archival    1234 SuperTag              5678
        TAG_TYPE_SECONDARY SEQ_NUM SPECIES_CODE
      1           UltraTag       1        56789

---

    Code
      decode_op[[data_type]]
    Output
      # A tibble: 6,931 x 10
         TIMESTAMP_POSIXCT DEPTH TEMPERATURE TILT_X TILT_Y INCLINATION
                     <dbl>   [m]        [°C]    [°]    [°]         [°]
       1       1449144000  -6.35        5.26      1    -69          30
       2       1449158400. -6.35        5.91      3    -64          32
       3       1449172800. -7.19        5.69      3    -63          30
       4       1449187200  -6.35        5.58      4    -62          54
       5       1449201600. -6.35        4.45      1    -66          40
       6       1449216000. -7.19        4.48      3    -60          45
       7       1449230400  -7.19        4.74      2    -64          45
       8       1449244800. -5.52        5.69      1    -68          43
       9       1449259200. -6.35        6.41      1    -66          48
      10       1449273600  -7.19        6.41      2    -65          37
      # i 6,921 more rows
      # i 4 more variables: MAGNETIC_FIELD_STRENGTH [nanoteslas], TIMESTAMP <chr>,
      #   TAG_NUM <chr>, TAG_TYPE <chr>

