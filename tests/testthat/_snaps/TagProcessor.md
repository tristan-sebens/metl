# TagProcessor::num_leaves

    Code
      tp__$num_leaves(tp__$dir_tree__)
    Output
      [1] 27

# TagProcessor::num_decoded

    Code
      tp__$num_decoded(tp__$dir_tree__)
    Output
      [1] 0

# TagProcessor::build_datatree

    Code
      tp__$dir_tree__
    Output
                             levelName
      1  _test_data                   
      2   ¦--Desert Star              
      3   ¦   °--SeaTagMOD            
      4   ¦       °--Sablefish        
      5   ¦--Lotek                    
      6   ¦   ¦--LAT 1400.1800        
      7   ¦   ¦   ¦--Greenland Turbot 
      8   ¦   ¦   ¦   °--383          
      9   ¦   ¦   °--Sablefish        
      10  ¦   ¦       °--1546         
      11  ¦   ¦--LTD 1000.1100.1250   
      12  ¦   ¦   ¦--Lingcod          
      13  ¦   ¦   ¦   ¦--4071         
      14  ¦   ¦   ¦   °--5295         
      15  ¦   ¦   °--Sablefish        
      16  ¦   ¦       ¦--1484         
      17  ¦   ¦       ¦--1486         
      18  ¦   ¦       ¦--4066         
      19  ¦   ¦       °--4067         
      20  ¦   °--LTD 1300             
      21  ¦       ¦--Greenland Turbot 
      22  ¦       ¦   ¦--2466         
      23  ¦       ¦   °--3880         
      24  ¦       °--Lingcod          
      25  ¦           °--3788         
      26  ¦--Microwave Telemetry      
      27  ¦   °--X-Tag                
      28  ¦       ¦--Lingcod          
      29  ¦       ¦   ¦--128305       
      30  ¦       ¦   °--128306       
      31  ¦       °--Rougheye Rockfish
      32  ¦           ¦--117230       
      33  ¦           °--118353       
      34  ¦--Star Oddi                
      35  ¦   ¦--DST magnetic         
      36  ¦   ¦   °--Sablefish        
      37  ¦   ¦       ¦--JS923        
      38  ¦   ¦       °--JS927        
      39  ¦   ¦--DST milli-F          
      40  ¦   ¦   °--Sablefish        
      41  ¦   ¦       ¦--JS1229       
      42  ¦   ¦       °--JS142        
      43  ¦   °--DST                  
      44  ¦       °--Sablefish        
      45  ¦           °--JS7977       
      46  °--Wildlife Computers       
      47      ¦--Benthic sPAT         
      48      ¦   °--Sleeper Shark    
      49      ¦       ¦--175146       
      50      ¦       ¦--175147       
      51      ¦       ¦--175157       
      52      ¦       °--175158       
      53      °--MiniPAT              
      54          °--Sleeper Shark    
      55              ¦--174898       
      56              °--174900       

# TagProcessor::build_report

    Code
      tp__$build_report()
    Output
                                   dir pct_decoded decoded identified_decoder
      1  _test_data                              0      NA               <NA>
      2   ¦--Desert Star                         0      NA               <NA>
      3   ¦   °--SeaTagMOD                       0      NA               <NA>
      4   ¦       °--Sablefish                  NA   FALSE                   
      5   ¦--Lotek                               0      NA               <NA>
      6   ¦   ¦--LAT 1400.1800                   0      NA               <NA>
      7   ¦   ¦   ¦--Greenland Turbot            0      NA               <NA>
      8   ¦   ¦   ¦   °--383                    NA   FALSE                   
      9   ¦   ¦   °--Sablefish                   0      NA               <NA>
      10  ¦   ¦       °--1546                   NA   FALSE                   
      11  ¦   ¦--LTD 1000.1100.1250              0      NA               <NA>
      12  ¦   ¦   ¦--Lingcod                     0      NA               <NA>
      13  ¦   ¦   ¦   ¦--4071                   NA   FALSE                   
      14  ¦   ¦   ¦   °--5295                   NA   FALSE                   
      15  ¦   ¦   °--Sablefish                   0      NA               <NA>
      16  ¦   ¦       ¦--1484                   NA   FALSE                   
      17  ¦   ¦       ¦--1486                   NA   FALSE                   
      18  ¦   ¦       ¦--4066                   NA   FALSE                   
      19  ¦   ¦       °--4067                   NA   FALSE                   
      20  ¦   °--LTD 1300                        0      NA               <NA>
      21  ¦       ¦--Greenland Turbot            0      NA               <NA>
      22  ¦       ¦   ¦--2466                   NA   FALSE                   
      23  ¦       ¦   °--3880                   NA   FALSE                   
      24  ¦       °--Lingcod                     0      NA               <NA>
      25  ¦           °--3788                   NA   FALSE                   
      26  ¦--Microwave Telemetry                 0      NA               <NA>
      27  ¦   °--X-Tag                           0      NA               <NA>
      28  ¦       ¦--Lingcod                     0      NA               <NA>
      29  ¦       ¦   ¦--128305                 NA   FALSE                   
      30  ¦       ¦   °--128306                 NA   FALSE                   
      31  ¦       °--Rougheye Rockfish           0      NA               <NA>
      32  ¦           ¦--117230                 NA   FALSE                   
      33  ¦           °--118353                 NA   FALSE                   
      34  ¦--Star Oddi                           0      NA               <NA>
      35  ¦   ¦--DST magnetic                    0      NA               <NA>
      36  ¦   ¦   °--Sablefish                   0      NA               <NA>
      37  ¦   ¦       ¦--JS923                  NA   FALSE                   
      38  ¦   ¦       °--JS927                  NA   FALSE                   
      39  ¦   ¦--DST milli-F                     0      NA               <NA>
      40  ¦   ¦   °--Sablefish                   0      NA               <NA>
      41  ¦   ¦       ¦--JS1229                 NA   FALSE                   
      42  ¦   ¦       °--JS142                  NA   FALSE                   
      43  ¦   °--DST                             0      NA               <NA>
      44  ¦       °--Sablefish                   0      NA               <NA>
      45  ¦           °--JS7977                 NA   FALSE                   
      46  °--Wildlife Computers                  0      NA               <NA>
      47      ¦--Benthic sPAT                    0      NA               <NA>
      48      ¦   °--Sleeper Shark               0      NA               <NA>
      49      ¦       ¦--175146                 NA   FALSE                   
      50      ¦       ¦--175147                 NA   FALSE                   
      51      ¦       ¦--175157                 NA   FALSE                   
      52      ¦       °--175158                 NA   FALSE                   
      53      °--MiniPAT                         0      NA               <NA>
      54          °--Sleeper Shark               0      NA               <NA>
      55              ¦--174898                 NA   FALSE                   
      56              °--174900                 NA   FALSE                   
         decode_error
      1          <NA>
      2          <NA>
      3          <NA>
      4              
      5          <NA>
      6          <NA>
      7          <NA>
      8              
      9          <NA>
      10             
      11         <NA>
      12         <NA>
      13             
      14             
      15         <NA>
      16             
      17             
      18             
      19             
      20         <NA>
      21         <NA>
      22             
      23             
      24         <NA>
      25             
      26         <NA>
      27         <NA>
      28         <NA>
      29             
      30             
      31         <NA>
      32             
      33             
      34         <NA>
      35         <NA>
      36         <NA>
      37             
      38             
      39         <NA>
      40         <NA>
      41             
      42             
      43         <NA>
      44         <NA>
      45             
      46         <NA>
      47         <NA>
      48         <NA>
      49             
      50             
      51             
      52             
      53         <NA>
      54         <NA>
      55             
      56             

# TagProcessor::add_missing_fields

    Code
      dat3
    Output
                   timestamp        pressure temperature tag_id
      1  2008-05-14 14:04:00  1.450377 [psi]  22.48 [°C]   3880
      2  2008-05-14 14:08:00  0.000000 [psi]  22.35 [°C]   3880
      3  2008-05-14 14:12:00  2.900755 [psi]  22.29 [°C]   3880
      4  2008-05-14 14:16:00  1.450377 [psi]  22.22 [°C]   3880
      5  2008-05-14 14:20:00  1.450377 [psi]  22.29 [°C]   3880
      6  2008-05-14 14:24:00  0.000000 [psi]  22.40 [°C]   3880
      7  2008-05-14 14:28:00  1.450377 [psi]  22.33 [°C]   3880
      8  2008-05-14 14:32:00  1.450377 [psi]  22.29 [°C]   3880
      9  2008-05-14 14:36:00  1.450377 [psi]  22.22 [°C]   3880
      10 2008-05-14 14:40:00  0.000000 [psi]  22.16 [°C]   3880
      11 2008-05-14 14:44:00  0.000000 [psi]  22.14 [°C]   3880
      12 2008-05-14 14:48:00  0.000000 [psi]  22.07 [°C]   3880
      13 2008-05-14 14:52:00  0.000000 [psi]  22.03 [°C]   3880
      14 2008-05-14 14:56:00  0.000000 [psi]  21.98 [°C]   3880
      15 2008-05-14 15:00:00  0.000000 [psi]  21.92 [°C]   3880
      16 2008-05-14 15:04:00  0.000000 [psi]  21.89 [°C]   3880
      17 2008-05-14 15:08:00  0.000000 [psi]  21.83 [°C]   3880
      18 2008-05-14 15:12:00  0.000000 [psi]  21.72 [°C]   3880
      19 2008-05-14 15:16:00  0.000000 [psi]  21.68 [°C]   3880
      20 2008-05-14 15:20:00  0.000000 [psi]  21.61 [°C]   3880
      21 2008-05-14 15:24:00  0.000000 [psi]  21.57 [°C]   3880
      22 2008-05-14 15:28:00  0.000000 [psi]  21.83 [°C]   3880
      23 2008-05-14 15:32:00  0.000000 [psi]  21.96 [°C]   3880
      24 2008-05-14 15:36:00  0.000000 [psi]  21.87 [°C]   3880
      25 2008-05-14 15:40:00  0.000000 [psi]  21.81 [°C]   3880
      26 2008-05-14 15:44:00  0.000000 [psi]  21.76 [°C]   3880
      27 2008-05-14 15:48:00  0.000000 [psi]  21.72 [°C]   3880
      28 2008-05-14 15:52:00  0.000000 [psi]  21.63 [°C]   3880
      29 2008-05-14 15:56:00  0.000000 [psi]  21.61 [°C]   3880
      30 2008-05-14 16:00:00  0.000000 [psi]  21.79 [°C]   3880
      31 2008-05-14 16:04:00  0.000000 [psi]  21.79 [°C]   3880
      32 2008-05-14 16:08:00  0.000000 [psi]  21.79 [°C]   3880
      33 2008-05-14 16:12:00  0.000000 [psi]  21.76 [°C]   3880
      34 2008-05-14 16:16:00  0.000000 [psi]  21.70 [°C]   3880
      35 2008-05-14 16:20:00  0.000000 [psi]  21.65 [°C]   3880
      36 2008-05-14 16:24:00 -1.450377 [psi]  21.59 [°C]   3880
      37 2008-05-14 16:28:00  0.000000 [psi]  21.57 [°C]   3880
      38 2008-05-14 16:32:00  0.000000 [psi]  21.52 [°C]   3880
      39 2008-05-14 16:36:00  0.000000 [psi]  21.48 [°C]   3880
      40 2008-05-14 16:40:00  0.000000 [psi]  21.46 [°C]   3880
      41 2008-05-14 16:44:00  0.000000 [psi]  21.46 [°C]   3880
      42 2008-05-14 16:48:00  0.000000 [psi]  21.43 [°C]   3880
      43 2008-05-14 16:52:00  0.000000 [psi]  21.41 [°C]   3880
      44 2008-05-14 16:56:00  0.000000 [psi]  21.39 [°C]   3880
      45 2008-05-14 17:00:00  0.000000 [psi]  21.39 [°C]   3880
      46 2008-05-14 17:04:00  0.000000 [psi]  21.37 [°C]   3880
      47 2008-05-14 17:08:00  0.000000 [psi]  21.35 [°C]   3880
      48 2008-05-14 17:12:00  0.000000 [psi]  21.37 [°C]   3880
      49 2008-05-14 17:16:00  1.450377 [psi]  21.33 [°C]   3880
      50 2008-05-14 17:20:00  1.450377 [psi]  21.33 [°C]   3880
      51 2008-05-14 17:24:00  1.450377 [psi]  21.30 [°C]   3880
      52 2008-05-14 17:28:00  1.450377 [psi]  21.30 [°C]   3880
      53 2008-05-14 17:32:00  1.450377 [psi]  21.26 [°C]   3880
      54 2008-05-14 17:36:00  0.000000 [psi]  21.28 [°C]   3880
      55 2008-05-14 17:40:00  0.000000 [psi]  21.26 [°C]   3880
      56 2008-05-14 17:44:00  1.450377 [psi]  21.24 [°C]   3880
      57 2008-05-14 17:48:00  0.000000 [psi]  21.19 [°C]   3880
      58 2008-05-14 17:52:00  1.450377 [psi]  21.08 [°C]   3880
      59 2008-05-14 17:56:00  1.450377 [psi]  20.87 [°C]   3880
      60 2008-05-14 18:00:00  1.450377 [psi]  20.65 [°C]   3880
      61 2008-05-14 18:04:00 -1.450377 [psi]  20.37 [°C]   3880
      62 2008-05-14 18:08:00  2.900755 [psi]  20.07 [°C]   3880
      63 2008-05-14 18:12:00  0.000000 [psi]  19.74 [°C]   3880
      64 2008-05-14 18:16:00  0.000000 [psi]  19.40 [°C]   3880
      65 2008-05-14 18:20:00  1.450377 [psi]  19.08 [°C]   3880
      66 2008-05-14 18:24:00  1.450377 [psi]  18.73 [°C]   3880
      67 2008-05-14 18:28:00  0.000000 [psi]  18.39 [°C]   3880
      68 2008-05-14 18:32:00  1.450377 [psi]  18.05 [°C]   3880
      69 2008-05-14 18:36:00  0.000000 [psi]  17.73 [°C]   3880
      70 2008-05-14 18:40:00  0.000000 [psi]  17.38 [°C]   3880
      71 2008-05-14 18:44:00  1.450377 [psi]  17.06 [°C]   3880
      72 2008-05-14 18:48:00  1.450377 [psi]  16.76 [°C]   3880
      73 2008-05-14 18:52:00  0.000000 [psi]  16.45 [°C]   3880
      74 2008-05-14 18:56:00  0.000000 [psi]  16.17 [°C]   3880
      75 2008-05-14 19:00:00  1.450377 [psi]  15.87 [°C]   3880
      76 2008-05-14 19:04:00  1.450377 [psi]  15.59 [°C]   3880
      77 2008-05-14 19:08:00  1.450377 [psi]  15.34 [°C]   3880
      78 2008-05-14 19:12:00  1.450377 [psi]  15.10 [°C]   3880
      79 2008-05-14 19:16:00  2.900755 [psi]  14.89 [°C]   3880
      80 2008-05-14 19:20:00  1.450377 [psi]  14.70 [°C]   3880
      81 2008-05-14 19:24:00  1.450377 [psi]  14.53 [°C]   3880
      82 2008-05-14 19:28:00  1.450377 [psi]  14.38 [°C]   3880
      83 2008-05-14 19:32:00  1.450377 [psi]  14.23 [°C]   3880
      84 2008-05-14 19:36:00  0.000000 [psi]  14.10 [°C]   3880
      85 2008-05-14 19:40:00  0.000000 [psi]  13.97 [°C]   3880
      86 2008-05-14 19:44:00  0.000000 [psi]  13.87 [°C]   3880
      87 2008-05-14 19:48:00  1.450377 [psi]  13.76 [°C]   3880
      88 2008-05-14 19:52:00  1.450377 [psi]  13.66 [°C]   3880
      89 2008-05-14 19:56:00  1.450377 [psi]  13.55 [°C]   3880
      90 2008-05-14 20:00:00  1.450377 [psi]  13.45 [°C]   3880
      91 2008-05-14 20:04:00  0.000000 [psi]  13.32 [°C]   3880
      92 2008-05-14 20:08:00  1.450377 [psi]  13.19 [°C]   3880
      93 2008-05-14 20:12:00  1.450377 [psi]  13.09 [°C]   3880
      94 2008-05-14 20:16:00  1.450377 [psi]  12.96 [°C]   3880
      95 2008-05-14 20:20:00  1.450377 [psi]  12.79 [°C]   3880
      96 2008-05-14 20:24:00  1.450377 [psi]  12.59 [°C]   3880
      97 2008-05-14 20:28:00  2.900755 [psi]  12.42 [°C]   3880
      98 2008-05-14 20:32:00  2.900755 [psi]  12.21 [°C]   3880
      99 2008-05-14 20:36:00  1.450377 [psi]  12.01 [°C]   3880

# TagProcessor::complete_dataframes

    Code
      metadata_c
    Output
        tag_id                make model
      1 118353 Microwave Telemetry X-Tag

---

    Code
      instant_data_c
    Output
                     timestamp          depth location_type latitude longitude
      1    2013-09-06 00:00:00 244.766340 [m]     SATELLITE       NA        NA
      2    2013-09-06 00:15:00         NA [m]     SATELLITE       NA        NA
      3    2013-09-06 00:30:00         NA [m]     SATELLITE       NA        NA
      4    2013-09-06 00:45:00 244.766340 [m]     SATELLITE       NA        NA
      5    2013-09-06 01:00:00 244.766340 [m]     SATELLITE       NA        NA
      6    2013-09-06 01:15:00         NA [m]     SATELLITE       NA        NA
      7    2013-09-06 01:30:00         NA [m]     SATELLITE       NA        NA
      8    2013-09-06 01:45:00 242.076600 [m]     SATELLITE       NA        NA
      9    2013-09-06 02:00:00 240.731730 [m]     SATELLITE       NA        NA
      10   2013-09-06 02:15:00         NA [m]     SATELLITE       NA        NA
      11   2013-09-06 02:30:00         NA [m]     SATELLITE       NA        NA
      12   2013-09-06 02:45:00 239.386860 [m]     SATELLITE       NA        NA
      13   2013-09-06 03:00:00 238.041990 [m]     SATELLITE       NA        NA
      14   2013-09-06 03:15:00         NA [m]     SATELLITE       NA        NA
      15   2013-09-06 03:30:00         NA [m]     SATELLITE       NA        NA
      16   2013-09-06 03:45:00 235.352250 [m]     SATELLITE       NA        NA
      17   2013-09-06 04:00:00 238.041990 [m]     SATELLITE       NA        NA
      18   2013-09-06 04:15:00         NA [m]     SATELLITE       NA        NA
      19   2013-09-06 04:30:00         NA [m]     SATELLITE       NA        NA
      20   2013-09-06 04:45:00 239.386860 [m]     SATELLITE       NA        NA
      21   2013-09-06 05:00:00 240.731730 [m]     SATELLITE       NA        NA
      22   2013-09-06 05:15:00         NA [m]     SATELLITE       NA        NA
      23   2013-09-06 05:30:00         NA [m]     SATELLITE       NA        NA
      24   2013-09-06 05:45:00 244.766340 [m]     SATELLITE       NA        NA
      25   2013-09-06 06:00:00 239.386860 [m]     SATELLITE       NA        NA
      26   2013-09-06 06:15:00         NA [m]     SATELLITE       NA        NA
      27   2013-09-06 06:30:00         NA [m]     SATELLITE       NA        NA
      28   2013-09-06 06:45:00 246.111210 [m]     SATELLITE       NA        NA
      29   2013-09-06 07:00:00 246.111210 [m]     SATELLITE       NA        NA
      30   2013-09-06 07:15:00         NA [m]     SATELLITE       NA        NA
      31   2013-09-06 07:30:00         NA [m]     SATELLITE       NA        NA
      32   2013-09-06 07:45:00 246.111210 [m]     SATELLITE       NA        NA
      33   2013-09-06 08:00:00 246.111210 [m]     SATELLITE       NA        NA
      34   2013-09-06 08:15:00         NA [m]     SATELLITE       NA        NA
      35   2013-09-06 08:30:00         NA [m]     SATELLITE       NA        NA
      36   2013-09-06 08:45:00 247.456080 [m]     SATELLITE       NA        NA
      37   2013-09-06 09:00:00 247.456080 [m]     SATELLITE       NA        NA
      38   2013-09-06 09:15:00         NA [m]     SATELLITE       NA        NA
      39   2013-09-06 09:30:00         NA [m]     SATELLITE       NA        NA
      40   2013-09-06 09:45:00 244.766340 [m]     SATELLITE       NA        NA
      41   2013-09-06 10:00:00 243.421470 [m]     SATELLITE       NA        NA
      42   2013-09-06 10:15:00         NA [m]     SATELLITE       NA        NA
      43   2013-09-06 10:30:00         NA [m]     SATELLITE       NA        NA
      44   2013-09-06 10:45:00 243.421470 [m]     SATELLITE       NA        NA
      45   2013-09-06 11:00:00 242.076600 [m]     SATELLITE       NA        NA
      46   2013-09-06 11:15:00         NA [m]     SATELLITE       NA        NA
      47   2013-09-06 11:30:00         NA [m]     SATELLITE       NA        NA
      48   2013-09-06 11:45:00 242.076600 [m]     SATELLITE       NA        NA
      49   2013-09-06 12:00:00 242.076600 [m]     SATELLITE       NA        NA
      50   2013-09-06 12:15:00         NA [m]     SATELLITE       NA        NA
      51   2013-09-06 12:30:00         NA [m]     SATELLITE       NA        NA
      52   2013-09-06 12:45:00 242.076600 [m]     SATELLITE       NA        NA
      53   2013-09-06 13:00:00 242.076600 [m]     SATELLITE       NA        NA
      54   2013-09-06 13:15:00         NA [m]     SATELLITE       NA        NA
      55   2013-09-06 13:30:00         NA [m]     SATELLITE       NA        NA
      56   2013-09-06 13:45:00 240.731730 [m]     SATELLITE       NA        NA
      57   2013-09-06 14:00:00 239.386860 [m]     SATELLITE       NA        NA
      58   2013-09-06 14:15:00         NA [m]     SATELLITE       NA        NA
      59   2013-09-06 14:30:00         NA [m]     SATELLITE       NA        NA
      60   2013-09-06 14:45:00 239.386860 [m]     SATELLITE       NA        NA
      61   2013-09-06 15:00:00 239.386860 [m]     SATELLITE       NA        NA
      62   2013-09-06 15:15:00         NA [m]     SATELLITE       NA        NA
      63   2013-09-06 15:30:00         NA [m]     SATELLITE       NA        NA
      64   2013-09-06 15:45:00 239.386860 [m]     SATELLITE       NA        NA
      65   2013-09-06 16:00:00 239.386860 [m]     SATELLITE       NA        NA
      66   2013-09-06 16:15:00         NA [m]     SATELLITE       NA        NA
      67   2013-09-06 16:30:00         NA [m]     SATELLITE       NA        NA
      68   2013-09-06 16:45:00 239.386860 [m]     SATELLITE       NA        NA
      69   2013-09-06 17:00:00 239.386860 [m]     SATELLITE       NA        NA
      70   2013-09-06 17:15:00         NA [m]     SATELLITE       NA        NA
      71   2013-09-06 17:30:00         NA [m]     SATELLITE       NA        NA
      72   2013-09-06 17:45:00 239.386860 [m]     SATELLITE       NA        NA
      73   2013-09-06 18:00:00 239.386860 [m]     SATELLITE       NA        NA
      74   2013-09-06 18:15:00         NA [m]     SATELLITE       NA        NA
      75   2013-09-06 18:30:00         NA [m]     SATELLITE       NA        NA
      76   2013-09-06 18:45:00 240.731730 [m]     SATELLITE       NA        NA
      77   2013-09-06 19:00:00 240.731730 [m]     SATELLITE       NA        NA
      78   2013-09-06 19:15:00         NA [m]     SATELLITE       NA        NA
      79   2013-09-06 19:30:00         NA [m]     SATELLITE       NA        NA
      80   2013-09-06 19:45:00 240.731730 [m]     SATELLITE       NA        NA
      81   2013-09-06 20:00:00 242.076600 [m]     SATELLITE       NA        NA
      82   2013-09-06 20:15:00         NA [m]     SATELLITE       NA        NA
      83   2013-09-06 20:30:00         NA [m]     SATELLITE       NA        NA
      84   2013-09-06 20:45:00 242.076600 [m]     SATELLITE       NA        NA
      85   2013-09-06 21:00:00 242.076600 [m]     SATELLITE       NA        NA
      86   2013-09-06 21:15:00         NA [m]     SATELLITE       NA        NA
      87   2013-09-06 21:30:00         NA [m]     SATELLITE       NA        NA
      88   2013-09-06 21:45:00 242.076600 [m]     SATELLITE       NA        NA
      89   2013-09-06 22:00:00 242.076600 [m]     SATELLITE       NA        NA
      90   2013-09-06 22:15:00         NA [m]     SATELLITE       NA        NA
      91   2013-09-06 22:30:00         NA [m]     SATELLITE       NA        NA
      92   2013-09-06 22:45:00 243.421470 [m]     SATELLITE       NA        NA
      93   2013-09-06 23:00:00 243.421470 [m]     SATELLITE       NA        NA
      94   2013-09-06 23:15:00         NA [m]     SATELLITE       NA        NA
      95   2013-09-06 23:30:00         NA [m]     SATELLITE       NA        NA
      96   2013-09-06 23:45:00 242.076600 [m]     SATELLITE       NA        NA
      97   2013-09-07 00:00:00 242.076600 [m]     SATELLITE       NA        NA
      98   2013-09-07 00:15:00 242.076600 [m]     SATELLITE       NA        NA
      99   2013-09-07 00:45:00 242.076600 [m]     SATELLITE       NA        NA
      100  2013-09-07 01:00:00 242.076600 [m]     SATELLITE       NA        NA
      101  2013-09-07 01:15:00 240.731730 [m]     SATELLITE       NA        NA
      102  2013-09-07 01:45:00 240.731730 [m]     SATELLITE       NA        NA
      103  2013-09-07 02:00:00 240.731730 [m]     SATELLITE       NA        NA
      104  2013-09-07 02:15:00 240.731730 [m]     SATELLITE       NA        NA
      105  2013-09-07 02:45:00 239.386860 [m]     SATELLITE       NA        NA
      106  2013-09-07 03:00:00 239.386860 [m]     SATELLITE       NA        NA
      107  2013-09-07 03:15:00 239.386860 [m]     SATELLITE       NA        NA
      108  2013-09-07 03:45:00 239.386860 [m]     SATELLITE       NA        NA
      109  2013-09-07 04:00:00 239.386860 [m]     SATELLITE       NA        NA
      110  2013-09-07 04:15:00 239.386860 [m]     SATELLITE       NA        NA
      111  2013-09-07 04:45:00 239.386860 [m]     SATELLITE       NA        NA
      112  2013-09-07 05:00:00 239.386860 [m]     SATELLITE       NA        NA
      113  2013-09-07 05:15:00 239.386860 [m]     SATELLITE       NA        NA
      114  2013-09-07 05:45:00 239.386860 [m]     SATELLITE       NA        NA
      115  2013-09-07 06:00:00 239.386860 [m]     SATELLITE       NA        NA
      116  2013-09-07 06:15:00 240.731730 [m]     SATELLITE       NA        NA
      117  2013-09-07 06:45:00 240.731730 [m]     SATELLITE       NA        NA
      118  2013-09-07 07:00:00 240.731730 [m]     SATELLITE       NA        NA
      119  2013-09-07 07:15:00 240.731730 [m]     SATELLITE       NA        NA
      120  2013-09-07 07:45:00 242.076600 [m]     SATELLITE       NA        NA
      121  2013-09-07 08:00:00 242.076600 [m]     SATELLITE       NA        NA
      122  2013-09-07 08:15:00 242.076600 [m]     SATELLITE       NA        NA
      123  2013-09-07 08:45:00 242.076600 [m]     SATELLITE       NA        NA
      124  2013-09-07 09:00:00 242.076600 [m]     SATELLITE       NA        NA
      125  2013-09-07 09:15:00 242.076600 [m]     SATELLITE       NA        NA
      126  2013-09-07 09:45:00 243.421470 [m]     SATELLITE       NA        NA
      127  2013-09-07 10:00:00 243.421470 [m]     SATELLITE       NA        NA
      128  2013-09-07 10:15:00 243.421470 [m]     SATELLITE       NA        NA
      129  2013-09-07 10:45:00 243.421470 [m]     SATELLITE       NA        NA
      130  2013-09-07 11:00:00 243.421470 [m]     SATELLITE       NA        NA
      131  2013-09-07 11:15:00 243.421470 [m]     SATELLITE       NA        NA
      132  2013-09-07 11:45:00 243.421470 [m]     SATELLITE       NA        NA
      133  2013-09-07 12:00:00 242.076600 [m]     SATELLITE       NA        NA
      134  2013-09-07 12:15:00 242.076600 [m]     SATELLITE       NA        NA
      135  2013-09-07 12:45:00 242.076600 [m]     SATELLITE       NA        NA
      136  2013-09-07 13:00:00 242.076600 [m]     SATELLITE       NA        NA
      137  2013-09-07 13:15:00 242.076600 [m]     SATELLITE       NA        NA
      138  2013-09-07 13:45:00 240.731730 [m]     SATELLITE       NA        NA
      139  2013-09-07 14:00:00 240.731730 [m]     SATELLITE       NA        NA
      140  2013-09-07 14:15:00 240.731730 [m]     SATELLITE       NA        NA
      141  2013-09-07 14:45:00 240.731730 [m]     SATELLITE       NA        NA
      142  2013-09-07 15:00:00 240.731730 [m]     SATELLITE       NA        NA
      143  2013-09-07 15:15:00 239.386860 [m]     SATELLITE       NA        NA
      144  2013-09-07 15:45:00 239.386860 [m]     SATELLITE       NA        NA
      145  2013-09-07 16:00:00 239.386860 [m]     SATELLITE       NA        NA
      146  2013-09-07 16:15:00 239.386860 [m]     SATELLITE       NA        NA
      147  2013-09-07 16:45:00 239.386860 [m]     SATELLITE       NA        NA
      148  2013-09-07 17:00:00 239.386860 [m]     SATELLITE       NA        NA
      149  2013-09-07 17:15:00 239.386860 [m]     SATELLITE       NA        NA
      150  2013-09-07 17:45:00 240.731730 [m]     SATELLITE       NA        NA
      151  2013-09-07 18:00:00 240.731730 [m]     SATELLITE       NA        NA
      152  2013-09-07 18:15:00 240.731730 [m]     SATELLITE       NA        NA
      153  2013-09-07 18:45:00 240.731730 [m]     SATELLITE       NA        NA
      154  2013-09-07 19:00:00 240.731730 [m]     SATELLITE       NA        NA
      155  2013-09-07 19:15:00 240.731730 [m]     SATELLITE       NA        NA
      156  2013-09-07 19:45:00 242.076600 [m]     SATELLITE       NA        NA
      157  2013-09-07 20:00:00 242.076600 [m]     SATELLITE       NA        NA
      158  2013-09-07 20:15:00 242.076600 [m]     SATELLITE       NA        NA
      159  2013-09-07 20:45:00 243.421470 [m]     SATELLITE       NA        NA
      160  2013-09-07 21:00:00 243.421470 [m]     SATELLITE       NA        NA
      161  2013-09-07 21:15:00 243.421470 [m]     SATELLITE       NA        NA
      162  2013-09-07 21:45:00 243.421470 [m]     SATELLITE       NA        NA
      163  2013-09-07 22:00:00 243.421470 [m]     SATELLITE       NA        NA
      164  2013-09-07 22:15:00 243.421470 [m]     SATELLITE       NA        NA
      165  2013-09-07 22:45:00 243.421470 [m]     SATELLITE       NA        NA
      166  2013-09-07 23:00:00 243.421470 [m]     SATELLITE       NA        NA
      167  2013-09-07 23:15:00 243.421470 [m]     SATELLITE       NA        NA
      168  2013-09-07 23:45:00 243.421470 [m]     SATELLITE       NA        NA
      169  2013-09-08 00:00:00 243.421470 [m]     SATELLITE       NA        NA
      170  2013-09-08 00:15:00 243.421470 [m]     SATELLITE       NA        NA
      171  2013-09-08 00:30:00         NA [m]     SATELLITE       NA        NA
      172  2013-09-08 01:00:00 243.421470 [m]     SATELLITE       NA        NA
      173  2013-09-08 01:15:00 242.076600 [m]     SATELLITE       NA        NA
      174  2013-09-08 01:30:00         NA [m]     SATELLITE       NA        NA
      175  2013-09-08 02:00:00 242.076600 [m]     SATELLITE       NA        NA
      176  2013-09-08 02:15:00 242.076600 [m]     SATELLITE       NA        NA
      177  2013-09-08 02:30:00         NA [m]     SATELLITE       NA        NA
      178  2013-09-08 03:00:00 240.731730 [m]     SATELLITE       NA        NA
      179  2013-09-08 03:15:00 240.731730 [m]     SATELLITE       NA        NA
      180  2013-09-08 03:30:00         NA [m]     SATELLITE       NA        NA
      181  2013-09-08 04:00:00 240.731730 [m]     SATELLITE       NA        NA
      182  2013-09-08 04:15:00 240.731730 [m]     SATELLITE       NA        NA
      183  2013-09-08 04:30:00         NA [m]     SATELLITE       NA        NA
      184  2013-09-08 05:00:00 239.386860 [m]     SATELLITE       NA        NA
      185  2013-09-08 05:15:00 239.386860 [m]     SATELLITE       NA        NA
      186  2013-09-08 05:30:00         NA [m]     SATELLITE       NA        NA
      187  2013-09-08 06:00:00 240.731730 [m]     SATELLITE       NA        NA
      188  2013-09-08 06:15:00 240.731730 [m]     SATELLITE       NA        NA
      189  2013-09-08 06:30:00         NA [m]     SATELLITE       NA        NA
      190  2013-09-08 07:00:00 240.731730 [m]     SATELLITE       NA        NA
      191  2013-09-08 07:15:00 240.731730 [m]     SATELLITE       NA        NA
      192  2013-09-08 07:30:00         NA [m]     SATELLITE       NA        NA
      193  2013-09-08 08:00:00 242.076600 [m]     SATELLITE       NA        NA
      194  2013-09-08 08:15:00 242.076600 [m]     SATELLITE       NA        NA
      195  2013-09-08 08:30:00         NA [m]     SATELLITE       NA        NA
      196  2013-09-08 09:00:00 242.076600 [m]     SATELLITE       NA        NA
      197  2013-09-08 09:15:00 243.421470 [m]     SATELLITE       NA        NA
      198  2013-09-08 09:30:00         NA [m]     SATELLITE       NA        NA
      199  2013-09-08 10:00:00 243.421470 [m]     SATELLITE       NA        NA
      200  2013-09-08 10:15:00 243.421470 [m]     SATELLITE       NA        NA
      201  2013-09-08 10:30:00         NA [m]     SATELLITE       NA        NA
      202  2013-09-08 11:00:00 243.421470 [m]     SATELLITE       NA        NA
      203  2013-09-08 11:15:00 243.421470 [m]     SATELLITE       NA        NA
      204  2013-09-08 11:30:00         NA [m]     SATELLITE       NA        NA
      205  2013-09-08 12:00:00 243.421470 [m]     SATELLITE       NA        NA
      206  2013-09-08 12:15:00 243.421470 [m]     SATELLITE       NA        NA
      207  2013-09-08 12:30:00         NA [m]     SATELLITE       NA        NA
      208  2013-09-08 13:00:00 242.076600 [m]     SATELLITE       NA        NA
      209  2013-09-08 13:15:00 242.076600 [m]     SATELLITE       NA        NA
      210  2013-09-08 13:30:00         NA [m]     SATELLITE       NA        NA
      211  2013-09-08 14:00:00 242.076600 [m]     SATELLITE       NA        NA
      212  2013-09-08 14:15:00 242.076600 [m]     SATELLITE       NA        NA
      213  2013-09-08 14:30:00         NA [m]     SATELLITE       NA        NA
      214  2013-09-08 15:00:00 240.731730 [m]     SATELLITE       NA        NA
      215  2013-09-08 15:15:00 240.731730 [m]     SATELLITE       NA        NA
      216  2013-09-08 15:30:00         NA [m]     SATELLITE       NA        NA
      217  2013-09-08 16:00:00 240.731730 [m]     SATELLITE       NA        NA
      218  2013-09-08 16:15:00 240.731730 [m]     SATELLITE       NA        NA
      219  2013-09-08 16:30:00         NA [m]     SATELLITE       NA        NA
      220  2013-09-08 17:00:00 239.386860 [m]     SATELLITE       NA        NA
      221  2013-09-08 17:15:00 239.386860 [m]     SATELLITE       NA        NA
      222  2013-09-08 17:30:00         NA [m]     SATELLITE       NA        NA
      223  2013-09-08 18:00:00 240.731730 [m]     SATELLITE       NA        NA
      224  2013-09-08 18:15:00 240.731730 [m]     SATELLITE       NA        NA
      225  2013-09-08 18:30:00         NA [m]     SATELLITE       NA        NA
      226  2013-09-08 19:00:00 240.731730 [m]     SATELLITE       NA        NA
      227  2013-09-08 19:15:00 240.731730 [m]     SATELLITE       NA        NA
      228  2013-09-08 19:30:00         NA [m]     SATELLITE       NA        NA
      229  2013-09-08 20:00:00 242.076600 [m]     SATELLITE       NA        NA
      230  2013-09-08 20:15:00 242.076600 [m]     SATELLITE       NA        NA
      231  2013-09-08 20:30:00         NA [m]     SATELLITE       NA        NA
      232  2013-09-08 21:00:00 242.076600 [m]     SATELLITE       NA        NA
      233  2013-09-08 21:15:00 243.421470 [m]     SATELLITE       NA        NA
      234  2013-09-08 21:30:00         NA [m]     SATELLITE       NA        NA
      235  2013-09-08 22:00:00 243.421470 [m]     SATELLITE       NA        NA
      236  2013-09-08 22:15:00 243.421470 [m]     SATELLITE       NA        NA
      237  2013-09-08 22:30:00         NA [m]     SATELLITE       NA        NA
      238  2013-09-08 23:00:00 243.421470 [m]     SATELLITE       NA        NA
      239  2013-09-08 23:15:00 243.421470 [m]     SATELLITE       NA        NA
      240  2013-09-08 23:30:00         NA [m]     SATELLITE       NA        NA
      241  2013-09-09 00:15:00 243.421470 [m]     SATELLITE       NA        NA
      242  2013-09-09 00:45:00         NA [m]     SATELLITE       NA        NA
      243  2013-09-09 01:15:00 243.421470 [m]     SATELLITE       NA        NA
      244  2013-09-09 01:45:00         NA [m]     SATELLITE       NA        NA
      245  2013-09-09 02:15:00 242.076600 [m]     SATELLITE       NA        NA
      246  2013-09-09 02:45:00         NA [m]     SATELLITE       NA        NA
      247  2013-09-09 03:15:00 240.731730 [m]     SATELLITE       NA        NA
      248  2013-09-09 03:45:00         NA [m]     SATELLITE       NA        NA
      249  2013-09-09 04:15:00 240.731730 [m]     SATELLITE       NA        NA
      250  2013-09-09 04:45:00         NA [m]     SATELLITE       NA        NA
      251  2013-09-09 05:15:00 240.731730 [m]     SATELLITE       NA        NA
      252  2013-09-09 05:45:00         NA [m]     SATELLITE       NA        NA
      253  2013-09-09 06:15:00 240.731730 [m]     SATELLITE       NA        NA
      254  2013-09-09 06:45:00         NA [m]     SATELLITE       NA        NA
      255  2013-09-09 07:15:00 240.731730 [m]     SATELLITE       NA        NA
      256  2013-09-09 07:45:00         NA [m]     SATELLITE       NA        NA
      257  2013-09-09 08:15:00 242.076600 [m]     SATELLITE       NA        NA
      258  2013-09-09 08:45:00         NA [m]     SATELLITE       NA        NA
      259  2013-09-09 09:15:00 242.076600 [m]     SATELLITE       NA        NA
      260  2013-09-09 09:45:00         NA [m]     SATELLITE       NA        NA
      261  2013-09-09 10:15:00 243.421470 [m]     SATELLITE       NA        NA
      262  2013-09-09 10:45:00         NA [m]     SATELLITE       NA        NA
      263  2013-09-09 11:15:00 243.421470 [m]     SATELLITE       NA        NA
      264  2013-09-09 11:45:00         NA [m]     SATELLITE       NA        NA
      265  2013-09-09 12:15:00 243.421470 [m]     SATELLITE       NA        NA
      266  2013-09-09 12:45:00         NA [m]     SATELLITE       NA        NA
      267  2013-09-09 13:15:00 243.421470 [m]     SATELLITE       NA        NA
      268  2013-09-09 13:45:00         NA [m]     SATELLITE       NA        NA
      269  2013-09-09 14:15:00 242.076600 [m]     SATELLITE       NA        NA
      270  2013-09-09 14:45:00         NA [m]     SATELLITE       NA        NA
      271  2013-09-09 15:15:00 242.076600 [m]     SATELLITE       NA        NA
      272  2013-09-09 15:45:00         NA [m]     SATELLITE       NA        NA
      273  2013-09-09 16:15:00 240.731730 [m]     SATELLITE       NA        NA
      274  2013-09-09 16:45:00         NA [m]     SATELLITE       NA        NA
      275  2013-09-09 17:15:00 240.731730 [m]     SATELLITE       NA        NA
      276  2013-09-09 17:45:00         NA [m]     SATELLITE       NA        NA
      277  2013-09-09 18:15:00 240.731730 [m]     SATELLITE       NA        NA
      278  2013-09-09 18:45:00         NA [m]     SATELLITE       NA        NA
      279  2013-09-09 19:15:00 240.731730 [m]     SATELLITE       NA        NA
      280  2013-09-09 19:45:00         NA [m]     SATELLITE       NA        NA
      281  2013-09-09 20:15:00 242.076600 [m]     SATELLITE       NA        NA
      282  2013-09-09 20:45:00         NA [m]     SATELLITE       NA        NA
      283  2013-09-09 21:15:00 242.076600 [m]     SATELLITE       NA        NA
      284  2013-09-09 21:45:00         NA [m]     SATELLITE       NA        NA
      285  2013-09-09 22:15:00 243.421470 [m]     SATELLITE       NA        NA
      286  2013-09-09 22:45:00         NA [m]     SATELLITE       NA        NA
      287  2013-09-09 23:15:00 243.421470 [m]     SATELLITE       NA        NA
      288  2013-09-09 23:45:00         NA [m]     SATELLITE       NA        NA
      289  2013-09-10 00:00:00         NA [m]     SATELLITE       NA        NA
      290  2013-09-10 00:15:00         NA [m]     SATELLITE       NA        NA
      291  2013-09-10 00:30:00 243.421470 [m]     SATELLITE       NA        NA
      292  2013-09-10 01:00:00         NA [m]     SATELLITE       NA        NA
      293  2013-09-10 01:15:00         NA [m]     SATELLITE       NA        NA
      294  2013-09-10 01:30:00 243.421470 [m]     SATELLITE       NA        NA
      295  2013-09-10 02:00:00         NA [m]     SATELLITE       NA        NA
      296  2013-09-10 02:15:00         NA [m]     SATELLITE       NA        NA
      297  2013-09-10 02:30:00 242.076600 [m]     SATELLITE       NA        NA
      298  2013-09-10 03:00:00         NA [m]     SATELLITE       NA        NA
      299  2013-09-10 03:15:00         NA [m]     SATELLITE       NA        NA
      300  2013-09-10 03:30:00 242.076600 [m]     SATELLITE       NA        NA
      301  2013-09-10 04:00:00         NA [m]     SATELLITE       NA        NA
      302  2013-09-10 04:15:00         NA [m]     SATELLITE       NA        NA
      303  2013-09-10 04:30:00 240.731730 [m]     SATELLITE       NA        NA
      304  2013-09-10 05:00:00         NA [m]     SATELLITE       NA        NA
      305  2013-09-10 05:15:00         NA [m]     SATELLITE       NA        NA
      306  2013-09-10 05:30:00 240.731730 [m]     SATELLITE       NA        NA
      307  2013-09-10 06:00:00         NA [m]     SATELLITE       NA        NA
      308  2013-09-10 06:15:00         NA [m]     SATELLITE       NA        NA
      309  2013-09-10 06:30:00 240.731730 [m]     SATELLITE       NA        NA
      310  2013-09-10 07:00:00         NA [m]     SATELLITE       NA        NA
      311  2013-09-10 07:15:00         NA [m]     SATELLITE       NA        NA
      312  2013-09-10 07:30:00 240.731730 [m]     SATELLITE       NA        NA
      313  2013-09-10 08:00:00         NA [m]     SATELLITE       NA        NA
      314  2013-09-10 08:15:00         NA [m]     SATELLITE       NA        NA
      315  2013-09-10 08:30:00 240.731730 [m]     SATELLITE       NA        NA
      316  2013-09-10 09:00:00         NA [m]     SATELLITE       NA        NA
      317  2013-09-10 09:15:00         NA [m]     SATELLITE       NA        NA
      318  2013-09-10 09:30:00 242.076600 [m]     SATELLITE       NA        NA
      319  2013-09-10 10:00:00         NA [m]     SATELLITE       NA        NA
      320  2013-09-10 10:15:00         NA [m]     SATELLITE       NA        NA
      321  2013-09-10 10:30:00 242.076600 [m]     SATELLITE       NA        NA
      322  2013-09-10 11:00:00         NA [m]     SATELLITE       NA        NA
      323  2013-09-10 11:15:00         NA [m]     SATELLITE       NA        NA
      324  2013-09-10 11:30:00 243.421470 [m]     SATELLITE       NA        NA
      325  2013-09-10 12:00:00         NA [m]     SATELLITE       NA        NA
      326  2013-09-10 12:15:00         NA [m]     SATELLITE       NA        NA
      327  2013-09-10 12:30:00 243.421470 [m]     SATELLITE       NA        NA
      328  2013-09-10 13:00:00         NA [m]     SATELLITE       NA        NA
      329  2013-09-10 13:15:00         NA [m]     SATELLITE       NA        NA
      330  2013-09-10 13:30:00 243.421470 [m]     SATELLITE       NA        NA
      331  2013-09-10 14:00:00         NA [m]     SATELLITE       NA        NA
      332  2013-09-10 14:15:00         NA [m]     SATELLITE       NA        NA
      333  2013-09-10 14:30:00 243.421470 [m]     SATELLITE       NA        NA
      334  2013-09-10 15:00:00         NA [m]     SATELLITE       NA        NA
      335  2013-09-10 15:15:00         NA [m]     SATELLITE       NA        NA
      336  2013-09-10 15:30:00 242.076600 [m]     SATELLITE       NA        NA
      337  2013-09-10 16:00:00         NA [m]     SATELLITE       NA        NA
      338  2013-09-10 16:15:00         NA [m]     SATELLITE       NA        NA
      339  2013-09-10 16:30:00 242.076600 [m]     SATELLITE       NA        NA
      340  2013-09-10 17:00:00         NA [m]     SATELLITE       NA        NA
      341  2013-09-10 17:15:00         NA [m]     SATELLITE       NA        NA
      342  2013-09-10 17:30:00 240.731730 [m]     SATELLITE       NA        NA
      343  2013-09-10 18:00:00         NA [m]     SATELLITE       NA        NA
      344  2013-09-10 18:15:00         NA [m]     SATELLITE       NA        NA
      345  2013-09-10 18:30:00 240.731730 [m]     SATELLITE       NA        NA
      346  2013-09-10 19:00:00         NA [m]     SATELLITE       NA        NA
      347  2013-09-10 19:15:00         NA [m]     SATELLITE       NA        NA
      348  2013-09-10 19:30:00 240.731730 [m]     SATELLITE       NA        NA
      349  2013-09-10 20:00:00         NA [m]     SATELLITE       NA        NA
      350  2013-09-10 20:15:00         NA [m]     SATELLITE       NA        NA
      351  2013-09-10 20:30:00 242.076600 [m]     SATELLITE       NA        NA
      352  2013-09-10 21:00:00         NA [m]     SATELLITE       NA        NA
      353  2013-09-10 21:15:00         NA [m]     SATELLITE       NA        NA
      354  2013-09-10 21:30:00 242.076600 [m]     SATELLITE       NA        NA
      355  2013-09-10 22:00:00         NA [m]     SATELLITE       NA        NA
      356  2013-09-10 22:15:00         NA [m]     SATELLITE       NA        NA
      357  2013-09-10 22:30:00 243.421470 [m]     SATELLITE       NA        NA
      358  2013-09-10 23:00:00         NA [m]     SATELLITE       NA        NA
      359  2013-09-10 23:15:00         NA [m]     SATELLITE       NA        NA
      360  2013-09-10 23:30:00 243.421470 [m]     SATELLITE       NA        NA
      361  2013-09-11 00:00:00 243.421470 [m]     SATELLITE       NA        NA
      362  2013-09-11 00:15:00 244.766340 [m]     SATELLITE       NA        NA
      363  2013-09-11 00:30:00 244.766340 [m]     SATELLITE       NA        NA
      364  2013-09-11 01:00:00 243.421470 [m]     SATELLITE       NA        NA
      365  2013-09-11 01:15:00 243.421470 [m]     SATELLITE       NA        NA
      366  2013-09-11 01:30:00 243.421470 [m]     SATELLITE       NA        NA
      367  2013-09-11 02:00:00 243.421470 [m]     SATELLITE       NA        NA
      368  2013-09-11 02:15:00 243.421470 [m]     SATELLITE       NA        NA
      369  2013-09-11 02:30:00 243.421470 [m]     SATELLITE       NA        NA
      370  2013-09-11 03:00:00 243.421470 [m]     SATELLITE       NA        NA
      371  2013-09-11 03:15:00 243.421470 [m]     SATELLITE       NA        NA
      372  2013-09-11 03:30:00 242.076600 [m]     SATELLITE       NA        NA
      373  2013-09-11 04:00:00 242.076600 [m]     SATELLITE       NA        NA
      374  2013-09-11 04:15:00 242.076600 [m]     SATELLITE       NA        NA
      375  2013-09-11 04:30:00 242.076600 [m]     SATELLITE       NA        NA
      376  2013-09-11 05:00:00 242.076600 [m]     SATELLITE       NA        NA
      377  2013-09-11 05:15:00 240.731730 [m]     SATELLITE       NA        NA
      378  2013-09-11 05:30:00 240.731730 [m]     SATELLITE       NA        NA
      379  2013-09-11 06:00:00 240.731730 [m]     SATELLITE       NA        NA
      380  2013-09-11 06:15:00 240.731730 [m]     SATELLITE       NA        NA
      381  2013-09-11 06:30:00 240.731730 [m]     SATELLITE       NA        NA
      382  2013-09-11 07:00:00 240.731730 [m]     SATELLITE       NA        NA
      383  2013-09-11 07:15:00 240.731730 [m]     SATELLITE       NA        NA
      384  2013-09-11 07:30:00 240.731730 [m]     SATELLITE       NA        NA
      385  2013-09-11 08:00:00 240.731730 [m]     SATELLITE       NA        NA
      386  2013-09-11 08:15:00 240.731730 [m]     SATELLITE       NA        NA
      387  2013-09-11 08:30:00 240.731730 [m]     SATELLITE       NA        NA
      388  2013-09-11 09:00:00 240.731730 [m]     SATELLITE       NA        NA
      389  2013-09-11 09:15:00 240.731730 [m]     SATELLITE       NA        NA
      390  2013-09-11 09:30:00 242.076600 [m]     SATELLITE       NA        NA
      391  2013-09-11 10:00:00 242.076600 [m]     SATELLITE       NA        NA
      392  2013-09-11 10:15:00 242.076600 [m]     SATELLITE       NA        NA
      393  2013-09-11 10:30:00 242.076600 [m]     SATELLITE       NA        NA
      394  2013-09-11 11:00:00 242.076600 [m]     SATELLITE       NA        NA
      395  2013-09-11 11:15:00 242.076600 [m]     SATELLITE       NA        NA
      396  2013-09-11 11:30:00 243.421470 [m]     SATELLITE       NA        NA
      397  2013-09-11 12:00:00 243.421470 [m]     SATELLITE       NA        NA
      398  2013-09-11 12:15:00 243.421470 [m]     SATELLITE       NA        NA
      399  2013-09-11 12:30:00 243.421470 [m]     SATELLITE       NA        NA
      400  2013-09-11 13:00:00 243.421470 [m]     SATELLITE       NA        NA
      401  2013-09-11 13:15:00 243.421470 [m]     SATELLITE       NA        NA
      402  2013-09-11 13:30:00 243.421470 [m]     SATELLITE       NA        NA
      403  2013-09-11 14:00:00 243.421470 [m]     SATELLITE       NA        NA
      404  2013-09-11 14:15:00 243.421470 [m]     SATELLITE       NA        NA
      405  2013-09-11 14:30:00 243.421470 [m]     SATELLITE       NA        NA
      406  2013-09-11 15:00:00 243.421470 [m]     SATELLITE       NA        NA
      407  2013-09-11 15:15:00 243.421470 [m]     SATELLITE       NA        NA
      408  2013-09-11 15:30:00 243.421470 [m]     SATELLITE       NA        NA
      409  2013-09-11 16:00:00 242.076600 [m]     SATELLITE       NA        NA
      410  2013-09-11 16:15:00 242.076600 [m]     SATELLITE       NA        NA
      411  2013-09-11 16:30:00 242.076600 [m]     SATELLITE       NA        NA
      412  2013-09-11 17:00:00 242.076600 [m]     SATELLITE       NA        NA
      413  2013-09-11 17:15:00 242.076600 [m]     SATELLITE       NA        NA
      414  2013-09-11 17:30:00 242.076600 [m]     SATELLITE       NA        NA
      415  2013-09-11 18:00:00 240.731730 [m]     SATELLITE       NA        NA
      416  2013-09-11 18:15:00 242.076600 [m]     SATELLITE       NA        NA
      417  2013-09-11 18:30:00 242.076600 [m]     SATELLITE       NA        NA
      418  2013-09-11 19:00:00 240.731730 [m]     SATELLITE       NA        NA
      419  2013-09-11 19:15:00 240.731730 [m]     SATELLITE       NA        NA
      420  2013-09-11 19:30:00 242.076600 [m]     SATELLITE       NA        NA
      421  2013-09-11 20:00:00 242.076600 [m]     SATELLITE       NA        NA
      422  2013-09-11 20:15:00 242.076600 [m]     SATELLITE       NA        NA
      423  2013-09-11 20:30:00 242.076600 [m]     SATELLITE       NA        NA
      424  2013-09-11 21:00:00 242.076600 [m]     SATELLITE       NA        NA
      425  2013-09-11 21:15:00 242.076600 [m]     SATELLITE       NA        NA
      426  2013-09-11 21:30:00 242.076600 [m]     SATELLITE       NA        NA
      427  2013-09-11 22:00:00 242.076600 [m]     SATELLITE       NA        NA
      428  2013-09-11 22:15:00 242.076600 [m]     SATELLITE       NA        NA
      429  2013-09-11 22:30:00 242.076600 [m]     SATELLITE       NA        NA
      430  2013-09-11 23:00:00 243.421470 [m]     SATELLITE       NA        NA
      431  2013-09-11 23:15:00 243.421470 [m]     SATELLITE       NA        NA
      432  2013-09-11 23:30:00 243.421470 [m]     SATELLITE       NA        NA
      433  2013-09-13 00:15:00         NA [m]     SATELLITE       NA        NA
      434  2013-09-13 00:45:00 243.421470 [m]     SATELLITE       NA        NA
      435  2013-09-13 01:15:00         NA [m]     SATELLITE       NA        NA
      436  2013-09-13 01:45:00 243.421470 [m]     SATELLITE       NA        NA
      437  2013-09-13 02:15:00         NA [m]     SATELLITE       NA        NA
      438  2013-09-13 02:45:00 243.421470 [m]     SATELLITE       NA        NA
      439  2013-09-13 03:15:00         NA [m]     SATELLITE       NA        NA
      440  2013-09-13 03:45:00 243.421470 [m]     SATELLITE       NA        NA
      441  2013-09-13 04:15:00         NA [m]     SATELLITE       NA        NA
      442  2013-09-13 04:45:00 243.421470 [m]     SATELLITE       NA        NA
      443  2013-09-13 05:15:00         NA [m]     SATELLITE       NA        NA
      444  2013-09-13 05:45:00 242.076600 [m]     SATELLITE       NA        NA
      445  2013-09-13 06:15:00         NA [m]     SATELLITE       NA        NA
      446  2013-09-13 06:45:00 242.076600 [m]     SATELLITE       NA        NA
      447  2013-09-13 07:15:00         NA [m]     SATELLITE       NA        NA
      448  2013-09-13 07:45:00 240.731730 [m]     SATELLITE       NA        NA
      449  2013-09-13 08:15:00         NA [m]     SATELLITE       NA        NA
      450  2013-09-13 08:45:00 240.731730 [m]     SATELLITE       NA        NA
      451  2013-09-13 09:15:00         NA [m]     SATELLITE       NA        NA
      452  2013-09-13 09:45:00 240.731730 [m]     SATELLITE       NA        NA
      453  2013-09-13 10:15:00         NA [m]     SATELLITE       NA        NA
      454  2013-09-13 10:45:00 240.731730 [m]     SATELLITE       NA        NA
      455  2013-09-13 11:15:00         NA [m]     SATELLITE       NA        NA
      456  2013-09-13 11:45:00 240.731730 [m]     SATELLITE       NA        NA
      457  2013-09-13 12:15:00         NA [m]     SATELLITE       NA        NA
      458  2013-09-13 12:45:00 242.076600 [m]     SATELLITE       NA        NA
      459  2013-09-13 13:15:00         NA [m]     SATELLITE       NA        NA
      460  2013-09-13 13:45:00 242.076600 [m]     SATELLITE       NA        NA
      461  2013-09-13 14:15:00         NA [m]     SATELLITE       NA        NA
      462  2013-09-13 14:45:00 242.076600 [m]     SATELLITE       NA        NA
      463  2013-09-13 15:15:00         NA [m]     SATELLITE       NA        NA
      464  2013-09-13 15:45:00 243.421470 [m]     SATELLITE       NA        NA
      465  2013-09-13 16:15:00         NA [m]     SATELLITE       NA        NA
      466  2013-09-13 16:45:00 243.421470 [m]     SATELLITE       NA        NA
      467  2013-09-13 17:15:00         NA [m]     SATELLITE       NA        NA
      468  2013-09-13 17:45:00 242.076600 [m]     SATELLITE       NA        NA
      469  2013-09-13 18:15:00         NA [m]     SATELLITE       NA        NA
      470  2013-09-13 18:45:00 242.076600 [m]     SATELLITE       NA        NA
      471  2013-09-13 19:15:00         NA [m]     SATELLITE       NA        NA
      472  2013-09-13 19:45:00 242.076600 [m]     SATELLITE       NA        NA
      473  2013-09-13 20:15:00         NA [m]     SATELLITE       NA        NA
      474  2013-09-13 20:45:00 242.076600 [m]     SATELLITE       NA        NA
      475  2013-09-13 21:15:00         NA [m]     SATELLITE       NA        NA
      476  2013-09-13 21:45:00 242.076600 [m]     SATELLITE       NA        NA
      477  2013-09-13 22:15:00         NA [m]     SATELLITE       NA        NA
      478  2013-09-13 22:45:00 242.076600 [m]     SATELLITE       NA        NA
      479  2013-09-13 23:15:00         NA [m]     SATELLITE       NA        NA
      480  2013-09-13 23:45:00 242.076600 [m]     SATELLITE       NA        NA
      481  2013-09-14 00:15:00 242.076600 [m]     SATELLITE       NA        NA
      482  2013-09-14 01:15:00 243.421470 [m]     SATELLITE       NA        NA
      483  2013-09-14 02:15:00 243.421470 [m]     SATELLITE       NA        NA
      484  2013-09-14 03:15:00 243.421470 [m]     SATELLITE       NA        NA
      485  2013-09-14 04:15:00 243.421470 [m]     SATELLITE       NA        NA
      486  2013-09-14 05:15:00 243.421470 [m]     SATELLITE       NA        NA
      487  2013-09-14 06:15:00 243.421470 [m]     SATELLITE       NA        NA
      488  2013-09-14 07:15:00 242.076600 [m]     SATELLITE       NA        NA
      489  2013-09-14 08:15:00 242.076600 [m]     SATELLITE       NA        NA
      490  2013-09-14 09:15:00 240.731730 [m]     SATELLITE       NA        NA
      491  2013-09-14 10:15:00 240.731730 [m]     SATELLITE       NA        NA
      492  2013-09-14 11:15:00 240.731730 [m]     SATELLITE       NA        NA
      493  2013-09-14 12:15:00 240.731730 [m]     SATELLITE       NA        NA
      494  2013-09-14 13:15:00 242.076600 [m]     SATELLITE       NA        NA
      495  2013-09-14 14:15:00 242.076600 [m]     SATELLITE       NA        NA
      496  2013-09-14 15:15:00 242.076600 [m]     SATELLITE       NA        NA
      497  2013-09-14 16:15:00 243.421470 [m]     SATELLITE       NA        NA
      498  2013-09-14 17:15:00 243.421470 [m]     SATELLITE       NA        NA
      499  2013-09-14 18:15:00 243.421470 [m]     SATELLITE       NA        NA
      500  2013-09-14 19:15:00 243.421470 [m]     SATELLITE       NA        NA
      501  2013-09-14 20:15:00 242.076600 [m]     SATELLITE       NA        NA
      502  2013-09-14 21:15:00 242.076600 [m]     SATELLITE       NA        NA
      503  2013-09-14 22:15:00 242.076600 [m]     SATELLITE       NA        NA
      504  2013-09-14 23:15:00 242.076600 [m]     SATELLITE       NA        NA
      505  2013-09-15 00:00:00 242.076600 [m]     SATELLITE       NA        NA
      506  2013-09-15 00:45:00 242.076600 [m]     SATELLITE       NA        NA
      507  2013-09-15 01:00:00 242.076600 [m]     SATELLITE       NA        NA
      508  2013-09-15 01:45:00 243.421470 [m]     SATELLITE       NA        NA
      509  2013-09-15 02:00:00 243.421470 [m]     SATELLITE       NA        NA
      510  2013-09-15 02:45:00 243.421470 [m]     SATELLITE       NA        NA
      511  2013-09-15 03:00:00 243.421470 [m]     SATELLITE       NA        NA
      512  2013-09-15 03:45:00 243.421470 [m]     SATELLITE       NA        NA
      513  2013-09-15 04:00:00 243.421470 [m]     SATELLITE       NA        NA
      514  2013-09-15 04:45:00 243.421470 [m]     SATELLITE       NA        NA
      515  2013-09-15 05:00:00 243.421470 [m]     SATELLITE       NA        NA
      516  2013-09-15 05:45:00 243.421470 [m]     SATELLITE       NA        NA
      517  2013-09-15 06:00:00 243.421470 [m]     SATELLITE       NA        NA
      518  2013-09-15 06:45:00 243.421470 [m]     SATELLITE       NA        NA
      519  2013-09-15 07:00:00 243.421470 [m]     SATELLITE       NA        NA
      520  2013-09-15 07:45:00 243.421470 [m]     SATELLITE       NA        NA
      521  2013-09-15 08:00:00 243.421470 [m]     SATELLITE       NA        NA
      522  2013-09-15 08:45:00 242.076600 [m]     SATELLITE       NA        NA
      523  2013-09-15 09:00:00 242.076600 [m]     SATELLITE       NA        NA
      524  2013-09-15 09:45:00 242.076600 [m]     SATELLITE       NA        NA
      525  2013-09-15 10:00:00 242.076600 [m]     SATELLITE       NA        NA
      526  2013-09-15 10:45:00 240.731730 [m]     SATELLITE       NA        NA
      527  2013-09-15 11:00:00 240.731730 [m]     SATELLITE       NA        NA
      528  2013-09-15 11:45:00 240.731730 [m]     SATELLITE       NA        NA
      529  2013-09-15 12:00:00 240.731730 [m]     SATELLITE       NA        NA
      530  2013-09-15 12:45:00 240.731730 [m]     SATELLITE       NA        NA
      531  2013-09-15 13:00:00 240.731730 [m]     SATELLITE       NA        NA
      532  2013-09-15 13:45:00 240.731730 [m]     SATELLITE       NA        NA
      533  2013-09-15 14:00:00 240.731730 [m]     SATELLITE       NA        NA
      534  2013-09-15 14:45:00 242.076600 [m]     SATELLITE       NA        NA
      535  2013-09-15 15:00:00 242.076600 [m]     SATELLITE       NA        NA
      536  2013-09-15 15:45:00 242.076600 [m]     SATELLITE       NA        NA
      537  2013-09-15 16:00:00 242.076600 [m]     SATELLITE       NA        NA
      538  2013-09-15 16:45:00 243.421470 [m]     SATELLITE       NA        NA
      539  2013-09-15 17:00:00 243.421470 [m]     SATELLITE       NA        NA
      540  2013-09-15 17:45:00 243.421470 [m]     SATELLITE       NA        NA
      541  2013-09-15 18:00:00 243.421470 [m]     SATELLITE       NA        NA
      542  2013-09-15 18:45:00 243.421470 [m]     SATELLITE       NA        NA
      543  2013-09-15 19:00:00 243.421470 [m]     SATELLITE       NA        NA
      544  2013-09-15 19:45:00 243.421470 [m]     SATELLITE       NA        NA
      545  2013-09-15 20:00:00 243.421470 [m]     SATELLITE       NA        NA
      546  2013-09-15 20:45:00 243.421470 [m]     SATELLITE       NA        NA
      547  2013-09-15 21:00:00 243.421470 [m]     SATELLITE       NA        NA
      548  2013-09-15 21:45:00 242.076600 [m]     SATELLITE       NA        NA
      549  2013-09-15 22:00:00 242.076600 [m]     SATELLITE       NA        NA
      550  2013-09-15 22:45:00 242.076600 [m]     SATELLITE       NA        NA
      551  2013-09-15 23:00:00 242.076600 [m]     SATELLITE       NA        NA
      552  2013-09-15 23:45:00 242.076600 [m]     SATELLITE       NA        NA
      553  2013-09-16 00:15:00         NA [m]     SATELLITE       NA        NA
      554  2013-09-16 00:45:00 242.076600 [m]     SATELLITE       NA        NA
      555  2013-09-16 01:15:00         NA [m]     SATELLITE       NA        NA
      556  2013-09-16 01:45:00 242.076600 [m]     SATELLITE       NA        NA
      557  2013-09-16 02:15:00         NA [m]     SATELLITE       NA        NA
      558  2013-09-16 02:45:00 242.076600 [m]     SATELLITE       NA        NA
      559  2013-09-16 03:15:00         NA [m]     SATELLITE       NA        NA
      560  2013-09-16 03:45:00 243.421470 [m]     SATELLITE       NA        NA
      561  2013-09-16 04:15:00         NA [m]     SATELLITE       NA        NA
      562  2013-09-16 04:45:00 243.421470 [m]     SATELLITE       NA        NA
      563  2013-09-16 05:15:00         NA [m]     SATELLITE       NA        NA
      564  2013-09-16 05:45:00 244.766340 [m]     SATELLITE       NA        NA
      565  2013-09-16 06:15:00         NA [m]     SATELLITE       NA        NA
      566  2013-09-16 06:45:00 244.766340 [m]     SATELLITE       NA        NA
      567  2013-09-16 07:15:00         NA [m]     SATELLITE       NA        NA
      568  2013-09-16 07:45:00 244.766340 [m]     SATELLITE       NA        NA
      569  2013-09-16 08:15:00         NA [m]     SATELLITE       NA        NA
      570  2013-09-16 08:45:00 243.421470 [m]     SATELLITE       NA        NA
      571  2013-09-16 09:15:00         NA [m]     SATELLITE       NA        NA
      572  2013-09-16 09:45:00 243.421470 [m]     SATELLITE       NA        NA
      573  2013-09-16 10:15:00         NA [m]     SATELLITE       NA        NA
      574  2013-09-16 10:45:00 242.076600 [m]     SATELLITE       NA        NA
      575  2013-09-16 11:15:00         NA [m]     SATELLITE       NA        NA
      576  2013-09-16 11:45:00 242.076600 [m]     SATELLITE       NA        NA
      577  2013-09-16 12:15:00         NA [m]     SATELLITE       NA        NA
      578  2013-09-16 12:45:00 240.731730 [m]     SATELLITE       NA        NA
      579  2013-09-16 13:15:00         NA [m]     SATELLITE       NA        NA
      580  2013-09-16 13:45:00 240.731730 [m]     SATELLITE       NA        NA
      581  2013-09-16 14:15:00         NA [m]     SATELLITE       NA        NA
      582  2013-09-16 14:45:00 240.731730 [m]     SATELLITE       NA        NA
      583  2013-09-16 15:15:00         NA [m]     SATELLITE       NA        NA
      584  2013-09-16 15:45:00 242.076600 [m]     SATELLITE       NA        NA
      585  2013-09-16 16:15:00         NA [m]     SATELLITE       NA        NA
      586  2013-09-16 16:45:00 243.421470 [m]     SATELLITE       NA        NA
      587  2013-09-16 17:15:00         NA [m]     SATELLITE       NA        NA
      588  2013-09-16 17:45:00 243.421470 [m]     SATELLITE       NA        NA
      589  2013-09-16 18:15:00         NA [m]     SATELLITE       NA        NA
      590  2013-09-16 18:45:00 244.766340 [m]     SATELLITE       NA        NA
      591  2013-09-16 19:15:00         NA [m]     SATELLITE       NA        NA
      592  2013-09-16 19:45:00 244.766340 [m]     SATELLITE       NA        NA
      593  2013-09-16 20:15:00         NA [m]     SATELLITE       NA        NA
      594  2013-09-16 20:45:00 243.421470 [m]     SATELLITE       NA        NA
      595  2013-09-16 21:15:00         NA [m]     SATELLITE       NA        NA
      596  2013-09-16 21:45:00 243.421470 [m]     SATELLITE       NA        NA
      597  2013-09-16 22:15:00         NA [m]     SATELLITE       NA        NA
      598  2013-09-16 22:45:00 243.421470 [m]     SATELLITE       NA        NA
      599  2013-09-16 23:15:00         NA [m]     SATELLITE       NA        NA
      600  2013-09-16 23:45:00 242.076600 [m]     SATELLITE       NA        NA
      601  2013-09-17 00:00:00         NA [m]     SATELLITE       NA        NA
      602  2013-09-17 00:30:00 242.076600 [m]     SATELLITE       NA        NA
      603  2013-09-17 00:45:00         NA [m]     SATELLITE       NA        NA
      604  2013-09-17 01:00:00         NA [m]     SATELLITE       NA        NA
      605  2013-09-17 01:30:00 242.076600 [m]     SATELLITE       NA        NA
      606  2013-09-17 01:45:00         NA [m]     SATELLITE       NA        NA
      607  2013-09-17 02:00:00         NA [m]     SATELLITE       NA        NA
      608  2013-09-17 02:30:00 242.076600 [m]     SATELLITE       NA        NA
      609  2013-09-17 02:45:00         NA [m]     SATELLITE       NA        NA
      610  2013-09-17 03:00:00         NA [m]     SATELLITE       NA        NA
      611  2013-09-17 03:30:00 242.076600 [m]     SATELLITE       NA        NA
      612  2013-09-17 03:45:00         NA [m]     SATELLITE       NA        NA
      613  2013-09-17 04:00:00         NA [m]     SATELLITE       NA        NA
      614  2013-09-17 04:30:00 242.076600 [m]     SATELLITE       NA        NA
      615  2013-09-17 04:45:00         NA [m]     SATELLITE       NA        NA
      616  2013-09-17 05:00:00         NA [m]     SATELLITE       NA        NA
      617  2013-09-17 05:30:00 242.076600 [m]     SATELLITE       NA        NA
      618  2013-09-17 05:45:00         NA [m]     SATELLITE       NA        NA
      619  2013-09-17 06:00:00         NA [m]     SATELLITE       NA        NA
      620  2013-09-17 06:30:00 242.076600 [m]     SATELLITE       NA        NA
      621  2013-09-17 06:45:00         NA [m]     SATELLITE       NA        NA
      622  2013-09-17 07:00:00         NA [m]     SATELLITE       NA        NA
      623  2013-09-17 07:30:00 242.076600 [m]     SATELLITE       NA        NA
      624  2013-09-17 07:45:00         NA [m]     SATELLITE       NA        NA
      625  2013-09-17 08:00:00         NA [m]     SATELLITE       NA        NA
      626  2013-09-17 08:30:00  69.933240 [m]     SATELLITE       NA        NA
      627  2013-09-17 08:45:00         NA [m]     SATELLITE       NA        NA
      628  2013-09-17 09:00:00         NA [m]     SATELLITE       NA        NA
      629  2013-09-17 09:30:00   0.000000 [m]     SATELLITE       NA        NA
      630  2013-09-17 09:45:00         NA [m]     SATELLITE       NA        NA
      631  2013-09-17 10:00:00         NA [m]     SATELLITE       NA        NA
      632  2013-09-17 10:30:00   0.000000 [m]     SATELLITE       NA        NA
      633  2013-09-17 10:45:00         NA [m]     SATELLITE       NA        NA
      634  2013-09-17 11:00:00         NA [m]     SATELLITE       NA        NA
      635  2013-09-17 11:30:00   0.000000 [m]     SATELLITE       NA        NA
      636  2013-09-17 11:45:00         NA [m]     SATELLITE       NA        NA
      637  2013-09-17 12:00:00         NA [m]     SATELLITE       NA        NA
      638  2013-09-17 12:30:00   0.000000 [m]     SATELLITE       NA        NA
      639  2013-09-17 12:45:00         NA [m]     SATELLITE       NA        NA
      640  2013-09-17 13:00:00         NA [m]     SATELLITE       NA        NA
      641  2013-09-17 13:30:00   0.000000 [m]     SATELLITE       NA        NA
      642  2013-09-17 13:45:00         NA [m]     SATELLITE       NA        NA
      643  2013-09-17 14:00:00         NA [m]     SATELLITE       NA        NA
      644  2013-09-17 14:30:00   0.000000 [m]     SATELLITE       NA        NA
      645  2013-09-17 14:45:00         NA [m]     SATELLITE       NA        NA
      646  2013-09-17 15:00:00         NA [m]     SATELLITE       NA        NA
      647  2013-09-17 15:30:00   0.000000 [m]     SATELLITE       NA        NA
      648  2013-09-17 15:45:00         NA [m]     SATELLITE       NA        NA
      649  2013-09-17 16:00:00         NA [m]     SATELLITE       NA        NA
      650  2013-09-17 16:30:00   0.000000 [m]     SATELLITE       NA        NA
      651  2013-09-17 16:45:00         NA [m]     SATELLITE       NA        NA
      652  2013-09-17 17:00:00         NA [m]     SATELLITE       NA        NA
      653  2013-09-17 17:30:00   0.000000 [m]     SATELLITE       NA        NA
      654  2013-09-17 17:45:00         NA [m]     SATELLITE       NA        NA
      655  2013-09-17 18:00:00         NA [m]     SATELLITE       NA        NA
      656  2013-09-17 18:30:00   0.000000 [m]     SATELLITE       NA        NA
      657  2013-09-17 18:45:00         NA [m]     SATELLITE       NA        NA
      658  2013-09-17 19:00:00         NA [m]     SATELLITE       NA        NA
      659  2013-09-17 19:30:00   0.000000 [m]     SATELLITE       NA        NA
      660  2013-09-17 19:45:00         NA [m]     SATELLITE       NA        NA
      661  2013-09-17 20:00:00         NA [m]     SATELLITE       NA        NA
      662  2013-09-17 20:30:00   0.000000 [m]     SATELLITE       NA        NA
      663  2013-09-17 20:45:00         NA [m]     SATELLITE       NA        NA
      664  2013-09-17 21:00:00         NA [m]     SATELLITE       NA        NA
      665  2013-09-17 21:30:00   0.000000 [m]     SATELLITE       NA        NA
      666  2013-09-17 21:45:00         NA [m]     SATELLITE       NA        NA
      667  2013-09-17 22:00:00         NA [m]     SATELLITE       NA        NA
      668  2013-09-17 22:30:00   0.000000 [m]     SATELLITE       NA        NA
      669  2013-09-17 22:45:00         NA [m]     SATELLITE       NA        NA
      670  2013-09-17 23:00:00         NA [m]     SATELLITE       NA        NA
      671  2013-09-17 23:30:00   0.000000 [m]     SATELLITE       NA        NA
      672  2013-09-17 23:45:00         NA [m]     SATELLITE       NA        NA
      673  2013-09-18 00:00:00         NA [m]     SATELLITE       NA        NA
      674  2013-09-18 00:15:00         NA [m]     SATELLITE       NA        NA
      675  2013-09-18 00:30:00         NA [m]     SATELLITE       NA        NA
      676  2013-09-18 01:00:00         NA [m]     SATELLITE       NA        NA
      677  2013-09-18 01:15:00         NA [m]     SATELLITE       NA        NA
      678  2013-09-18 01:30:00         NA [m]     SATELLITE       NA        NA
      679  2013-09-18 02:00:00         NA [m]     SATELLITE       NA        NA
      680  2013-09-18 02:15:00         NA [m]     SATELLITE       NA        NA
      681  2013-09-18 02:30:00         NA [m]     SATELLITE       NA        NA
      682  2013-09-18 03:00:00         NA [m]     SATELLITE       NA        NA
      683  2013-09-18 03:15:00         NA [m]     SATELLITE       NA        NA
      684  2013-09-18 03:30:00         NA [m]     SATELLITE       NA        NA
      685  2013-09-18 04:00:00         NA [m]     SATELLITE       NA        NA
      686  2013-09-18 04:15:00         NA [m]     SATELLITE       NA        NA
      687  2013-09-18 04:30:00         NA [m]     SATELLITE       NA        NA
      688  2013-09-18 05:00:00         NA [m]     SATELLITE       NA        NA
      689  2013-09-18 05:15:00         NA [m]     SATELLITE       NA        NA
      690  2013-09-18 05:30:00         NA [m]     SATELLITE       NA        NA
      691  2013-09-18 06:00:00         NA [m]     SATELLITE       NA        NA
      692  2013-09-18 06:15:00         NA [m]     SATELLITE       NA        NA
      693  2013-09-18 06:30:00         NA [m]     SATELLITE       NA        NA
      694  2013-09-18 07:00:00         NA [m]     SATELLITE       NA        NA
      695  2013-09-18 07:15:00         NA [m]     SATELLITE       NA        NA
      696  2013-09-18 07:30:00         NA [m]     SATELLITE       NA        NA
      697  2013-09-18 08:00:00         NA [m]     SATELLITE       NA        NA
      698  2013-09-18 08:15:00         NA [m]     SATELLITE       NA        NA
      699  2013-09-18 08:30:00         NA [m]     SATELLITE       NA        NA
      700  2013-09-18 09:00:00         NA [m]     SATELLITE       NA        NA
      701  2013-09-18 09:15:00         NA [m]     SATELLITE       NA        NA
      702  2013-09-18 09:30:00         NA [m]     SATELLITE       NA        NA
      703  2013-09-18 10:00:00         NA [m]     SATELLITE       NA        NA
      704  2013-09-18 10:15:00         NA [m]     SATELLITE       NA        NA
      705  2013-09-18 10:30:00         NA [m]     SATELLITE       NA        NA
      706  2013-09-18 11:00:00         NA [m]     SATELLITE       NA        NA
      707  2013-09-18 11:15:00         NA [m]     SATELLITE       NA        NA
      708  2013-09-18 11:30:00         NA [m]     SATELLITE       NA        NA
      709  2013-09-18 12:00:00         NA [m]     SATELLITE       NA        NA
      710  2013-09-18 12:15:00         NA [m]     SATELLITE       NA        NA
      711  2013-09-18 12:30:00         NA [m]     SATELLITE       NA        NA
      712  2013-09-18 13:00:00         NA [m]     SATELLITE       NA        NA
      713  2013-09-18 13:15:00         NA [m]     SATELLITE       NA        NA
      714  2013-09-18 13:30:00         NA [m]     SATELLITE       NA        NA
      715  2013-09-18 14:00:00         NA [m]     SATELLITE       NA        NA
      716  2013-09-18 14:15:00         NA [m]     SATELLITE       NA        NA
      717  2013-09-18 14:30:00         NA [m]     SATELLITE       NA        NA
      718  2013-09-18 15:00:00         NA [m]     SATELLITE       NA        NA
      719  2013-09-18 15:15:00         NA [m]     SATELLITE       NA        NA
      720  2013-09-18 15:30:00         NA [m]     SATELLITE       NA        NA
      721  2013-09-18 16:00:00         NA [m]     SATELLITE       NA        NA
      722  2013-09-18 16:15:00         NA [m]     SATELLITE       NA        NA
      723  2013-09-18 16:30:00         NA [m]     SATELLITE       NA        NA
      724  2013-09-18 17:00:00         NA [m]     SATELLITE       NA        NA
      725  2013-09-18 17:15:00         NA [m]     SATELLITE       NA        NA
      726  2013-09-18 17:30:00         NA [m]     SATELLITE       NA        NA
      727  2013-09-18 18:00:00         NA [m]     SATELLITE       NA        NA
      728  2013-09-18 18:15:00         NA [m]     SATELLITE       NA        NA
      729  2013-09-18 18:30:00         NA [m]     SATELLITE       NA        NA
      730  2013-09-18 19:00:00         NA [m]     SATELLITE       NA        NA
      731  2013-09-18 19:15:00         NA [m]     SATELLITE       NA        NA
      732  2013-09-18 19:30:00         NA [m]     SATELLITE       NA        NA
      733  2013-09-18 20:00:00         NA [m]     SATELLITE       NA        NA
      734  2013-09-18 20:15:00         NA [m]     SATELLITE       NA        NA
      735  2013-09-18 20:30:00         NA [m]     SATELLITE       NA        NA
      736  2013-09-18 21:00:00         NA [m]     SATELLITE       NA        NA
      737  2013-09-18 21:15:00         NA [m]     SATELLITE       NA        NA
      738  2013-09-18 21:30:00         NA [m]     SATELLITE       NA        NA
      739  2013-09-18 22:00:00         NA [m]     SATELLITE       NA        NA
      740  2013-09-18 22:15:00         NA [m]     SATELLITE       NA        NA
      741  2013-09-18 22:30:00         NA [m]     SATELLITE       NA        NA
      742  2013-09-18 23:00:00         NA [m]     SATELLITE       NA        NA
      743  2013-09-18 23:15:00         NA [m]     SATELLITE       NA        NA
      744  2013-09-18 23:30:00         NA [m]     SATELLITE       NA        NA
      745  2013-09-19 00:00:00   0.000000 [m]     SATELLITE       NA        NA
      746  2013-09-19 00:15:00   0.000000 [m]     SATELLITE       NA        NA
      747  2013-09-19 00:30:00   0.000000 [m]     SATELLITE       NA        NA
      748  2013-09-19 01:00:00   0.000000 [m]     SATELLITE       NA        NA
      749  2013-09-19 01:15:00   0.000000 [m]     SATELLITE       NA        NA
      750  2013-09-19 01:30:00   0.000000 [m]     SATELLITE       NA        NA
      751  2013-09-19 02:00:00   0.000000 [m]     SATELLITE       NA        NA
      752  2013-09-19 02:15:00   0.000000 [m]     SATELLITE       NA        NA
      753  2013-09-19 02:30:00   0.000000 [m]     SATELLITE       NA        NA
      754  2013-09-19 03:00:00   0.000000 [m]     SATELLITE       NA        NA
      755  2013-09-19 03:15:00   0.000000 [m]     SATELLITE       NA        NA
      756  2013-09-19 03:30:00   0.000000 [m]     SATELLITE       NA        NA
      757  2013-09-19 04:00:00   0.000000 [m]     SATELLITE       NA        NA
      758  2013-09-19 04:15:00   0.000000 [m]     SATELLITE       NA        NA
      759  2013-09-19 04:30:00   0.000000 [m]     SATELLITE       NA        NA
      760  2013-09-19 05:00:00   0.000000 [m]     SATELLITE       NA        NA
      761  2013-09-19 05:15:00   0.000000 [m]     SATELLITE       NA        NA
      762  2013-09-19 05:30:00   0.000000 [m]     SATELLITE       NA        NA
      763  2013-09-19 06:00:00   0.000000 [m]     SATELLITE       NA        NA
      764  2013-09-19 06:15:00   0.000000 [m]     SATELLITE       NA        NA
      765  2013-09-19 06:30:00   0.000000 [m]     SATELLITE       NA        NA
      766  2013-09-19 07:00:00   0.000000 [m]     SATELLITE       NA        NA
      767  2013-09-19 07:15:00   0.000000 [m]     SATELLITE       NA        NA
      768  2013-09-19 07:30:00   0.000000 [m]     SATELLITE       NA        NA
      769  2013-09-19 08:00:00   0.000000 [m]     SATELLITE       NA        NA
      770  2013-09-19 08:15:00   0.000000 [m]     SATELLITE       NA        NA
      771  2013-09-19 08:30:00   0.000000 [m]     SATELLITE       NA        NA
      772  2013-09-19 09:00:00   0.000000 [m]     SATELLITE       NA        NA
      773  2013-09-19 09:15:00   0.000000 [m]     SATELLITE       NA        NA
      774  2013-09-19 09:30:00   0.000000 [m]     SATELLITE       NA        NA
      775  2013-09-19 10:00:00   0.000000 [m]     SATELLITE       NA        NA
      776  2013-09-19 10:15:00   0.000000 [m]     SATELLITE       NA        NA
      777  2013-09-19 10:30:00   0.000000 [m]     SATELLITE       NA        NA
      778  2013-09-19 11:00:00   0.000000 [m]     SATELLITE       NA        NA
      779  2013-09-19 11:15:00   0.000000 [m]     SATELLITE       NA        NA
      780  2013-09-19 11:30:00   0.000000 [m]     SATELLITE       NA        NA
      781  2013-09-19 12:00:00   0.000000 [m]     SATELLITE       NA        NA
      782  2013-09-19 12:15:00   0.000000 [m]     SATELLITE       NA        NA
      783  2013-09-19 12:30:00   0.000000 [m]     SATELLITE       NA        NA
      784  2013-09-19 13:00:00   0.000000 [m]     SATELLITE       NA        NA
      785  2013-09-19 13:15:00   0.000000 [m]     SATELLITE       NA        NA
      786  2013-09-19 13:30:00   0.000000 [m]     SATELLITE       NA        NA
      787  2013-09-19 14:00:00   0.000000 [m]     SATELLITE       NA        NA
      788  2013-09-19 14:15:00   0.000000 [m]     SATELLITE       NA        NA
      789  2013-09-19 14:30:00   0.000000 [m]     SATELLITE       NA        NA
      790  2013-09-19 15:00:00   0.000000 [m]     SATELLITE       NA        NA
      791  2013-09-19 15:15:00   0.000000 [m]     SATELLITE       NA        NA
      792  2013-09-19 15:30:00   0.000000 [m]     SATELLITE       NA        NA
      793  2013-09-19 16:00:00   0.000000 [m]     SATELLITE       NA        NA
      794  2013-09-19 16:15:00   0.000000 [m]     SATELLITE       NA        NA
      795  2013-09-19 16:30:00   0.000000 [m]     SATELLITE       NA        NA
      796  2013-09-19 17:00:00   0.000000 [m]     SATELLITE       NA        NA
      797  2013-09-19 17:15:00   0.000000 [m]     SATELLITE       NA        NA
      798  2013-09-19 17:30:00   0.000000 [m]     SATELLITE       NA        NA
      799  2013-09-19 18:00:00   0.000000 [m]     SATELLITE       NA        NA
      800  2013-09-19 18:15:00   0.000000 [m]     SATELLITE       NA        NA
      801  2013-09-19 18:30:00   0.000000 [m]     SATELLITE       NA        NA
      802  2013-09-19 19:00:00   0.000000 [m]     SATELLITE       NA        NA
      803  2013-09-19 19:15:00   0.000000 [m]     SATELLITE       NA        NA
      804  2013-09-19 19:30:00   0.000000 [m]     SATELLITE       NA        NA
      805  2013-09-19 20:00:00   0.000000 [m]     SATELLITE       NA        NA
      806  2013-09-19 20:15:00   0.000000 [m]     SATELLITE       NA        NA
      807  2013-09-19 20:30:00   0.000000 [m]     SATELLITE       NA        NA
      808  2013-09-19 21:00:00   0.000000 [m]     SATELLITE       NA        NA
      809  2013-09-19 21:15:00   0.672435 [m]     SATELLITE       NA        NA
      810  2013-09-19 21:30:00   0.672435 [m]     SATELLITE       NA        NA
      811  2013-09-19 22:00:00   0.672435 [m]     SATELLITE       NA        NA
      812  2013-09-19 22:15:00   0.672435 [m]     SATELLITE       NA        NA
      813  2013-09-19 22:30:00   0.000000 [m]     SATELLITE       NA        NA
      814  2013-09-19 23:00:00   0.000000 [m]     SATELLITE       NA        NA
      815  2013-09-19 23:15:00   0.000000 [m]     SATELLITE       NA        NA
      816  2013-09-19 23:30:00   0.000000 [m]     SATELLITE       NA        NA
      817  2013-09-20 00:30:00         NA [m]     SATELLITE       NA        NA
      818  2013-09-20 00:45:00   0.000000 [m]     SATELLITE       NA        NA
      819  2013-09-20 01:30:00         NA [m]     SATELLITE       NA        NA
      820  2013-09-20 01:45:00   0.000000 [m]     SATELLITE       NA        NA
      821  2013-09-20 02:30:00         NA [m]     SATELLITE       NA        NA
      822  2013-09-20 02:45:00   0.000000 [m]     SATELLITE       NA        NA
      823  2013-09-20 03:30:00         NA [m]     SATELLITE       NA        NA
      824  2013-09-20 03:45:00   0.000000 [m]     SATELLITE       NA        NA
      825  2013-09-20 04:30:00         NA [m]     SATELLITE       NA        NA
      826  2013-09-20 04:45:00   0.000000 [m]     SATELLITE       NA        NA
      827  2013-09-20 05:30:00         NA [m]     SATELLITE       NA        NA
      828  2013-09-20 05:45:00   0.000000 [m]     SATELLITE       NA        NA
      829  2013-09-20 06:30:00         NA [m]     SATELLITE       NA        NA
      830  2013-09-20 06:45:00   0.000000 [m]     SATELLITE       NA        NA
      831  2013-09-20 07:30:00         NA [m]     SATELLITE       NA        NA
      832  2013-09-20 07:45:00   0.000000 [m]     SATELLITE       NA        NA
      833  2013-09-20 08:30:00         NA [m]     SATELLITE       NA        NA
      834  2013-09-20 08:45:00   0.000000 [m]     SATELLITE       NA        NA
      835  2013-09-20 09:30:00         NA [m]     SATELLITE       NA        NA
      836  2013-09-20 09:45:00   0.672435 [m]     SATELLITE       NA        NA
      837  2013-09-20 10:30:00         NA [m]     SATELLITE       NA        NA
      838  2013-09-20 10:45:00   0.000000 [m]     SATELLITE       NA        NA
      839  2013-09-20 11:30:00         NA [m]     SATELLITE       NA        NA
      840  2013-09-20 11:45:00   0.000000 [m]     SATELLITE       NA        NA
      841  2013-09-20 12:30:00         NA [m]     SATELLITE       NA        NA
      842  2013-09-20 12:45:00   0.000000 [m]     SATELLITE       NA        NA
      843  2013-09-20 13:30:00         NA [m]     SATELLITE       NA        NA
      844  2013-09-20 13:45:00   0.000000 [m]     SATELLITE       NA        NA
      845  2013-09-20 14:30:00         NA [m]     SATELLITE       NA        NA
      846  2013-09-20 14:45:00   0.000000 [m]     SATELLITE       NA        NA
      847  2013-09-20 15:30:00         NA [m]     SATELLITE       NA        NA
      848  2013-09-20 15:45:00   0.672435 [m]     SATELLITE       NA        NA
      849  2013-09-20 16:30:00         NA [m]     SATELLITE       NA        NA
      850  2013-09-20 16:45:00   0.000000 [m]     SATELLITE       NA        NA
      851  2013-09-20 17:30:00         NA [m]     SATELLITE       NA        NA
      852  2013-09-20 17:45:00   0.000000 [m]     SATELLITE       NA        NA
      853  2013-09-20 18:30:00         NA [m]     SATELLITE       NA        NA
      854  2013-09-20 18:45:00   0.000000 [m]     SATELLITE       NA        NA
      855  2013-09-20 19:30:00         NA [m]     SATELLITE       NA        NA
      856  2013-09-20 19:45:00   0.000000 [m]     SATELLITE       NA        NA
      857  2013-09-20 20:30:00         NA [m]     SATELLITE       NA        NA
      858  2013-09-20 20:45:00   0.000000 [m]     SATELLITE       NA        NA
      859  2013-09-20 21:30:00         NA [m]     SATELLITE       NA        NA
      860  2013-09-20 21:45:00   0.000000 [m]     SATELLITE       NA        NA
      861  2013-09-20 22:30:00         NA [m]     SATELLITE       NA        NA
      862  2013-09-20 22:45:00   0.000000 [m]     SATELLITE       NA        NA
      863  2013-09-20 23:30:00         NA [m]     SATELLITE       NA        NA
      864  2013-09-20 23:45:00   0.000000 [m]     SATELLITE       NA        NA
      865  2013-09-21 00:00:00         NA [m]     SATELLITE       NA        NA
      866  2013-09-21 00:15:00   0.000000 [m]     SATELLITE       NA        NA
      867  2013-09-21 00:30:00         NA [m]     SATELLITE       NA        NA
      868  2013-09-21 01:00:00         NA [m]     SATELLITE       NA        NA
      869  2013-09-21 01:15:00   0.000000 [m]     SATELLITE       NA        NA
      870  2013-09-21 01:30:00         NA [m]     SATELLITE       NA        NA
      871  2013-09-21 02:00:00         NA [m]     SATELLITE       NA        NA
      872  2013-09-21 02:15:00   0.000000 [m]     SATELLITE       NA        NA
      873  2013-09-21 02:30:00         NA [m]     SATELLITE       NA        NA
      874  2013-09-21 03:00:00         NA [m]     SATELLITE       NA        NA
      875  2013-09-21 03:15:00   0.000000 [m]     SATELLITE       NA        NA
      876  2013-09-21 03:30:00         NA [m]     SATELLITE       NA        NA
      877  2013-09-21 04:00:00         NA [m]     SATELLITE       NA        NA
      878  2013-09-21 04:15:00   0.000000 [m]     SATELLITE       NA        NA
      879  2013-09-21 04:30:00         NA [m]     SATELLITE       NA        NA
      880  2013-09-21 05:00:00         NA [m]     SATELLITE       NA        NA
      881  2013-09-21 05:15:00   0.000000 [m]     SATELLITE       NA        NA
      882  2013-09-21 05:30:00         NA [m]     SATELLITE       NA        NA
      883  2013-09-21 06:00:00         NA [m]     SATELLITE       NA        NA
      884  2013-09-21 06:15:00   0.000000 [m]     SATELLITE       NA        NA
      885  2013-09-21 06:30:00         NA [m]     SATELLITE       NA        NA
      886  2013-09-21 07:00:00         NA [m]     SATELLITE       NA        NA
      887  2013-09-21 07:15:00   0.000000 [m]     SATELLITE       NA        NA
      888  2013-09-21 07:30:00         NA [m]     SATELLITE       NA        NA
      889  2013-09-21 08:00:00         NA [m]     SATELLITE       NA        NA
      890  2013-09-21 08:15:00   0.000000 [m]     SATELLITE       NA        NA
      891  2013-09-21 08:30:00         NA [m]     SATELLITE       NA        NA
      892  2013-09-21 09:00:00         NA [m]     SATELLITE       NA        NA
      893  2013-09-21 09:15:00   0.000000 [m]     SATELLITE       NA        NA
      894  2013-09-21 09:30:00         NA [m]     SATELLITE       NA        NA
      895  2013-09-21 10:00:00         NA [m]     SATELLITE       NA        NA
      896  2013-09-21 10:15:00   0.000000 [m]     SATELLITE       NA        NA
      897  2013-09-21 10:30:00         NA [m]     SATELLITE       NA        NA
      898  2013-09-21 11:00:00         NA [m]     SATELLITE       NA        NA
      899  2013-09-21 11:15:00   0.000000 [m]     SATELLITE       NA        NA
      900  2013-09-21 11:30:00         NA [m]     SATELLITE       NA        NA
      901  2013-09-21 12:00:00         NA [m]     SATELLITE       NA        NA
      902  2013-09-21 12:15:00   0.000000 [m]     SATELLITE       NA        NA
      903  2013-09-21 12:30:00         NA [m]     SATELLITE       NA        NA
      904  2013-09-21 13:00:00         NA [m]     SATELLITE       NA        NA
      905  2013-09-21 13:15:00   0.000000 [m]     SATELLITE       NA        NA
      906  2013-09-21 13:30:00         NA [m]     SATELLITE       NA        NA
      907  2013-09-21 14:00:00         NA [m]     SATELLITE       NA        NA
      908  2013-09-21 14:15:00   0.000000 [m]     SATELLITE       NA        NA
      909  2013-09-21 14:30:00         NA [m]     SATELLITE       NA        NA
      910  2013-09-21 15:00:00         NA [m]     SATELLITE       NA        NA
      911  2013-09-21 15:15:00   0.000000 [m]     SATELLITE       NA        NA
      912  2013-09-21 15:30:00         NA [m]     SATELLITE       NA        NA
      913  2013-09-21 16:00:00         NA [m]     SATELLITE       NA        NA
      914  2013-09-21 16:15:00   0.000000 [m]     SATELLITE       NA        NA
      915  2013-09-21 16:30:00         NA [m]     SATELLITE       NA        NA
      916  2013-09-21 17:00:00         NA [m]     SATELLITE       NA        NA
      917  2013-09-21 17:15:00   0.000000 [m]     SATELLITE       NA        NA
      918  2013-09-21 17:30:00         NA [m]     SATELLITE       NA        NA
      919  2013-09-21 18:00:00         NA [m]     SATELLITE       NA        NA
      920  2013-09-21 18:15:00   0.000000 [m]     SATELLITE       NA        NA
      921  2013-09-21 18:30:00         NA [m]     SATELLITE       NA        NA
      922  2013-09-21 19:00:00         NA [m]     SATELLITE       NA        NA
      923  2013-09-21 19:15:00   0.000000 [m]     SATELLITE       NA        NA
      924  2013-09-21 19:30:00         NA [m]     SATELLITE       NA        NA
      925  2013-09-21 20:00:00         NA [m]     SATELLITE       NA        NA
      926  2013-09-21 20:15:00   0.000000 [m]     SATELLITE       NA        NA
      927  2013-09-21 20:30:00         NA [m]     SATELLITE       NA        NA
      928  2013-09-21 21:00:00         NA [m]     SATELLITE       NA        NA
      929  2013-09-21 21:15:00   0.000000 [m]     SATELLITE       NA        NA
      930  2013-09-21 21:30:00         NA [m]     SATELLITE       NA        NA
      931  2013-09-21 22:00:00         NA [m]     SATELLITE       NA        NA
      932  2013-09-21 22:15:00   0.000000 [m]     SATELLITE       NA        NA
      933  2013-09-21 22:30:00         NA [m]     SATELLITE       NA        NA
      934  2013-09-21 23:00:00         NA [m]     SATELLITE       NA        NA
      935  2013-09-21 23:15:00   0.000000 [m]     SATELLITE       NA        NA
      936  2013-09-21 23:30:00         NA [m]     SATELLITE       NA        NA
      937  2013-09-22 00:00:00   0.000000 [m]     SATELLITE       NA        NA
      938  2013-09-22 01:00:00   0.000000 [m]     SATELLITE       NA        NA
      939  2013-09-22 02:00:00   0.000000 [m]     SATELLITE       NA        NA
      940  2013-09-22 03:00:00   0.000000 [m]     SATELLITE       NA        NA
      941  2013-09-22 04:00:00   0.000000 [m]     SATELLITE       NA        NA
      942  2013-09-22 05:00:00   0.000000 [m]     SATELLITE       NA        NA
      943  2013-09-22 06:00:00   0.000000 [m]     SATELLITE       NA        NA
      944  2013-09-22 07:00:00   0.000000 [m]     SATELLITE       NA        NA
      945  2013-09-22 08:00:00   0.000000 [m]     SATELLITE       NA        NA
      946  2013-09-22 09:00:00   0.000000 [m]     SATELLITE       NA        NA
      947  2013-09-22 10:00:00   0.000000 [m]     SATELLITE       NA        NA
      948  2013-09-22 11:00:00   0.000000 [m]     SATELLITE       NA        NA
      949  2013-09-22 12:00:00   0.672435 [m]     SATELLITE       NA        NA
      950  2013-09-22 13:00:00   0.000000 [m]     SATELLITE       NA        NA
      951  2013-09-22 14:00:00   0.000000 [m]     SATELLITE       NA        NA
      952  2013-09-22 15:00:00   0.000000 [m]     SATELLITE       NA        NA
      953  2013-09-22 16:00:00   0.672435 [m]     SATELLITE       NA        NA
      954  2013-09-22 17:00:00   0.000000 [m]     SATELLITE       NA        NA
      955  2013-09-22 18:00:00   0.000000 [m]     SATELLITE       NA        NA
      956  2013-09-22 19:00:00   0.000000 [m]     SATELLITE       NA        NA
      957  2013-09-22 20:00:00   0.000000 [m]     SATELLITE       NA        NA
      958  2013-09-22 21:00:00   0.000000 [m]     SATELLITE       NA        NA
      959  2013-09-22 22:00:00   0.000000 [m]     SATELLITE       NA        NA
      960  2013-09-22 23:00:00   0.000000 [m]     SATELLITE       NA        NA
      961  2013-09-23 00:30:00   0.000000 [m]     SATELLITE       NA        NA
      962  2013-09-23 00:45:00   0.000000 [m]     SATELLITE       NA        NA
      963  2013-09-23 01:30:00   0.000000 [m]     SATELLITE       NA        NA
      964  2013-09-23 01:45:00   0.000000 [m]     SATELLITE       NA        NA
      965  2013-09-23 02:30:00   0.000000 [m]     SATELLITE       NA        NA
      966  2013-09-23 02:45:00   0.000000 [m]     SATELLITE       NA        NA
      967  2013-09-23 03:30:00   0.000000 [m]     SATELLITE       NA        NA
      968  2013-09-23 03:45:00   0.000000 [m]     SATELLITE       NA        NA
      969  2013-09-23 04:30:00   0.000000 [m]     SATELLITE       NA        NA
      970  2013-09-23 04:45:00   0.000000 [m]     SATELLITE       NA        NA
      971  2013-09-23 05:30:00   0.000000 [m]     SATELLITE       NA        NA
      972  2013-09-23 05:45:00   0.672435 [m]     SATELLITE       NA        NA
      973  2013-09-23 06:30:00   0.672435 [m]     SATELLITE       NA        NA
      974  2013-09-23 06:45:00   0.000000 [m]     SATELLITE       NA        NA
      975  2013-09-23 07:30:00   0.672435 [m]     SATELLITE       NA        NA
      976  2013-09-23 07:45:00   0.672435 [m]     SATELLITE       NA        NA
      977  2013-09-23 08:30:00   0.000000 [m]     SATELLITE       NA        NA
      978  2013-09-23 08:45:00   0.000000 [m]     SATELLITE       NA        NA
      979  2013-09-23 09:30:00   0.000000 [m]     SATELLITE       NA        NA
      980  2013-09-23 09:45:00   0.000000 [m]     SATELLITE       NA        NA
      981  2013-09-23 10:30:00   0.672435 [m]     SATELLITE       NA        NA
      982  2013-09-23 10:45:00   0.000000 [m]     SATELLITE       NA        NA
      983  2013-09-23 11:30:00   0.000000 [m]     SATELLITE       NA        NA
      984  2013-09-23 11:45:00   0.000000 [m]     SATELLITE       NA        NA
      985  2013-09-23 12:30:00   0.000000 [m]     SATELLITE       NA        NA
      986  2013-09-23 12:45:00   0.000000 [m]     SATELLITE       NA        NA
      987  2013-09-23 13:30:00   0.000000 [m]     SATELLITE       NA        NA
      988  2013-09-23 13:45:00   0.000000 [m]     SATELLITE       NA        NA
      989  2013-09-23 14:30:00   0.000000 [m]     SATELLITE       NA        NA
      990  2013-09-23 14:45:00   0.000000 [m]     SATELLITE       NA        NA
      991  2013-09-23 15:30:00   0.000000 [m]     SATELLITE       NA        NA
      992  2013-09-23 15:45:00   0.000000 [m]     SATELLITE       NA        NA
      993  2013-09-23 16:30:00   0.000000 [m]     SATELLITE       NA        NA
      994  2013-09-23 16:45:00   0.000000 [m]     SATELLITE       NA        NA
      995  2013-09-23 17:30:00   0.000000 [m]     SATELLITE       NA        NA
      996  2013-09-23 17:45:00   0.000000 [m]     SATELLITE       NA        NA
      997  2013-09-23 18:30:00   0.000000 [m]     SATELLITE       NA        NA
      998  2013-09-23 18:45:00   0.000000 [m]     SATELLITE       NA        NA
      999  2013-09-23 19:30:00   0.000000 [m]     SATELLITE       NA        NA
      1000 2013-09-23 19:45:00   0.000000 [m]     SATELLITE       NA        NA
      1001 2013-09-23 20:30:00   0.000000 [m]     SATELLITE       NA        NA
      1002 2013-09-23 20:45:00   0.000000 [m]     SATELLITE       NA        NA
      1003 2013-09-23 21:30:00   0.000000 [m]     SATELLITE       NA        NA
      1004 2013-09-23 21:45:00   0.000000 [m]     SATELLITE       NA        NA
      1005 2013-09-23 22:30:00   0.000000 [m]     SATELLITE       NA        NA
      1006 2013-09-23 22:45:00   0.000000 [m]     SATELLITE       NA        NA
      1007 2013-09-23 23:30:00   0.000000 [m]     SATELLITE       NA        NA
      1008 2013-09-23 23:45:00   0.000000 [m]     SATELLITE       NA        NA
      1009 2013-09-24 00:00:00   0.000000 [m]     SATELLITE       NA        NA
      1010 2013-09-24 00:45:00   0.000000 [m]     SATELLITE       NA        NA
      1011 2013-09-24 01:00:00   0.000000 [m]     SATELLITE       NA        NA
      1012 2013-09-24 01:45:00   0.000000 [m]     SATELLITE       NA        NA
      1013 2013-09-24 02:00:00   0.000000 [m]     SATELLITE       NA        NA
      1014 2013-09-24 02:45:00   0.000000 [m]     SATELLITE       NA        NA
      1015 2013-09-24 03:00:00   0.000000 [m]     SATELLITE       NA        NA
      1016 2013-09-24 03:45:00   0.000000 [m]     SATELLITE       NA        NA
      1017 2013-09-24 04:00:00   0.000000 [m]     SATELLITE       NA        NA
      1018 2013-09-24 04:45:00   0.000000 [m]     SATELLITE       NA        NA
      1019 2013-09-24 05:00:00   0.000000 [m]     SATELLITE       NA        NA
      1020 2013-09-24 05:45:00   0.000000 [m]     SATELLITE       NA        NA
      1021 2013-09-24 06:00:00   0.000000 [m]     SATELLITE       NA        NA
      1022 2013-09-24 06:45:00   0.000000 [m]     SATELLITE       NA        NA
      1023 2013-09-24 07:00:00   0.000000 [m]     SATELLITE       NA        NA
      1024 2013-09-24 07:45:00   0.000000 [m]     SATELLITE       NA        NA
      1025 2013-09-24 08:00:00   0.000000 [m]     SATELLITE       NA        NA
      1026 2013-09-24 08:45:00   0.000000 [m]     SATELLITE       NA        NA
      1027 2013-09-24 09:00:00   0.000000 [m]     SATELLITE       NA        NA
      1028 2013-09-24 09:45:00   0.000000 [m]     SATELLITE       NA        NA
      1029 2013-09-24 10:00:00   0.000000 [m]     SATELLITE       NA        NA
      1030 2013-09-24 10:45:00   0.000000 [m]     SATELLITE       NA        NA
      1031 2013-09-24 11:00:00   0.000000 [m]     SATELLITE       NA        NA
      1032 2013-09-24 11:45:00   0.000000 [m]     SATELLITE       NA        NA
      1033 2013-09-24 12:00:00   0.000000 [m]     SATELLITE       NA        NA
      1034 2013-09-24 12:45:00   0.000000 [m]     SATELLITE       NA        NA
      1035 2013-09-24 13:00:00   0.000000 [m]     SATELLITE       NA        NA
      1036 2013-09-24 13:45:00   0.000000 [m]     SATELLITE       NA        NA
      1037 2013-09-24 14:00:00   0.000000 [m]     SATELLITE       NA        NA
      1038 2013-09-24 14:45:00   0.000000 [m]     SATELLITE       NA        NA
      1039 2013-09-24 15:00:00   0.000000 [m]     SATELLITE       NA        NA
      1040 2013-09-24 15:45:00   0.000000 [m]     SATELLITE       NA        NA
      1041 2013-09-24 16:00:00   0.000000 [m]     SATELLITE       NA        NA
      1042 2013-09-24 16:45:00   0.000000 [m]     SATELLITE       NA        NA
      1043 2013-09-24 17:00:00   0.000000 [m]     SATELLITE       NA        NA
      1044 2013-09-24 17:45:00   0.000000 [m]     SATELLITE       NA        NA
      1045 2013-09-24 18:00:00   0.000000 [m]     SATELLITE       NA        NA
      1046 2013-09-24 18:35:16         NA [m]     SATELLITE   56.383   134.637
      1047 2013-09-24 18:45:00   0.000000 [m]     SATELLITE       NA        NA
      1048 2013-09-24 19:00:00   0.000000 [m]     SATELLITE       NA        NA
      1049 2013-09-24 19:45:00   0.000000 [m]     SATELLITE       NA        NA
      1050 2013-09-24 20:00:00   0.672435 [m]     SATELLITE       NA        NA
      1051 2013-09-24 20:45:00   0.672435 [m]     SATELLITE       NA        NA
      1052 2013-09-24 21:00:00   0.000000 [m]     SATELLITE       NA        NA
      1053 2013-09-24 21:45:00   0.000000 [m]     SATELLITE       NA        NA
      1054 2013-09-24 22:00:00   0.000000 [m]     SATELLITE       NA        NA
      1055 2013-09-24 22:45:00   0.000000 [m]     SATELLITE       NA        NA
      1056 2013-09-24 23:00:00   0.000000 [m]     SATELLITE       NA        NA
      1057 2013-09-24 23:45:00   0.000000 [m]     SATELLITE       NA        NA
      1058 2013-09-25 00:45:00   0.000000 [m]     SATELLITE       NA        NA
      1059 2013-09-25 01:06:46         NA [m]     SATELLITE   56.384   134.641
      1060 2013-09-25 01:45:00   0.000000 [m]     SATELLITE       NA        NA
      1061 2013-09-25 02:45:00   0.000000 [m]     SATELLITE       NA        NA
      1062 2013-09-25 03:45:00   0.000000 [m]     SATELLITE       NA        NA
      1063 2013-09-25 04:45:00   0.672435 [m]     SATELLITE       NA        NA
      1064 2013-09-25 05:45:00   0.672435 [m]     SATELLITE       NA        NA
      1065 2013-09-25 06:45:00   0.000000 [m]     SATELLITE       NA        NA
      1066 2013-09-25 07:45:00   0.672435 [m]     SATELLITE       NA        NA
      1067 2013-09-25 08:45:00   0.000000 [m]     SATELLITE       NA        NA
      1068 2013-09-25 09:45:00   0.000000 [m]     SATELLITE       NA        NA
      1069 2013-09-25 10:45:00   0.000000 [m]     SATELLITE       NA        NA
      1070 2013-09-25 11:31:12         NA [m]     SATELLITE   56.382   134.642
      1071 2013-09-25 11:45:00   0.000000 [m]     SATELLITE       NA        NA
      1072 2013-09-25 12:45:00   0.672435 [m]     SATELLITE       NA        NA
      1073 2013-09-25 13:45:00   0.672435 [m]     SATELLITE       NA        NA
      1074 2013-09-25 13:53:36         NA [m]     SATELLITE   56.410   134.764
      1075 2013-09-25 14:14:09         NA [m]     SATELLITE   56.386   134.630
      1076 2013-09-25 14:45:00   0.672435 [m]     SATELLITE       NA        NA
      1077 2013-09-25 14:52:18         NA [m]     SATELLITE   56.384   134.637
      1078 2013-09-25 15:45:00   0.672435 [m]     SATELLITE       NA        NA
      1079 2013-09-25 16:45:00   0.672435 [m]     SATELLITE       NA        NA
      1080 2013-09-25 17:45:00   0.672435 [m]     SATELLITE       NA        NA
      1081 2013-09-25 18:45:00   0.672435 [m]     SATELLITE       NA        NA
      1082 2013-09-25 19:45:00   0.672435 [m]     SATELLITE       NA        NA
      1083 2013-09-25 20:45:00   0.672435 [m]     SATELLITE       NA        NA
      1084 2013-09-25 21:45:00   0.672435 [m]     SATELLITE       NA        NA
      1085 2013-09-25 22:45:00   0.672435 [m]     SATELLITE       NA        NA
      1086 2013-09-25 23:45:00   0.672435 [m]     SATELLITE       NA        NA
      1087 2013-09-26 00:00:00   0.672435 [m]     SATELLITE       NA        NA
      1088 2013-09-26 00:42:00         NA [m]     SATELLITE   56.386   134.648
      1089 2013-09-26 01:00:00   0.672435 [m]     SATELLITE       NA        NA
      1090 2013-09-26 02:00:00   0.672435 [m]     SATELLITE       NA        NA
      1091 2013-09-26 03:00:00   0.672435 [m]     SATELLITE       NA        NA
      1092 2013-09-26 04:00:00   0.672435 [m]     SATELLITE       NA        NA
      1093 2013-09-26 05:00:00   0.672435 [m]     SATELLITE       NA        NA
      1094 2013-09-26 05:59:11         NA [m]     SATELLITE   56.385   134.642
      1095 2013-09-26 05:59:11         NA [m]     SATELLITE   56.385   134.642
      1096 2013-09-26 06:00:00   0.672435 [m]     SATELLITE       NA        NA
      1097 2013-09-26 07:00:00   0.672435 [m]     SATELLITE       NA        NA
      1098 2013-09-26 08:00:00   0.000000 [m]     SATELLITE       NA        NA
      1099 2013-09-26 09:00:00   0.000000 [m]     SATELLITE       NA        NA
      1100 2013-09-26 10:00:00   0.672435 [m]     SATELLITE       NA        NA
      1101 2013-09-26 11:00:00   0.000000 [m]     SATELLITE       NA        NA
      1102 2013-09-26 12:00:00   0.672435 [m]     SATELLITE       NA        NA
      1103 2013-09-26 13:00:00   0.672435 [m]     SATELLITE       NA        NA
      1104 2013-09-26 13:44:02         NA [m]     SATELLITE   56.384   134.646
      1105 2013-09-26 14:00:00   0.672435 [m]     SATELLITE       NA        NA
      1106 2013-09-26 15:00:00   0.000000 [m]     SATELLITE       NA        NA
      1107 2013-09-26 16:00:00   0.672435 [m]     SATELLITE       NA        NA
      1108 2013-09-26 17:00:00   0.000000 [m]     SATELLITE       NA        NA
      1109 2013-09-26 18:00:00   0.672435 [m]     SATELLITE       NA        NA
      1110 2013-09-26 19:00:00   0.672435 [m]     SATELLITE       NA        NA
      1111 2013-09-26 20:00:00   0.672435 [m]     SATELLITE       NA        NA
      1112 2013-09-26 21:00:00   0.000000 [m]     SATELLITE       NA        NA
      1113 2013-09-26 22:00:00   0.000000 [m]     SATELLITE       NA        NA
      1114 2013-09-26 23:00:00   0.000000 [m]     SATELLITE       NA        NA
      1115 2013-09-27 00:00:00   0.000000 [m]     SATELLITE       NA        NA
      1116 2013-09-27 00:45:00   0.000000 [m]     SATELLITE       NA        NA
      1117 2013-09-27 01:00:00   0.000000 [m]     SATELLITE       NA        NA
      1118 2013-09-27 01:45:00   0.000000 [m]     SATELLITE       NA        NA
      1119 2013-09-27 02:00:00   0.000000 [m]     SATELLITE       NA        NA
      1120 2013-09-27 02:45:00   0.000000 [m]     SATELLITE       NA        NA
      1121 2013-09-27 03:00:00   0.000000 [m]     SATELLITE       NA        NA
      1122 2013-09-27 03:45:00   0.000000 [m]     SATELLITE       NA        NA
      1123 2013-09-27 04:00:00   0.000000 [m]     SATELLITE       NA        NA
      1124 2013-09-27 04:45:00   0.000000 [m]     SATELLITE       NA        NA
      1125 2013-09-27 05:00:00   0.000000 [m]     SATELLITE       NA        NA
      1126 2013-09-27 05:45:00   0.000000 [m]     SATELLITE       NA        NA
      1127 2013-09-27 06:00:00   0.000000 [m]     SATELLITE       NA        NA
      1128 2013-09-27 06:45:00   0.000000 [m]     SATELLITE       NA        NA
      1129 2013-09-27 07:00:00   0.000000 [m]     SATELLITE       NA        NA
      1130 2013-09-27 07:45:00   0.000000 [m]     SATELLITE       NA        NA
      1131 2013-09-27 08:00:00   0.000000 [m]     SATELLITE       NA        NA
      1132 2013-09-27 08:45:00   0.672435 [m]     SATELLITE       NA        NA
      1133 2013-09-27 09:00:00   0.672435 [m]     SATELLITE       NA        NA
      1134 2013-09-27 09:45:00   0.672435 [m]     SATELLITE       NA        NA
      1135 2013-09-27 10:00:00   0.672435 [m]     SATELLITE       NA        NA
      1136 2013-09-27 10:45:00   0.672435 [m]     SATELLITE       NA        NA
      1137 2013-09-27 11:00:00   0.672435 [m]     SATELLITE       NA        NA
      1138 2013-09-27 11:45:00   0.672435 [m]     SATELLITE       NA        NA
      1139 2013-09-27 12:00:00   0.000000 [m]     SATELLITE       NA        NA
      1140 2013-09-27 12:45:00   0.000000 [m]     SATELLITE       NA        NA
      1141 2013-09-27 13:00:00   0.000000 [m]     SATELLITE       NA        NA
      1142 2013-09-27 13:45:00   0.000000 [m]     SATELLITE       NA        NA
      1143 2013-09-27 14:00:00   0.000000 [m]     SATELLITE       NA        NA
      1144 2013-09-27 14:45:00   0.672435 [m]     SATELLITE       NA        NA
      1145 2013-09-27 15:00:00   0.672435 [m]     SATELLITE       NA        NA
      1146 2013-09-27 15:45:00   0.000000 [m]     SATELLITE       NA        NA
      1147 2013-09-27 16:00:00   0.000000 [m]     SATELLITE       NA        NA
      1148 2013-09-27 16:45:00   0.672435 [m]     SATELLITE       NA        NA
      1149 2013-09-27 17:00:00   0.672435 [m]     SATELLITE       NA        NA
      1150 2013-09-27 17:45:00   0.000000 [m]     SATELLITE       NA        NA
      1151 2013-09-27 18:00:00   0.672435 [m]     SATELLITE       NA        NA
      1152 2013-09-27 18:45:00   0.672435 [m]     SATELLITE       NA        NA
      1153 2013-09-27 19:00:00   0.000000 [m]     SATELLITE       NA        NA
      1154 2013-09-27 19:27:14         NA [m]     SATELLITE   56.390   134.650
      1155 2013-09-27 19:45:00   0.000000 [m]     SATELLITE       NA        NA
      1156 2013-09-27 20:00:00   0.000000 [m]     SATELLITE       NA        NA
      1157 2013-09-27 20:45:00   0.000000 [m]     SATELLITE       NA        NA
      1158 2013-09-27 21:00:00   0.000000 [m]     SATELLITE       NA        NA
      1159 2013-09-27 21:45:00   0.672435 [m]     SATELLITE       NA        NA
      1160 2013-09-27 22:00:00   0.000000 [m]     SATELLITE       NA        NA
      1161 2013-09-27 22:45:00   0.000000 [m]     SATELLITE       NA        NA
      1162 2013-09-27 23:00:00   0.000000 [m]     SATELLITE       NA        NA
      1163 2013-09-27 23:45:00   0.672435 [m]     SATELLITE       NA        NA
      1164 2013-09-28 00:00:00         NA [m]     SATELLITE       NA        NA
      1165 2013-09-28 00:30:00   0.000000 [m]     SATELLITE       NA        NA
      1166 2013-09-28 00:45:00         NA [m]     SATELLITE       NA        NA
      1167 2013-09-28 01:00:00         NA [m]     SATELLITE       NA        NA
      1168 2013-09-28 01:30:00   0.672435 [m]     SATELLITE       NA        NA
      1169 2013-09-28 01:33:03         NA [m]     SATELLITE   56.368   134.660
      1170 2013-09-28 01:45:00         NA [m]     SATELLITE       NA        NA
      1171 2013-09-28 02:00:00         NA [m]     SATELLITE       NA        NA
      1172 2013-09-28 02:30:00   0.000000 [m]     SATELLITE       NA        NA
      1173 2013-09-28 02:45:00         NA [m]     SATELLITE       NA        NA
      1174 2013-09-28 03:00:00         NA [m]     SATELLITE       NA        NA
      1175 2013-09-28 03:30:00   0.000000 [m]     SATELLITE       NA        NA
      1176 2013-09-28 03:45:00         NA [m]     SATELLITE       NA        NA
      1177 2013-09-28 04:00:00         NA [m]     SATELLITE       NA        NA
      1178 2013-09-28 04:30:00   0.000000 [m]     SATELLITE       NA        NA
      1179 2013-09-28 04:45:00         NA [m]     SATELLITE       NA        NA
      1180 2013-09-28 05:00:00         NA [m]     SATELLITE       NA        NA
      1181 2013-09-28 05:17:28         NA [m]     SATELLITE   56.378   134.610
      1182 2013-09-28 05:30:00   0.000000 [m]     SATELLITE       NA        NA
      1183 2013-09-28 05:45:00         NA [m]     SATELLITE       NA        NA
      1184 2013-09-28 06:00:00         NA [m]     SATELLITE       NA        NA
      1185 2013-09-28 06:30:00   0.000000 [m]     SATELLITE       NA        NA
      1186 2013-09-28 06:45:00         NA [m]     SATELLITE       NA        NA
      1187 2013-09-28 07:00:00         NA [m]     SATELLITE       NA        NA
      1188 2013-09-28 07:30:00   0.000000 [m]     SATELLITE       NA        NA
      1189 2013-09-28 07:45:00         NA [m]     SATELLITE       NA        NA
      1190 2013-09-28 08:00:00         NA [m]     SATELLITE       NA        NA
      1191 2013-09-28 08:30:00   0.000000 [m]     SATELLITE       NA        NA
      1192 2013-09-28 08:45:00         NA [m]     SATELLITE       NA        NA
      1193 2013-09-28 09:00:00         NA [m]     SATELLITE       NA        NA
      1194 2013-09-28 09:30:00   0.000000 [m]     SATELLITE       NA        NA
      1195 2013-09-28 09:45:00         NA [m]     SATELLITE       NA        NA
      1196 2013-09-28 10:00:00         NA [m]     SATELLITE       NA        NA
      1197 2013-09-28 10:30:00   0.000000 [m]     SATELLITE       NA        NA
      1198 2013-09-28 10:45:00         NA [m]     SATELLITE       NA        NA
      1199 2013-09-28 11:00:00         NA [m]     SATELLITE       NA        NA
      1200 2013-09-28 11:30:00   0.000000 [m]     SATELLITE       NA        NA
      1201 2013-09-28 11:45:00         NA [m]     SATELLITE       NA        NA
      1202 2013-09-28 12:00:00         NA [m]     SATELLITE       NA        NA
      1203 2013-09-28 12:30:00   0.000000 [m]     SATELLITE       NA        NA
      1204 2013-09-28 12:45:00         NA [m]     SATELLITE       NA        NA
      1205 2013-09-28 13:00:00         NA [m]     SATELLITE       NA        NA
      1206 2013-09-28 13:21:40         NA [m]     SATELLITE   56.400   134.578
      1207 2013-09-28 13:30:00   0.000000 [m]     SATELLITE       NA        NA
      1208 2013-09-28 13:45:00         NA [m]     SATELLITE       NA        NA
      1209 2013-09-28 14:00:00         NA [m]     SATELLITE       NA        NA
      1210 2013-09-28 14:20:49         NA [m]     SATELLITE   56.317   134.999
      1211 2013-09-28 14:30:00   0.672435 [m]     SATELLITE       NA        NA
      1212 2013-09-28 14:45:00         NA [m]     SATELLITE       NA        NA
      1213 2013-09-28 15:00:00         NA [m]     SATELLITE       NA        NA
      1214 2013-09-28 15:30:00   0.000000 [m]     SATELLITE       NA        NA
      1215 2013-09-28 15:45:00         NA [m]     SATELLITE       NA        NA
      1216 2013-09-28 16:00:00         NA [m]     SATELLITE       NA        NA
      1217 2013-09-28 16:30:00   0.000000 [m]     SATELLITE       NA        NA
      1218 2013-09-28 16:45:00         NA [m]     SATELLITE       NA        NA
      1219 2013-09-28 17:00:00         NA [m]     SATELLITE       NA        NA
      1220 2013-09-28 17:30:00   0.000000 [m]     SATELLITE       NA        NA
      1221 2013-09-28 17:45:00         NA [m]     SATELLITE       NA        NA
      1222 2013-09-28 18:00:00         NA [m]     SATELLITE       NA        NA
      1223 2013-09-28 18:30:00   0.000000 [m]     SATELLITE       NA        NA
      1224 2013-09-28 18:45:00         NA [m]     SATELLITE       NA        NA
      1225 2013-09-28 19:00:00         NA [m]     SATELLITE       NA        NA
      1226 2013-09-28 19:06:22         NA [m]     SATELLITE   56.398   134.641
      1227 2013-09-28 19:30:00   0.000000 [m]     SATELLITE       NA        NA
      1228 2013-09-28 19:45:00         NA [m]     SATELLITE       NA        NA
      1229 2013-09-28 20:00:00         NA [m]     SATELLITE       NA        NA
      1230 2013-09-28 20:30:00   0.000000 [m]     SATELLITE       NA        NA
      1231 2013-09-28 20:45:00         NA [m]     SATELLITE       NA        NA
      1232 2013-09-28 21:00:00         NA [m]     SATELLITE       NA        NA
      1233 2013-09-28 21:30:00   0.000000 [m]     SATELLITE       NA        NA
      1234 2013-09-28 21:45:00         NA [m]     SATELLITE       NA        NA
      1235 2013-09-28 22:00:00         NA [m]     SATELLITE       NA        NA
      1236 2013-09-28 22:30:00   0.000000 [m]     SATELLITE       NA        NA
      1237 2013-09-28 22:45:00         NA [m]     SATELLITE       NA        NA
      1238 2013-09-28 23:00:00         NA [m]     SATELLITE       NA        NA
      1239 2013-09-28 23:15:19         NA [m]     SATELLITE   56.384   134.645
      1240 2013-09-28 23:30:00   0.000000 [m]     SATELLITE       NA        NA
      1241 2013-09-28 23:45:00         NA [m]     SATELLITE       NA        NA
      1242 2013-09-29 00:00:00   0.000000 [m]     SATELLITE       NA        NA
      1243 2013-09-29 00:15:00         NA [m]     SATELLITE       NA        NA
      1244 2013-09-29 01:00:00   0.000000 [m]     SATELLITE       NA        NA
      1245 2013-09-29 01:07:56         NA [m]     SATELLITE   56.379   134.633
      1246 2013-09-29 01:15:00         NA [m]     SATELLITE       NA        NA
      1247 2013-09-29 02:00:00   0.000000 [m]     SATELLITE       NA        NA
      1248 2013-09-29 02:15:00         NA [m]     SATELLITE       NA        NA
      1249 2013-09-29 03:00:00   0.000000 [m]     SATELLITE       NA        NA
      1250 2013-09-29 03:15:00         NA [m]     SATELLITE       NA        NA
      1251 2013-09-29 04:00:00   0.000000 [m]     SATELLITE       NA        NA
      1252 2013-09-29 04:15:00         NA [m]     SATELLITE       NA        NA
      1253 2013-09-29 05:00:00   0.000000 [m]     SATELLITE       NA        NA
      1254 2013-09-29 05:15:00         NA [m]     SATELLITE       NA        NA
      1255 2013-09-29 05:21:55         NA [m]     SATELLITE   56.384   134.645
      1256 2013-09-29 06:00:00   0.000000 [m]     SATELLITE       NA        NA
      1257 2013-09-29 06:15:00         NA [m]     SATELLITE       NA        NA
      1258 2013-09-29 07:00:00   0.000000 [m]     SATELLITE       NA        NA
      1259 2013-09-29 07:15:00         NA [m]     SATELLITE       NA        NA
      1260 2013-09-29 08:00:00   0.000000 [m]     SATELLITE       NA        NA
      1261 2013-09-29 08:15:00         NA [m]     SATELLITE       NA        NA
      1262 2013-09-29 09:00:00   0.000000 [m]     SATELLITE       NA        NA
      1263 2013-09-29 09:15:00         NA [m]     SATELLITE       NA        NA
      1264 2013-09-29 10:00:00   0.000000 [m]     SATELLITE       NA        NA
      1265 2013-09-29 10:15:00         NA [m]     SATELLITE       NA        NA
      1266 2013-09-29 11:00:00   0.000000 [m]     SATELLITE       NA        NA
      1267 2013-09-29 11:15:00         NA [m]     SATELLITE       NA        NA
      1268 2013-09-29 12:00:00   0.000000 [m]     SATELLITE       NA        NA
      1269 2013-09-29 12:15:00         NA [m]     SATELLITE       NA        NA
      1270 2013-09-29 13:00:00   0.000000 [m]     SATELLITE       NA        NA
      1271 2013-09-29 13:10:39         NA [m]     SATELLITE   56.396   134.605
      1272 2013-09-29 13:15:00         NA [m]     SATELLITE       NA        NA
      1273 2013-09-29 13:48:49         NA [m]     SATELLITE   56.381   134.590
      1274 2013-09-29 14:00:00   0.000000 [m]     SATELLITE       NA        NA
      1275 2013-09-29 14:15:00         NA [m]     SATELLITE       NA        NA
      1276 2013-09-29 14:55:01         NA [m]     SATELLITE   56.384   134.636
      1277 2013-09-29 15:00:00   0.000000 [m]     SATELLITE       NA        NA
      1278 2013-09-29 15:15:00         NA [m]     SATELLITE       NA        NA
      1279 2013-09-29 16:00:00   0.000000 [m]     SATELLITE       NA        NA
      1280 2013-09-29 16:15:00         NA [m]     SATELLITE       NA        NA
      1281 2013-09-29 17:00:00   0.000000 [m]     SATELLITE       NA        NA
      1282 2013-09-29 17:15:00         NA [m]     SATELLITE       NA        NA
      1283 2013-09-29 18:00:00   0.000000 [m]     SATELLITE       NA        NA
      1284 2013-09-29 18:15:00         NA [m]     SATELLITE       NA        NA
      1285 2013-09-29 18:45:27         NA [m]     SATELLITE   56.394   134.646
      1286 2013-09-29 19:00:00   0.000000 [m]     SATELLITE       NA        NA
      1287 2013-09-29 19:15:00         NA [m]     SATELLITE       NA        NA
      1288 2013-09-29 19:16:03         NA [m]     SATELLITE   56.383   134.637
      1289 2013-09-29 20:00:00   0.000000 [m]     SATELLITE       NA        NA
      1290 2013-09-29 20:15:00         NA [m]     SATELLITE       NA        NA
      1291 2013-09-29 21:00:00   0.000000 [m]     SATELLITE       NA        NA
      1292 2013-09-29 21:15:00         NA [m]     SATELLITE       NA        NA
      1293 2013-09-29 22:00:00   0.000000 [m]     SATELLITE       NA        NA
      1294 2013-09-29 22:15:00         NA [m]     SATELLITE       NA        NA
      1295 2013-09-29 22:22:56         NA [m]     SATELLITE   56.382   134.642
      1296 2013-09-29 23:00:00   0.000000 [m]     SATELLITE       NA        NA
      1297 2013-09-29 23:05:31         NA [m]     SATELLITE   56.383   134.635
      1298 2013-09-29 23:15:00         NA [m]     SATELLITE       NA        NA
      1299 2013-09-30 00:00:00         NA [m]     SATELLITE       NA        NA
      1300 2013-09-30 00:15:00   0.000000 [m]     SATELLITE       NA        NA
      1301 2013-09-30 00:44:08         NA [m]     SATELLITE   56.383   134.646
      1302 2013-09-30 01:00:00         NA [m]     SATELLITE       NA        NA
      1303 2013-09-30 01:15:00   0.672435 [m]     SATELLITE       NA        NA
      1304 2013-09-30 02:00:00         NA [m]     SATELLITE       NA        NA
      1305 2013-09-30 02:15:00   0.000000 [m]     SATELLITE       NA        NA
      1306 2013-09-30 03:00:00         NA [m]     SATELLITE       NA        NA
      1307 2013-09-30 03:15:00   0.000000 [m]     SATELLITE       NA        NA
      1308 2013-09-30 04:00:00         NA [m]     SATELLITE       NA        NA
      1309 2013-09-30 04:15:00   0.000000 [m]     SATELLITE       NA        NA
      1310 2013-09-30 05:00:00         NA [m]     SATELLITE       NA        NA
      1311 2013-09-30 05:09:41         NA [m]     SATELLITE   56.386   134.551
      1312 2013-09-30 05:15:00   0.000000 [m]     SATELLITE       NA        NA
      1313 2013-09-30 06:00:00         NA [m]     SATELLITE       NA        NA
      1314 2013-09-30 06:15:00   0.000000 [m]     SATELLITE       NA        NA
      1315 2013-09-30 07:00:00         NA [m]     SATELLITE       NA        NA
      1316 2013-09-30 07:15:00   0.000000 [m]     SATELLITE       NA        NA
      1317 2013-09-30 08:00:00         NA [m]     SATELLITE       NA        NA
      1318 2013-09-30 08:15:00   0.000000 [m]     SATELLITE       NA        NA
      1319 2013-09-30 09:00:00         NA [m]     SATELLITE       NA        NA
      1320 2013-09-30 09:15:00   0.000000 [m]     SATELLITE       NA        NA
      1321 2013-09-30 10:00:00         NA [m]     SATELLITE       NA        NA
      1322 2013-09-30 10:15:00   0.000000 [m]     SATELLITE       NA        NA
      1323 2013-09-30 11:00:00         NA [m]     SATELLITE       NA        NA
      1324 2013-09-30 11:15:00   0.000000 [m]     SATELLITE       NA        NA
      1325 2013-09-30 12:00:00         NA [m]     SATELLITE       NA        NA
      1326 2013-09-30 12:15:00   0.000000 [m]     SATELLITE       NA        NA
      1327 2013-09-30 13:00:00         NA [m]     SATELLITE       NA        NA
      1328 2013-09-30 13:15:00   0.000000 [m]     SATELLITE       NA        NA
      1329 2013-09-30 14:00:00         NA [m]     SATELLITE       NA        NA
      1330 2013-09-30 14:15:00   0.000000 [m]     SATELLITE       NA        NA
      1331 2013-09-30 14:30:44         NA [m]     SATELLITE   56.406   134.605
      1332 2013-09-30 15:00:00         NA [m]     SATELLITE       NA        NA
      1333 2013-09-30 15:15:00   0.000000 [m]     SATELLITE       NA        NA
      1334 2013-09-30 16:00:00         NA [m]     SATELLITE       NA        NA
      1335 2013-09-30 16:15:00   0.000000 [m]     SATELLITE       NA        NA
      1336 2013-09-30 17:00:00         NA [m]     SATELLITE       NA        NA
      1337 2013-09-30 17:15:00   0.000000 [m]     SATELLITE       NA        NA
      1338 2013-09-30 18:00:00         NA [m]     SATELLITE       NA        NA
      1339 2013-09-30 18:15:00   0.000000 [m]     SATELLITE       NA        NA
      1340 2013-09-30 19:00:00         NA [m]     SATELLITE       NA        NA
      1341 2013-09-30 19:03:14         NA [m]     SATELLITE   56.391   134.681
      1342 2013-09-30 19:15:00   0.000000 [m]     SATELLITE       NA        NA
      1343 2013-09-30 20:00:00         NA [m]     SATELLITE       NA        NA
      1344 2013-09-30 20:15:00   0.000000 [m]     SATELLITE       NA        NA
      1345 2013-09-30 21:00:00         NA [m]     SATELLITE       NA        NA
      1346 2013-09-30 21:15:00   0.000000 [m]     SATELLITE       NA        NA
      1347 2013-09-30 22:00:00         NA [m]     SATELLITE       NA        NA
      1348 2013-09-30 22:13:08         NA [m]     SATELLITE   56.383   134.640
      1349 2013-09-30 22:15:00   0.000000 [m]     SATELLITE       NA        NA
      1350 2013-09-30 23:00:00         NA [m]     SATELLITE       NA        NA
      1351 2013-09-30 23:15:00   0.000000 [m]     SATELLITE       NA        NA
      1352 2013-10-01 00:00:00   0.000000 [m]     SATELLITE       NA        NA
      1353 2013-10-01 00:15:00         NA [m]     SATELLITE       NA        NA
      1354 2013-10-01 01:00:00   0.000000 [m]     SATELLITE       NA        NA
      1355 2013-10-01 01:15:00         NA [m]     SATELLITE       NA        NA
      1356 2013-10-01 02:00:00   0.000000 [m]     SATELLITE       NA        NA
      1357 2013-10-01 02:15:00         NA [m]     SATELLITE       NA        NA
      1358 2013-10-01 03:00:00   0.672435 [m]     SATELLITE       NA        NA
      1359 2013-10-01 03:15:00         NA [m]     SATELLITE       NA        NA
      1360 2013-10-01 04:00:00   0.000000 [m]     SATELLITE       NA        NA
      1361 2013-10-01 04:15:00         NA [m]     SATELLITE       NA        NA
      1362 2013-10-01 05:00:00   0.000000 [m]     SATELLITE       NA        NA
      1363 2013-10-01 05:15:00         NA [m]     SATELLITE       NA        NA
      1364 2013-10-01 05:57:13         NA [m]     SATELLITE   56.386   134.631
      1365 2013-10-01 06:00:00   0.000000 [m]     SATELLITE       NA        NA
      1366 2013-10-01 06:15:00         NA [m]     SATELLITE       NA        NA
      1367 2013-10-01 07:00:00   0.000000 [m]     SATELLITE       NA        NA
      1368 2013-10-01 07:15:00         NA [m]     SATELLITE       NA        NA
      1369 2013-10-01 08:00:00   0.000000 [m]     SATELLITE       NA        NA
      1370 2013-10-01 08:15:00         NA [m]     SATELLITE       NA        NA
      1371 2013-10-01 09:00:00   0.000000 [m]     SATELLITE       NA        NA
      1372 2013-10-01 09:15:00         NA [m]     SATELLITE       NA        NA
      1373 2013-10-01 10:00:00   0.000000 [m]     SATELLITE       NA        NA
      1374 2013-10-01 10:15:00         NA [m]     SATELLITE       NA        NA
      1375 2013-10-01 11:00:00   0.000000 [m]     SATELLITE       NA        NA
      1376 2013-10-01 11:15:00         NA [m]     SATELLITE       NA        NA
      1377 2013-10-01 12:00:00   0.000000 [m]     SATELLITE       NA        NA
      1378 2013-10-01 12:15:00         NA [m]     SATELLITE       NA        NA
      1379 2013-10-01 13:00:00   0.000000 [m]     SATELLITE       NA        NA
      1380 2013-10-01 13:15:00         NA [m]     SATELLITE       NA        NA
      1381 2013-10-01 14:00:00   0.000000 [m]     SATELLITE       NA        NA
      1382 2013-10-01 14:15:00         NA [m]     SATELLITE       NA        NA
      1383 2013-10-01 14:25:52         NA [m]     SATELLITE   56.361   134.701
      1384 2013-10-01 15:00:00   0.000000 [m]     SATELLITE       NA        NA
      1385 2013-10-01 15:15:00         NA [m]     SATELLITE       NA        NA
      1386 2013-10-01 16:00:00   0.000000 [m]     SATELLITE       NA        NA
      1387 2013-10-01 16:15:00         NA [m]     SATELLITE       NA        NA
      1388 2013-10-01 17:00:00   0.000000 [m]     SATELLITE       NA        NA
      1389 2013-10-01 17:15:00         NA [m]     SATELLITE       NA        NA
      1390 2013-10-01 18:00:00   0.000000 [m]     SATELLITE       NA        NA
      1391 2013-10-01 18:15:00         NA [m]     SATELLITE       NA        NA
      1392 2013-10-01 19:00:00   0.000000 [m]     SATELLITE       NA        NA
      1393 2013-10-01 19:15:00         NA [m]     SATELLITE       NA        NA
      1394 2013-10-01 20:00:00   0.000000 [m]     SATELLITE       NA        NA
      1395 2013-10-01 20:15:00         NA [m]     SATELLITE       NA        NA
      1396 2013-10-01 21:00:00   0.000000 [m]     SATELLITE       NA        NA
      1397 2013-10-01 21:15:00         NA [m]     SATELLITE       NA        NA
      1398 2013-10-01 22:00:00   0.000000 [m]     SATELLITE       NA        NA
      1399 2013-10-01 22:15:00         NA [m]     SATELLITE       NA        NA
      1400 2013-10-01 23:00:00   0.000000 [m]     SATELLITE       NA        NA
      1401 2013-10-01 23:15:00         NA [m]     SATELLITE       NA        NA
      1402 2013-10-02 00:00:00   0.000000 [m]     SATELLITE       NA        NA
      1403 2013-10-02 00:45:00   0.000000 [m]     SATELLITE       NA        NA
      1404 2013-10-02 01:00:00   0.000000 [m]     SATELLITE       NA        NA
      1405 2013-10-02 01:45:00   0.000000 [m]     SATELLITE       NA        NA
      1406 2013-10-02 02:00:00   0.000000 [m]     SATELLITE       NA        NA
      1407 2013-10-02 02:45:00   0.000000 [m]     SATELLITE       NA        NA
      1408 2013-10-02 03:00:00   0.000000 [m]     SATELLITE       NA        NA
      1409 2013-10-02 03:45:00   0.000000 [m]     SATELLITE       NA        NA
      1410 2013-10-02 04:00:00   0.000000 [m]     SATELLITE       NA        NA
      1411 2013-10-02 04:45:00   0.000000 [m]     SATELLITE       NA        NA
      1412 2013-10-02 05:00:00   0.000000 [m]     SATELLITE       NA        NA
      1413 2013-10-02 05:45:00   0.000000 [m]     SATELLITE       NA        NA
      1414 2013-10-02 06:00:00   0.000000 [m]     SATELLITE       NA        NA
      1415 2013-10-02 06:45:00   0.000000 [m]     SATELLITE       NA        NA
      1416 2013-10-02 07:00:00   0.000000 [m]     SATELLITE       NA        NA
      1417 2013-10-02 07:45:00   0.000000 [m]     SATELLITE       NA        NA
      1418 2013-10-02 08:00:00   0.000000 [m]     SATELLITE       NA        NA
      1419 2013-10-02 08:45:00   0.000000 [m]     SATELLITE       NA        NA
      1420 2013-10-02 09:00:00   0.000000 [m]     SATELLITE       NA        NA
      1421 2013-10-02 09:45:00   0.000000 [m]     SATELLITE       NA        NA
      1422 2013-10-02 10:00:00   0.000000 [m]     SATELLITE       NA        NA
      1423 2013-10-02 10:45:00   0.000000 [m]     SATELLITE       NA        NA
      1424 2013-10-02 11:00:00   0.000000 [m]     SATELLITE       NA        NA
      1425 2013-10-02 11:45:00   0.000000 [m]     SATELLITE       NA        NA
      1426 2013-10-02 12:00:00   0.000000 [m]     SATELLITE       NA        NA
      1427 2013-10-02 12:45:00   0.000000 [m]     SATELLITE       NA        NA
      1428 2013-10-02 13:00:00   0.000000 [m]     SATELLITE       NA        NA
      1429 2013-10-02 13:45:00   0.000000 [m]     SATELLITE       NA        NA
      1430 2013-10-02 13:54:42         NA [m]     SATELLITE   56.385   134.643
      1431 2013-10-02 14:00:00   0.000000 [m]     SATELLITE       NA        NA
      1432 2013-10-02 14:16:47         NA [m]     SATELLITE   56.388   134.637
      1433 2013-10-02 14:45:00   0.000000 [m]     SATELLITE       NA        NA
      1434 2013-10-02 15:00:00   0.000000 [m]     SATELLITE       NA        NA
      1435 2013-10-02 15:45:00   0.000000 [m]     SATELLITE       NA        NA
      1436 2013-10-02 16:00:00   0.000000 [m]     SATELLITE       NA        NA
      1437 2013-10-02 16:45:00   0.000000 [m]     SATELLITE       NA        NA
      1438 2013-10-02 17:00:00   0.000000 [m]     SATELLITE       NA        NA
      1439 2013-10-02 17:45:00   0.000000 [m]     SATELLITE       NA        NA
      1440 2013-10-02 18:00:00   0.000000 [m]     SATELLITE       NA        NA
      1441 2013-10-02 18:45:00   0.000000 [m]     SATELLITE       NA        NA
      1442 2013-10-02 19:00:00   0.000000 [m]     SATELLITE       NA        NA
      1443 2013-10-02 19:45:00   0.000000 [m]     SATELLITE       NA        NA
      1444 2013-10-02 20:00:00   0.000000 [m]     SATELLITE       NA        NA
      1445 2013-10-02 20:45:00   0.000000 [m]     SATELLITE       NA        NA
      1446 2013-10-02 21:00:00   0.000000 [m]     SATELLITE       NA        NA
      1447 2013-10-02 21:45:00   0.000000 [m]     SATELLITE       NA        NA
      1448 2013-10-02 21:50:41         NA [m]     SATELLITE   56.383   134.640
      1449 2013-10-02 22:00:00   0.000000 [m]     SATELLITE       NA        NA
      1450 2013-10-02 22:45:00   0.000000 [m]     SATELLITE       NA        NA
      1451 2013-10-02 23:00:00   0.000000 [m]     SATELLITE       NA        NA
      1452 2013-10-02 23:45:00   0.000000 [m]     SATELLITE       NA        NA
      1453 2013-10-03 00:00:00         NA [m]     SATELLITE       NA        NA
      1454 2013-10-03 00:15:00   0.000000 [m]     SATELLITE       NA        NA
      1455 2013-10-03 01:00:00         NA [m]     SATELLITE       NA        NA
      1456 2013-10-03 01:10:01         NA [m]     SATELLITE   56.387   134.662
      1457 2013-10-03 01:15:00   0.000000 [m]     SATELLITE       NA        NA
      1458 2013-10-03 02:00:00         NA [m]     SATELLITE       NA        NA
      1459 2013-10-03 02:15:00   0.000000 [m]     SATELLITE       NA        NA
      1460 2013-10-03 03:00:00         NA [m]     SATELLITE       NA        NA
      1461 2013-10-03 03:15:00   0.000000 [m]     SATELLITE       NA        NA
      1462 2013-10-03 04:00:00         NA [m]     SATELLITE       NA        NA
      1463 2013-10-03 04:15:00   0.000000 [m]     SATELLITE       NA        NA
      1464 2013-10-03 05:00:00         NA [m]     SATELLITE       NA        NA
      1465 2013-10-03 05:14:00         NA [m]     SATELLITE   56.384   134.643
      1466 2013-10-03 05:15:00   0.000000 [m]     SATELLITE       NA        NA
      1467 2013-10-03 06:00:00         NA [m]     SATELLITE       NA        NA
      1468 2013-10-03 06:15:00   0.000000 [m]     SATELLITE       NA        NA
      1469 2013-10-03 07:00:00         NA [m]     SATELLITE       NA        NA
      1470 2013-10-03 07:15:00   0.000000 [m]     SATELLITE       NA        NA
      1471 2013-10-03 08:00:00         NA [m]     SATELLITE       NA        NA
      1472 2013-10-03 08:15:00   0.000000 [m]     SATELLITE       NA        NA
      1473 2013-10-03 09:00:00         NA [m]     SATELLITE       NA        NA
      1474 2013-10-03 09:15:00   0.000000 [m]     SATELLITE       NA        NA
      1475 2013-10-03 10:00:00         NA [m]     SATELLITE       NA        NA
      1476 2013-10-03 10:15:00   0.000000 [m]     SATELLITE       NA        NA
      1477 2013-10-03 11:00:00         NA [m]     SATELLITE       NA        NA
      1478 2013-10-03 11:15:00   0.000000 [m]     SATELLITE       NA        NA
      1479 2013-10-03 12:00:00         NA [m]     SATELLITE       NA        NA
      1480 2013-10-03 12:15:00   0.000000 [m]     SATELLITE       NA        NA
      1481 2013-10-03 13:00:00         NA [m]     SATELLITE       NA        NA
      1482 2013-10-03 13:15:00   0.000000 [m]     SATELLITE       NA        NA
      1483 2013-10-03 14:00:00         NA [m]     SATELLITE       NA        NA
      1484 2013-10-03 14:05:57         NA [m]     SATELLITE   56.383   134.662
      1485 2013-10-03 14:15:00   0.000000 [m]     SATELLITE       NA        NA
      1486 2013-10-03 14:57:37         NA [m]     SATELLITE   56.385   134.642
      1487 2013-10-03 15:00:00         NA [m]     SATELLITE       NA        NA
      1488 2013-10-03 15:15:00   0.000000 [m]     SATELLITE       NA        NA
      1489 2013-10-03 16:00:00         NA [m]     SATELLITE       NA        NA
      1490 2013-10-03 16:15:00   0.000000 [m]     SATELLITE       NA        NA
      1491 2013-10-03 17:00:00         NA [m]     SATELLITE       NA        NA
      1492 2013-10-03 17:15:00   0.000000 [m]     SATELLITE       NA        NA
      1493 2013-10-03 18:00:00         NA [m]     SATELLITE       NA        NA
      1494 2013-10-03 18:15:00   0.000000 [m]     SATELLITE       NA        NA
      1495 2013-10-03 19:00:00         NA [m]     SATELLITE       NA        NA
      1496 2013-10-03 19:15:00   0.000000 [m]     SATELLITE       NA        NA
      1497 2013-10-03 20:00:00         NA [m]     SATELLITE       NA        NA
      1498 2013-10-03 20:15:00   0.000000 [m]     SATELLITE       NA        NA
      1499 2013-10-03 21:00:00         NA [m]     SATELLITE       NA        NA
      1500 2013-10-03 21:15:00   0.000000 [m]     SATELLITE       NA        NA
      1501 2013-10-03 22:00:00         NA [m]     SATELLITE       NA        NA
      1502 2013-10-03 22:15:00   0.000000 [m]     SATELLITE       NA        NA
      1503 2013-10-03 23:00:00         NA [m]     SATELLITE       NA        NA
      1504 2013-10-03 23:15:00   0.000000 [m]     SATELLITE       NA        NA
      1505 2013-10-04 00:15:00         NA [m]     SATELLITE       NA        NA
      1506 2013-10-04 00:30:00   0.000000 [m]     SATELLITE       NA        NA
      1507 2013-10-04 00:46:49         NA [m]     SATELLITE   56.358   134.800
      1508 2013-10-04 01:15:00         NA [m]     SATELLITE       NA        NA
      1509 2013-10-04 01:30:00   0.000000 [m]     SATELLITE       NA        NA
      1510 2013-10-04 02:15:00         NA [m]     SATELLITE       NA        NA
      1511 2013-10-04 02:30:00   0.000000 [m]     SATELLITE       NA        NA
      1512 2013-10-04 03:15:00         NA [m]     SATELLITE       NA        NA
      1513 2013-10-04 03:30:00   0.000000 [m]     SATELLITE       NA        NA
      1514 2013-10-04 04:15:00         NA [m]     SATELLITE       NA        NA
      1515 2013-10-04 04:30:00   0.000000 [m]     SATELLITE       NA        NA
      1516 2013-10-04 05:15:00         NA [m]     SATELLITE       NA        NA
      1517 2013-10-04 05:30:00   0.000000 [m]     SATELLITE       NA        NA
      1518 2013-10-04 06:15:00         NA [m]     SATELLITE       NA        NA
      1519 2013-10-04 06:30:00   0.000000 [m]     SATELLITE       NA        NA
      1520 2013-10-04 07:15:00         NA [m]     SATELLITE       NA        NA
      1521 2013-10-04 07:30:00   0.000000 [m]     SATELLITE       NA        NA
      1522 2013-10-04 08:15:00         NA [m]     SATELLITE       NA        NA
      1523 2013-10-04 08:30:00   0.000000 [m]     SATELLITE       NA        NA
      1524 2013-10-04 09:15:00         NA [m]     SATELLITE       NA        NA
      1525 2013-10-04 09:30:00   0.000000 [m]     SATELLITE       NA        NA
      1526 2013-10-04 10:15:00         NA [m]     SATELLITE       NA        NA
      1527 2013-10-04 10:30:00   0.000000 [m]     SATELLITE       NA        NA
      1528 2013-10-04 11:15:00         NA [m]     SATELLITE       NA        NA
      1529 2013-10-04 11:30:00   0.000000 [m]     SATELLITE       NA        NA
      1530 2013-10-04 12:15:00         NA [m]     SATELLITE       NA        NA
      1531 2013-10-04 12:30:00   0.000000 [m]     SATELLITE       NA        NA
      1532 2013-10-04 13:15:00         NA [m]     SATELLITE       NA        NA
      1533 2013-10-04 13:30:00   0.000000 [m]     SATELLITE       NA        NA
      1534 2013-10-04 14:15:00         NA [m]     SATELLITE       NA        NA
      1535 2013-10-04 14:30:00   0.000000 [m]     SATELLITE       NA        NA
      1536 2013-10-04 15:15:00         NA [m]     SATELLITE       NA        NA
      1537 2013-10-04 15:30:00   0.000000 [m]     SATELLITE       NA        NA
      1538 2013-10-04 16:15:00         NA [m]     SATELLITE       NA        NA
      1539 2013-10-04 16:30:00   0.000000 [m]     SATELLITE       NA        NA
      1540 2013-10-04 17:15:00         NA [m]     SATELLITE       NA        NA
      1541 2013-10-04 17:30:00   0.000000 [m]     SATELLITE       NA        NA
      1542 2013-10-04 18:15:00         NA [m]     SATELLITE       NA        NA
      1543 2013-10-04 18:30:00   0.000000 [m]     SATELLITE       NA        NA
      1544 2013-10-04 19:15:00         NA [m]     SATELLITE       NA        NA
      1545 2013-10-04 19:30:00   0.000000 [m]     SATELLITE       NA        NA
      1546 2013-10-04 20:15:00         NA [m]     SATELLITE       NA        NA
      1547 2013-10-04 20:30:00   0.000000 [m]     SATELLITE       NA        NA
      1548 2013-10-04 21:15:00         NA [m]     SATELLITE       NA        NA
      1549 2013-10-04 21:30:00   0.000000 [m]     SATELLITE       NA        NA
      1550 2013-10-04 22:15:00         NA [m]     SATELLITE       NA        NA
      1551 2013-10-04 22:30:00   0.000000 [m]     SATELLITE       NA        NA
      1552 2013-10-04 23:15:00         NA [m]     SATELLITE       NA        NA
      1553 2013-10-04 23:30:00   0.000000 [m]     SATELLITE       NA        NA
      1554 2013-10-05 00:15:00   0.000000 [m]     SATELLITE       NA        NA
      1555 2013-10-05 00:45:00   0.000000 [m]     SATELLITE       NA        NA
      1556 2013-10-05 01:15:00   0.000000 [m]     SATELLITE       NA        NA
      1557 2013-10-05 01:45:00   0.000000 [m]     SATELLITE       NA        NA
      1558 2013-10-05 02:15:00   0.000000 [m]     SATELLITE       NA        NA
      1559 2013-10-05 02:45:00   0.000000 [m]     SATELLITE       NA        NA
      1560 2013-10-05 03:15:00   0.000000 [m]     SATELLITE       NA        NA
      1561 2013-10-05 03:45:00   0.000000 [m]     SATELLITE       NA        NA
      1562 2013-10-05 04:15:00   0.000000 [m]     SATELLITE       NA        NA
      1563 2013-10-05 04:45:00   0.000000 [m]     SATELLITE       NA        NA
      1564 2013-10-05 05:15:00   0.000000 [m]     SATELLITE       NA        NA
      1565 2013-10-05 05:45:00   0.000000 [m]     SATELLITE       NA        NA
      1566 2013-10-05 06:15:00   0.000000 [m]     SATELLITE       NA        NA
      1567 2013-10-05 06:45:00   0.000000 [m]     SATELLITE       NA        NA
      1568 2013-10-05 07:15:00   0.000000 [m]     SATELLITE       NA        NA
      1569 2013-10-05 07:45:00   0.000000 [m]     SATELLITE       NA        NA
      1570 2013-10-05 08:15:00   0.000000 [m]     SATELLITE       NA        NA
      1571 2013-10-05 08:45:00   0.000000 [m]     SATELLITE       NA        NA
      1572 2013-10-05 09:15:00   0.000000 [m]     SATELLITE       NA        NA
      1573 2013-10-05 09:45:00   0.000000 [m]     SATELLITE       NA        NA
      1574 2013-10-05 10:15:00   0.000000 [m]     SATELLITE       NA        NA
      1575 2013-10-05 10:45:00   0.000000 [m]     SATELLITE       NA        NA
      1576 2013-10-05 11:15:00   0.000000 [m]     SATELLITE       NA        NA
      1577 2013-10-05 11:24:33         NA [m]     SATELLITE   56.390   134.695
      1578 2013-10-05 11:45:00   0.000000 [m]     SATELLITE       NA        NA
      1579 2013-10-05 12:15:00   0.000000 [m]     SATELLITE       NA        NA
      1580 2013-10-05 12:45:00   0.000000 [m]     SATELLITE       NA        NA
      1581 2013-10-05 13:15:00   0.000000 [m]     SATELLITE       NA        NA
      1582 2013-10-05 13:44:28         NA [m]     SATELLITE   56.389   134.652
      1583 2013-10-05 13:45:00   0.000000 [m]     SATELLITE       NA        NA
      1584 2013-10-05 14:00:03         NA [m]     SATELLITE   56.385   134.640
      1585 2013-10-05 14:15:00   0.000000 [m]     SATELLITE       NA        NA
      1586 2013-10-05 14:45:00   0.000000 [m]     SATELLITE       NA        NA
      1587 2013-10-05 15:15:00   0.000000 [m]     SATELLITE       NA        NA
      1588 2013-10-05 15:45:00   0.000000 [m]     SATELLITE       NA        NA
      1589 2013-10-05 16:15:00   0.000000 [m]     SATELLITE       NA        NA
      1590 2013-10-05 16:45:00   0.000000 [m]     SATELLITE       NA        NA
      1591 2013-10-05 17:15:00   0.672435 [m]     SATELLITE       NA        NA
      1592 2013-10-05 17:45:00   0.000000 [m]     SATELLITE       NA        NA
      1593 2013-10-05 18:15:00   0.672435 [m]     SATELLITE       NA        NA
      1594 2013-10-05 18:45:00   0.000000 [m]     SATELLITE       NA        NA
      1595 2013-10-05 19:15:00   0.000000 [m]     SATELLITE       NA        NA
      1596 2013-10-05 19:45:00   0.000000 [m]     SATELLITE       NA        NA
      1597 2013-10-05 20:15:00   0.672435 [m]     SATELLITE       NA        NA
      1598 2013-10-05 20:45:00   0.000000 [m]     SATELLITE       NA        NA
      1599 2013-10-05 21:15:00   0.000000 [m]     SATELLITE       NA        NA
      1600 2013-10-05 21:45:00   0.000000 [m]     SATELLITE       NA        NA
      1601 2013-10-05 22:15:00   0.000000 [m]     SATELLITE       NA        NA
      1602 2013-10-05 22:45:00   0.000000 [m]     SATELLITE       NA        NA
      1603 2013-10-05 23:15:00   0.000000 [m]     SATELLITE       NA        NA
      1604 2013-10-05 23:45:00   0.000000 [m]     SATELLITE       NA        NA
      1605 2013-10-06 00:15:00   0.000000 [m]     SATELLITE       NA        NA
      1606 2013-10-06 01:15:00   0.000000 [m]     SATELLITE       NA        NA
      1607 2013-10-06 02:15:00   0.000000 [m]     SATELLITE       NA        NA
      1608 2013-10-06 03:15:00   0.000000 [m]     SATELLITE       NA        NA
      1609 2013-10-06 04:15:00   0.000000 [m]     SATELLITE       NA        NA
      1610 2013-10-06 05:15:00   0.000000 [m]     SATELLITE       NA        NA
      1611 2013-10-06 05:36:35         NA [m]     SATELLITE   56.400   134.686
      1612 2013-10-06 05:51:37         NA [m]     SATELLITE   56.385   134.643
      1613 2013-10-06 06:15:00   0.000000 [m]     SATELLITE       NA        NA
      1614 2013-10-06 07:15:00   0.000000 [m]     SATELLITE       NA        NA
      1615 2013-10-06 08:15:00   0.000000 [m]     SATELLITE       NA        NA
      1616 2013-10-06 09:15:00   0.000000 [m]     SATELLITE       NA        NA
      1617 2013-10-06 10:15:00   0.000000 [m]     SATELLITE       NA        NA
      1618 2013-10-06 11:15:00   0.000000 [m]     SATELLITE       NA        NA
      1619 2013-10-06 12:15:00   0.000000 [m]     SATELLITE       NA        NA
      1620 2013-10-06 13:15:00   0.000000 [m]     SATELLITE       NA        NA
      1621 2013-10-06 14:15:00   0.000000 [m]     SATELLITE       NA        NA
      1622 2013-10-06 15:15:00   0.000000 [m]     SATELLITE       NA        NA
      1623 2013-10-06 16:15:00   0.000000 [m]     SATELLITE       NA        NA
      1624 2013-10-06 17:15:00   0.000000 [m]     SATELLITE       NA        NA
      1625 2013-10-06 18:15:00   0.000000 [m]     SATELLITE       NA        NA
      1626 2013-10-06 19:15:00   0.000000 [m]     SATELLITE       NA        NA
      1627 2013-10-06 20:15:00   0.672435 [m]     SATELLITE       NA        NA
      1628 2013-10-06 21:15:00   0.000000 [m]     SATELLITE       NA        NA
      1629 2013-10-06 22:15:00   0.000000 [m]     SATELLITE       NA        NA
      1630 2013-10-06 23:15:00   0.000000 [m]     SATELLITE       NA        NA
      1631 2013-10-07 01:12:43         NA [m]     SATELLITE   56.382   134.645
      1632 2013-10-07 05:30:40         NA [m]     SATELLITE   56.383   134.655
      1633 2013-10-07 13:22:45         NA [m]     SATELLITE   56.361   134.439
      1634 2013-10-11 05:48:00         NA [m]     SATELLITE   56.380   134.620
           depth_increase_delta_limit depth_decrease_delta_limit    temperature
      1                             0                          0  5.989378 [°C]
      2                             0                          0  5.989378 [°C]
      3                             0                          0  5.989378 [°C]
      4                             0                          0        NA [°C]
      5                             0                          0  5.989378 [°C]
      6                             0                          0  5.989378 [°C]
      7                             0                          0  5.989378 [°C]
      8                             0                          0        NA [°C]
      9                             0                          0  5.989378 [°C]
      10                            0                          0  5.989378 [°C]
      11                            0                          0  5.989378 [°C]
      12                            0                          0        NA [°C]
      13                            0                          0  5.989378 [°C]
      14                            0                          0  5.989378 [°C]
      15                            0                          0  5.989378 [°C]
      16                            0                          0        NA [°C]
      17                            0                          0  5.989378 [°C]
      18                            0                          0  5.989378 [°C]
      19                            0                          0  5.989378 [°C]
      20                            0                          0        NA [°C]
      21                            0                          0  5.989378 [°C]
      22                            0                          0  5.989378 [°C]
      23                            0                          0  5.989378 [°C]
      24                            0                          0        NA [°C]
      25                            0                          0  5.989378 [°C]
      26                            0                          0  5.989378 [°C]
      27                            0                          0  5.989378 [°C]
      28                            0                          0        NA [°C]
      29                            0                          0  5.989378 [°C]
      30                            0                          0  5.989378 [°C]
      31                            0                          0  5.989378 [°C]
      32                            0                          0        NA [°C]
      33                            0                          0  5.989378 [°C]
      34                            0                          0  5.989378 [°C]
      35                            0                          0  5.989378 [°C]
      36                            0                          0        NA [°C]
      37                            0                          0  5.989378 [°C]
      38                            0                          0  5.989378 [°C]
      39                            0                          0  5.989378 [°C]
      40                            0                          0        NA [°C]
      41                            0                          0  5.989378 [°C]
      42                            0                          0  5.989378 [°C]
      43                            0                          0  5.989378 [°C]
      44                            0                          0        NA [°C]
      45                            0                          0  5.989378 [°C]
      46                            0                          0  5.989378 [°C]
      47                            0                          0  5.989378 [°C]
      48                            0                          0        NA [°C]
      49                            0                          0  5.989378 [°C]
      50                            0                          0  5.989378 [°C]
      51                            0                          0  5.989378 [°C]
      52                            0                          0        NA [°C]
      53                            0                          0  5.989378 [°C]
      54                            0                          0  5.989378 [°C]
      55                            0                          0  5.989378 [°C]
      56                            0                          0        NA [°C]
      57                            0                          0  5.989378 [°C]
      58                            0                          0  5.989378 [°C]
      59                            0                          0  5.989378 [°C]
      60                            0                          0        NA [°C]
      61                            0                          0  5.989378 [°C]
      62                            0                          0  5.989378 [°C]
      63                            0                          0  5.989378 [°C]
      64                            0                          0        NA [°C]
      65                            0                          0  5.989378 [°C]
      66                            0                          0  5.989378 [°C]
      67                            0                          0  5.989378 [°C]
      68                            0                          0        NA [°C]
      69                            0                          0  5.989378 [°C]
      70                            0                          0  5.989378 [°C]
      71                            0                          0  5.989378 [°C]
      72                            0                          0        NA [°C]
      73                            0                          0  5.989378 [°C]
      74                            0                          0  5.989378 [°C]
      75                            0                          0  5.989378 [°C]
      76                            0                          0        NA [°C]
      77                            0                          0  5.989378 [°C]
      78                            0                          0  5.989378 [°C]
      79                            0                          0  5.989378 [°C]
      80                            0                          0        NA [°C]
      81                            0                          0  5.989378 [°C]
      82                            0                          0  5.989378 [°C]
      83                            0                          0  5.989378 [°C]
      84                            0                          0        NA [°C]
      85                            0                          0  5.989378 [°C]
      86                            0                          0  5.989378 [°C]
      87                            0                          0  5.989378 [°C]
      88                            0                          0        NA [°C]
      89                            0                          0  5.989378 [°C]
      90                            0                          0  5.989378 [°C]
      91                            0                          0  5.989378 [°C]
      92                            0                          0        NA [°C]
      93                            0                          0  5.989378 [°C]
      94                            0                          0  5.989378 [°C]
      95                            0                          0  5.989378 [°C]
      96                            0                          0        NA [°C]
      97                            0                          0  5.989378 [°C]
      98                            0                          0        NA [°C]
      99                            0                          0        NA [°C]
      100                           0                          0  5.989378 [°C]
      101                           0                          0        NA [°C]
      102                           0                          0        NA [°C]
      103                           0                          0  5.989378 [°C]
      104                           0                          0        NA [°C]
      105                           0                          0        NA [°C]
      106                           0                          0  5.989378 [°C]
      107                           0                          0        NA [°C]
      108                           0                          0        NA [°C]
      109                           0                          0  5.989378 [°C]
      110                           0                          0        NA [°C]
      111                           0                          0        NA [°C]
      112                           0                          0  5.989378 [°C]
      113                           0                          0        NA [°C]
      114                           0                          0        NA [°C]
      115                           0                          0  5.989378 [°C]
      116                           0                          0        NA [°C]
      117                           0                          0        NA [°C]
      118                           0                          0  5.989378 [°C]
      119                           0                          0        NA [°C]
      120                           0                          0        NA [°C]
      121                           0                          0  5.989378 [°C]
      122                           0                          0        NA [°C]
      123                           0                          0        NA [°C]
      124                           0                          0  5.989378 [°C]
      125                           0                          0        NA [°C]
      126                           0                          0        NA [°C]
      127                           0                          0  6.150173 [°C]
      128                           0                          0        NA [°C]
      129                           0                          0        NA [°C]
      130                           0                          0  5.989378 [°C]
      131                           0                          0        NA [°C]
      132                           0                          0        NA [°C]
      133                           0                          0  5.989378 [°C]
      134                           0                          0        NA [°C]
      135                           0                          0        NA [°C]
      136                           0                          0  5.989378 [°C]
      137                           0                          0        NA [°C]
      138                           0                          0        NA [°C]
      139                           0                          0  5.989378 [°C]
      140                           0                          0        NA [°C]
      141                           0                          0        NA [°C]
      142                           0                          0  5.989378 [°C]
      143                           0                          0        NA [°C]
      144                           0                          0        NA [°C]
      145                           0                          0  5.989378 [°C]
      146                           0                          0        NA [°C]
      147                           0                          0        NA [°C]
      148                           0                          0  6.150173 [°C]
      149                           0                          0        NA [°C]
      150                           0                          0        NA [°C]
      151                           0                          0  5.989378 [°C]
      152                           0                          0        NA [°C]
      153                           0                          0        NA [°C]
      154                           0                          0  5.989378 [°C]
      155                           0                          0        NA [°C]
      156                           0                          0        NA [°C]
      157                           0                          0  5.989378 [°C]
      158                           0                          0        NA [°C]
      159                           0                          0        NA [°C]
      160                           0                          0  6.150173 [°C]
      161                           0                          0        NA [°C]
      162                           0                          0        NA [°C]
      163                           0                          0  6.150173 [°C]
      164                           0                          0        NA [°C]
      165                           0                          0        NA [°C]
      166                           0                          0  5.989378 [°C]
      167                           0                          0        NA [°C]
      168                           0                          0        NA [°C]
      169                           0                          0  5.989378 [°C]
      170                           0                          0  5.989378 [°C]
      171                           0                          0  5.989378 [°C]
      172                           0                          0  5.989378 [°C]
      173                           0                          0  5.989378 [°C]
      174                           0                          0  5.989378 [°C]
      175                           0                          0  5.989378 [°C]
      176                           0                          0  5.989378 [°C]
      177                           0                          0  5.989378 [°C]
      178                           0                          0  5.989378 [°C]
      179                           0                          0  5.989378 [°C]
      180                           0                          0  5.989378 [°C]
      181                           0                          0  5.989378 [°C]
      182                           0                          0  5.989378 [°C]
      183                           0                          0  5.989378 [°C]
      184                           0                          0  5.989378 [°C]
      185                           0                          0  5.989378 [°C]
      186                           0                          0  5.989378 [°C]
      187                           0                          0  5.989378 [°C]
      188                           0                          0  5.989378 [°C]
      189                           0                          0  5.989378 [°C]
      190                           0                          0  5.989378 [°C]
      191                           0                          0  5.989378 [°C]
      192                           0                          0  5.989378 [°C]
      193                           0                          0  5.989378 [°C]
      194                           0                          0  5.989378 [°C]
      195                           0                          0  5.989378 [°C]
      196                           0                          0  5.989378 [°C]
      197                           0                          0  5.989378 [°C]
      198                           0                          0  6.150173 [°C]
      199                           0                          0  5.989378 [°C]
      200                           0                          0  5.989378 [°C]
      201                           0                          0  5.989378 [°C]
      202                           0                          0  5.989378 [°C]
      203                           0                          0  5.989378 [°C]
      204                           0                          0  5.989378 [°C]
      205                           0                          0  5.989378 [°C]
      206                           0                          0  5.989378 [°C]
      207                           0                          0  5.989378 [°C]
      208                           0                          0  5.989378 [°C]
      209                           0                          0  5.989378 [°C]
      210                           0                          0  5.989378 [°C]
      211                           0                          0  5.989378 [°C]
      212                           0                          0  5.989378 [°C]
      213                           0                          0  5.989378 [°C]
      214                           0                          0  5.989378 [°C]
      215                           0                          0  5.989378 [°C]
      216                           0                          0  5.989378 [°C]
      217                           0                          0  5.989378 [°C]
      218                           0                          0  5.989378 [°C]
      219                           0                          0  5.989378 [°C]
      220                           0                          0  5.989378 [°C]
      221                           0                          0  5.989378 [°C]
      222                           0                          0  5.989378 [°C]
      223                           0                          0  5.989378 [°C]
      224                           0                          0  5.989378 [°C]
      225                           0                          0  5.989378 [°C]
      226                           0                          0  5.989378 [°C]
      227                           0                          0  5.989378 [°C]
      228                           0                          0  5.989378 [°C]
      229                           0                          0  5.989378 [°C]
      230                           0                          0  5.989378 [°C]
      231                           0                          0  5.989378 [°C]
      232                           0                          0  5.989378 [°C]
      233                           0                          0  5.989378 [°C]
      234                           0                          0  5.989378 [°C]
      235                           0                          0  5.989378 [°C]
      236                           0                          0  5.989378 [°C]
      237                           0                          0  5.989378 [°C]
      238                           0                          0  5.989378 [°C]
      239                           0                          0  5.989378 [°C]
      240                           0                          0  5.989378 [°C]
      241                           0                          0  5.989378 [°C]
      242                           0                          0  5.989378 [°C]
      243                           0                          0  5.989378 [°C]
      244                           0                          0  5.989378 [°C]
      245                           0                          0  5.989378 [°C]
      246                           0                          0  5.989378 [°C]
      247                           0                          0  5.989378 [°C]
      248                           0                          0  5.989378 [°C]
      249                           0                          0  5.989378 [°C]
      250                           0                          0  5.989378 [°C]
      251                           0                          0  5.989378 [°C]
      252                           0                          0  5.989378 [°C]
      253                           0                          0  5.989378 [°C]
      254                           0                          0  5.989378 [°C]
      255                           0                          0  5.989378 [°C]
      256                           0                          0  5.989378 [°C]
      257                           0                          0  5.989378 [°C]
      258                           0                          0  6.150173 [°C]
      259                           0                          0  6.150173 [°C]
      260                           0                          0  6.150173 [°C]
      261                           0                          0  6.150173 [°C]
      262                           0                          0  6.150173 [°C]
      263                           0                          0  6.150173 [°C]
      264                           0                          0  5.989378 [°C]
      265                           0                          0  5.989378 [°C]
      266                           0                          0  6.150173 [°C]
      267                           0                          0  6.150173 [°C]
      268                           0                          0  5.989378 [°C]
      269                           0                          0  5.989378 [°C]
      270                           0                          0  5.989378 [°C]
      271                           0                          0  5.989378 [°C]
      272                           0                          0  5.989378 [°C]
      273                           0                          0  5.989378 [°C]
      274                           0                          0  6.150173 [°C]
      275                           0                          0  6.150173 [°C]
      276                           0                          0  6.150173 [°C]
      277                           0                          0  6.150173 [°C]
      278                           0                          0  6.150173 [°C]
      279                           0                          0  5.989378 [°C]
      280                           0                          0  6.150173 [°C]
      281                           0                          0  6.150173 [°C]
      282                           0                          0  6.150173 [°C]
      283                           0                          0  6.150173 [°C]
      284                           0                          0  6.150173 [°C]
      285                           0                          0  6.150173 [°C]
      286                           0                          0  6.150173 [°C]
      287                           0                          0  6.150173 [°C]
      288                           0                          0  6.150173 [°C]
      289                           0                          0  6.150173 [°C]
      290                           0                          0  6.150173 [°C]
      291                           0                          0  6.150173 [°C]
      292                           0                          0  6.150173 [°C]
      293                           0                          0  6.150173 [°C]
      294                           0                          0  6.150173 [°C]
      295                           0                          0  6.150173 [°C]
      296                           0                          0  6.150173 [°C]
      297                           0                          0  6.150173 [°C]
      298                           0                          0  6.150173 [°C]
      299                           0                          0  6.150173 [°C]
      300                           0                          0  6.150173 [°C]
      301                           0                          0  6.150173 [°C]
      302                           0                          0  6.150173 [°C]
      303                           0                          0  6.150173 [°C]
      304                           0                          0  6.150173 [°C]
      305                           0                          0  6.150173 [°C]
      306                           0                          0  6.150173 [°C]
      307                           0                          0  6.150173 [°C]
      308                           0                          0  6.150173 [°C]
      309                           0                          0  6.150173 [°C]
      310                           0                          0  6.150173 [°C]
      311                           0                          0  6.150173 [°C]
      312                           0                          0  6.150173 [°C]
      313                           0                          0  6.150173 [°C]
      314                           0                          0  6.150173 [°C]
      315                           0                          0  6.150173 [°C]
      316                           0                          0  6.150173 [°C]
      317                           0                          0  6.150173 [°C]
      318                           0                          0  6.150173 [°C]
      319                           0                          0  6.150173 [°C]
      320                           0                          0  6.150173 [°C]
      321                           0                          0  6.150173 [°C]
      322                           0                          0  6.150173 [°C]
      323                           0                          0  6.150173 [°C]
      324                           0                          0  6.150173 [°C]
      325                           0                          0  6.150173 [°C]
      326                           0                          0  6.150173 [°C]
      327                           0                          0  6.150173 [°C]
      328                           0                          0  6.150173 [°C]
      329                           0                          0  5.989378 [°C]
      330                           0                          0  5.989378 [°C]
      331                           0                          0  5.989378 [°C]
      332                           0                          0  5.989378 [°C]
      333                           0                          0  5.989378 [°C]
      334                           0                          0  5.989378 [°C]
      335                           0                          0  5.989378 [°C]
      336                           0                          0  5.989378 [°C]
      337                           0                          0  6.150173 [°C]
      338                           0                          0  6.150173 [°C]
      339                           0                          0  5.989378 [°C]
      340                           0                          0  6.150173 [°C]
      341                           0                          0  6.150173 [°C]
      342                           0                          0  6.150173 [°C]
      343                           0                          0  6.150173 [°C]
      344                           0                          0  6.150173 [°C]
      345                           0                          0  6.150173 [°C]
      346                           0                          0  6.150173 [°C]
      347                           0                          0  6.150173 [°C]
      348                           0                          0  6.150173 [°C]
      349                           0                          0  6.150173 [°C]
      350                           0                          0  6.150173 [°C]
      351                           0                          0  6.150173 [°C]
      352                           0                          0  6.150173 [°C]
      353                           0                          0  6.150173 [°C]
      354                           0                          0  6.150173 [°C]
      355                           0                          0  6.150173 [°C]
      356                           0                          0  6.150173 [°C]
      357                           0                          0  6.150173 [°C]
      358                           0                          0  6.150173 [°C]
      359                           0                          0  6.150173 [°C]
      360                           0                          0  6.150173 [°C]
      361                           0                          0        NA [°C]
      362                           0                          0        NA [°C]
      363                           0                          0        NA [°C]
      364                           0                          0        NA [°C]
      365                           0                          0        NA [°C]
      366                           0                          0        NA [°C]
      367                           0                          0        NA [°C]
      368                           0                          0        NA [°C]
      369                           0                          0        NA [°C]
      370                           0                          0        NA [°C]
      371                           0                          0        NA [°C]
      372                           0                          0        NA [°C]
      373                           0                          0        NA [°C]
      374                           0                          0        NA [°C]
      375                           0                          0        NA [°C]
      376                           0                          0        NA [°C]
      377                           0                          0        NA [°C]
      378                           0                          0        NA [°C]
      379                           0                          0        NA [°C]
      380                           0                          0        NA [°C]
      381                           0                          0        NA [°C]
      382                           0                          0        NA [°C]
      383                           0                          0        NA [°C]
      384                           0                          0        NA [°C]
      385                           0                          0        NA [°C]
      386                           0                          0        NA [°C]
      387                           0                          0        NA [°C]
      388                           0                          0        NA [°C]
      389                           0                          0        NA [°C]
      390                           0                          0        NA [°C]
      391                           0                          0        NA [°C]
      392                           0                          0        NA [°C]
      393                           0                          0        NA [°C]
      394                           0                          0        NA [°C]
      395                           0                          0        NA [°C]
      396                           0                          0        NA [°C]
      397                           0                          0        NA [°C]
      398                           0                          0        NA [°C]
      399                           0                          0        NA [°C]
      400                           0                          0        NA [°C]
      401                           0                          0        NA [°C]
      402                           0                          0        NA [°C]
      403                           0                          0        NA [°C]
      404                           0                          0        NA [°C]
      405                           0                          0        NA [°C]
      406                           0                          0        NA [°C]
      407                           0                          0        NA [°C]
      408                           0                          0        NA [°C]
      409                           0                          0        NA [°C]
      410                           0                          0        NA [°C]
      411                           0                          0        NA [°C]
      412                           0                          0        NA [°C]
      413                           0                          0        NA [°C]
      414                           0                          0        NA [°C]
      415                           0                          0        NA [°C]
      416                           0                          0        NA [°C]
      417                           0                          0        NA [°C]
      418                           0                          0        NA [°C]
      419                           0                          0        NA [°C]
      420                           0                          0        NA [°C]
      421                           0                          0        NA [°C]
      422                           0                          0        NA [°C]
      423                           0                          0        NA [°C]
      424                           0                          0        NA [°C]
      425                           0                          0        NA [°C]
      426                           0                          0        NA [°C]
      427                           0                          0        NA [°C]
      428                           0                          0        NA [°C]
      429                           0                          0        NA [°C]
      430                           0                          0        NA [°C]
      431                           0                          0        NA [°C]
      432                           0                          0        NA [°C]
      433                           0                          0  6.310714 [°C]
      434                           0                          0  6.310714 [°C]
      435                           0                          0  6.310714 [°C]
      436                           0                          0  6.310714 [°C]
      437                           0                          0  6.310714 [°C]
      438                           0                          0  6.310714 [°C]
      439                           0                          0  6.310714 [°C]
      440                           0                          0  6.310714 [°C]
      441                           0                          0  6.310714 [°C]
      442                           0                          0  6.310714 [°C]
      443                           0                          0  6.310714 [°C]
      444                           0                          0  6.310714 [°C]
      445                           0                          0  6.471007 [°C]
      446                           0                          0  6.310714 [°C]
      447                           0                          0  6.310714 [°C]
      448                           0                          0  6.310714 [°C]
      449                           0                          0  6.310714 [°C]
      450                           0                          0  6.310714 [°C]
      451                           0                          0  6.310714 [°C]
      452                           0                          0  6.310714 [°C]
      453                           0                          0  6.310714 [°C]
      454                           0                          0  6.310714 [°C]
      455                           0                          0  6.310714 [°C]
      456                           0                          0  6.310714 [°C]
      457                           0                          0  6.310714 [°C]
      458                           0                          0  6.471007 [°C]
      459                           0                          0  6.471007 [°C]
      460                           0                          0  6.471007 [°C]
      461                           0                          0  6.471007 [°C]
      462                           0                          0  6.310714 [°C]
      463                           0                          0  6.310714 [°C]
      464                           0                          0  6.310714 [°C]
      465                           0                          0  6.310714 [°C]
      466                           0                          0  6.310714 [°C]
      467                           0                          0  6.310714 [°C]
      468                           0                          0  6.310714 [°C]
      469                           0                          0  6.310714 [°C]
      470                           0                          0  6.310714 [°C]
      471                           0                          0  6.310714 [°C]
      472                           0                          0  6.310714 [°C]
      473                           0                          0  6.310714 [°C]
      474                           0                          0  6.310714 [°C]
      475                           0                          0  6.310714 [°C]
      476                           0                          0  6.310714 [°C]
      477                           0                          0  6.310714 [°C]
      478                           0                          0  6.310714 [°C]
      479                           0                          0  6.310714 [°C]
      480                           0                          0  6.310714 [°C]
      481                           0                          0  6.310714 [°C]
      482                           0                          0  6.471007 [°C]
      483                           0                          0  6.310714 [°C]
      484                           0                          0  6.310714 [°C]
      485                           0                          0  6.310714 [°C]
      486                           0                          0  6.310714 [°C]
      487                           0                          0  6.471007 [°C]
      488                           0                          0  6.471007 [°C]
      489                           0                          0  6.471007 [°C]
      490                           0                          0  6.310714 [°C]
      491                           0                          0  6.471007 [°C]
      492                           0                          0  6.471007 [°C]
      493                           0                          0  6.471007 [°C]
      494                           0                          0  6.471007 [°C]
      495                           0                          0  6.471007 [°C]
      496                           0                          0  6.471007 [°C]
      497                           0                          0  6.471007 [°C]
      498                           0                          0  6.310714 [°C]
      499                           0                          0  6.310714 [°C]
      500                           0                          0  6.310714 [°C]
      501                           0                          0  6.310714 [°C]
      502                           0                          0  6.310714 [°C]
      503                           0                          0  6.310714 [°C]
      504                           0                          0  6.310714 [°C]
      505                           0                          0  6.310714 [°C]
      506                           0                          0        NA [°C]
      507                           0                          0  6.310714 [°C]
      508                           0                          0        NA [°C]
      509                           0                          0  6.310714 [°C]
      510                           0                          0        NA [°C]
      511                           0                          0  6.471007 [°C]
      512                           0                          0        NA [°C]
      513                           0                          0  6.471007 [°C]
      514                           0                          0        NA [°C]
      515                           0                          0  6.310714 [°C]
      516                           0                          0        NA [°C]
      517                           0                          0  6.310714 [°C]
      518                           0                          0        NA [°C]
      519                           0                          0  6.310714 [°C]
      520                           0                          0        NA [°C]
      521                           0                          0  6.310714 [°C]
      522                           0                          0        NA [°C]
      523                           0                          0  6.310714 [°C]
      524                           0                          0        NA [°C]
      525                           0                          0  6.310714 [°C]
      526                           0                          0        NA [°C]
      527                           0                          0  6.310714 [°C]
      528                           0                          0        NA [°C]
      529                           0                          0  6.310714 [°C]
      530                           0                          0        NA [°C]
      531                           0                          0  6.310714 [°C]
      532                           0                          0        NA [°C]
      533                           0                          0  6.471007 [°C]
      534                           0                          0        NA [°C]
      535                           0                          0  6.471007 [°C]
      536                           0                          0        NA [°C]
      537                           0                          0  6.471007 [°C]
      538                           0                          0        NA [°C]
      539                           0                          0  6.310714 [°C]
      540                           0                          0        NA [°C]
      541                           0                          0  6.310714 [°C]
      542                           0                          0        NA [°C]
      543                           0                          0  6.310714 [°C]
      544                           0                          0        NA [°C]
      545                           0                          0  6.310714 [°C]
      546                           0                          0        NA [°C]
      547                           0                          0  6.310714 [°C]
      548                           0                          0        NA [°C]
      549                           0                          0  6.310714 [°C]
      550                           0                          0        NA [°C]
      551                           0                          0  6.310714 [°C]
      552                           0                          0        NA [°C]
      553                           0                          0  6.310714 [°C]
      554                           0                          0        NA [°C]
      555                           0                          0  6.310714 [°C]
      556                           0                          0        NA [°C]
      557                           0                          0  6.310714 [°C]
      558                           0                          0        NA [°C]
      559                           0                          0  6.310714 [°C]
      560                           0                          0        NA [°C]
      561                           0                          0  6.310714 [°C]
      562                           0                          0        NA [°C]
      563                           0                          0  6.310714 [°C]
      564                           0                          0        NA [°C]
      565                           0                          0  6.150173 [°C]
      566                           0                          0        NA [°C]
      567                           0                          0  6.150173 [°C]
      568                           0                          0        NA [°C]
      569                           0                          0  6.150173 [°C]
      570                           0                          0        NA [°C]
      571                           0                          0  6.150173 [°C]
      572                           0                          0        NA [°C]
      573                           0                          0  6.310714 [°C]
      574                           0                          0        NA [°C]
      575                           0                          0  6.150173 [°C]
      576                           0                          0        NA [°C]
      577                           0                          0  6.150173 [°C]
      578                           0                          0        NA [°C]
      579                           0                          0  6.310714 [°C]
      580                           0                          0        NA [°C]
      581                           0                          0  6.310714 [°C]
      582                           0                          0        NA [°C]
      583                           0                          0  6.310714 [°C]
      584                           0                          0        NA [°C]
      585                           0                          0  6.310714 [°C]
      586                           0                          0        NA [°C]
      587                           0                          0  6.310714 [°C]
      588                           0                          0        NA [°C]
      589                           0                          0  6.150173 [°C]
      590                           0                          0        NA [°C]
      591                           0                          0  6.150173 [°C]
      592                           0                          0        NA [°C]
      593                           0                          0  6.150173 [°C]
      594                           0                          0        NA [°C]
      595                           0                          0  6.310714 [°C]
      596                           0                          0        NA [°C]
      597                           0                          0  6.150173 [°C]
      598                           0                          0        NA [°C]
      599                           0                          0  6.150173 [°C]
      600                           0                          0        NA [°C]
      601                           0                          0  6.150173 [°C]
      602                           0                          0        NA [°C]
      603                           0                          0  6.150173 [°C]
      604                           0                          0  6.150173 [°C]
      605                           0                          0        NA [°C]
      606                           0                          0  6.150173 [°C]
      607                           0                          0  6.150173 [°C]
      608                           0                          0        NA [°C]
      609                           0                          0  6.150173 [°C]
      610                           0                          0  6.150173 [°C]
      611                           0                          0        NA [°C]
      612                           0                          0  6.310714 [°C]
      613                           0                          0  6.310714 [°C]
      614                           0                          0        NA [°C]
      615                           0                          0  6.310714 [°C]
      616                           0                          0  6.310714 [°C]
      617                           0                          0        NA [°C]
      618                           0                          0  6.310714 [°C]
      619                           0                          0  6.310714 [°C]
      620                           0                          0        NA [°C]
      621                           0                          0  6.310714 [°C]
      622                           0                          0  6.150173 [°C]
      623                           0                          0        NA [°C]
      624                           0                          0  6.150173 [°C]
      625                           0                          0  7.745226 [°C]
      626                           0                          1        NA [°C]
      627                           0                          0  9.321403 [°C]
      628                           0                          0  9.478234 [°C]
      629                           0                          0        NA [°C]
      630                           0                          0  9.478234 [°C]
      631                           0                          0  9.478234 [°C]
      632                           0                          0        NA [°C]
      633                           0                          0  9.634947 [°C]
      634                           0                          0  9.634947 [°C]
      635                           0                          0        NA [°C]
      636                           0                          0  9.634947 [°C]
      637                           0                          0  9.634947 [°C]
      638                           0                          0        NA [°C]
      639                           0                          0  9.478234 [°C]
      640                           0                          0  9.478234 [°C]
      641                           0                          0        NA [°C]
      642                           0                          0  9.478234 [°C]
      643                           0                          0  9.478234 [°C]
      644                           0                          0        NA [°C]
      645                           0                          0  9.478234 [°C]
      646                           0                          0  9.478234 [°C]
      647                           0                          0        NA [°C]
      648                           0                          0  9.478234 [°C]
      649                           0                          0  9.478234 [°C]
      650                           0                          0        NA [°C]
      651                           0                          0  9.478234 [°C]
      652                           0                          0  9.634947 [°C]
      653                           0                          0        NA [°C]
      654                           0                          0  9.634947 [°C]
      655                           0                          0  9.791550 [°C]
      656                           0                          0        NA [°C]
      657                           0                          0  9.634947 [°C]
      658                           0                          0  9.634947 [°C]
      659                           0                          0        NA [°C]
      660                           0                          0  9.791550 [°C]
      661                           0                          0  9.791550 [°C]
      662                           0                          0        NA [°C]
      663                           0                          0  9.791550 [°C]
      664                           0                          0  9.791550 [°C]
      665                           0                          0        NA [°C]
      666                           0                          0  9.791550 [°C]
      667                           0                          0  9.948050 [°C]
      668                           0                          0        NA [°C]
      669                           0                          0  9.791550 [°C]
      670                           0                          0  9.791550 [°C]
      671                           0                          0        NA [°C]
      672                           0                          0  9.634947 [°C]
      673                           0                          0  9.634947 [°C]
      674                           0                          0  9.634947 [°C]
      675                           0                          0  9.634947 [°C]
      676                           0                          0  9.634947 [°C]
      677                           0                          0  9.791550 [°C]
      678                           0                          0  9.791550 [°C]
      679                           0                          0  9.791550 [°C]
      680                           0                          0  9.791550 [°C]
      681                           0                          0  9.634947 [°C]
      682                           0                          0  9.634947 [°C]
      683                           0                          0  9.634947 [°C]
      684                           0                          0  9.634947 [°C]
      685                           0                          0  9.634947 [°C]
      686                           0                          0  9.634947 [°C]
      687                           0                          0  9.478234 [°C]
      688                           0                          0  9.478234 [°C]
      689                           0                          0  9.478234 [°C]
      690                           0                          0  9.478234 [°C]
      691                           0                          0  9.478234 [°C]
      692                           0                          0  9.634947 [°C]
      693                           0                          0  9.478234 [°C]
      694                           0                          0  9.478234 [°C]
      695                           0                          0  9.478234 [°C]
      696                           0                          0  9.478234 [°C]
      697                           0                          0  9.478234 [°C]
      698                           0                          0  9.478234 [°C]
      699                           0                          0  9.478234 [°C]
      700                           0                          0  9.478234 [°C]
      701                           0                          0  9.478234 [°C]
      702                           0                          0  9.478234 [°C]
      703                           0                          0  9.478234 [°C]
      704                           0                          0  9.478234 [°C]
      705                           0                          0  9.478234 [°C]
      706                           0                          0  9.478234 [°C]
      707                           0                          0  9.321403 [°C]
      708                           0                          0  9.321403 [°C]
      709                           0                          0  9.478234 [°C]
      710                           0                          0  9.478234 [°C]
      711                           0                          0  9.478234 [°C]
      712                           0                          0  9.478234 [°C]
      713                           0                          0  9.478234 [°C]
      714                           0                          0  9.478234 [°C]
      715                           0                          0  9.478234 [°C]
      716                           0                          0  9.478234 [°C]
      717                           0                          0  9.478234 [°C]
      718                           0                          0  9.478234 [°C]
      719                           0                          0  9.478234 [°C]
      720                           0                          0  9.478234 [°C]
      721                           0                          0  9.478234 [°C]
      722                           0                          0  9.478234 [°C]
      723                           0                          0  9.478234 [°C]
      724                           0                          0  9.478234 [°C]
      725                           0                          0  9.478234 [°C]
      726                           0                          0  9.478234 [°C]
      727                           0                          0  9.634947 [°C]
      728                           0                          0  9.634947 [°C]
      729                           0                          0  9.634947 [°C]
      730                           0                          0  9.634947 [°C]
      731                           0                          0  9.634947 [°C]
      732                           0                          0  9.634947 [°C]
      733                           0                          0  9.634947 [°C]
      734                           0                          0  9.634947 [°C]
      735                           0                          0  9.634947 [°C]
      736                           0                          0  9.634947 [°C]
      737                           0                          0  9.634947 [°C]
      738                           0                          0  9.634947 [°C]
      739                           0                          0  9.634947 [°C]
      740                           0                          0  9.634947 [°C]
      741                           0                          0  9.634947 [°C]
      742                           0                          0  9.791550 [°C]
      743                           0                          0  9.791550 [°C]
      744                           0                          0  9.634947 [°C]
      745                           0                          0        NA [°C]
      746                           0                          0        NA [°C]
      747                           0                          0        NA [°C]
      748                           0                          0        NA [°C]
      749                           0                          0        NA [°C]
      750                           0                          0        NA [°C]
      751                           0                          0        NA [°C]
      752                           0                          0        NA [°C]
      753                           0                          0        NA [°C]
      754                           0                          0        NA [°C]
      755                           0                          0        NA [°C]
      756                           0                          0        NA [°C]
      757                           0                          0        NA [°C]
      758                           0                          0        NA [°C]
      759                           0                          0        NA [°C]
      760                           0                          0        NA [°C]
      761                           0                          0        NA [°C]
      762                           0                          0        NA [°C]
      763                           0                          0        NA [°C]
      764                           0                          0        NA [°C]
      765                           0                          0        NA [°C]
      766                           0                          0        NA [°C]
      767                           0                          0        NA [°C]
      768                           0                          0        NA [°C]
      769                           0                          0        NA [°C]
      770                           0                          0        NA [°C]
      771                           0                          0        NA [°C]
      772                           0                          0        NA [°C]
      773                           0                          0        NA [°C]
      774                           0                          0        NA [°C]
      775                           0                          0        NA [°C]
      776                           0                          0        NA [°C]
      777                           0                          0        NA [°C]
      778                           0                          0        NA [°C]
      779                           0                          0        NA [°C]
      780                           0                          0        NA [°C]
      781                           0                          0        NA [°C]
      782                           0                          0        NA [°C]
      783                           0                          0        NA [°C]
      784                           0                          0        NA [°C]
      785                           0                          0        NA [°C]
      786                           0                          0        NA [°C]
      787                           0                          0        NA [°C]
      788                           0                          0        NA [°C]
      789                           0                          0        NA [°C]
      790                           0                          0        NA [°C]
      791                           0                          0        NA [°C]
      792                           0                          0        NA [°C]
      793                           0                          0        NA [°C]
      794                           0                          0        NA [°C]
      795                           0                          0        NA [°C]
      796                           0                          0        NA [°C]
      797                           0                          0        NA [°C]
      798                           0                          0        NA [°C]
      799                           0                          0        NA [°C]
      800                           0                          0        NA [°C]
      801                           0                          0        NA [°C]
      802                           0                          0        NA [°C]
      803                           0                          0        NA [°C]
      804                           0                          0        NA [°C]
      805                           0                          0        NA [°C]
      806                           0                          0        NA [°C]
      807                           0                          0        NA [°C]
      808                           0                          0        NA [°C]
      809                           0                          0        NA [°C]
      810                           0                          0        NA [°C]
      811                           0                          0        NA [°C]
      812                           0                          0        NA [°C]
      813                           0                          0        NA [°C]
      814                           0                          0        NA [°C]
      815                           0                          0        NA [°C]
      816                           0                          0        NA [°C]
      817                           0                          0 11.041181 [°C]
      818                           0                          0        NA [°C]
      819                           0                          0 11.197084 [°C]
      820                           0                          0        NA [°C]
      821                           0                          0 11.041181 [°C]
      822                           0                          0        NA [°C]
      823                           0                          0 11.041181 [°C]
      824                           0                          0        NA [°C]
      825                           0                          0 10.885227 [°C]
      826                           0                          0        NA [°C]
      827                           0                          0 11.197084 [°C]
      828                           0                          0        NA [°C]
      829                           0                          0 11.197084 [°C]
      830                           0                          0        NA [°C]
      831                           0                          0 11.197084 [°C]
      832                           0                          0        NA [°C]
      833                           0                          0 11.352941 [°C]
      834                           0                          0        NA [°C]
      835                           0                          0 11.197084 [°C]
      836                           0                          0        NA [°C]
      837                           0                          0 11.197084 [°C]
      838                           0                          0        NA [°C]
      839                           0                          0 11.820307 [°C]
      840                           0                          0        NA [°C]
      841                           0                          0 11.664546 [°C]
      842                           0                          0        NA [°C]
      843                           0                          0 11.820307 [°C]
      844                           0                          0        NA [°C]
      845                           0                          0 11.664546 [°C]
      846                           0                          0        NA [°C]
      847                           0                          0 11.508760 [°C]
      848                           0                          0        NA [°C]
      849                           0                          0 11.664546 [°C]
      850                           0                          0        NA [°C]
      851                           0                          0 11.508760 [°C]
      852                           0                          0        NA [°C]
      853                           0                          0 11.664546 [°C]
      854                           0                          0        NA [°C]
      855                           0                          0 11.976048 [°C]
      856                           0                          0        NA [°C]
      857                           0                          0 11.976048 [°C]
      858                           0                          0        NA [°C]
      859                           0                          0 11.976048 [°C]
      860                           0                          0        NA [°C]
      861                           0                          0 11.197084 [°C]
      862                           0                          0        NA [°C]
      863                           0                          0 11.820307 [°C]
      864                           0                          0        NA [°C]
      865                           0                          0 11.976048 [°C]
      866                           0                          0        NA [°C]
      867                           0                          0 12.131777 [°C]
      868                           0                          0 12.287500 [°C]
      869                           0                          0        NA [°C]
      870                           0                          0 12.287500 [°C]
      871                           0                          0 12.443223 [°C]
      872                           0                          0        NA [°C]
      873                           0                          0 12.287500 [°C]
      874                           0                          0 12.131777 [°C]
      875                           0                          0        NA [°C]
      876                           0                          0 11.976048 [°C]
      877                           0                          0 11.820307 [°C]
      878                           0                          0        NA [°C]
      879                           0                          0 11.508760 [°C]
      880                           0                          0 11.352941 [°C]
      881                           0                          0        NA [°C]
      882                           0                          0 11.197084 [°C]
      883                           0                          0 11.197084 [°C]
      884                           0                          0        NA [°C]
      885                           0                          0 10.885227 [°C]
      886                           0                          0 10.885227 [°C]
      887                           0                          0        NA [°C]
      888                           0                          0 10.885227 [°C]
      889                           0                          0 10.729215 [°C]
      890                           0                          0        NA [°C]
      891                           0                          0 10.573137 [°C]
      892                           0                          0 10.416989 [°C]
      893                           0                          0        NA [°C]
      894                           0                          0 10.260762 [°C]
      895                           0                          0 10.416989 [°C]
      896                           0                          0        NA [°C]
      897                           0                          0 10.260762 [°C]
      898                           0                          0 10.104451 [°C]
      899                           0                          0        NA [°C]
      900                           0                          0 10.104451 [°C]
      901                           0                          0  9.948050 [°C]
      902                           0                          0        NA [°C]
      903                           0                          0  9.791550 [°C]
      904                           0                          0  9.634947 [°C]
      905                           0                          0        NA [°C]
      906                           0                          0  9.321403 [°C]
      907                           0                          0  9.321403 [°C]
      908                           0                          0        NA [°C]
      909                           0                          0  9.478234 [°C]
      910                           0                          0  9.321403 [°C]
      911                           0                          0        NA [°C]
      912                           0                          0  9.321403 [°C]
      913                           0                          0  9.321403 [°C]
      914                           0                          0        NA [°C]
      915                           0                          0  9.634947 [°C]
      916                           0                          0  9.948050 [°C]
      917                           0                          0        NA [°C]
      918                           0                          0  9.948050 [°C]
      919                           0                          0  9.948050 [°C]
      920                           0                          0        NA [°C]
      921                           0                          0  9.791550 [°C]
      922                           0                          0  9.634947 [°C]
      923                           0                          0        NA [°C]
      924                           0                          0  9.634947 [°C]
      925                           0                          0  9.634947 [°C]
      926                           0                          0        NA [°C]
      927                           0                          0  9.634947 [°C]
      928                           0                          0  9.634947 [°C]
      929                           0                          0        NA [°C]
      930                           0                          0  9.634947 [°C]
      931                           0                          0  9.478234 [°C]
      932                           0                          0        NA [°C]
      933                           0                          0  9.478234 [°C]
      934                           0                          0  9.478234 [°C]
      935                           0                          0        NA [°C]
      936                           0                          0  9.478234 [°C]
      937                           0                          0  9.321403 [°C]
      938                           0                          0  9.321403 [°C]
      939                           0                          0  9.164449 [°C]
      940                           0                          0  9.007365 [°C]
      941                           0                          0  9.164449 [°C]
      942                           0                          0  9.164449 [°C]
      943                           0                          0  9.321403 [°C]
      944                           0                          0  9.478234 [°C]
      945                           0                          0  9.634947 [°C]
      946                           0                          0  9.634947 [°C]
      947                           0                          0  9.791550 [°C]
      948                           0                          0  9.791550 [°C]
      949                           0                          0  9.791550 [°C]
      950                           0                          0  9.791550 [°C]
      951                           0                          0  9.791550 [°C]
      952                           0                          0  9.791550 [°C]
      953                           0                          0  9.948050 [°C]
      954                           0                          0 10.260762 [°C]
      955                           0                          0 10.416989 [°C]
      956                           0                          0 10.416989 [°C]
      957                           0                          0 10.729215 [°C]
      958                           0                          0 10.885227 [°C]
      959                           0                          0 11.197084 [°C]
      960                           0                          0 11.197084 [°C]
      961                           0                          0        NA [°C]
      962                           0                          0        NA [°C]
      963                           0                          0        NA [°C]
      964                           0                          0        NA [°C]
      965                           0                          0        NA [°C]
      966                           0                          0        NA [°C]
      967                           0                          0        NA [°C]
      968                           0                          0        NA [°C]
      969                           0                          0        NA [°C]
      970                           0                          0        NA [°C]
      971                           0                          0        NA [°C]
      972                           0                          0        NA [°C]
      973                           0                          0        NA [°C]
      974                           0                          0        NA [°C]
      975                           0                          0        NA [°C]
      976                           0                          0        NA [°C]
      977                           0                          0        NA [°C]
      978                           0                          0        NA [°C]
      979                           0                          0        NA [°C]
      980                           0                          0        NA [°C]
      981                           0                          0        NA [°C]
      982                           0                          0        NA [°C]
      983                           0                          0        NA [°C]
      984                           0                          0        NA [°C]
      985                           0                          0        NA [°C]
      986                           0                          0        NA [°C]
      987                           0                          0        NA [°C]
      988                           0                          0        NA [°C]
      989                           0                          0        NA [°C]
      990                           0                          0        NA [°C]
      991                           0                          0        NA [°C]
      992                           0                          0        NA [°C]
      993                           0                          0        NA [°C]
      994                           0                          0        NA [°C]
      995                           0                          0        NA [°C]
      996                           0                          0        NA [°C]
      997                           0                          0        NA [°C]
      998                           0                          0        NA [°C]
      999                           0                          0        NA [°C]
      1000                          0                          0        NA [°C]
      1001                          0                          0        NA [°C]
      1002                          0                          0        NA [°C]
      1003                          0                          0        NA [°C]
      1004                          0                          0        NA [°C]
      1005                          0                          0        NA [°C]
      1006                          0                          0        NA [°C]
      1007                          0                          0        NA [°C]
      1008                          0                          0        NA [°C]
      1009                          0                          0 10.416989 [°C]
      1010                          0                          0 10.573137 [°C]
      1011                          0                          0 10.573137 [°C]
      1012                          0                          0 10.260762 [°C]
      1013                          0                          0 10.104451 [°C]
      1014                          0                          0  9.634947 [°C]
      1015                          0                          0  9.478234 [°C]
      1016                          0                          0  9.007365 [°C]
      1017                          0                          0  9.007365 [°C]
      1018                          0                          0  9.007365 [°C]
      1019                          0                          0  8.850144 [°C]
      1020                          0                          0  8.850144 [°C]
      1021                          0                          0  9.007365 [°C]
      1022                          0                          0  8.850144 [°C]
      1023                          0                          0  8.850144 [°C]
      1024                          0                          0  8.850144 [°C]
      1025                          0                          0  9.007365 [°C]
      1026                          0                          0  9.007365 [°C]
      1027                          0                          0  9.007365 [°C]
      1028                          0                          0  9.164449 [°C]
      1029                          0                          0  9.007365 [°C]
      1030                          0                          0  9.164449 [°C]
      1031                          0                          0  9.164449 [°C]
      1032                          0                          0  9.164449 [°C]
      1033                          0                          0  9.164449 [°C]
      1034                          0                          0  9.164449 [°C]
      1035                          0                          0  9.321403 [°C]
      1036                          0                          0  9.321403 [°C]
      1037                          0                          0  9.164449 [°C]
      1038                          0                          0  9.164449 [°C]
      1039                          0                          0  9.321403 [°C]
      1040                          0                          0  9.321403 [°C]
      1041                          0                          0  9.321403 [°C]
      1042                          0                          0  9.478234 [°C]
      1043                          0                          0  9.478234 [°C]
      1044                          0                          0  9.634947 [°C]
      1045                          0                          0  9.791550 [°C]
      1046                          0                          0        NA [°C]
      1047                          0                          0  9.634947 [°C]
      1048                          0                          0  9.634947 [°C]
      1049                          0                          0  9.321403 [°C]
      1050                          0                          0  9.164449 [°C]
      1051                          0                          0  9.164449 [°C]
      1052                          0                          0  9.164449 [°C]
      1053                          0                          0  9.321403 [°C]
      1054                          0                          0  9.478234 [°C]
      1055                          0                          0  9.478234 [°C]
      1056                          0                          0  9.478234 [°C]
      1057                          0                          0  9.478234 [°C]
      1058                          0                          0  9.321403 [°C]
      1059                          0                          0        NA [°C]
      1060                          0                          0  9.164449 [°C]
      1061                          0                          0  8.850144 [°C]
      1062                          0                          0  8.219765 [°C]
      1063                          0                          0  7.586678 [°C]
      1064                          0                          0  7.586678 [°C]
      1065                          0                          0  7.268989 [°C]
      1066                          0                          0  6.790877 [°C]
      1067                          0                          0  6.631059 [°C]
      1068                          0                          0  6.471007 [°C]
      1069                          0                          0  6.631059 [°C]
      1070                          0                          0        NA [°C]
      1071                          0                          0  6.310714 [°C]
      1072                          0                          0  5.989378 [°C]
      1073                          0                          0  5.828323 [°C]
      1074                          0                          0        NA [°C]
      1075                          0                          0        NA [°C]
      1076                          0                          0  5.828323 [°C]
      1077                          0                          0        NA [°C]
      1078                          0                          0  5.505405 [°C]
      1079                          0                          0  5.828323 [°C]
      1080                          0                          0  6.790877 [°C]
      1081                          0                          0  7.586678 [°C]
      1082                          0                          0  7.745226 [°C]
      1083                          0                          0  7.903586 [°C]
      1084                          0                          0  8.219765 [°C]
      1085                          0                          0  8.219765 [°C]
      1086                          0                          0  8.850144 [°C]
      1087                          0                          0  9.007365 [°C]
      1088                          0                          0        NA [°C]
      1089                          0                          0  9.791550 [°C]
      1090                          0                          0  9.791550 [°C]
      1091                          0                          0  9.634947 [°C]
      1092                          0                          0  9.478234 [°C]
      1093                          0                          0  9.634947 [°C]
      1094                          0                          0        NA [°C]
      1095                          0                          0        NA [°C]
      1096                          0                          0  9.791550 [°C]
      1097                          0                          0  9.791550 [°C]
      1098                          0                          0  9.478234 [°C]
      1099                          0                          0  9.321403 [°C]
      1100                          0                          0  9.478234 [°C]
      1101                          0                          0  9.478234 [°C]
      1102                          0                          0  9.634947 [°C]
      1103                          0                          0  9.791550 [°C]
      1104                          0                          0        NA [°C]
      1105                          0                          0  9.948050 [°C]
      1106                          0                          0  9.948050 [°C]
      1107                          0                          0  9.948050 [°C]
      1108                          0                          0 10.104451 [°C]
      1109                          0                          0 10.729215 [°C]
      1110                          0                          0 10.416989 [°C]
      1111                          0                          0 10.416989 [°C]
      1112                          0                          0 10.729215 [°C]
      1113                          0                          0 10.885227 [°C]
      1114                          0                          0 10.729215 [°C]
      1115                          0                          0 10.260762 [°C]
      1116                          0                          0        NA [°C]
      1117                          0                          0 10.260762 [°C]
      1118                          0                          0        NA [°C]
      1119                          0                          0 10.104451 [°C]
      1120                          0                          0        NA [°C]
      1121                          0                          0  9.948050 [°C]
      1122                          0                          0        NA [°C]
      1123                          0                          0  9.634947 [°C]
      1124                          0                          0        NA [°C]
      1125                          0                          0  9.321403 [°C]
      1126                          0                          0        NA [°C]
      1127                          0                          0  9.478234 [°C]
      1128                          0                          0        NA [°C]
      1129                          0                          0  9.478234 [°C]
      1130                          0                          0        NA [°C]
      1131                          0                          0  9.321403 [°C]
      1132                          0                          0        NA [°C]
      1133                          0                          0  9.164449 [°C]
      1134                          0                          0        NA [°C]
      1135                          0                          0  9.164449 [°C]
      1136                          0                          0        NA [°C]
      1137                          0                          0  9.007365 [°C]
      1138                          0                          0        NA [°C]
      1139                          0                          0  8.850144 [°C]
      1140                          0                          0        NA [°C]
      1141                          0                          0  8.850144 [°C]
      1142                          0                          0        NA [°C]
      1143                          0                          0  8.850144 [°C]
      1144                          0                          0        NA [°C]
      1145                          0                          0  9.007365 [°C]
      1146                          0                          0        NA [°C]
      1147                          0                          0  8.850144 [°C]
      1148                          0                          0        NA [°C]
      1149                          0                          0  9.164449 [°C]
      1150                          0                          0        NA [°C]
      1151                          0                          0  9.634947 [°C]
      1152                          0                          0        NA [°C]
      1153                          0                          0  9.791550 [°C]
      1154                          0                          0        NA [°C]
      1155                          0                          0        NA [°C]
      1156                          0                          0  9.634947 [°C]
      1157                          0                          0        NA [°C]
      1158                          0                          0  9.634947 [°C]
      1159                          0                          0        NA [°C]
      1160                          0                          0  9.321403 [°C]
      1161                          0                          0        NA [°C]
      1162                          0                          0  9.478234 [°C]
      1163                          0                          0        NA [°C]
      1164                          0                          0  9.007365 [°C]
      1165                          0                          0        NA [°C]
      1166                          0                          0  9.164449 [°C]
      1167                          0                          0  9.164449 [°C]
      1168                          0                          0        NA [°C]
      1169                          0                          0        NA [°C]
      1170                          0                          0  9.164449 [°C]
      1171                          0                          0  9.007365 [°C]
      1172                          0                          0        NA [°C]
      1173                          0                          0  8.850144 [°C]
      1174                          0                          0  9.007365 [°C]
      1175                          0                          0        NA [°C]
      1176                          0                          0  8.692780 [°C]
      1177                          0                          0  8.692780 [°C]
      1178                          0                          0        NA [°C]
      1179                          0                          0  8.692780 [°C]
      1180                          0                          0  8.692780 [°C]
      1181                          0                          0        NA [°C]
      1182                          0                          0        NA [°C]
      1183                          0                          0  8.850144 [°C]
      1184                          0                          0  8.850144 [°C]
      1185                          0                          0        NA [°C]
      1186                          0                          0  8.850144 [°C]
      1187                          0                          0  8.850144 [°C]
      1188                          0                          0        NA [°C]
      1189                          0                          0  8.692780 [°C]
      1190                          0                          0  8.535267 [°C]
      1191                          0                          0        NA [°C]
      1192                          0                          0  8.692780 [°C]
      1193                          0                          0  8.692780 [°C]
      1194                          0                          0        NA [°C]
      1195                          0                          0  8.850144 [°C]
      1196                          0                          0  8.850144 [°C]
      1197                          0                          0        NA [°C]
      1198                          0                          0  8.692780 [°C]
      1199                          0                          0  8.692780 [°C]
      1200                          0                          0        NA [°C]
      1201                          0                          0  8.377597 [°C]
      1202                          0                          0  8.377597 [°C]
      1203                          0                          0        NA [°C]
      1204                          0                          0  8.377597 [°C]
      1205                          0                          0  8.377597 [°C]
      1206                          0                          0        NA [°C]
      1207                          0                          0        NA [°C]
      1208                          0                          0  8.377597 [°C]
      1209                          0                          0  8.377597 [°C]
      1210                          0                          0        NA [°C]
      1211                          0                          0        NA [°C]
      1212                          0                          0  8.535267 [°C]
      1213                          0                          0  8.377597 [°C]
      1214                          0                          0        NA [°C]
      1215                          0                          0  8.377597 [°C]
      1216                          0                          0  8.377597 [°C]
      1217                          0                          0        NA [°C]
      1218                          0                          0  8.377597 [°C]
      1219                          0                          0  8.219765 [°C]
      1220                          0                          0        NA [°C]
      1221                          0                          0  8.219765 [°C]
      1222                          0                          0  8.377597 [°C]
      1223                          0                          0        NA [°C]
      1224                          0                          0  8.535267 [°C]
      1225                          0                          0  8.692780 [°C]
      1226                          0                          0        NA [°C]
      1227                          0                          0        NA [°C]
      1228                          0                          0  9.007365 [°C]
      1229                          0                          0  9.164449 [°C]
      1230                          0                          0        NA [°C]
      1231                          0                          0  9.164449 [°C]
      1232                          0                          0  9.321403 [°C]
      1233                          0                          0        NA [°C]
      1234                          0                          0  9.478234 [°C]
      1235                          0                          0  9.478234 [°C]
      1236                          0                          0        NA [°C]
      1237                          0                          0  9.791550 [°C]
      1238                          0                          0  9.791550 [°C]
      1239                          0                          0        NA [°C]
      1240                          0                          0        NA [°C]
      1241                          0                          0  9.634947 [°C]
      1242                          0                          0        NA [°C]
      1243                          0                          0  9.478234 [°C]
      1244                          0                          0        NA [°C]
      1245                          0                          0        NA [°C]
      1246                          0                          0  9.321403 [°C]
      1247                          0                          0        NA [°C]
      1248                          0                          0  9.164449 [°C]
      1249                          0                          0        NA [°C]
      1250                          0                          0  9.164449 [°C]
      1251                          0                          0        NA [°C]
      1252                          0                          0  9.007365 [°C]
      1253                          0                          0        NA [°C]
      1254                          0                          0  9.007365 [°C]
      1255                          0                          0        NA [°C]
      1256                          0                          0        NA [°C]
      1257                          0                          0  9.007365 [°C]
      1258                          0                          0        NA [°C]
      1259                          0                          0  8.850144 [°C]
      1260                          0                          0        NA [°C]
      1261                          0                          0  8.692780 [°C]
      1262                          0                          0        NA [°C]
      1263                          0                          0  8.692780 [°C]
      1264                          0                          0        NA [°C]
      1265                          0                          0  8.692780 [°C]
      1266                          0                          0        NA [°C]
      1267                          0                          0  8.692780 [°C]
      1268                          0                          0        NA [°C]
      1269                          0                          0  8.535267 [°C]
      1270                          0                          0        NA [°C]
      1271                          0                          0        NA [°C]
      1272                          0                          0  8.535267 [°C]
      1273                          0                          0        NA [°C]
      1274                          0                          0        NA [°C]
      1275                          0                          0  8.535267 [°C]
      1276                          0                          0        NA [°C]
      1277                          0                          0        NA [°C]
      1278                          0                          0  8.377597 [°C]
      1279                          0                          0        NA [°C]
      1280                          0                          0  8.377597 [°C]
      1281                          0                          0        NA [°C]
      1282                          0                          0  8.535267 [°C]
      1283                          0                          0        NA [°C]
      1284                          0                          0  9.007365 [°C]
      1285                          0                          0        NA [°C]
      1286                          0                          0        NA [°C]
      1287                          0                          0  9.164449 [°C]
      1288                          0                          0        NA [°C]
      1289                          0                          0        NA [°C]
      1290                          0                          0  9.321403 [°C]
      1291                          0                          0        NA [°C]
      1292                          0                          0  9.321403 [°C]
      1293                          0                          0        NA [°C]
      1294                          0                          0  9.634947 [°C]
      1295                          0                          0        NA [°C]
      1296                          0                          0        NA [°C]
      1297                          0                          0        NA [°C]
      1298                          0                          0  9.634947 [°C]
      1299                          0                          0  9.634947 [°C]
      1300                          0                          0        NA [°C]
      1301                          0                          0        NA [°C]
      1302                          0                          0  9.634947 [°C]
      1303                          0                          0        NA [°C]
      1304                          0                          0  9.478234 [°C]
      1305                          0                          0        NA [°C]
      1306                          0                          0  9.321403 [°C]
      1307                          0                          0        NA [°C]
      1308                          0                          0  8.850144 [°C]
      1309                          0                          0        NA [°C]
      1310                          0                          0  8.692780 [°C]
      1311                          0                          0        NA [°C]
      1312                          0                          0        NA [°C]
      1313                          0                          0  8.850144 [°C]
      1314                          0                          0        NA [°C]
      1315                          0                          0  8.850144 [°C]
      1316                          0                          0        NA [°C]
      1317                          0                          0  8.692780 [°C]
      1318                          0                          0        NA [°C]
      1319                          0                          0  8.535267 [°C]
      1320                          0                          0        NA [°C]
      1321                          0                          0  8.692780 [°C]
      1322                          0                          0        NA [°C]
      1323                          0                          0  8.535267 [°C]
      1324                          0                          0        NA [°C]
      1325                          0                          0  8.219765 [°C]
      1326                          0                          0        NA [°C]
      1327                          0                          0  7.903586 [°C]
      1328                          0                          0        NA [°C]
      1329                          0                          0  7.745226 [°C]
      1330                          0                          0        NA [°C]
      1331                          0                          0        NA [°C]
      1332                          0                          0  7.586678 [°C]
      1333                          0                          0        NA [°C]
      1334                          0                          0  7.109836 [°C]
      1335                          0                          0        NA [°C]
      1336                          0                          0  7.268989 [°C]
      1337                          0                          0        NA [°C]
      1338                          0                          0  8.061763 [°C]
      1339                          0                          0        NA [°C]
      1340                          0                          0  8.377597 [°C]
      1341                          0                          0        NA [°C]
      1342                          0                          0        NA [°C]
      1343                          0                          0  8.535267 [°C]
      1344                          0                          0        NA [°C]
      1345                          0                          0  8.692780 [°C]
      1346                          0                          0        NA [°C]
      1347                          0                          0  9.007365 [°C]
      1348                          0                          0        NA [°C]
      1349                          0                          0        NA [°C]
      1350                          0                          0  9.321403 [°C]
      1351                          0                          0        NA [°C]
      1352                          0                          0        NA [°C]
      1353                          0                          0  9.321403 [°C]
      1354                          0                          0        NA [°C]
      1355                          0                          0  9.634947 [°C]
      1356                          0                          0        NA [°C]
      1357                          0                          0  9.478234 [°C]
      1358                          0                          0        NA [°C]
      1359                          0                          0  9.321403 [°C]
      1360                          0                          0        NA [°C]
      1361                          0                          0  9.007365 [°C]
      1362                          0                          0        NA [°C]
      1363                          0                          0  8.850144 [°C]
      1364                          0                          0        NA [°C]
      1365                          0                          0        NA [°C]
      1366                          0                          0  8.692780 [°C]
      1367                          0                          0        NA [°C]
      1368                          0                          0  8.377597 [°C]
      1369                          0                          0        NA [°C]
      1370                          0                          0  8.061763 [°C]
      1371                          0                          0        NA [°C]
      1372                          0                          0  8.061763 [°C]
      1373                          0                          0        NA [°C]
      1374                          0                          0  8.377597 [°C]
      1375                          0                          0        NA [°C]
      1376                          0                          0  8.219765 [°C]
      1377                          0                          0        NA [°C]
      1378                          0                          0  8.061763 [°C]
      1379                          0                          0        NA [°C]
      1380                          0                          0  8.219765 [°C]
      1381                          0                          0        NA [°C]
      1382                          0                          0  8.219765 [°C]
      1383                          0                          0        NA [°C]
      1384                          0                          0        NA [°C]
      1385                          0                          0  8.377597 [°C]
      1386                          0                          0        NA [°C]
      1387                          0                          0  8.377597 [°C]
      1388                          0                          0        NA [°C]
      1389                          0                          0  8.692780 [°C]
      1390                          0                          0        NA [°C]
      1391                          0                          0  9.007365 [°C]
      1392                          0                          0        NA [°C]
      1393                          0                          0  9.321403 [°C]
      1394                          0                          0        NA [°C]
      1395                          0                          0  9.321403 [°C]
      1396                          0                          0        NA [°C]
      1397                          0                          0  9.321403 [°C]
      1398                          0                          0        NA [°C]
      1399                          0                          0  9.634947 [°C]
      1400                          0                          0        NA [°C]
      1401                          0                          0  9.791550 [°C]
      1402                          0                          0  9.791550 [°C]
      1403                          0                          0  9.791550 [°C]
      1404                          0                          0  9.791550 [°C]
      1405                          0                          0  9.791550 [°C]
      1406                          0                          0  9.634947 [°C]
      1407                          0                          0  9.634947 [°C]
      1408                          0                          0  9.634947 [°C]
      1409                          0                          0  9.478234 [°C]
      1410                          0                          0  9.321403 [°C]
      1411                          0                          0  9.321403 [°C]
      1412                          0                          0  9.321403 [°C]
      1413                          0                          0  9.321403 [°C]
      1414                          0                          0  9.321403 [°C]
      1415                          0                          0  9.321403 [°C]
      1416                          0                          0  9.321403 [°C]
      1417                          0                          0  9.164449 [°C]
      1418                          0                          0  9.164449 [°C]
      1419                          0                          0  9.164449 [°C]
      1420                          0                          0  9.164449 [°C]
      1421                          0                          0  9.164449 [°C]
      1422                          0                          0  9.321403 [°C]
      1423                          0                          0  9.164449 [°C]
      1424                          0                          0  9.164449 [°C]
      1425                          0                          0  9.164449 [°C]
      1426                          0                          0  9.007365 [°C]
      1427                          0                          0  9.164449 [°C]
      1428                          0                          0  9.164449 [°C]
      1429                          0                          0  9.164449 [°C]
      1430                          0                          0        NA [°C]
      1431                          0                          0  9.164449 [°C]
      1432                          0                          0        NA [°C]
      1433                          0                          0  9.164449 [°C]
      1434                          0                          0  9.164449 [°C]
      1435                          0                          0  9.164449 [°C]
      1436                          0                          0  9.164449 [°C]
      1437                          0                          0  9.164449 [°C]
      1438                          0                          0  9.164449 [°C]
      1439                          0                          0  9.321403 [°C]
      1440                          0                          0  9.478234 [°C]
      1441                          0                          0  9.634947 [°C]
      1442                          0                          0  9.634947 [°C]
      1443                          0                          0  9.791550 [°C]
      1444                          0                          0  9.791550 [°C]
      1445                          0                          0  9.791550 [°C]
      1446                          0                          0  9.948050 [°C]
      1447                          0                          0  9.634947 [°C]
      1448                          0                          0        NA [°C]
      1449                          0                          0  9.634947 [°C]
      1450                          0                          0  9.634947 [°C]
      1451                          0                          0  9.634947 [°C]
      1452                          0                          0  9.791550 [°C]
      1453                          0                          0  9.634947 [°C]
      1454                          0                          0        NA [°C]
      1455                          0                          0  9.791550 [°C]
      1456                          0                          0        NA [°C]
      1457                          0                          0        NA [°C]
      1458                          0                          0  9.164449 [°C]
      1459                          0                          0        NA [°C]
      1460                          0                          0  9.164449 [°C]
      1461                          0                          0        NA [°C]
      1462                          0                          0  8.692780 [°C]
      1463                          0                          0        NA [°C]
      1464                          0                          0  8.535267 [°C]
      1465                          0                          0        NA [°C]
      1466                          0                          0        NA [°C]
      1467                          0                          0  8.692780 [°C]
      1468                          0                          0        NA [°C]
      1469                          0                          0  8.692780 [°C]
      1470                          0                          0        NA [°C]
      1471                          0                          0  8.535267 [°C]
      1472                          0                          0        NA [°C]
      1473                          0                          0  8.692780 [°C]
      1474                          0                          0        NA [°C]
      1475                          0                          0  8.850144 [°C]
      1476                          0                          0        NA [°C]
      1477                          0                          0  9.007365 [°C]
      1478                          0                          0        NA [°C]
      1479                          0                          0  8.850144 [°C]
      1480                          0                          0        NA [°C]
      1481                          0                          0  9.007365 [°C]
      1482                          0                          0        NA [°C]
      1483                          0                          0  9.007365 [°C]
      1484                          0                          0        NA [°C]
      1485                          0                          0        NA [°C]
      1486                          0                          0        NA [°C]
      1487                          0                          0  9.007365 [°C]
      1488                          0                          0        NA [°C]
      1489                          0                          0  9.007365 [°C]
      1490                          0                          0        NA [°C]
      1491                          0                          0  8.850144 [°C]
      1492                          0                          0        NA [°C]
      1493                          0                          0  8.850144 [°C]
      1494                          0                          0        NA [°C]
      1495                          0                          0  8.850144 [°C]
      1496                          0                          0        NA [°C]
      1497                          0                          0  8.850144 [°C]
      1498                          0                          0        NA [°C]
      1499                          0                          0  9.164449 [°C]
      1500                          0                          0        NA [°C]
      1501                          0                          0  9.478234 [°C]
      1502                          0                          0        NA [°C]
      1503                          0                          0  9.478234 [°C]
      1504                          0                          0        NA [°C]
      1505                          0                          0  9.634947 [°C]
      1506                          0                          0        NA [°C]
      1507                          0                          0        NA [°C]
      1508                          0                          0  9.791550 [°C]
      1509                          0                          0        NA [°C]
      1510                          0                          0  9.791550 [°C]
      1511                          0                          0        NA [°C]
      1512                          0                          0  9.948050 [°C]
      1513                          0                          0        NA [°C]
      1514                          0                          0  9.948050 [°C]
      1515                          0                          0        NA [°C]
      1516                          0                          0 10.260762 [°C]
      1517                          0                          0        NA [°C]
      1518                          0                          0 10.416989 [°C]
      1519                          0                          0        NA [°C]
      1520                          0                          0  9.948050 [°C]
      1521                          0                          0        NA [°C]
      1522                          0                          0  9.478234 [°C]
      1523                          0                          0        NA [°C]
      1524                          0                          0  9.164449 [°C]
      1525                          0                          0        NA [°C]
      1526                          0                          0  9.164449 [°C]
      1527                          0                          0        NA [°C]
      1528                          0                          0  9.164449 [°C]
      1529                          0                          0        NA [°C]
      1530                          0                          0  9.007365 [°C]
      1531                          0                          0        NA [°C]
      1532                          0                          0  9.164449 [°C]
      1533                          0                          0        NA [°C]
      1534                          0                          0  9.478234 [°C]
      1535                          0                          0        NA [°C]
      1536                          0                          0  9.478234 [°C]
      1537                          0                          0        NA [°C]
      1538                          0                          0  9.321403 [°C]
      1539                          0                          0        NA [°C]
      1540                          0                          0  9.478234 [°C]
      1541                          0                          0        NA [°C]
      1542                          0                          0  9.791550 [°C]
      1543                          0                          0        NA [°C]
      1544                          0                          0  9.478234 [°C]
      1545                          0                          0        NA [°C]
      1546                          0                          0  9.634947 [°C]
      1547                          0                          0        NA [°C]
      1548                          0                          0  9.948050 [°C]
      1549                          0                          0        NA [°C]
      1550                          0                          0 10.260762 [°C]
      1551                          0                          0        NA [°C]
      1552                          0                          0  9.948050 [°C]
      1553                          0                          0        NA [°C]
      1554                          0                          0  9.791550 [°C]
      1555                          0                          0        NA [°C]
      1556                          0                          0  9.791550 [°C]
      1557                          0                          0        NA [°C]
      1558                          0                          0  9.478234 [°C]
      1559                          0                          0        NA [°C]
      1560                          0                          0  9.321403 [°C]
      1561                          0                          0        NA [°C]
      1562                          0                          0  9.007365 [°C]
      1563                          0                          0        NA [°C]
      1564                          0                          0  9.164449 [°C]
      1565                          0                          0        NA [°C]
      1566                          0                          0  9.321403 [°C]
      1567                          0                          0        NA [°C]
      1568                          0                          0  9.164449 [°C]
      1569                          0                          0        NA [°C]
      1570                          0                          0  9.007365 [°C]
      1571                          0                          0        NA [°C]
      1572                          0                          0  8.850144 [°C]
      1573                          0                          0        NA [°C]
      1574                          0                          0  9.164449 [°C]
      1575                          0                          0        NA [°C]
      1576                          0                          0  9.007365 [°C]
      1577                          0                          0        NA [°C]
      1578                          0                          0        NA [°C]
      1579                          0                          0  8.692780 [°C]
      1580                          0                          0        NA [°C]
      1581                          0                          0  8.850144 [°C]
      1582                          0                          0        NA [°C]
      1583                          0                          0        NA [°C]
      1584                          0                          0        NA [°C]
      1585                          0                          0  8.377597 [°C]
      1586                          0                          0        NA [°C]
      1587                          0                          0  8.061763 [°C]
      1588                          0                          0        NA [°C]
      1589                          0                          0  7.903586 [°C]
      1590                          0                          0        NA [°C]
      1591                          0                          0  8.535267 [°C]
      1592                          0                          0        NA [°C]
      1593                          0                          0  9.164449 [°C]
      1594                          0                          0        NA [°C]
      1595                          0                          0  9.791550 [°C]
      1596                          0                          0        NA [°C]
      1597                          0                          0  9.791550 [°C]
      1598                          0                          0        NA [°C]
      1599                          0                          0 10.260762 [°C]
      1600                          0                          0        NA [°C]
      1601                          0                          0 10.260762 [°C]
      1602                          0                          0        NA [°C]
      1603                          0                          0 10.573137 [°C]
      1604                          0                          0        NA [°C]
      1605                          0                          0        NA [°C]
      1606                          0                          0        NA [°C]
      1607                          0                          0        NA [°C]
      1608                          0                          0        NA [°C]
      1609                          0                          0        NA [°C]
      1610                          0                          0        NA [°C]
      1611                          0                          0        NA [°C]
      1612                          0                          0        NA [°C]
      1613                          0                          0        NA [°C]
      1614                          0                          0        NA [°C]
      1615                          0                          0        NA [°C]
      1616                          0                          0        NA [°C]
      1617                          0                          0        NA [°C]
      1618                          0                          0        NA [°C]
      1619                          0                          0        NA [°C]
      1620                          0                          0        NA [°C]
      1621                          0                          0        NA [°C]
      1622                          0                          0        NA [°C]
      1623                          0                          0        NA [°C]
      1624                          0                          0        NA [°C]
      1625                          0                          0        NA [°C]
      1626                          0                          0        NA [°C]
      1627                          0                          0        NA [°C]
      1628                          0                          0        NA [°C]
      1629                          0                          0        NA [°C]
      1630                          0                          0        NA [°C]
      1631                          0                          0        NA [°C]
      1632                          0                          0        NA [°C]
      1633                          0                          0        NA [°C]
      1634                          0                          0        NA [°C]
           temp_increase_delta_limit temp_decrease_delta_limit tag_id
      1                            0                         0 118353
      2                            0                         0 118353
      3                            0                         0 118353
      4                            0                         0 118353
      5                            0                         0 118353
      6                            0                         0 118353
      7                            0                         0 118353
      8                            0                         0 118353
      9                            0                         0 118353
      10                           0                         0 118353
      11                           0                         0 118353
      12                           0                         0 118353
      13                           0                         0 118353
      14                           0                         0 118353
      15                           0                         0 118353
      16                           0                         0 118353
      17                           0                         0 118353
      18                           0                         0 118353
      19                           0                         0 118353
      20                           0                         0 118353
      21                           0                         0 118353
      22                           0                         0 118353
      23                           0                         0 118353
      24                           0                         0 118353
      25                           0                         0 118353
      26                           0                         0 118353
      27                           0                         0 118353
      28                           0                         0 118353
      29                           0                         0 118353
      30                           0                         0 118353
      31                           0                         0 118353
      32                           0                         0 118353
      33                           0                         0 118353
      34                           0                         0 118353
      35                           0                         0 118353
      36                           0                         0 118353
      37                           0                         0 118353
      38                           0                         0 118353
      39                           0                         0 118353
      40                           0                         0 118353
      41                           0                         0 118353
      42                           0                         0 118353
      43                           0                         0 118353
      44                           0                         0 118353
      45                           0                         0 118353
      46                           0                         0 118353
      47                           0                         0 118353
      48                           0                         0 118353
      49                           0                         0 118353
      50                           0                         0 118353
      51                           0                         0 118353
      52                           0                         0 118353
      53                           0                         0 118353
      54                           0                         0 118353
      55                           0                         0 118353
      56                           0                         0 118353
      57                           0                         0 118353
      58                           0                         0 118353
      59                           0                         0 118353
      60                           0                         0 118353
      61                           0                         0 118353
      62                           0                         0 118353
      63                           0                         0 118353
      64                           0                         0 118353
      65                           0                         0 118353
      66                           0                         0 118353
      67                           0                         0 118353
      68                           0                         0 118353
      69                           0                         0 118353
      70                           0                         0 118353
      71                           0                         0 118353
      72                           0                         0 118353
      73                           0                         0 118353
      74                           0                         0 118353
      75                           0                         0 118353
      76                           0                         0 118353
      77                           0                         0 118353
      78                           0                         0 118353
      79                           0                         0 118353
      80                           0                         0 118353
      81                           0                         0 118353
      82                           0                         0 118353
      83                           0                         0 118353
      84                           0                         0 118353
      85                           0                         0 118353
      86                           0                         0 118353
      87                           0                         0 118353
      88                           0                         0 118353
      89                           0                         0 118353
      90                           0                         0 118353
      91                           0                         0 118353
      92                           0                         0 118353
      93                           0                         0 118353
      94                           0                         0 118353
      95                           0                         0 118353
      96                           0                         0 118353
      97                           0                         0 118353
      98                           0                         0 118353
      99                           0                         0 118353
      100                          0                         0 118353
      101                          0                         0 118353
      102                          0                         0 118353
      103                          0                         0 118353
      104                          0                         0 118353
      105                          0                         0 118353
      106                          0                         0 118353
      107                          0                         0 118353
      108                          0                         0 118353
      109                          0                         0 118353
      110                          0                         0 118353
      111                          0                         0 118353
      112                          0                         0 118353
      113                          0                         0 118353
      114                          0                         0 118353
      115                          0                         0 118353
      116                          0                         0 118353
      117                          0                         0 118353
      118                          0                         0 118353
      119                          0                         0 118353
      120                          0                         0 118353
      121                          0                         0 118353
      122                          0                         0 118353
      123                          0                         0 118353
      124                          0                         0 118353
      125                          0                         0 118353
      126                          0                         0 118353
      127                          0                         0 118353
      128                          0                         0 118353
      129                          0                         0 118353
      130                          0                         0 118353
      131                          0                         0 118353
      132                          0                         0 118353
      133                          0                         0 118353
      134                          0                         0 118353
      135                          0                         0 118353
      136                          0                         0 118353
      137                          0                         0 118353
      138                          0                         0 118353
      139                          0                         0 118353
      140                          0                         0 118353
      141                          0                         0 118353
      142                          0                         0 118353
      143                          0                         0 118353
      144                          0                         0 118353
      145                          0                         0 118353
      146                          0                         0 118353
      147                          0                         0 118353
      148                          0                         0 118353
      149                          0                         0 118353
      150                          0                         0 118353
      151                          0                         0 118353
      152                          0                         0 118353
      153                          0                         0 118353
      154                          0                         0 118353
      155                          0                         0 118353
      156                          0                         0 118353
      157                          0                         0 118353
      158                          0                         0 118353
      159                          0                         0 118353
      160                          0                         0 118353
      161                          0                         0 118353
      162                          0                         0 118353
      163                          0                         0 118353
      164                          0                         0 118353
      165                          0                         0 118353
      166                          0                         0 118353
      167                          0                         0 118353
      168                          0                         0 118353
      169                          0                         0 118353
      170                          0                         0 118353
      171                          0                         0 118353
      172                          0                         0 118353
      173                          0                         0 118353
      174                          0                         0 118353
      175                          0                         0 118353
      176                          0                         0 118353
      177                          0                         0 118353
      178                          0                         0 118353
      179                          0                         0 118353
      180                          0                         0 118353
      181                          0                         0 118353
      182                          0                         0 118353
      183                          0                         0 118353
      184                          0                         0 118353
      185                          0                         0 118353
      186                          0                         0 118353
      187                          0                         0 118353
      188                          0                         0 118353
      189                          0                         0 118353
      190                          0                         0 118353
      191                          0                         0 118353
      192                          0                         0 118353
      193                          0                         0 118353
      194                          0                         0 118353
      195                          0                         0 118353
      196                          0                         0 118353
      197                          0                         0 118353
      198                          0                         0 118353
      199                          0                         0 118353
      200                          0                         0 118353
      201                          0                         0 118353
      202                          0                         0 118353
      203                          0                         0 118353
      204                          0                         0 118353
      205                          0                         0 118353
      206                          0                         0 118353
      207                          0                         0 118353
      208                          0                         0 118353
      209                          0                         0 118353
      210                          0                         0 118353
      211                          0                         0 118353
      212                          0                         0 118353
      213                          0                         0 118353
      214                          0                         0 118353
      215                          0                         0 118353
      216                          0                         0 118353
      217                          0                         0 118353
      218                          0                         0 118353
      219                          0                         0 118353
      220                          0                         0 118353
      221                          0                         0 118353
      222                          0                         0 118353
      223                          0                         0 118353
      224                          0                         0 118353
      225                          0                         0 118353
      226                          0                         0 118353
      227                          0                         0 118353
      228                          0                         0 118353
      229                          0                         0 118353
      230                          0                         0 118353
      231                          0                         0 118353
      232                          0                         0 118353
      233                          0                         0 118353
      234                          0                         0 118353
      235                          0                         0 118353
      236                          0                         0 118353
      237                          0                         0 118353
      238                          0                         0 118353
      239                          0                         0 118353
      240                          0                         0 118353
      241                          0                         0 118353
      242                          0                         0 118353
      243                          0                         0 118353
      244                          0                         0 118353
      245                          0                         0 118353
      246                          0                         0 118353
      247                          0                         0 118353
      248                          0                         0 118353
      249                          0                         0 118353
      250                          0                         0 118353
      251                          0                         0 118353
      252                          0                         0 118353
      253                          0                         0 118353
      254                          0                         0 118353
      255                          0                         0 118353
      256                          0                         0 118353
      257                          0                         0 118353
      258                          0                         0 118353
      259                          0                         0 118353
      260                          0                         0 118353
      261                          0                         0 118353
      262                          0                         0 118353
      263                          0                         0 118353
      264                          0                         0 118353
      265                          0                         0 118353
      266                          0                         0 118353
      267                          0                         0 118353
      268                          0                         0 118353
      269                          0                         0 118353
      270                          0                         0 118353
      271                          0                         0 118353
      272                          0                         0 118353
      273                          0                         0 118353
      274                          0                         0 118353
      275                          0                         0 118353
      276                          0                         0 118353
      277                          0                         0 118353
      278                          0                         0 118353
      279                          0                         0 118353
      280                          0                         0 118353
      281                          0                         0 118353
      282                          0                         0 118353
      283                          0                         0 118353
      284                          0                         0 118353
      285                          0                         0 118353
      286                          0                         0 118353
      287                          0                         0 118353
      288                          0                         0 118353
      289                          0                         0 118353
      290                          0                         0 118353
      291                          0                         0 118353
      292                          0                         0 118353
      293                          0                         0 118353
      294                          0                         0 118353
      295                          0                         0 118353
      296                          0                         0 118353
      297                          0                         0 118353
      298                          0                         0 118353
      299                          0                         0 118353
      300                          0                         0 118353
      301                          0                         0 118353
      302                          0                         0 118353
      303                          0                         0 118353
      304                          0                         0 118353
      305                          0                         0 118353
      306                          0                         0 118353
      307                          0                         0 118353
      308                          0                         0 118353
      309                          0                         0 118353
      310                          0                         0 118353
      311                          0                         0 118353
      312                          0                         0 118353
      313                          0                         0 118353
      314                          0                         0 118353
      315                          0                         0 118353
      316                          0                         0 118353
      317                          0                         0 118353
      318                          0                         0 118353
      319                          0                         0 118353
      320                          0                         0 118353
      321                          0                         0 118353
      322                          0                         0 118353
      323                          0                         0 118353
      324                          0                         0 118353
      325                          0                         0 118353
      326                          0                         0 118353
      327                          0                         0 118353
      328                          0                         0 118353
      329                          0                         0 118353
      330                          0                         0 118353
      331                          0                         0 118353
      332                          0                         0 118353
      333                          0                         0 118353
      334                          0                         0 118353
      335                          0                         0 118353
      336                          0                         0 118353
      337                          0                         0 118353
      338                          0                         0 118353
      339                          0                         0 118353
      340                          0                         0 118353
      341                          0                         0 118353
      342                          0                         0 118353
      343                          0                         0 118353
      344                          0                         0 118353
      345                          0                         0 118353
      346                          0                         0 118353
      347                          0                         0 118353
      348                          0                         0 118353
      349                          0                         0 118353
      350                          0                         0 118353
      351                          0                         0 118353
      352                          0                         0 118353
      353                          0                         0 118353
      354                          0                         0 118353
      355                          0                         0 118353
      356                          0                         0 118353
      357                          0                         0 118353
      358                          0                         0 118353
      359                          0                         0 118353
      360                          0                         0 118353
      361                          0                         0 118353
      362                          0                         0 118353
      363                          0                         0 118353
      364                          0                         0 118353
      365                          0                         0 118353
      366                          0                         0 118353
      367                          0                         0 118353
      368                          0                         0 118353
      369                          0                         0 118353
      370                          0                         0 118353
      371                          0                         0 118353
      372                          0                         0 118353
      373                          0                         0 118353
      374                          0                         0 118353
      375                          0                         0 118353
      376                          0                         0 118353
      377                          0                         0 118353
      378                          0                         0 118353
      379                          0                         0 118353
      380                          0                         0 118353
      381                          0                         0 118353
      382                          0                         0 118353
      383                          0                         0 118353
      384                          0                         0 118353
      385                          0                         0 118353
      386                          0                         0 118353
      387                          0                         0 118353
      388                          0                         0 118353
      389                          0                         0 118353
      390                          0                         0 118353
      391                          0                         0 118353
      392                          0                         0 118353
      393                          0                         0 118353
      394                          0                         0 118353
      395                          0                         0 118353
      396                          0                         0 118353
      397                          0                         0 118353
      398                          0                         0 118353
      399                          0                         0 118353
      400                          0                         0 118353
      401                          0                         0 118353
      402                          0                         0 118353
      403                          0                         0 118353
      404                          0                         0 118353
      405                          0                         0 118353
      406                          0                         0 118353
      407                          0                         0 118353
      408                          0                         0 118353
      409                          0                         0 118353
      410                          0                         0 118353
      411                          0                         0 118353
      412                          0                         0 118353
      413                          0                         0 118353
      414                          0                         0 118353
      415                          0                         0 118353
      416                          0                         0 118353
      417                          0                         0 118353
      418                          0                         0 118353
      419                          0                         0 118353
      420                          0                         0 118353
      421                          0                         0 118353
      422                          0                         0 118353
      423                          0                         0 118353
      424                          0                         0 118353
      425                          0                         0 118353
      426                          0                         0 118353
      427                          0                         0 118353
      428                          0                         0 118353
      429                          0                         0 118353
      430                          0                         0 118353
      431                          0                         0 118353
      432                          0                         0 118353
      433                          0                         0 118353
      434                          0                         0 118353
      435                          0                         0 118353
      436                          0                         0 118353
      437                          0                         0 118353
      438                          0                         0 118353
      439                          0                         0 118353
      440                          0                         0 118353
      441                          0                         0 118353
      442                          0                         0 118353
      443                          0                         0 118353
      444                          0                         0 118353
      445                          0                         0 118353
      446                          0                         0 118353
      447                          0                         0 118353
      448                          0                         0 118353
      449                          0                         0 118353
      450                          0                         0 118353
      451                          0                         0 118353
      452                          0                         0 118353
      453                          0                         0 118353
      454                          0                         0 118353
      455                          0                         0 118353
      456                          0                         0 118353
      457                          0                         0 118353
      458                          0                         0 118353
      459                          0                         0 118353
      460                          0                         0 118353
      461                          0                         0 118353
      462                          0                         0 118353
      463                          0                         0 118353
      464                          0                         0 118353
      465                          0                         0 118353
      466                          0                         0 118353
      467                          0                         0 118353
      468                          0                         0 118353
      469                          0                         0 118353
      470                          0                         0 118353
      471                          0                         0 118353
      472                          0                         0 118353
      473                          0                         0 118353
      474                          0                         0 118353
      475                          0                         0 118353
      476                          0                         0 118353
      477                          0                         0 118353
      478                          0                         0 118353
      479                          0                         0 118353
      480                          0                         0 118353
      481                          0                         0 118353
      482                          0                         0 118353
      483                          0                         0 118353
      484                          0                         0 118353
      485                          0                         0 118353
      486                          0                         0 118353
      487                          0                         0 118353
      488                          0                         0 118353
      489                          0                         0 118353
      490                          0                         0 118353
      491                          0                         0 118353
      492                          0                         0 118353
      493                          0                         0 118353
      494                          0                         0 118353
      495                          0                         0 118353
      496                          0                         0 118353
      497                          0                         0 118353
      498                          0                         0 118353
      499                          0                         0 118353
      500                          0                         0 118353
      501                          0                         0 118353
      502                          0                         0 118353
      503                          0                         0 118353
      504                          0                         0 118353
      505                          0                         0 118353
      506                          0                         0 118353
      507                          0                         0 118353
      508                          0                         0 118353
      509                          0                         0 118353
      510                          0                         0 118353
      511                          0                         0 118353
      512                          0                         0 118353
      513                          0                         0 118353
      514                          0                         0 118353
      515                          0                         0 118353
      516                          0                         0 118353
      517                          0                         0 118353
      518                          0                         0 118353
      519                          0                         0 118353
      520                          0                         0 118353
      521                          0                         0 118353
      522                          0                         0 118353
      523                          0                         0 118353
      524                          0                         0 118353
      525                          0                         0 118353
      526                          0                         0 118353
      527                          0                         0 118353
      528                          0                         0 118353
      529                          0                         0 118353
      530                          0                         0 118353
      531                          0                         0 118353
      532                          0                         0 118353
      533                          0                         0 118353
      534                          0                         0 118353
      535                          0                         0 118353
      536                          0                         0 118353
      537                          0                         0 118353
      538                          0                         0 118353
      539                          0                         0 118353
      540                          0                         0 118353
      541                          0                         0 118353
      542                          0                         0 118353
      543                          0                         0 118353
      544                          0                         0 118353
      545                          0                         0 118353
      546                          0                         0 118353
      547                          0                         0 118353
      548                          0                         0 118353
      549                          0                         0 118353
      550                          0                         0 118353
      551                          0                         0 118353
      552                          0                         0 118353
      553                          0                         0 118353
      554                          0                         0 118353
      555                          0                         0 118353
      556                          0                         0 118353
      557                          0                         0 118353
      558                          0                         0 118353
      559                          0                         0 118353
      560                          0                         0 118353
      561                          0                         0 118353
      562                          0                         0 118353
      563                          0                         0 118353
      564                          0                         0 118353
      565                          0                         0 118353
      566                          0                         0 118353
      567                          0                         0 118353
      568                          0                         0 118353
      569                          0                         0 118353
      570                          0                         0 118353
      571                          0                         0 118353
      572                          0                         0 118353
      573                          0                         0 118353
      574                          0                         0 118353
      575                          0                         0 118353
      576                          0                         0 118353
      577                          0                         0 118353
      578                          0                         0 118353
      579                          0                         0 118353
      580                          0                         0 118353
      581                          0                         0 118353
      582                          0                         0 118353
      583                          0                         0 118353
      584                          0                         0 118353
      585                          0                         0 118353
      586                          0                         0 118353
      587                          0                         0 118353
      588                          0                         0 118353
      589                          0                         0 118353
      590                          0                         0 118353
      591                          0                         0 118353
      592                          0                         0 118353
      593                          0                         0 118353
      594                          0                         0 118353
      595                          0                         0 118353
      596                          0                         0 118353
      597                          0                         0 118353
      598                          0                         0 118353
      599                          0                         0 118353
      600                          0                         0 118353
      601                          0                         0 118353
      602                          0                         0 118353
      603                          0                         0 118353
      604                          0                         0 118353
      605                          0                         0 118353
      606                          0                         0 118353
      607                          0                         0 118353
      608                          0                         0 118353
      609                          0                         0 118353
      610                          0                         0 118353
      611                          0                         0 118353
      612                          0                         0 118353
      613                          0                         0 118353
      614                          0                         0 118353
      615                          0                         0 118353
      616                          0                         0 118353
      617                          0                         0 118353
      618                          0                         0 118353
      619                          0                         0 118353
      620                          0                         0 118353
      621                          0                         0 118353
      622                          0                         0 118353
      623                          0                         0 118353
      624                          0                         0 118353
      625                          0                         0 118353
      626                          0                         0 118353
      627                          0                         0 118353
      628                          0                         0 118353
      629                          0                         0 118353
      630                          0                         0 118353
      631                          0                         0 118353
      632                          0                         0 118353
      633                          0                         0 118353
      634                          0                         0 118353
      635                          0                         0 118353
      636                          0                         0 118353
      637                          0                         0 118353
      638                          0                         0 118353
      639                          0                         0 118353
      640                          0                         0 118353
      641                          0                         0 118353
      642                          0                         0 118353
      643                          0                         0 118353
      644                          0                         0 118353
      645                          0                         0 118353
      646                          0                         0 118353
      647                          0                         0 118353
      648                          0                         0 118353
      649                          0                         0 118353
      650                          0                         0 118353
      651                          0                         0 118353
      652                          0                         0 118353
      653                          0                         0 118353
      654                          0                         0 118353
      655                          0                         0 118353
      656                          0                         0 118353
      657                          0                         0 118353
      658                          0                         0 118353
      659                          0                         0 118353
      660                          0                         0 118353
      661                          0                         0 118353
      662                          0                         0 118353
      663                          0                         0 118353
      664                          0                         0 118353
      665                          0                         0 118353
      666                          0                         0 118353
      667                          0                         0 118353
      668                          0                         0 118353
      669                          0                         0 118353
      670                          0                         0 118353
      671                          0                         0 118353
      672                          0                         0 118353
      673                          0                         0 118353
      674                          0                         0 118353
      675                          0                         0 118353
      676                          0                         0 118353
      677                          0                         0 118353
      678                          0                         0 118353
      679                          0                         0 118353
      680                          0                         0 118353
      681                          0                         0 118353
      682                          0                         0 118353
      683                          0                         0 118353
      684                          0                         0 118353
      685                          0                         0 118353
      686                          0                         0 118353
      687                          0                         0 118353
      688                          0                         0 118353
      689                          0                         0 118353
      690                          0                         0 118353
      691                          0                         0 118353
      692                          0                         0 118353
      693                          0                         0 118353
      694                          0                         0 118353
      695                          0                         0 118353
      696                          0                         0 118353
      697                          0                         0 118353
      698                          0                         0 118353
      699                          0                         0 118353
      700                          0                         0 118353
      701                          0                         0 118353
      702                          0                         0 118353
      703                          0                         0 118353
      704                          0                         0 118353
      705                          0                         0 118353
      706                          0                         0 118353
      707                          0                         0 118353
      708                          0                         0 118353
      709                          0                         0 118353
      710                          0                         0 118353
      711                          0                         0 118353
      712                          0                         0 118353
      713                          0                         0 118353
      714                          0                         0 118353
      715                          0                         0 118353
      716                          0                         0 118353
      717                          0                         0 118353
      718                          0                         0 118353
      719                          0                         0 118353
      720                          0                         0 118353
      721                          0                         0 118353
      722                          0                         0 118353
      723                          0                         0 118353
      724                          0                         0 118353
      725                          0                         0 118353
      726                          0                         0 118353
      727                          0                         0 118353
      728                          0                         0 118353
      729                          0                         0 118353
      730                          0                         0 118353
      731                          0                         0 118353
      732                          0                         0 118353
      733                          0                         0 118353
      734                          0                         0 118353
      735                          0                         0 118353
      736                          0                         0 118353
      737                          0                         0 118353
      738                          0                         0 118353
      739                          0                         0 118353
      740                          0                         0 118353
      741                          0                         0 118353
      742                          0                         0 118353
      743                          0                         0 118353
      744                          0                         0 118353
      745                          0                         0 118353
      746                          0                         0 118353
      747                          0                         0 118353
      748                          0                         0 118353
      749                          0                         0 118353
      750                          0                         0 118353
      751                          0                         0 118353
      752                          0                         0 118353
      753                          0                         0 118353
      754                          0                         0 118353
      755                          0                         0 118353
      756                          0                         0 118353
      757                          0                         0 118353
      758                          0                         0 118353
      759                          0                         0 118353
      760                          0                         0 118353
      761                          0                         0 118353
      762                          0                         0 118353
      763                          0                         0 118353
      764                          0                         0 118353
      765                          0                         0 118353
      766                          0                         0 118353
      767                          0                         0 118353
      768                          0                         0 118353
      769                          0                         0 118353
      770                          0                         0 118353
      771                          0                         0 118353
      772                          0                         0 118353
      773                          0                         0 118353
      774                          0                         0 118353
      775                          0                         0 118353
      776                          0                         0 118353
      777                          0                         0 118353
      778                          0                         0 118353
      779                          0                         0 118353
      780                          0                         0 118353
      781                          0                         0 118353
      782                          0                         0 118353
      783                          0                         0 118353
      784                          0                         0 118353
      785                          0                         0 118353
      786                          0                         0 118353
      787                          0                         0 118353
      788                          0                         0 118353
      789                          0                         0 118353
      790                          0                         0 118353
      791                          0                         0 118353
      792                          0                         0 118353
      793                          0                         0 118353
      794                          0                         0 118353
      795                          0                         0 118353
      796                          0                         0 118353
      797                          0                         0 118353
      798                          0                         0 118353
      799                          0                         0 118353
      800                          0                         0 118353
      801                          0                         0 118353
      802                          0                         0 118353
      803                          0                         0 118353
      804                          0                         0 118353
      805                          0                         0 118353
      806                          0                         0 118353
      807                          0                         0 118353
      808                          0                         0 118353
      809                          0                         0 118353
      810                          0                         0 118353
      811                          0                         0 118353
      812                          0                         0 118353
      813                          0                         0 118353
      814                          0                         0 118353
      815                          0                         0 118353
      816                          0                         0 118353
      817                          0                         0 118353
      818                          0                         0 118353
      819                          0                         0 118353
      820                          0                         0 118353
      821                          0                         0 118353
      822                          0                         0 118353
      823                          0                         0 118353
      824                          0                         0 118353
      825                          0                         0 118353
      826                          0                         0 118353
      827                          0                         0 118353
      828                          0                         0 118353
      829                          0                         0 118353
      830                          0                         0 118353
      831                          0                         0 118353
      832                          0                         0 118353
      833                          0                         0 118353
      834                          0                         0 118353
      835                          0                         0 118353
      836                          0                         0 118353
      837                          0                         0 118353
      838                          0                         0 118353
      839                          0                         0 118353
      840                          0                         0 118353
      841                          0                         0 118353
      842                          0                         0 118353
      843                          0                         0 118353
      844                          0                         0 118353
      845                          0                         0 118353
      846                          0                         0 118353
      847                          0                         0 118353
      848                          0                         0 118353
      849                          0                         0 118353
      850                          0                         0 118353
      851                          0                         0 118353
      852                          0                         0 118353
      853                          0                         0 118353
      854                          0                         0 118353
      855                          0                         0 118353
      856                          0                         0 118353
      857                          0                         0 118353
      858                          0                         0 118353
      859                          0                         0 118353
      860                          0                         0 118353
      861                          0                         0 118353
      862                          0                         0 118353
      863                          0                         0 118353
      864                          0                         0 118353
      865                          0                         0 118353
      866                          0                         0 118353
      867                          0                         0 118353
      868                          0                         0 118353
      869                          0                         0 118353
      870                          0                         0 118353
      871                          0                         0 118353
      872                          0                         0 118353
      873                          0                         0 118353
      874                          0                         0 118353
      875                          0                         0 118353
      876                          0                         0 118353
      877                          0                         0 118353
      878                          0                         0 118353
      879                          0                         0 118353
      880                          0                         0 118353
      881                          0                         0 118353
      882                          0                         0 118353
      883                          0                         0 118353
      884                          0                         0 118353
      885                          0                         0 118353
      886                          0                         0 118353
      887                          0                         0 118353
      888                          0                         0 118353
      889                          0                         0 118353
      890                          0                         0 118353
      891                          0                         0 118353
      892                          0                         0 118353
      893                          0                         0 118353
      894                          0                         0 118353
      895                          0                         0 118353
      896                          0                         0 118353
      897                          0                         0 118353
      898                          0                         0 118353
      899                          0                         0 118353
      900                          0                         0 118353
      901                          0                         0 118353
      902                          0                         0 118353
      903                          0                         0 118353
      904                          0                         0 118353
      905                          0                         0 118353
      906                          0                         0 118353
      907                          0                         0 118353
      908                          0                         0 118353
      909                          0                         0 118353
      910                          0                         0 118353
      911                          0                         0 118353
      912                          0                         0 118353
      913                          0                         0 118353
      914                          0                         0 118353
      915                          0                         0 118353
      916                          0                         0 118353
      917                          0                         0 118353
      918                          0                         0 118353
      919                          0                         0 118353
      920                          0                         0 118353
      921                          0                         0 118353
      922                          0                         0 118353
      923                          0                         0 118353
      924                          0                         0 118353
      925                          0                         0 118353
      926                          0                         0 118353
      927                          0                         0 118353
      928                          0                         0 118353
      929                          0                         0 118353
      930                          0                         0 118353
      931                          0                         0 118353
      932                          0                         0 118353
      933                          0                         0 118353
      934                          0                         0 118353
      935                          0                         0 118353
      936                          0                         0 118353
      937                          0                         0 118353
      938                          0                         0 118353
      939                          0                         0 118353
      940                          0                         0 118353
      941                          0                         0 118353
      942                          0                         0 118353
      943                          0                         0 118353
      944                          0                         0 118353
      945                          0                         0 118353
      946                          0                         0 118353
      947                          0                         0 118353
      948                          0                         0 118353
      949                          0                         0 118353
      950                          0                         0 118353
      951                          0                         0 118353
      952                          0                         0 118353
      953                          0                         0 118353
      954                          0                         0 118353
      955                          0                         0 118353
      956                          0                         0 118353
      957                          0                         0 118353
      958                          0                         0 118353
      959                          0                         0 118353
      960                          0                         0 118353
      961                          0                         0 118353
      962                          0                         0 118353
      963                          0                         0 118353
      964                          0                         0 118353
      965                          0                         0 118353
      966                          0                         0 118353
      967                          0                         0 118353
      968                          0                         0 118353
      969                          0                         0 118353
      970                          0                         0 118353
      971                          0                         0 118353
      972                          0                         0 118353
      973                          0                         0 118353
      974                          0                         0 118353
      975                          0                         0 118353
      976                          0                         0 118353
      977                          0                         0 118353
      978                          0                         0 118353
      979                          0                         0 118353
      980                          0                         0 118353
      981                          0                         0 118353
      982                          0                         0 118353
      983                          0                         0 118353
      984                          0                         0 118353
      985                          0                         0 118353
      986                          0                         0 118353
      987                          0                         0 118353
      988                          0                         0 118353
      989                          0                         0 118353
      990                          0                         0 118353
      991                          0                         0 118353
      992                          0                         0 118353
      993                          0                         0 118353
      994                          0                         0 118353
      995                          0                         0 118353
      996                          0                         0 118353
      997                          0                         0 118353
      998                          0                         0 118353
      999                          0                         0 118353
      1000                         0                         0 118353
      1001                         0                         0 118353
      1002                         0                         0 118353
      1003                         0                         0 118353
      1004                         0                         0 118353
      1005                         0                         0 118353
      1006                         0                         0 118353
      1007                         0                         0 118353
      1008                         0                         0 118353
      1009                         0                         0 118353
      1010                         0                         0 118353
      1011                         0                         0 118353
      1012                         0                         0 118353
      1013                         0                         0 118353
      1014                         0                         0 118353
      1015                         0                         0 118353
      1016                         0                         0 118353
      1017                         0                         0 118353
      1018                         0                         0 118353
      1019                         0                         0 118353
      1020                         0                         0 118353
      1021                         0                         0 118353
      1022                         0                         0 118353
      1023                         0                         0 118353
      1024                         0                         0 118353
      1025                         0                         0 118353
      1026                         0                         0 118353
      1027                         0                         0 118353
      1028                         0                         0 118353
      1029                         0                         0 118353
      1030                         0                         0 118353
      1031                         0                         0 118353
      1032                         0                         0 118353
      1033                         0                         0 118353
      1034                         0                         0 118353
      1035                         0                         0 118353
      1036                         0                         0 118353
      1037                         0                         0 118353
      1038                         0                         0 118353
      1039                         0                         0 118353
      1040                         0                         0 118353
      1041                         0                         0 118353
      1042                         0                         0 118353
      1043                         0                         0 118353
      1044                         0                         0 118353
      1045                         0                         0 118353
      1046                         0                         0 118353
      1047                         0                         0 118353
      1048                         0                         0 118353
      1049                         0                         0 118353
      1050                         0                         0 118353
      1051                         0                         0 118353
      1052                         0                         0 118353
      1053                         0                         0 118353
      1054                         0                         0 118353
      1055                         0                         0 118353
      1056                         0                         0 118353
      1057                         0                         0 118353
      1058                         0                         0 118353
      1059                         0                         0 118353
      1060                         0                         0 118353
      1061                         0                         0 118353
      1062                         0                         0 118353
      1063                         0                         0 118353
      1064                         0                         0 118353
      1065                         0                         0 118353
      1066                         0                         0 118353
      1067                         0                         0 118353
      1068                         0                         0 118353
      1069                         0                         0 118353
      1070                         0                         0 118353
      1071                         0                         0 118353
      1072                         0                         0 118353
      1073                         0                         0 118353
      1074                         0                         0 118353
      1075                         0                         0 118353
      1076                         0                         0 118353
      1077                         0                         0 118353
      1078                         0                         0 118353
      1079                         0                         0 118353
      1080                         0                         0 118353
      1081                         0                         0 118353
      1082                         0                         0 118353
      1083                         0                         0 118353
      1084                         0                         0 118353
      1085                         0                         0 118353
      1086                         0                         0 118353
      1087                         0                         0 118353
      1088                         0                         0 118353
      1089                         0                         0 118353
      1090                         0                         0 118353
      1091                         0                         0 118353
      1092                         0                         0 118353
      1093                         0                         0 118353
      1094                         0                         0 118353
      1095                         0                         0 118353
      1096                         0                         0 118353
      1097                         0                         0 118353
      1098                         0                         0 118353
      1099                         0                         0 118353
      1100                         0                         0 118353
      1101                         0                         0 118353
      1102                         0                         0 118353
      1103                         0                         0 118353
      1104                         0                         0 118353
      1105                         0                         0 118353
      1106                         0                         0 118353
      1107                         0                         0 118353
      1108                         0                         0 118353
      1109                         0                         0 118353
      1110                         0                         0 118353
      1111                         0                         0 118353
      1112                         0                         0 118353
      1113                         0                         0 118353
      1114                         0                         0 118353
      1115                         0                         0 118353
      1116                         0                         0 118353
      1117                         0                         0 118353
      1118                         0                         0 118353
      1119                         0                         0 118353
      1120                         0                         0 118353
      1121                         0                         0 118353
      1122                         0                         0 118353
      1123                         0                         0 118353
      1124                         0                         0 118353
      1125                         0                         0 118353
      1126                         0                         0 118353
      1127                         0                         0 118353
      1128                         0                         0 118353
      1129                         0                         0 118353
      1130                         0                         0 118353
      1131                         0                         0 118353
      1132                         0                         0 118353
      1133                         0                         0 118353
      1134                         0                         0 118353
      1135                         0                         0 118353
      1136                         0                         0 118353
      1137                         0                         0 118353
      1138                         0                         0 118353
      1139                         0                         0 118353
      1140                         0                         0 118353
      1141                         0                         0 118353
      1142                         0                         0 118353
      1143                         0                         0 118353
      1144                         0                         0 118353
      1145                         0                         0 118353
      1146                         0                         0 118353
      1147                         0                         0 118353
      1148                         0                         0 118353
      1149                         0                         0 118353
      1150                         0                         0 118353
      1151                         0                         0 118353
      1152                         0                         0 118353
      1153                         0                         0 118353
      1154                         0                         0 118353
      1155                         0                         0 118353
      1156                         0                         0 118353
      1157                         0                         0 118353
      1158                         0                         0 118353
      1159                         0                         0 118353
      1160                         0                         0 118353
      1161                         0                         0 118353
      1162                         0                         0 118353
      1163                         0                         0 118353
      1164                         0                         0 118353
      1165                         0                         0 118353
      1166                         0                         0 118353
      1167                         0                         0 118353
      1168                         0                         0 118353
      1169                         0                         0 118353
      1170                         0                         0 118353
      1171                         0                         0 118353
      1172                         0                         0 118353
      1173                         0                         0 118353
      1174                         0                         0 118353
      1175                         0                         0 118353
      1176                         0                         0 118353
      1177                         0                         0 118353
      1178                         0                         0 118353
      1179                         0                         0 118353
      1180                         0                         0 118353
      1181                         0                         0 118353
      1182                         0                         0 118353
      1183                         0                         0 118353
      1184                         0                         0 118353
      1185                         0                         0 118353
      1186                         0                         0 118353
      1187                         0                         0 118353
      1188                         0                         0 118353
      1189                         0                         0 118353
      1190                         0                         0 118353
      1191                         0                         0 118353
      1192                         0                         0 118353
      1193                         0                         0 118353
      1194                         0                         0 118353
      1195                         0                         0 118353
      1196                         0                         0 118353
      1197                         0                         0 118353
      1198                         0                         0 118353
      1199                         0                         0 118353
      1200                         0                         0 118353
      1201                         0                         0 118353
      1202                         0                         0 118353
      1203                         0                         0 118353
      1204                         0                         0 118353
      1205                         0                         0 118353
      1206                         0                         0 118353
      1207                         0                         0 118353
      1208                         0                         0 118353
      1209                         0                         0 118353
      1210                         0                         0 118353
      1211                         0                         0 118353
      1212                         0                         0 118353
      1213                         0                         0 118353
      1214                         0                         0 118353
      1215                         0                         0 118353
      1216                         0                         0 118353
      1217                         0                         0 118353
      1218                         0                         0 118353
      1219                         0                         0 118353
      1220                         0                         0 118353
      1221                         0                         0 118353
      1222                         0                         0 118353
      1223                         0                         0 118353
      1224                         0                         0 118353
      1225                         0                         0 118353
      1226                         0                         0 118353
      1227                         0                         0 118353
      1228                         0                         0 118353
      1229                         0                         0 118353
      1230                         0                         0 118353
      1231                         0                         0 118353
      1232                         0                         0 118353
      1233                         0                         0 118353
      1234                         0                         0 118353
      1235                         0                         0 118353
      1236                         0                         0 118353
      1237                         0                         0 118353
      1238                         0                         0 118353
      1239                         0                         0 118353
      1240                         0                         0 118353
      1241                         0                         0 118353
      1242                         0                         0 118353
      1243                         0                         0 118353
      1244                         0                         0 118353
      1245                         0                         0 118353
      1246                         0                         0 118353
      1247                         0                         0 118353
      1248                         0                         0 118353
      1249                         0                         0 118353
      1250                         0                         0 118353
      1251                         0                         0 118353
      1252                         0                         0 118353
      1253                         0                         0 118353
      1254                         0                         0 118353
      1255                         0                         0 118353
      1256                         0                         0 118353
      1257                         0                         0 118353
      1258                         0                         0 118353
      1259                         0                         0 118353
      1260                         0                         0 118353
      1261                         0                         0 118353
      1262                         0                         0 118353
      1263                         0                         0 118353
      1264                         0                         0 118353
      1265                         0                         0 118353
      1266                         0                         0 118353
      1267                         0                         0 118353
      1268                         0                         0 118353
      1269                         0                         0 118353
      1270                         0                         0 118353
      1271                         0                         0 118353
      1272                         0                         0 118353
      1273                         0                         0 118353
      1274                         0                         0 118353
      1275                         0                         0 118353
      1276                         0                         0 118353
      1277                         0                         0 118353
      1278                         0                         0 118353
      1279                         0                         0 118353
      1280                         0                         0 118353
      1281                         0                         0 118353
      1282                         0                         0 118353
      1283                         0                         0 118353
      1284                         0                         0 118353
      1285                         0                         0 118353
      1286                         0                         0 118353
      1287                         0                         0 118353
      1288                         0                         0 118353
      1289                         0                         0 118353
      1290                         0                         0 118353
      1291                         0                         0 118353
      1292                         0                         0 118353
      1293                         0                         0 118353
      1294                         0                         0 118353
      1295                         0                         0 118353
      1296                         0                         0 118353
      1297                         0                         0 118353
      1298                         0                         0 118353
      1299                         0                         0 118353
      1300                         0                         0 118353
      1301                         0                         0 118353
      1302                         0                         0 118353
      1303                         0                         0 118353
      1304                         0                         0 118353
      1305                         0                         0 118353
      1306                         0                         0 118353
      1307                         0                         0 118353
      1308                         0                         0 118353
      1309                         0                         0 118353
      1310                         0                         0 118353
      1311                         0                         0 118353
      1312                         0                         0 118353
      1313                         0                         0 118353
      1314                         0                         0 118353
      1315                         0                         0 118353
      1316                         0                         0 118353
      1317                         0                         0 118353
      1318                         0                         0 118353
      1319                         0                         0 118353
      1320                         0                         0 118353
      1321                         0                         0 118353
      1322                         0                         0 118353
      1323                         0                         0 118353
      1324                         0                         0 118353
      1325                         0                         0 118353
      1326                         0                         0 118353
      1327                         0                         0 118353
      1328                         0                         0 118353
      1329                         0                         0 118353
      1330                         0                         0 118353
      1331                         0                         0 118353
      1332                         0                         0 118353
      1333                         0                         0 118353
      1334                         0                         0 118353
      1335                         0                         0 118353
      1336                         0                         0 118353
      1337                         0                         0 118353
      1338                         0                         0 118353
      1339                         0                         0 118353
      1340                         0                         0 118353
      1341                         0                         0 118353
      1342                         0                         0 118353
      1343                         0                         0 118353
      1344                         0                         0 118353
      1345                         0                         0 118353
      1346                         0                         0 118353
      1347                         0                         0 118353
      1348                         0                         0 118353
      1349                         0                         0 118353
      1350                         0                         0 118353
      1351                         0                         0 118353
      1352                         0                         0 118353
      1353                         0                         0 118353
      1354                         0                         0 118353
      1355                         0                         0 118353
      1356                         0                         0 118353
      1357                         0                         0 118353
      1358                         0                         0 118353
      1359                         0                         0 118353
      1360                         0                         0 118353
      1361                         0                         0 118353
      1362                         0                         0 118353
      1363                         0                         0 118353
      1364                         0                         0 118353
      1365                         0                         0 118353
      1366                         0                         0 118353
      1367                         0                         0 118353
      1368                         0                         0 118353
      1369                         0                         0 118353
      1370                         0                         0 118353
      1371                         0                         0 118353
      1372                         0                         0 118353
      1373                         0                         0 118353
      1374                         0                         0 118353
      1375                         0                         0 118353
      1376                         0                         0 118353
      1377                         0                         0 118353
      1378                         0                         0 118353
      1379                         0                         0 118353
      1380                         0                         0 118353
      1381                         0                         0 118353
      1382                         0                         0 118353
      1383                         0                         0 118353
      1384                         0                         0 118353
      1385                         0                         0 118353
      1386                         0                         0 118353
      1387                         0                         0 118353
      1388                         0                         0 118353
      1389                         0                         0 118353
      1390                         0                         0 118353
      1391                         0                         0 118353
      1392                         0                         0 118353
      1393                         0                         0 118353
      1394                         0                         0 118353
      1395                         0                         0 118353
      1396                         0                         0 118353
      1397                         0                         0 118353
      1398                         0                         0 118353
      1399                         0                         0 118353
      1400                         0                         0 118353
      1401                         0                         0 118353
      1402                         0                         0 118353
      1403                         0                         0 118353
      1404                         0                         0 118353
      1405                         0                         0 118353
      1406                         0                         0 118353
      1407                         0                         0 118353
      1408                         0                         0 118353
      1409                         0                         0 118353
      1410                         0                         0 118353
      1411                         0                         0 118353
      1412                         0                         0 118353
      1413                         0                         0 118353
      1414                         0                         0 118353
      1415                         0                         0 118353
      1416                         0                         0 118353
      1417                         0                         0 118353
      1418                         0                         0 118353
      1419                         0                         0 118353
      1420                         0                         0 118353
      1421                         0                         0 118353
      1422                         0                         0 118353
      1423                         0                         0 118353
      1424                         0                         0 118353
      1425                         0                         0 118353
      1426                         0                         0 118353
      1427                         0                         0 118353
      1428                         0                         0 118353
      1429                         0                         0 118353
      1430                         0                         0 118353
      1431                         0                         0 118353
      1432                         0                         0 118353
      1433                         0                         0 118353
      1434                         0                         0 118353
      1435                         0                         0 118353
      1436                         0                         0 118353
      1437                         0                         0 118353
      1438                         0                         0 118353
      1439                         0                         0 118353
      1440                         0                         0 118353
      1441                         0                         0 118353
      1442                         0                         0 118353
      1443                         0                         0 118353
      1444                         0                         0 118353
      1445                         0                         0 118353
      1446                         0                         0 118353
      1447                         0                         0 118353
      1448                         0                         0 118353
      1449                         0                         0 118353
      1450                         0                         0 118353
      1451                         0                         0 118353
      1452                         0                         0 118353
      1453                         0                         0 118353
      1454                         0                         0 118353
      1455                         0                         0 118353
      1456                         0                         0 118353
      1457                         0                         0 118353
      1458                         0                         0 118353
      1459                         0                         0 118353
      1460                         0                         0 118353
      1461                         0                         0 118353
      1462                         0                         0 118353
      1463                         0                         0 118353
      1464                         0                         0 118353
      1465                         0                         0 118353
      1466                         0                         0 118353
      1467                         0                         0 118353
      1468                         0                         0 118353
      1469                         0                         0 118353
      1470                         0                         0 118353
      1471                         0                         0 118353
      1472                         0                         0 118353
      1473                         0                         0 118353
      1474                         0                         0 118353
      1475                         0                         0 118353
      1476                         0                         0 118353
      1477                         0                         0 118353
      1478                         0                         0 118353
      1479                         0                         0 118353
      1480                         0                         0 118353
      1481                         0                         0 118353
      1482                         0                         0 118353
      1483                         0                         0 118353
      1484                         0                         0 118353
      1485                         0                         0 118353
      1486                         0                         0 118353
      1487                         0                         0 118353
      1488                         0                         0 118353
      1489                         0                         0 118353
      1490                         0                         0 118353
      1491                         0                         0 118353
      1492                         0                         0 118353
      1493                         0                         0 118353
      1494                         0                         0 118353
      1495                         0                         0 118353
      1496                         0                         0 118353
      1497                         0                         0 118353
      1498                         0                         0 118353
      1499                         0                         0 118353
      1500                         0                         0 118353
      1501                         0                         0 118353
      1502                         0                         0 118353
      1503                         0                         0 118353
      1504                         0                         0 118353
      1505                         0                         0 118353
      1506                         0                         0 118353
      1507                         0                         0 118353
      1508                         0                         0 118353
      1509                         0                         0 118353
      1510                         0                         0 118353
      1511                         0                         0 118353
      1512                         0                         0 118353
      1513                         0                         0 118353
      1514                         0                         0 118353
      1515                         0                         0 118353
      1516                         0                         0 118353
      1517                         0                         0 118353
      1518                         0                         0 118353
      1519                         0                         0 118353
      1520                         0                         0 118353
      1521                         0                         0 118353
      1522                         0                         0 118353
      1523                         0                         0 118353
      1524                         0                         0 118353
      1525                         0                         0 118353
      1526                         0                         0 118353
      1527                         0                         0 118353
      1528                         0                         0 118353
      1529                         0                         0 118353
      1530                         0                         0 118353
      1531                         0                         0 118353
      1532                         0                         0 118353
      1533                         0                         0 118353
      1534                         0                         0 118353
      1535                         0                         0 118353
      1536                         0                         0 118353
      1537                         0                         0 118353
      1538                         0                         0 118353
      1539                         0                         0 118353
      1540                         0                         0 118353
      1541                         0                         0 118353
      1542                         0                         0 118353
      1543                         0                         0 118353
      1544                         0                         0 118353
      1545                         0                         0 118353
      1546                         0                         0 118353
      1547                         0                         0 118353
      1548                         0                         0 118353
      1549                         0                         0 118353
      1550                         0                         0 118353
      1551                         0                         0 118353
      1552                         0                         0 118353
      1553                         0                         0 118353
      1554                         0                         0 118353
      1555                         0                         0 118353
      1556                         0                         0 118353
      1557                         0                         0 118353
      1558                         0                         0 118353
      1559                         0                         0 118353
      1560                         0                         0 118353
      1561                         0                         0 118353
      1562                         0                         0 118353
      1563                         0                         0 118353
      1564                         0                         0 118353
      1565                         0                         0 118353
      1566                         0                         0 118353
      1567                         0                         0 118353
      1568                         0                         0 118353
      1569                         0                         0 118353
      1570                         0                         0 118353
      1571                         0                         0 118353
      1572                         0                         0 118353
      1573                         0                         0 118353
      1574                         0                         0 118353
      1575                         0                         0 118353
      1576                         0                         0 118353
      1577                         0                         0 118353
      1578                         0                         0 118353
      1579                         0                         0 118353
      1580                         0                         0 118353
      1581                         0                         0 118353
      1582                         0                         0 118353
      1583                         0                         0 118353
      1584                         0                         0 118353
      1585                         0                         0 118353
      1586                         0                         0 118353
      1587                         0                         0 118353
      1588                         0                         0 118353
      1589                         0                         0 118353
      1590                         0                         0 118353
      1591                         0                         0 118353
      1592                         0                         0 118353
      1593                         0                         0 118353
      1594                         0                         0 118353
      1595                         0                         0 118353
      1596                         0                         0 118353
      1597                         0                         0 118353
      1598                         0                         0 118353
      1599                         0                         0 118353
      1600                         0                         0 118353
      1601                         0                         0 118353
      1602                         0                         0 118353
      1603                         0                         0 118353
      1604                         0                         0 118353
      1605                         0                         0 118353
      1606                         0                         0 118353
      1607                         0                         0 118353
      1608                         0                         0 118353
      1609                         0                         0 118353
      1610                         0                         0 118353
      1611                         0                         0 118353
      1612                         0                         0 118353
      1613                         0                         0 118353
      1614                         0                         0 118353
      1615                         0                         0 118353
      1616                         0                         0 118353
      1617                         0                         0 118353
      1618                         0                         0 118353
      1619                         0                         0 118353
      1620                         0                         0 118353
      1621                         0                         0 118353
      1622                         0                         0 118353
      1623                         0                         0 118353
      1624                         0                         0 118353
      1625                         0                         0 118353
      1626                         0                         0 118353
      1627                         0                         0 118353
      1628                         0                         0 118353
      1629                         0                         0 118353
      1630                         0                         0 118353
      1631                         0                         0 118353
      1632                         0                         0 118353
      1633                         0                         0 118353
      1634                         0                         0 118353

---

    Code
      summary_data_c
    Output
      # A tibble: 20 x 6
         start_time          end_time            location_type      latitude longitude
         <dttm>              <dttm>              <chr>                 <dbl>     <dbl>
       1 2013-09-18 00:00:00 2013-09-18 23:59:59 LIGHT_BASED_GEOLO~     66.5      135.
       2 2013-09-19 00:00:00 2013-09-19 23:59:59 LIGHT_BASED_GEOLO~     42.5      139.
       3 2013-09-20 00:00:00 2013-09-20 23:59:59 LIGHT_BASED_GEOLO~     59.0      135.
       4 2013-09-21 00:00:00 2013-09-21 23:59:59 LIGHT_BASED_GEOLO~     56.8      135.
       5 2013-09-22 00:00:00 2013-09-22 23:59:59 LIGHT_BASED_GEOLO~     10.5      133.
       6 2013-09-23 00:00:00 2013-09-23 23:59:59 LIGHT_BASED_GEOLO~     58.0      136.
       7 2013-09-24 00:00:00 2013-09-24 23:59:59 LIGHT_BASED_GEOLO~     66.8      135.
       8 2013-09-25 00:00:00 2013-09-25 23:59:59 LIGHT_BASED_GEOLO~     68.4      134.
       9 2013-09-26 00:00:00 2013-09-26 23:59:59 LIGHT_BASED_GEOLO~     18.9      136.
      10 2013-09-27 00:00:00 2013-09-27 23:59:59 LIGHT_BASED_GEOLO~     64.8      134.
      11 2013-09-28 00:00:00 2013-09-28 23:59:59 LIGHT_BASED_GEOLO~     36.8      134.
      12 2013-09-29 00:00:00 2013-09-29 23:59:59 LIGHT_BASED_GEOLO~     75.5      135.
      13 2013-09-30 00:00:00 2013-09-30 23:59:59 LIGHT_BASED_GEOLO~     75.7      133.
      14 2013-10-01 00:00:00 2013-10-01 23:59:59 LIGHT_BASED_GEOLO~     13.0      135.
      15 2013-10-02 00:00:00 2013-10-02 23:59:59 LIGHT_BASED_GEOLO~     19.1      135.
      16 2013-10-03 00:00:00 2013-10-03 23:59:59 LIGHT_BASED_GEOLO~     54.8      137.
      17 2013-10-04 00:00:00 2013-10-04 23:59:59 LIGHT_BASED_GEOLO~     57.0      134.
      18 2013-10-05 00:00:00 2013-10-05 23:59:59 LIGHT_BASED_GEOLO~     51.5      133.
      19 2013-10-06 00:00:00 2013-10-06 23:59:59 LIGHT_BASED_GEOLO~     50.5      136.
      20 2013-10-09 00:00:00 2013-10-09 23:59:59 LIGHT_BASED_GEOLO~     53.3      134.
      # i 1 more variable: tag_id <chr>

# TagProcessor::get_node_data

    Code
      metadata
    Output
        tag_id                make model
      1 118353 Microwave Telemetry X-Tag

---

    Code
      instant_data
    Output
      # A tibble: 20 x 6
         start_time          end_time            location_type      latitude longitude
         <dttm>              <dttm>              <chr>                 <dbl>     <dbl>
       1 2013-09-18 00:00:00 2013-09-18 23:59:59 LIGHT_BASED_GEOLO~     66.5      135.
       2 2013-09-19 00:00:00 2013-09-19 23:59:59 LIGHT_BASED_GEOLO~     42.5      139.
       3 2013-09-20 00:00:00 2013-09-20 23:59:59 LIGHT_BASED_GEOLO~     59.0      135.
       4 2013-09-21 00:00:00 2013-09-21 23:59:59 LIGHT_BASED_GEOLO~     56.8      135.
       5 2013-09-22 00:00:00 2013-09-22 23:59:59 LIGHT_BASED_GEOLO~     10.5      133.
       6 2013-09-23 00:00:00 2013-09-23 23:59:59 LIGHT_BASED_GEOLO~     58.0      136.
       7 2013-09-24 00:00:00 2013-09-24 23:59:59 LIGHT_BASED_GEOLO~     66.8      135.
       8 2013-09-25 00:00:00 2013-09-25 23:59:59 LIGHT_BASED_GEOLO~     68.4      134.
       9 2013-09-26 00:00:00 2013-09-26 23:59:59 LIGHT_BASED_GEOLO~     18.9      136.
      10 2013-09-27 00:00:00 2013-09-27 23:59:59 LIGHT_BASED_GEOLO~     64.8      134.
      11 2013-09-28 00:00:00 2013-09-28 23:59:59 LIGHT_BASED_GEOLO~     36.8      134.
      12 2013-09-29 00:00:00 2013-09-29 23:59:59 LIGHT_BASED_GEOLO~     75.5      135.
      13 2013-09-30 00:00:00 2013-09-30 23:59:59 LIGHT_BASED_GEOLO~     75.7      133.
      14 2013-10-01 00:00:00 2013-10-01 23:59:59 LIGHT_BASED_GEOLO~     13.0      135.
      15 2013-10-02 00:00:00 2013-10-02 23:59:59 LIGHT_BASED_GEOLO~     19.1      135.
      16 2013-10-03 00:00:00 2013-10-03 23:59:59 LIGHT_BASED_GEOLO~     54.8      137.
      17 2013-10-04 00:00:00 2013-10-04 23:59:59 LIGHT_BASED_GEOLO~     57.0      134.
      18 2013-10-05 00:00:00 2013-10-05 23:59:59 LIGHT_BASED_GEOLO~     51.5      133.
      19 2013-10-06 00:00:00 2013-10-06 23:59:59 LIGHT_BASED_GEOLO~     50.5      136.
      20 2013-10-09 00:00:00 2013-10-09 23:59:59 LIGHT_BASED_GEOLO~     53.3      134.
      # i 1 more variable: tag_id <chr>

---

    Code
      summary_data
    Output
      # A tibble: 20 x 5
         start_time          end_time            location_type      latitude longitude
         <dttm>              <dttm>              <chr>                 <dbl>     <dbl>
       1 2013-09-18 00:00:00 2013-09-18 23:59:59 LIGHT_BASED_GEOLO~     66.5      135.
       2 2013-09-19 00:00:00 2013-09-19 23:59:59 LIGHT_BASED_GEOLO~     42.5      139.
       3 2013-09-20 00:00:00 2013-09-20 23:59:59 LIGHT_BASED_GEOLO~     59.0      135.
       4 2013-09-21 00:00:00 2013-09-21 23:59:59 LIGHT_BASED_GEOLO~     56.8      135.
       5 2013-09-22 00:00:00 2013-09-22 23:59:59 LIGHT_BASED_GEOLO~     10.5      133.
       6 2013-09-23 00:00:00 2013-09-23 23:59:59 LIGHT_BASED_GEOLO~     58.0      136.
       7 2013-09-24 00:00:00 2013-09-24 23:59:59 LIGHT_BASED_GEOLO~     66.8      135.
       8 2013-09-25 00:00:00 2013-09-25 23:59:59 LIGHT_BASED_GEOLO~     68.4      134.
       9 2013-09-26 00:00:00 2013-09-26 23:59:59 LIGHT_BASED_GEOLO~     18.9      136.
      10 2013-09-27 00:00:00 2013-09-27 23:59:59 LIGHT_BASED_GEOLO~     64.8      134.
      11 2013-09-28 00:00:00 2013-09-28 23:59:59 LIGHT_BASED_GEOLO~     36.8      134.
      12 2013-09-29 00:00:00 2013-09-29 23:59:59 LIGHT_BASED_GEOLO~     75.5      135.
      13 2013-09-30 00:00:00 2013-09-30 23:59:59 LIGHT_BASED_GEOLO~     75.7      133.
      14 2013-10-01 00:00:00 2013-10-01 23:59:59 LIGHT_BASED_GEOLO~     13.0      135.
      15 2013-10-02 00:00:00 2013-10-02 23:59:59 LIGHT_BASED_GEOLO~     19.1      135.
      16 2013-10-03 00:00:00 2013-10-03 23:59:59 LIGHT_BASED_GEOLO~     54.8      137.
      17 2013-10-04 00:00:00 2013-10-04 23:59:59 LIGHT_BASED_GEOLO~     57.0      134.
      18 2013-10-05 00:00:00 2013-10-05 23:59:59 LIGHT_BASED_GEOLO~     51.5      133.
      19 2013-10-06 00:00:00 2013-10-06 23:59:59 LIGHT_BASED_GEOLO~     50.5      136.
      20 2013-10-09 00:00:00 2013-10-09 23:59:59 LIGHT_BASED_GEOLO~     53.3      134.

# TagProcessor::upsert

    Code
      out_tbl
    Output
         tag_id timestamp depth  pressure weight
      1       1      9529   8.7 118.64087     NA
      2       1     66201   6.6  19.29002     NA
      3       1     28070   1.1  65.41202     NA
      4       1     21448   4.8  42.64109     NA
      5       1     34341   8.9  80.35091     NA
      6       1     28634   9.8  36.69455     NA
      7       1     37702   6.9  32.19838     NA
      8       1      5002   9.8  72.51887     NA
      9       1     31516   6.9  26.54191     NA
      10      1     44491   2.0  48.15253     NA
      11      1     22964   1.9  72.95398     NA
      12      1     52437   3.0 144.74766     NA
      13      1     48550   7.2  49.89298     NA
      14      1     41933   6.9  45.97696     NA
      15      1     78712   7.2  70.34330     NA
      16      1     72955   6.5 126.32787     NA
      17      1     35041  10.0  73.67917     NA
      18      1     65403   4.0  62.51126     NA
      19      1     85029   4.6  69.03796     NA
      20      1     10220   6.1 131.25915     NA
      21      1     15194   4.9  86.58753     NA
      22      1     32919   5.2  38.43500     NA
      23      1     52086   6.6 113.99966     NA
      24      1     51170   6.9  65.55706     NA
      25      1     57564   9.6 101.09130     NA
      26      1     82520   9.5  49.31283     NA

---

    Code
      out_tbl
    Output
          tag_id timestamp depth  pressure weight
      1        1      9529   8.7 118.64087     NA
      2        1     66201   6.6  19.29002     NA
      3        1     28070   1.1  65.41202     NA
      4        1     21448   4.8  42.64109     NA
      5        1     34341   8.9  80.35091     NA
      6        1     28634   9.8  36.69455     NA
      7        1     37702   6.9  32.19838     NA
      8        1      5002   9.8  72.51887     NA
      9        1     31516   6.9  26.54191     NA
      10       1     44491   2.0  48.15253     NA
      11       1     22964   1.9  72.95398     NA
      12       1     52437   3.0 144.74766     NA
      13       1     48550   7.2  49.89298     NA
      14       1     41933   6.9  45.97696     NA
      15       1     78712   7.2  70.34330     NA
      16       1     72955   6.5 126.32787     NA
      17       1     35041  10.0  73.67917     NA
      18       1     65403   4.0  62.51126     NA
      19       1     85029   4.6  69.03796     NA
      20       1     10220   6.1 131.25915     NA
      21       1     15194   4.9  86.58753     NA
      22       1     32919   5.2  38.43500     NA
      23       1     52086   6.6 113.99966     NA
      24       1     51170   6.9  65.55706     NA
      25       1     57564   9.6 101.09130     NA
      26       1     82520   9.5  49.31283     NA
      27       1     83660   4.2 112.54928     NA
      28       1      7910  10.0  92.67911     NA
      29       1     45872   9.4  23.06100     NA
      30       1     42941   6.0  14.64881     NA
      31       1     79526   6.2 131.25915     NA
      32       1     71521   2.5  88.47302     NA
      33       1     73166   3.6  72.51887     NA
      34       1     23888   1.1  69.47308     NA
      35       1     24369   1.1 140.10645     NA
      36       1     19708   3.8  75.99977     NA
      37       1     13680   2.7  77.59519     NA
      38       1      2577   5.6  81.22113     NA
      39       1      5200   3.3 124.87749     NA
      40       1     27855   9.4  60.04562     NA
      41       1     70542   9.6 114.86989     NA
      42       1     42847   5.2 113.56455     NA
      43       1     67250   9.7 100.51115     NA
      44       1     84797   6.9  35.09913     NA
      45       1      2999   2.0 135.32021     NA
      46       1     27085   1.9 105.29740     NA
      47       1     32385   6.4 126.03779     NA
      48       1     18544   3.6  98.91574     NA
      49       1     23151   4.1  24.51138     NA
      50       1     80328   5.0  50.32809     NA
      51       1     28453   1.1  64.10668     NA
      52       1     18725   3.6  38.72508     NA
      53       1     76209   6.1  71.35857     NA
      54       1     69273   4.5  39.59530     NA
      55       1     13497   6.3  95.14476     NA
      56       1     34857   4.4 111.53402     NA
      57       1     55035   3.1  25.81672     NA
      58       1     46237   1.9  86.29745     NA
      59       1     27087   5.1 132.85457     NA
      60       1     66298   3.3 103.70198     NA
      61       1     45295   7.8  73.96925     NA
      62       1      5503   7.4  32.77853     NA
      63       1     30871   2.2  61.78608     NA
      64       1     72299   8.3  21.46559     NA
      65       1     78206   4.3  67.44255     NA
      66       1     35364   5.7  26.39687     NA
      67       1      4340   4.2  80.49594     NA
      68       1     54896   7.5 135.46525     NA
      69       1     84035   4.1  25.96176     NA
      70       1     59793   2.6 133.57976     NA
      71       1     58963   2.5 102.39664     NA
      72       1     21145   9.2  16.38926     NA
      73       1     28801   3.7 125.60268     NA
      74       1     12046  10.0 123.28208     NA
      75       1     34363   3.4 143.00721     NA
      76       1     80011   8.0 105.58747     NA
      77       1     71992   2.5  62.51126     NA
      78       1     40627   7.8  98.91574     NA
      79       1     22558   2.2 141.41179     NA
      80       1     32964   4.2 104.28213     NA
      81       1      7822   7.7 128.64847     NA
      82       1      8599   5.7 119.07598     NA
      83       1     34585   8.4  26.97702     NA
      84       1     82516   9.2  34.37394     NA
      85       1      2574   5.3 111.53402     NA
      86       1      6240   6.3  54.24411     NA
      87       1     45094   2.5  70.92345     NA
      88       1      8517   9.7  50.32809     NA
      89       1      3342   3.8 125.45764     NA
      90       1     19661   7.8  59.17540     NA
      91       1     10647   7.9  35.24417     NA
      92       1     68853   6.5  48.87772     NA
      93       1     78834   3.9 111.53402     NA
      94       1     82106   2.3  93.40430     NA
      95       1     82923   5.4  18.12972     NA
      96       1     20496   3.2  26.10679     NA
      97       1      1201   1.9  35.96936     NA
      98       1     27448   1.4  21.46559     NA
      99       1     37213   3.4 127.63321     NA
      100      1     47046   1.6  32.05334     NA
      101      1     44680   7.3  78.46542     NA
      102      1     28205   5.6  89.34325     NA
      103      1     58888   9.8  16.82438     NA
      104      1     68108   9.7  88.90813     NA
      105      1     62535   6.6 117.91568     NA
      106      1     19036   9.9  24.80145     NA
      107      1     12799   6.7  88.61806     NA
      108      1     81431   5.5 123.86223     NA
      109      1     75589   6.3 132.27442     NA
      110      1      5517   4.2  65.12194     NA
      111      1     65805   3.2  23.78619     NA
      112      1     77343   5.7  95.43483     NA
      113      1     24100   4.6  96.30506     NA
      114      1     13820   4.2  56.70976     NA
      115      1     62709   2.8 119.51110     NA
      116      1     46422   9.8  58.30517     NA
      117      1      8528   6.2  74.69443     NA
      118      1     26722   5.6  57.87006     NA
      119      1     13466   9.5  43.80140     NA
      120      1     10065   7.0 118.78591     NA
      121      1     39019   9.1 134.88510     NA
      122      1      1558   9.6 106.89281     NA
      123      1     53773   8.1  82.09136     NA
      124      1     34567   8.1 116.61034     NA
      125      1      6752   5.7  36.11440     NA
      126      1     56891   2.0 126.32787     NA
      127      1      6247   9.3  61.49600     NA
      128      1     77934   7.1 122.55689     NA
      129      1     79627   6.1  82.67151     NA
      130      1     52283   2.5  18.85491     NA
      131      1     40335   5.5  58.59525     NA
      132      1     71815   9.6  33.50372     NA
      133      1     56398   2.9  92.67911     NA
      134      1     79975   5.6 111.24394     NA
      135      1     10832   5.8 135.17517     NA
      136      1     76233   7.6  56.85479     NA
      137      1     38526   5.8 117.19049     NA
      138      1     46926   5.6  23.06100     NA
      139      1     42036   7.3  89.05317     NA
      140      1     52168   6.4  79.04557     NA
      141      1     41226   3.5 100.07604     NA
      142      1      3339   9.4  58.16013     NA
      143      1     25746   7.8 104.42717     NA
      144      1     72516   1.0  57.28991     NA
      145      1     74772   3.9 105.58747     NA
      146      1     11224   2.3  54.38915     NA
      147      1     21380   8.1 111.38898     NA
      148      1     67718   1.6 116.46530     NA
      149      1     37527   9.3  27.12206     NA
      150      1     83531   1.9  35.24417     NA
      151      1     14859   5.6  63.09142     NA
      152      1     23898   6.8  29.00755     NA
      153      1     67637   9.0 143.73240     NA
      154      1      8343   9.3 144.16751     NA
      155      1     14036   5.3 100.22108     NA
      156      1     13174   2.6  78.90053     NA
      157      1     14673   1.0 113.41951     NA
      158      1       437   2.6  49.02276     NA
      159      1      8250   2.3 108.92334     NA
      160      1     73953   3.1 130.82404     NA
      161      1     67215   2.1 144.16751     NA
      162      1     48880   4.3  29.44266     NA
      163      1     49918   1.7  33.64876     NA
      164      1      6367   3.6  51.77847     NA
      165      1      3903   8.1 105.29740     NA
      166      1     62448   3.4 131.11411     NA
      167      1     24259   6.1  95.28979     NA
      168      1     61682   7.9 123.13704     NA
      169      1     36760   9.7  83.54174     NA
      170      1     51894   1.3 126.03779     NA
      171      1     31541   8.1  46.70215     NA
      172      1     41889   9.9  49.02276     NA
      173      1     32216   5.6 143.15225     NA
      174      1     72277   8.2  32.34342     NA
      175      1     80855   2.1 112.98440     NA
      176      1     81589  10.0  54.24411     NA
      177      1     46340   1.0  74.83947     NA
      178      1      2087   5.7  80.06083     NA
      179      1     77064   9.6  92.53408     NA
      180      1     23482   2.9  19.58009     NA
      181      1     38736   6.3  99.35085     NA
      182      1     81705   7.4  61.93111     NA
      183      1     64136   9.7 143.15225     NA
      184      1     23987   4.0 142.71713     NA
      185      1     35247   1.5 107.03785     NA
      186      1     47177   6.9  81.65625     NA
      187      1      1745   1.6 106.31266     NA
      188      1     80527   3.8  60.04562     NA
      189      1     11524   7.3  70.77842     NA
      190      1     34697   4.4 138.65608     NA
      191      1     83267   6.4 100.36611     NA
      192      1     38681   2.6  44.67162     NA
      193      1     85514   6.0  77.59519     NA
      194      1     66321   8.3  77.59519     NA
      195      1     70833   1.0  97.75544     NA
      196      1     18358   9.2  19.29002     NA
      197      1     79156   7.5  56.70976     NA
      198      1     40791   9.9  98.91574     NA
      199      1     21781   7.0  35.53425     NA
      200      1     31193   7.1 130.24389     NA
      201      1     44326   5.0 121.83170     NA
      202      1     26971   5.8  92.09896     NA
      203      1     25013   1.6  29.15259     NA
      204      1     75265   7.0 118.35079     NA
      205      1     67472   1.1  63.52653     NA
      206      1     35776   7.9  33.50372     NA
      207      1     58745   9.4  43.36628     NA
      208      1     73811   3.9  15.37400     NA
      209      1     20711   4.8 128.93855     NA
      210      1     70872   2.3  38.28996     NA
      211      1      4483   9.7  26.54191     NA
      212      1     44852   7.9  86.00738     NA
      213      1     81988   3.3  25.96176     NA
      214      1     37812   1.6 143.87744     NA
      215      1     36205   6.3 142.28202     NA
      216      1     55291   3.4  30.89304     NA
      217      1     39824   6.1  63.67157     NA
      218      1     57827   1.8  96.59513     NA
      219      1     54689   4.6  88.76310     NA
      220      1     77678   2.8 122.55689     NA
      221      1     41440   3.2 100.80123     NA
      222      1     71315   5.6 139.96142     NA
      223      1     39425   9.9 133.28968     NA
      224      1     24679   3.6  67.00743     NA
      225      1     21858   3.9  99.64093     NA
      226      1     26263   2.6  83.83181     NA
      227      1     75873   5.2  57.72502     NA
      228      1     29060   7.9 109.35845     NA
      229      1     50620   3.4  71.79368     NA
      230      1      9482   3.0  86.00738     NA
      231      1     76389   4.1 127.34313     NA
      232      1      8847   2.8  36.40447     NA
      233      1     78268   5.4 123.57215     NA
      234      1     58238   7.1 133.14464     NA
      235      1     12861   4.0 134.59502     NA
      236      1     26720   1.0  26.10679     NA
      237      1     49264   1.8 134.74006     NA
      238      1     16376   2.8 109.50349     NA
      239      1     42415   4.8  18.27475     NA
      240      1     32276   5.9 140.39653     NA
      241      1     47187   4.4  30.60296     NA
      242      1     52811   9.9 110.66379     NA
      243      1     78571   2.8 105.73251     NA
      244      1     25717   2.1 103.70198     NA
      245      1     83570   4.2  45.54185     NA
      246      1     69561   3.8 118.20576     NA
      247      1     13427   2.0 139.96142     NA
      248      1     33054   1.8  70.19827     NA
      249      1     65541   1.0  91.66385     NA
      250      1     36454   8.8  23.06100     NA
      251      1     32770   7.1  24.65642     NA
      252      1     52333   5.1 127.05306     NA
      253      1     58616   7.5  56.99983     NA
      254      1     44489   3.0  68.89293     NA
      255      1     60082   9.0  35.38921     NA

