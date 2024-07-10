# Decoder_StarOddi_DST -> /so/dst/sf/JS7977

    Code
      names(decode_op)
    Output
      [1] "meta"    "instant"

---

    Code
      decode_op[["meta"]]
    Output
             MAKE                    MODEL TAG_NUM TAG_TYPE
      1 Star Oddi DST (centi/milli)-(TD/F)    1234 SuperTag

---

    Code
      decode_op[[data_type]]
    Output
      # A tibble: 45,369 x 5
           TIMESTAMP DEPTH TEMPERATURE TAG_NUM TAG_TYPE
               <dbl>   [m]        [°C] <chr>   <chr>   
       1 1468358400.  1.1         24.8 1234    SuperTag
       2 1468362000.  1.58        24.0 1234    SuperTag
       3 1468365600.  1.1         23.4 1234    SuperTag
       4 1468369200.  1.1         23.0 1234    SuperTag
       5 1468372800.  1.1         22.6 1234    SuperTag
       6 1468376400.  0.62        22.4 1234    SuperTag
       7 1468380000.  1.1         22.2 1234    SuperTag
       8 1468383600.  1.58        22.0 1234    SuperTag
       9 1468387200.  1.1         21.9 1234    SuperTag
      10 1468390800.  1.1         21.7 1234    SuperTag
      # i 45,359 more rows

# Decoder_StarOddi_DSTmagnetic -> /so/dst_mag/sf/JS923

    Code
      names(decode_op)
    Output
      [1] "meta"    "instant"

---

    Code
      decode_op[["meta"]]
    Output
             MAKE        MODEL TAG_NUM TAG_TYPE
      1 Star Oddi DST magnetic    1234 SuperTag

---

    Code
      decode_op[[data_type]]
    Output
      # A tibble: 5,381 x 9
          TIMESTAMP DEPTH TEMPERATURE TILT_X TILT_Y INCLINATION MAGNETIC_FIELD_STREN~1
              <dbl>   [m]        [°C]    [°]    [°]         [°]           [nanoteslas]
       1     1.45e9 -12.9        5.44     -6    -22          59                  36445
       2     1.45e9 -13.5        6.08     -6    -27          64                  35631
       3     1.45e9 -12.6        5.97     -7    -28          63                  34923
       4     1.45e9 -12.3        5.76     -6    -25          74                  33458
       5     1.45e9 -13.1        4.83     -8    -27          65                  36081
       6     1.45e9 -12.7        4.46     -7    -24          78                  35266
       7     1.45e9 -13          4.72     -7    -28          88                  31032
       8     1.45e9 -12.2        5.58     -7    -25          79                  31592
       9     1.45e9 -12.9        6.33     -8    -27          82                  30298
      10     1.45e9 -12.8        6.22     -7    -28          78                  29886
      # i 5,371 more rows
      # i abbreviated name: 1: MAGNETIC_FIELD_STRENGTH
      # i 2 more variables: TAG_NUM <chr>, TAG_TYPE <chr>

# Decoder_StarOddi_DSTmagnetic -> /so/dst_mag/sf/JS927

    Code
      names(decode_op)
    Output
      [1] "meta"    "instant"

---

    Code
      decode_op[["meta"]]
    Output
             MAKE        MODEL TAG_NUM TAG_TYPE
      1 Star Oddi DST magnetic    1234 SuperTag

---

    Code
      decode_op[[data_type]]
    Output
      # A tibble: 6,931 x 9
          TIMESTAMP DEPTH TEMPERATURE TILT_X TILT_Y INCLINATION MAGNETIC_FIELD_STREN~1
              <dbl>   [m]        [°C]    [°]    [°]         [°]           [nanoteslas]
       1     1.45e9 -6.35        5.26      1    -69          30                  22626
       2     1.45e9 -6.35        5.91      3    -64          32                  25048
       3     1.45e9 -7.19        5.69      3    -63          30                  24987
       4     1.45e9 -6.35        5.58      4    -62          54                  16588
       5     1.45e9 -6.35        4.45      1    -66          40                  16821
       6     1.45e9 -7.19        4.48      3    -60          45                  20674
       7     1.45e9 -7.19        4.74      2    -64          45                  21829
       8     1.45e9 -5.52        5.69      1    -68          43                  22976
       9     1.45e9 -6.35        6.41      1    -66          48                  19803
      10     1.45e9 -7.19        6.41      2    -65          37                  24011
      # i 6,921 more rows
      # i abbreviated name: 1: MAGNETIC_FIELD_STRENGTH
      # i 2 more variables: TAG_NUM <chr>, TAG_TYPE <chr>

