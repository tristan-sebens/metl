# Pipe::num_leaves

    Code
      tp__$num_leaves(tp__$dir_tree__)
    Output
      [1] 30

# Pipe::num_decoded

    Code
      tp__$num_decoded(tp__$dir_tree__)
    Output
      [1] 30

# Pipe::build_datatree

    Code
      tp__$dir_tree__
    Output
                        levelName
      1  _data                   
      2   ¦--ds                  
      3   ¦   °--stm             
      4   ¦       °--sf          
      5   ¦--lt                  
      6   ¦   ¦--lt_1000_1250    
      7   ¦   ¦   ¦--lc          
      8   ¦   ¦   ¦   ¦--4071    
      9   ¦   ¦   ¦   °--5295    
      10  ¦   ¦   °--sf          
      11  ¦   ¦       ¦--1484    
      12  ¦   ¦       ¦--1486    
      13  ¦   ¦       ¦--4066    
      14  ¦   ¦       °--4067    
      15  ¦   ¦--lt_1300         
      16  ¦   ¦   ¦--gt          
      17  ¦   ¦   ¦   ¦--2466    
      18  ¦   ¦   ¦   °--3880    
      19  ¦   ¦   °--lc          
      20  ¦   ¦       °--3788    
      21  ¦   °--lt_1400_1800    
      22  ¦       ¦--gt          
      23  ¦       ¦   °--383     
      24  ¦       °--sf          
      25  ¦           °--1546    
      26  ¦--mt                  
      27  ¦   ¦--xt_recov        
      28  ¦   ¦   °--sd          
      29  ¦   ¦       °--118356  
      30  ¦   °--xt_trans        
      31  ¦       ¦--lc          
      32  ¦       ¦   ¦--128305  
      33  ¦       ¦   °--128306  
      34  ¦       ¦--rr          
      35  ¦       ¦   ¦--117230  
      36  ¦       ¦   °--118353  
      37  ¦       °--sd          
      38  ¦           °--118356  
      39  ¦               ¦--2012
      40  ¦               °--2018
      41  ¦--so                  
      42  ¦   ¦--dst             
      43  ¦   ¦   °--sf          
      44  ¦   ¦       °--JS7977  
      45  ¦   ¦--dst_mag         
      46  ¦   ¦   °--sf          
      47  ¦   ¦       ¦--JS923   
      48  ¦   ¦       °--JS927   
      49  ¦   °--dst_mf          
      50  ¦       °--sf          
      51  ¦           ¦--JS1229  
      52  ¦           °--JS142   
      53  °--wc                  
      54      ¦--b_sp            
      55      ¦   °--ss          
      56      ¦       ¦--175146  
      57      ¦       ¦--175147  
      58      ¦       ¦--175157  
      59      ¦       °--175158  
      60      °--mp              
      61          °--ss          
      62              ¦--174898  
      63              °--174900  

# Pipe::build_report

    Code
      report
    Output
                              dir pct_decoded decoded                         decoder
      1  _data                            100      NA                            <NA>
      2   ¦--ds                           100      NA                            <NA>
      3   ¦   °--stm                      100      NA                            <NA>
      4   ¦       °--sf                    NA    TRUE            DesertStar SeaTagMOD
      5   ¦--lt                           100      NA                            <NA>
      6   ¦   ¦--lt_1000_1250             100      NA                            <NA>
      7   ¦   ¦   ¦--lc                   100      NA                            <NA>
      8   ¦   ¦   ¦   ¦--4071              NA    TRUE            Lotek 1000/1100/1250
      9   ¦   ¦   ¦   °--5295              NA    TRUE            Lotek 1000/1100/1250
      10  ¦   ¦   °--sf                   100      NA                            <NA>
      11  ¦   ¦       ¦--1484              NA    TRUE            Lotek 1000/1100/1250
      12  ¦   ¦       ¦--1486              NA    TRUE            Lotek 1000/1100/1250
      13  ¦   ¦       ¦--4066              NA    TRUE            Lotek 1000/1100/1250
      14  ¦   ¦       °--4067              NA    TRUE            Lotek 1000/1100/1250
      15  ¦   ¦--lt_1300                  100      NA                            <NA>
      16  ¦   ¦   ¦--gt                   100      NA                            <NA>
      17  ¦   ¦   ¦   ¦--2466              NA    TRUE                      Lotek 1300
      18  ¦   ¦   ¦   °--3880              NA    TRUE                      Lotek 1300
      19  ¦   ¦   °--lc                   100      NA                            <NA>
      20  ¦   ¦       °--3788              NA    TRUE                      Lotek 1300
      21  ¦   °--lt_1400_1800             100      NA                            <NA>
      22  ¦       ¦--gt                   100      NA                            <NA>
      23  ¦       ¦   °--383               NA    TRUE                 Lotek 1400/1800
      24  ¦       °--sf                   100      NA                            <NA>
      25  ¦           °--1546              NA    TRUE                 Lotek 1400/1800
      26  ¦--mt                           100      NA                            <NA>
      27  ¦   ¦--xt_recov                 100      NA                            <NA>
      28  ¦   ¦   °--sd                   100      NA                            <NA>
      29  ¦   ¦       °--118356            NA    TRUE        Microwave Telemetry XTag
      30  ¦   °--xt_trans                 100      NA                            <NA>
      31  ¦       ¦--lc                   100      NA                            <NA>
      32  ¦       ¦   ¦--128305            NA    TRUE        Microwave Telemetry XTag
      33  ¦       ¦   °--128306            NA    TRUE        Microwave Telemetry XTag
      34  ¦       ¦--rr                   100      NA                            <NA>
      35  ¦       ¦   ¦--117230            NA    TRUE        Microwave Telemetry XTag
      36  ¦       ¦   °--118353            NA    TRUE        Microwave Telemetry XTag
      37  ¦       °--sd                   100      NA                            <NA>
      38  ¦           °--118356           100      NA                            <NA>
      39  ¦               ¦--2012          NA    TRUE        Microwave Telemetry XTag
      40  ¦               °--2018          NA    TRUE        Microwave Telemetry XTag
      41  ¦--so                           100      NA                            <NA>
      42  ¦   ¦--dst                      100      NA                            <NA>
      43  ¦   ¦   °--sf                   100      NA                            <NA>
      44  ¦   ¦       °--JS7977            NA    TRUE                    StarOddi DST
      45  ¦   ¦--dst_mag                  100      NA                            <NA>
      46  ¦   ¦   °--sf                   100      NA                            <NA>
      47  ¦   ¦       ¦--JS923             NA    TRUE           StarOddi DST Magnetic
      48  ¦   ¦       °--JS927             NA    TRUE           StarOddi DST Magnetic
      49  ¦   °--dst_mf                   100      NA                            <NA>
      50  ¦       °--sf                   100      NA                            <NA>
      51  ¦           ¦--JS1229            NA    TRUE                    StarOddi DST
      52  ¦           °--JS142             NA    TRUE                    StarOddi DST
      53  °--wc                           100      NA                            <NA>
      54      ¦--b_sp                     100      NA                            <NA>
      55      ¦   °--ss                   100      NA                            <NA>
      56      ¦       ¦--175146            NA    TRUE Wildlife Computers Benthic SPAT
      57      ¦       ¦--175147            NA    TRUE Wildlife Computers Benthic SPAT
      58      ¦       ¦--175157            NA    TRUE Wildlife Computers Benthic SPAT
      59      ¦       °--175158            NA    TRUE Wildlife Computers Benthic SPAT
      60      °--mp                       100      NA                            <NA>
      61          °--ss                   100      NA                            <NA>
      62              ¦--174898            NA    TRUE      Wildlife Computers MiniPAT
      63              °--174900            NA    TRUE      Wildlife Computers MiniPAT
         decode_error
      1          <NA>
      2          <NA>
      3          <NA>
      4              
      5          <NA>
      6          <NA>
      7          <NA>
      8              
      9              
      10         <NA>
      11             
      12             
      13             
      14             
      15         <NA>
      16         <NA>
      17             
      18             
      19         <NA>
      20             
      21         <NA>
      22         <NA>
      23             
      24         <NA>
      25             
      26         <NA>
      27         <NA>
      28         <NA>
      29             
      30         <NA>
      31         <NA>
      32             
      33             
      34         <NA>
      35             
      36             
      37         <NA>
      38         <NA>
      39             
      40             
      41         <NA>
      42         <NA>
      43         <NA>
      44             
      45         <NA>
      46         <NA>
      47             
      48             
      49         <NA>
      50         <NA>
      51             
      52             
      53         <NA>
      54         <NA>
      55         <NA>
      56             
      57             
      58             
      59             
      60         <NA>
      61         <NA>
      62             
      63             

