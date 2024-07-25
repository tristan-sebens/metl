# Decoder::decode_datamap

    Code
      metadata
    Output
                      MAKE   MODEL
      1 Wildlife Computers MiniPAT

---

    Code
      instant_data
    Output
         TIMESTAMP_POSIXct     DEPTH TEMPERATURE                TIMESTAMP
      1         1659312000 228.5 [m]    5.3 [°C] 2022-07-31 16:00:00 AKDT
      2         1659312600 241.0 [m]    5.3 [°C] 2022-07-31 16:10:00 AKDT
      3         1659313200 228.5 [m]    5.3 [°C] 2022-07-31 16:20:00 AKDT
      4         1659313800 213.5 [m]    5.3 [°C] 2022-07-31 16:30:00 AKDT
      5         1659314400 219.5 [m]    5.3 [°C] 2022-07-31 16:40:00 AKDT
      6         1659315000 241.0 [m]    5.3 [°C] 2022-07-31 16:50:00 AKDT
      7         1659315600 241.0 [m]    5.3 [°C] 2022-07-31 17:00:00 AKDT
      8         1659316200 241.0 [m]    5.3 [°C] 2022-07-31 17:10:00 AKDT
      9         1659316800 241.0 [m]    5.3 [°C] 2022-07-31 17:20:00 AKDT
      10        1659317400 228.5 [m]    5.3 [°C] 2022-07-31 17:30:00 AKDT

---

    Code
      summary_data
    Output
         START_TIME_POSIXct END_TIME_POSIXct MIN_DEPTH MAX_DEPTH MIN_TEMP MAX_TEMP
      1          1659283200       1659312000    NA [m]    NA [m] 5.1 [°C] 7.4 [°C]
      2          1659312000       1659340800 179.5 [m]   272 [m] 5.1 [°C] 5.7 [°C]
      3          1659340800       1659369600  95.5 [m]   272 [m] 5.1 [°C] 5.7 [°C]
      4          1659369600       1659398400  89.5 [m]   249 [m] 5.1 [°C] 5.9 [°C]
      5          1659398400       1659427200 179.5 [m]   280 [m] 5.1 [°C] 5.7 [°C]
      6          1659427200       1659456000  73.5 [m]   256 [m] 5.2 [°C] 6.1 [°C]
      7          1659456000       1659484800  39.5 [m]   232 [m] 5.4 [°C] 8.3 [°C]
      8          1659484800       1659513600 179.5 [m]   220 [m] 5.4 [°C] 5.7 [°C]
      9          1659513600       1659542400  63.5 [m]   264 [m] 5.0 [°C] 6.2 [°C]
      10         1659542400       1659571200  34.5 [m]   264 [m] 5.0 [°C] 6.9 [°C]
                       START_TIME                 END_TIME
      1  2022-07-31 08:00:00 AKDT 2022-07-31 16:00:00 AKDT
      2  2022-07-31 16:00:00 AKDT 2022-08-01 00:00:00 AKDT
      3  2022-08-01 00:00:00 AKDT 2022-08-01 08:00:00 AKDT
      4  2022-08-01 08:00:00 AKDT 2022-08-01 16:00:00 AKDT
      5  2022-08-01 16:00:00 AKDT 2022-08-02 00:00:00 AKDT
      6  2022-08-02 00:00:00 AKDT 2022-08-02 08:00:00 AKDT
      7  2022-08-02 08:00:00 AKDT 2022-08-02 16:00:00 AKDT
      8  2022-08-02 16:00:00 AKDT 2022-08-03 00:00:00 AKDT
      9  2022-08-03 00:00:00 AKDT 2022-08-03 08:00:00 AKDT
      10 2022-08-03 08:00:00 AKDT 2022-08-03 16:00:00 AKDT

# Decoder::complete_dataframes

    Code
      metadata_c
    Output
                       MAKE MODEL TAG_NUM TAG_TYPE REL_SEQ SPECIES_CODE
      1 Microwave Telemetry X-Tag    1234 SuperTag       1        56789

---

    Code
      instant_data_c
    Output
           TIMESTAMP_POSIXct LATITUDE LONGITUDE LOCATION_TYPE          DEPTH
      1           1378425600       NA        NA     SATELLITE 244.766340 [m]
      2           1378426500       NA        NA     SATELLITE         NA [m]
      3           1378427400       NA        NA     SATELLITE         NA [m]
      4           1378428300       NA        NA     SATELLITE 244.766340 [m]
      5           1378429200       NA        NA     SATELLITE 244.766340 [m]
      6           1378430100       NA        NA     SATELLITE         NA [m]
      7           1378431000       NA        NA     SATELLITE         NA [m]
      8           1378431900       NA        NA     SATELLITE 242.076600 [m]
      9           1378432800       NA        NA     SATELLITE 240.731730 [m]
      10          1378433700       NA        NA     SATELLITE         NA [m]
      11          1378434600       NA        NA     SATELLITE         NA [m]
      12          1378435500       NA        NA     SATELLITE 239.386860 [m]
      13          1378436400       NA        NA     SATELLITE 238.041990 [m]
      14          1378437300       NA        NA     SATELLITE         NA [m]
      15          1378438200       NA        NA     SATELLITE         NA [m]
      16          1378439100       NA        NA     SATELLITE 235.352250 [m]
      17          1378440000       NA        NA     SATELLITE 238.041990 [m]
      18          1378440900       NA        NA     SATELLITE         NA [m]
      19          1378441800       NA        NA     SATELLITE         NA [m]
      20          1378442700       NA        NA     SATELLITE 239.386860 [m]
      21          1378443600       NA        NA     SATELLITE 240.731730 [m]
      22          1378444500       NA        NA     SATELLITE         NA [m]
      23          1378445400       NA        NA     SATELLITE         NA [m]
      24          1378446300       NA        NA     SATELLITE 244.766340 [m]
      25          1378447200       NA        NA     SATELLITE 239.386860 [m]
      26          1378448100       NA        NA     SATELLITE         NA [m]
      27          1378449000       NA        NA     SATELLITE         NA [m]
      28          1378449900       NA        NA     SATELLITE 246.111210 [m]
      29          1378450800       NA        NA     SATELLITE 246.111210 [m]
      30          1378451700       NA        NA     SATELLITE         NA [m]
      31          1378452600       NA        NA     SATELLITE         NA [m]
      32          1378453500       NA        NA     SATELLITE 246.111210 [m]
      33          1378454400       NA        NA     SATELLITE 246.111210 [m]
      34          1378455300       NA        NA     SATELLITE         NA [m]
      35          1378456200       NA        NA     SATELLITE         NA [m]
      36          1378457100       NA        NA     SATELLITE 247.456080 [m]
      37          1378458000       NA        NA     SATELLITE 247.456080 [m]
      38          1378458900       NA        NA     SATELLITE         NA [m]
      39          1378459800       NA        NA     SATELLITE         NA [m]
      40          1378460700       NA        NA     SATELLITE 244.766340 [m]
      41          1378461600       NA        NA     SATELLITE 243.421470 [m]
      42          1378462500       NA        NA     SATELLITE         NA [m]
      43          1378463400       NA        NA     SATELLITE         NA [m]
      44          1378464300       NA        NA     SATELLITE 243.421470 [m]
      45          1378465200       NA        NA     SATELLITE 242.076600 [m]
      46          1378466100       NA        NA     SATELLITE         NA [m]
      47          1378467000       NA        NA     SATELLITE         NA [m]
      48          1378467900       NA        NA     SATELLITE 242.076600 [m]
      49          1378468800       NA        NA     SATELLITE 242.076600 [m]
      50          1378469700       NA        NA     SATELLITE         NA [m]
      51          1378470600       NA        NA     SATELLITE         NA [m]
      52          1378471500       NA        NA     SATELLITE 242.076600 [m]
      53          1378472400       NA        NA     SATELLITE 242.076600 [m]
      54          1378473300       NA        NA     SATELLITE         NA [m]
      55          1378474200       NA        NA     SATELLITE         NA [m]
      56          1378475100       NA        NA     SATELLITE 240.731730 [m]
      57          1378476000       NA        NA     SATELLITE 239.386860 [m]
      58          1378476900       NA        NA     SATELLITE         NA [m]
      59          1378477800       NA        NA     SATELLITE         NA [m]
      60          1378478700       NA        NA     SATELLITE 239.386860 [m]
      61          1378479600       NA        NA     SATELLITE 239.386860 [m]
      62          1378480500       NA        NA     SATELLITE         NA [m]
      63          1378481400       NA        NA     SATELLITE         NA [m]
      64          1378482300       NA        NA     SATELLITE 239.386860 [m]
      65          1378483200       NA        NA     SATELLITE 239.386860 [m]
      66          1378484100       NA        NA     SATELLITE         NA [m]
      67          1378485000       NA        NA     SATELLITE         NA [m]
      68          1378485900       NA        NA     SATELLITE 239.386860 [m]
      69          1378486800       NA        NA     SATELLITE 239.386860 [m]
      70          1378487700       NA        NA     SATELLITE         NA [m]
      71          1378488600       NA        NA     SATELLITE         NA [m]
      72          1378489500       NA        NA     SATELLITE 239.386860 [m]
      73          1378490400       NA        NA     SATELLITE 239.386860 [m]
      74          1378491300       NA        NA     SATELLITE         NA [m]
      75          1378492200       NA        NA     SATELLITE         NA [m]
      76          1378493100       NA        NA     SATELLITE 240.731730 [m]
      77          1378494000       NA        NA     SATELLITE 240.731730 [m]
      78          1378494900       NA        NA     SATELLITE         NA [m]
      79          1378495800       NA        NA     SATELLITE         NA [m]
      80          1378496700       NA        NA     SATELLITE 240.731730 [m]
      81          1378497600       NA        NA     SATELLITE 242.076600 [m]
      82          1378498500       NA        NA     SATELLITE         NA [m]
      83          1378499400       NA        NA     SATELLITE         NA [m]
      84          1378500300       NA        NA     SATELLITE 242.076600 [m]
      85          1378501200       NA        NA     SATELLITE 242.076600 [m]
      86          1378502100       NA        NA     SATELLITE         NA [m]
      87          1378503000       NA        NA     SATELLITE         NA [m]
      88          1378503900       NA        NA     SATELLITE 242.076600 [m]
      89          1378504800       NA        NA     SATELLITE 242.076600 [m]
      90          1378505700       NA        NA     SATELLITE         NA [m]
      91          1378506600       NA        NA     SATELLITE         NA [m]
      92          1378507500       NA        NA     SATELLITE 243.421470 [m]
      93          1378508400       NA        NA     SATELLITE 243.421470 [m]
      94          1378509300       NA        NA     SATELLITE         NA [m]
      95          1378510200       NA        NA     SATELLITE         NA [m]
      96          1378511100       NA        NA     SATELLITE 242.076600 [m]
      97          1378512000       NA        NA     SATELLITE 242.076600 [m]
      98          1378512900       NA        NA     SATELLITE 242.076600 [m]
      99          1378514700       NA        NA     SATELLITE 242.076600 [m]
      100         1378515600       NA        NA     SATELLITE 242.076600 [m]
      101         1378516500       NA        NA     SATELLITE 240.731730 [m]
      102         1378518300       NA        NA     SATELLITE 240.731730 [m]
      103         1378519200       NA        NA     SATELLITE 240.731730 [m]
      104         1378520100       NA        NA     SATELLITE 240.731730 [m]
      105         1378521900       NA        NA     SATELLITE 239.386860 [m]
      106         1378522800       NA        NA     SATELLITE 239.386860 [m]
      107         1378523700       NA        NA     SATELLITE 239.386860 [m]
      108         1378525500       NA        NA     SATELLITE 239.386860 [m]
      109         1378526400       NA        NA     SATELLITE 239.386860 [m]
      110         1378527300       NA        NA     SATELLITE 239.386860 [m]
      111         1378529100       NA        NA     SATELLITE 239.386860 [m]
      112         1378530000       NA        NA     SATELLITE 239.386860 [m]
      113         1378530900       NA        NA     SATELLITE 239.386860 [m]
      114         1378532700       NA        NA     SATELLITE 239.386860 [m]
      115         1378533600       NA        NA     SATELLITE 239.386860 [m]
      116         1378534500       NA        NA     SATELLITE 240.731730 [m]
      117         1378536300       NA        NA     SATELLITE 240.731730 [m]
      118         1378537200       NA        NA     SATELLITE 240.731730 [m]
      119         1378538100       NA        NA     SATELLITE 240.731730 [m]
      120         1378539900       NA        NA     SATELLITE 242.076600 [m]
      121         1378540800       NA        NA     SATELLITE 242.076600 [m]
      122         1378541700       NA        NA     SATELLITE 242.076600 [m]
      123         1378543500       NA        NA     SATELLITE 242.076600 [m]
      124         1378544400       NA        NA     SATELLITE 242.076600 [m]
      125         1378545300       NA        NA     SATELLITE 242.076600 [m]
      126         1378547100       NA        NA     SATELLITE 243.421470 [m]
      127         1378548000       NA        NA     SATELLITE 243.421470 [m]
      128         1378548900       NA        NA     SATELLITE 243.421470 [m]
      129         1378550700       NA        NA     SATELLITE 243.421470 [m]
      130         1378551600       NA        NA     SATELLITE 243.421470 [m]
      131         1378552500       NA        NA     SATELLITE 243.421470 [m]
      132         1378554300       NA        NA     SATELLITE 243.421470 [m]
      133         1378555200       NA        NA     SATELLITE 242.076600 [m]
      134         1378556100       NA        NA     SATELLITE 242.076600 [m]
      135         1378557900       NA        NA     SATELLITE 242.076600 [m]
      136         1378558800       NA        NA     SATELLITE 242.076600 [m]
      137         1378559700       NA        NA     SATELLITE 242.076600 [m]
      138         1378561500       NA        NA     SATELLITE 240.731730 [m]
      139         1378562400       NA        NA     SATELLITE 240.731730 [m]
      140         1378563300       NA        NA     SATELLITE 240.731730 [m]
      141         1378565100       NA        NA     SATELLITE 240.731730 [m]
      142         1378566000       NA        NA     SATELLITE 240.731730 [m]
      143         1378566900       NA        NA     SATELLITE 239.386860 [m]
      144         1378568700       NA        NA     SATELLITE 239.386860 [m]
      145         1378569600       NA        NA     SATELLITE 239.386860 [m]
      146         1378570500       NA        NA     SATELLITE 239.386860 [m]
      147         1378572300       NA        NA     SATELLITE 239.386860 [m]
      148         1378573200       NA        NA     SATELLITE 239.386860 [m]
      149         1378574100       NA        NA     SATELLITE 239.386860 [m]
      150         1378575900       NA        NA     SATELLITE 240.731730 [m]
      151         1378576800       NA        NA     SATELLITE 240.731730 [m]
      152         1378577700       NA        NA     SATELLITE 240.731730 [m]
      153         1378579500       NA        NA     SATELLITE 240.731730 [m]
      154         1378580400       NA        NA     SATELLITE 240.731730 [m]
      155         1378581300       NA        NA     SATELLITE 240.731730 [m]
      156         1378583100       NA        NA     SATELLITE 242.076600 [m]
      157         1378584000       NA        NA     SATELLITE 242.076600 [m]
      158         1378584900       NA        NA     SATELLITE 242.076600 [m]
      159         1378586700       NA        NA     SATELLITE 243.421470 [m]
      160         1378587600       NA        NA     SATELLITE 243.421470 [m]
      161         1378588500       NA        NA     SATELLITE 243.421470 [m]
      162         1378590300       NA        NA     SATELLITE 243.421470 [m]
      163         1378591200       NA        NA     SATELLITE 243.421470 [m]
      164         1378592100       NA        NA     SATELLITE 243.421470 [m]
      165         1378593900       NA        NA     SATELLITE 243.421470 [m]
      166         1378594800       NA        NA     SATELLITE 243.421470 [m]
      167         1378595700       NA        NA     SATELLITE 243.421470 [m]
      168         1378597500       NA        NA     SATELLITE 243.421470 [m]
      169         1378598400       NA        NA     SATELLITE 243.421470 [m]
      170         1378599300       NA        NA     SATELLITE 243.421470 [m]
      171         1378600200       NA        NA     SATELLITE         NA [m]
      172         1378602000       NA        NA     SATELLITE 243.421470 [m]
      173         1378602900       NA        NA     SATELLITE 242.076600 [m]
      174         1378603800       NA        NA     SATELLITE         NA [m]
      175         1378605600       NA        NA     SATELLITE 242.076600 [m]
      176         1378606500       NA        NA     SATELLITE 242.076600 [m]
      177         1378607400       NA        NA     SATELLITE         NA [m]
      178         1378609200       NA        NA     SATELLITE 240.731730 [m]
      179         1378610100       NA        NA     SATELLITE 240.731730 [m]
      180         1378611000       NA        NA     SATELLITE         NA [m]
      181         1378612800       NA        NA     SATELLITE 240.731730 [m]
      182         1378613700       NA        NA     SATELLITE 240.731730 [m]
      183         1378614600       NA        NA     SATELLITE         NA [m]
      184         1378616400       NA        NA     SATELLITE 239.386860 [m]
      185         1378617300       NA        NA     SATELLITE 239.386860 [m]
      186         1378618200       NA        NA     SATELLITE         NA [m]
      187         1378620000       NA        NA     SATELLITE 240.731730 [m]
      188         1378620900       NA        NA     SATELLITE 240.731730 [m]
      189         1378621800       NA        NA     SATELLITE         NA [m]
      190         1378623600       NA        NA     SATELLITE 240.731730 [m]
      191         1378624500       NA        NA     SATELLITE 240.731730 [m]
      192         1378625400       NA        NA     SATELLITE         NA [m]
      193         1378627200       NA        NA     SATELLITE 242.076600 [m]
      194         1378628100       NA        NA     SATELLITE 242.076600 [m]
      195         1378629000       NA        NA     SATELLITE         NA [m]
      196         1378630800       NA        NA     SATELLITE 242.076600 [m]
      197         1378631700       NA        NA     SATELLITE 243.421470 [m]
      198         1378632600       NA        NA     SATELLITE         NA [m]
      199         1378634400       NA        NA     SATELLITE 243.421470 [m]
      200         1378635300       NA        NA     SATELLITE 243.421470 [m]
      201         1378636200       NA        NA     SATELLITE         NA [m]
      202         1378638000       NA        NA     SATELLITE 243.421470 [m]
      203         1378638900       NA        NA     SATELLITE 243.421470 [m]
      204         1378639800       NA        NA     SATELLITE         NA [m]
      205         1378641600       NA        NA     SATELLITE 243.421470 [m]
      206         1378642500       NA        NA     SATELLITE 243.421470 [m]
      207         1378643400       NA        NA     SATELLITE         NA [m]
      208         1378645200       NA        NA     SATELLITE 242.076600 [m]
      209         1378646100       NA        NA     SATELLITE 242.076600 [m]
      210         1378647000       NA        NA     SATELLITE         NA [m]
      211         1378648800       NA        NA     SATELLITE 242.076600 [m]
      212         1378649700       NA        NA     SATELLITE 242.076600 [m]
      213         1378650600       NA        NA     SATELLITE         NA [m]
      214         1378652400       NA        NA     SATELLITE 240.731730 [m]
      215         1378653300       NA        NA     SATELLITE 240.731730 [m]
      216         1378654200       NA        NA     SATELLITE         NA [m]
      217         1378656000       NA        NA     SATELLITE 240.731730 [m]
      218         1378656900       NA        NA     SATELLITE 240.731730 [m]
      219         1378657800       NA        NA     SATELLITE         NA [m]
      220         1378659600       NA        NA     SATELLITE 239.386860 [m]
      221         1378660500       NA        NA     SATELLITE 239.386860 [m]
      222         1378661400       NA        NA     SATELLITE         NA [m]
      223         1378663200       NA        NA     SATELLITE 240.731730 [m]
      224         1378664100       NA        NA     SATELLITE 240.731730 [m]
      225         1378665000       NA        NA     SATELLITE         NA [m]
      226         1378666800       NA        NA     SATELLITE 240.731730 [m]
      227         1378667700       NA        NA     SATELLITE 240.731730 [m]
      228         1378668600       NA        NA     SATELLITE         NA [m]
      229         1378670400       NA        NA     SATELLITE 242.076600 [m]
      230         1378671300       NA        NA     SATELLITE 242.076600 [m]
      231         1378672200       NA        NA     SATELLITE         NA [m]
      232         1378674000       NA        NA     SATELLITE 242.076600 [m]
      233         1378674900       NA        NA     SATELLITE 243.421470 [m]
      234         1378675800       NA        NA     SATELLITE         NA [m]
      235         1378677600       NA        NA     SATELLITE 243.421470 [m]
      236         1378678500       NA        NA     SATELLITE 243.421470 [m]
      237         1378679400       NA        NA     SATELLITE         NA [m]
      238         1378681200       NA        NA     SATELLITE 243.421470 [m]
      239         1378682100       NA        NA     SATELLITE 243.421470 [m]
      240         1378683000       NA        NA     SATELLITE         NA [m]
      241         1378685700       NA        NA     SATELLITE 243.421470 [m]
      242         1378687500       NA        NA     SATELLITE         NA [m]
      243         1378689300       NA        NA     SATELLITE 243.421470 [m]
      244         1378691100       NA        NA     SATELLITE         NA [m]
      245         1378692900       NA        NA     SATELLITE 242.076600 [m]
      246         1378694700       NA        NA     SATELLITE         NA [m]
      247         1378696500       NA        NA     SATELLITE 240.731730 [m]
      248         1378698300       NA        NA     SATELLITE         NA [m]
      249         1378700100       NA        NA     SATELLITE 240.731730 [m]
      250         1378701900       NA        NA     SATELLITE         NA [m]
      251         1378703700       NA        NA     SATELLITE 240.731730 [m]
      252         1378705500       NA        NA     SATELLITE         NA [m]
      253         1378707300       NA        NA     SATELLITE 240.731730 [m]
      254         1378709100       NA        NA     SATELLITE         NA [m]
      255         1378710900       NA        NA     SATELLITE 240.731730 [m]
      256         1378712700       NA        NA     SATELLITE         NA [m]
      257         1378714500       NA        NA     SATELLITE 242.076600 [m]
      258         1378716300       NA        NA     SATELLITE         NA [m]
      259         1378718100       NA        NA     SATELLITE 242.076600 [m]
      260         1378719900       NA        NA     SATELLITE         NA [m]
      261         1378721700       NA        NA     SATELLITE 243.421470 [m]
      262         1378723500       NA        NA     SATELLITE         NA [m]
      263         1378725300       NA        NA     SATELLITE 243.421470 [m]
      264         1378727100       NA        NA     SATELLITE         NA [m]
      265         1378728900       NA        NA     SATELLITE 243.421470 [m]
      266         1378730700       NA        NA     SATELLITE         NA [m]
      267         1378732500       NA        NA     SATELLITE 243.421470 [m]
      268         1378734300       NA        NA     SATELLITE         NA [m]
      269         1378736100       NA        NA     SATELLITE 242.076600 [m]
      270         1378737900       NA        NA     SATELLITE         NA [m]
      271         1378739700       NA        NA     SATELLITE 242.076600 [m]
      272         1378741500       NA        NA     SATELLITE         NA [m]
      273         1378743300       NA        NA     SATELLITE 240.731730 [m]
      274         1378745100       NA        NA     SATELLITE         NA [m]
      275         1378746900       NA        NA     SATELLITE 240.731730 [m]
      276         1378748700       NA        NA     SATELLITE         NA [m]
      277         1378750500       NA        NA     SATELLITE 240.731730 [m]
      278         1378752300       NA        NA     SATELLITE         NA [m]
      279         1378754100       NA        NA     SATELLITE 240.731730 [m]
      280         1378755900       NA        NA     SATELLITE         NA [m]
      281         1378757700       NA        NA     SATELLITE 242.076600 [m]
      282         1378759500       NA        NA     SATELLITE         NA [m]
      283         1378761300       NA        NA     SATELLITE 242.076600 [m]
      284         1378763100       NA        NA     SATELLITE         NA [m]
      285         1378764900       NA        NA     SATELLITE 243.421470 [m]
      286         1378766700       NA        NA     SATELLITE         NA [m]
      287         1378768500       NA        NA     SATELLITE 243.421470 [m]
      288         1378770300       NA        NA     SATELLITE         NA [m]
      289         1378771200       NA        NA     SATELLITE         NA [m]
      290         1378772100       NA        NA     SATELLITE         NA [m]
      291         1378773000       NA        NA     SATELLITE 243.421470 [m]
      292         1378774800       NA        NA     SATELLITE         NA [m]
      293         1378775700       NA        NA     SATELLITE         NA [m]
      294         1378776600       NA        NA     SATELLITE 243.421470 [m]
      295         1378778400       NA        NA     SATELLITE         NA [m]
      296         1378779300       NA        NA     SATELLITE         NA [m]
      297         1378780200       NA        NA     SATELLITE 242.076600 [m]
      298         1378782000       NA        NA     SATELLITE         NA [m]
      299         1378782900       NA        NA     SATELLITE         NA [m]
      300         1378783800       NA        NA     SATELLITE 242.076600 [m]
      301         1378785600       NA        NA     SATELLITE         NA [m]
      302         1378786500       NA        NA     SATELLITE         NA [m]
      303         1378787400       NA        NA     SATELLITE 240.731730 [m]
      304         1378789200       NA        NA     SATELLITE         NA [m]
      305         1378790100       NA        NA     SATELLITE         NA [m]
      306         1378791000       NA        NA     SATELLITE 240.731730 [m]
      307         1378792800       NA        NA     SATELLITE         NA [m]
      308         1378793700       NA        NA     SATELLITE         NA [m]
      309         1378794600       NA        NA     SATELLITE 240.731730 [m]
      310         1378796400       NA        NA     SATELLITE         NA [m]
      311         1378797300       NA        NA     SATELLITE         NA [m]
      312         1378798200       NA        NA     SATELLITE 240.731730 [m]
      313         1378800000       NA        NA     SATELLITE         NA [m]
      314         1378800900       NA        NA     SATELLITE         NA [m]
      315         1378801800       NA        NA     SATELLITE 240.731730 [m]
      316         1378803600       NA        NA     SATELLITE         NA [m]
      317         1378804500       NA        NA     SATELLITE         NA [m]
      318         1378805400       NA        NA     SATELLITE 242.076600 [m]
      319         1378807200       NA        NA     SATELLITE         NA [m]
      320         1378808100       NA        NA     SATELLITE         NA [m]
      321         1378809000       NA        NA     SATELLITE 242.076600 [m]
      322         1378810800       NA        NA     SATELLITE         NA [m]
      323         1378811700       NA        NA     SATELLITE         NA [m]
      324         1378812600       NA        NA     SATELLITE 243.421470 [m]
      325         1378814400       NA        NA     SATELLITE         NA [m]
      326         1378815300       NA        NA     SATELLITE         NA [m]
      327         1378816200       NA        NA     SATELLITE 243.421470 [m]
      328         1378818000       NA        NA     SATELLITE         NA [m]
      329         1378818900       NA        NA     SATELLITE         NA [m]
      330         1378819800       NA        NA     SATELLITE 243.421470 [m]
      331         1378821600       NA        NA     SATELLITE         NA [m]
      332         1378822500       NA        NA     SATELLITE         NA [m]
      333         1378823400       NA        NA     SATELLITE 243.421470 [m]
      334         1378825200       NA        NA     SATELLITE         NA [m]
      335         1378826100       NA        NA     SATELLITE         NA [m]
      336         1378827000       NA        NA     SATELLITE 242.076600 [m]
      337         1378828800       NA        NA     SATELLITE         NA [m]
      338         1378829700       NA        NA     SATELLITE         NA [m]
      339         1378830600       NA        NA     SATELLITE 242.076600 [m]
      340         1378832400       NA        NA     SATELLITE         NA [m]
      341         1378833300       NA        NA     SATELLITE         NA [m]
      342         1378834200       NA        NA     SATELLITE 240.731730 [m]
      343         1378836000       NA        NA     SATELLITE         NA [m]
      344         1378836900       NA        NA     SATELLITE         NA [m]
      345         1378837800       NA        NA     SATELLITE 240.731730 [m]
      346         1378839600       NA        NA     SATELLITE         NA [m]
      347         1378840500       NA        NA     SATELLITE         NA [m]
      348         1378841400       NA        NA     SATELLITE 240.731730 [m]
      349         1378843200       NA        NA     SATELLITE         NA [m]
      350         1378844100       NA        NA     SATELLITE         NA [m]
      351         1378845000       NA        NA     SATELLITE 242.076600 [m]
      352         1378846800       NA        NA     SATELLITE         NA [m]
      353         1378847700       NA        NA     SATELLITE         NA [m]
      354         1378848600       NA        NA     SATELLITE 242.076600 [m]
      355         1378850400       NA        NA     SATELLITE         NA [m]
      356         1378851300       NA        NA     SATELLITE         NA [m]
      357         1378852200       NA        NA     SATELLITE 243.421470 [m]
      358         1378854000       NA        NA     SATELLITE         NA [m]
      359         1378854900       NA        NA     SATELLITE         NA [m]
      360         1378855800       NA        NA     SATELLITE 243.421470 [m]
      361         1378857600       NA        NA     SATELLITE 243.421470 [m]
      362         1378858500       NA        NA     SATELLITE 244.766340 [m]
      363         1378859400       NA        NA     SATELLITE 244.766340 [m]
      364         1378861200       NA        NA     SATELLITE 243.421470 [m]
      365         1378862100       NA        NA     SATELLITE 243.421470 [m]
      366         1378863000       NA        NA     SATELLITE 243.421470 [m]
      367         1378864800       NA        NA     SATELLITE 243.421470 [m]
      368         1378865700       NA        NA     SATELLITE 243.421470 [m]
      369         1378866600       NA        NA     SATELLITE 243.421470 [m]
      370         1378868400       NA        NA     SATELLITE 243.421470 [m]
      371         1378869300       NA        NA     SATELLITE 243.421470 [m]
      372         1378870200       NA        NA     SATELLITE 242.076600 [m]
      373         1378872000       NA        NA     SATELLITE 242.076600 [m]
      374         1378872900       NA        NA     SATELLITE 242.076600 [m]
      375         1378873800       NA        NA     SATELLITE 242.076600 [m]
      376         1378875600       NA        NA     SATELLITE 242.076600 [m]
      377         1378876500       NA        NA     SATELLITE 240.731730 [m]
      378         1378877400       NA        NA     SATELLITE 240.731730 [m]
      379         1378879200       NA        NA     SATELLITE 240.731730 [m]
      380         1378880100       NA        NA     SATELLITE 240.731730 [m]
      381         1378881000       NA        NA     SATELLITE 240.731730 [m]
      382         1378882800       NA        NA     SATELLITE 240.731730 [m]
      383         1378883700       NA        NA     SATELLITE 240.731730 [m]
      384         1378884600       NA        NA     SATELLITE 240.731730 [m]
      385         1378886400       NA        NA     SATELLITE 240.731730 [m]
      386         1378887300       NA        NA     SATELLITE 240.731730 [m]
      387         1378888200       NA        NA     SATELLITE 240.731730 [m]
      388         1378890000       NA        NA     SATELLITE 240.731730 [m]
      389         1378890900       NA        NA     SATELLITE 240.731730 [m]
      390         1378891800       NA        NA     SATELLITE 242.076600 [m]
      391         1378893600       NA        NA     SATELLITE 242.076600 [m]
      392         1378894500       NA        NA     SATELLITE 242.076600 [m]
      393         1378895400       NA        NA     SATELLITE 242.076600 [m]
      394         1378897200       NA        NA     SATELLITE 242.076600 [m]
      395         1378898100       NA        NA     SATELLITE 242.076600 [m]
      396         1378899000       NA        NA     SATELLITE 243.421470 [m]
      397         1378900800       NA        NA     SATELLITE 243.421470 [m]
      398         1378901700       NA        NA     SATELLITE 243.421470 [m]
      399         1378902600       NA        NA     SATELLITE 243.421470 [m]
      400         1378904400       NA        NA     SATELLITE 243.421470 [m]
      401         1378905300       NA        NA     SATELLITE 243.421470 [m]
      402         1378906200       NA        NA     SATELLITE 243.421470 [m]
      403         1378908000       NA        NA     SATELLITE 243.421470 [m]
      404         1378908900       NA        NA     SATELLITE 243.421470 [m]
      405         1378909800       NA        NA     SATELLITE 243.421470 [m]
      406         1378911600       NA        NA     SATELLITE 243.421470 [m]
      407         1378912500       NA        NA     SATELLITE 243.421470 [m]
      408         1378913400       NA        NA     SATELLITE 243.421470 [m]
      409         1378915200       NA        NA     SATELLITE 242.076600 [m]
      410         1378916100       NA        NA     SATELLITE 242.076600 [m]
      411         1378917000       NA        NA     SATELLITE 242.076600 [m]
      412         1378918800       NA        NA     SATELLITE 242.076600 [m]
      413         1378919700       NA        NA     SATELLITE 242.076600 [m]
      414         1378920600       NA        NA     SATELLITE 242.076600 [m]
      415         1378922400       NA        NA     SATELLITE 240.731730 [m]
      416         1378923300       NA        NA     SATELLITE 242.076600 [m]
      417         1378924200       NA        NA     SATELLITE 242.076600 [m]
      418         1378926000       NA        NA     SATELLITE 240.731730 [m]
      419         1378926900       NA        NA     SATELLITE 240.731730 [m]
      420         1378927800       NA        NA     SATELLITE 242.076600 [m]
      421         1378929600       NA        NA     SATELLITE 242.076600 [m]
      422         1378930500       NA        NA     SATELLITE 242.076600 [m]
      423         1378931400       NA        NA     SATELLITE 242.076600 [m]
      424         1378933200       NA        NA     SATELLITE 242.076600 [m]
      425         1378934100       NA        NA     SATELLITE 242.076600 [m]
      426         1378935000       NA        NA     SATELLITE 242.076600 [m]
      427         1378936800       NA        NA     SATELLITE 242.076600 [m]
      428         1378937700       NA        NA     SATELLITE 242.076600 [m]
      429         1378938600       NA        NA     SATELLITE 242.076600 [m]
      430         1378940400       NA        NA     SATELLITE 243.421470 [m]
      431         1378941300       NA        NA     SATELLITE 243.421470 [m]
      432         1378942200       NA        NA     SATELLITE 243.421470 [m]
      433         1379031300       NA        NA     SATELLITE         NA [m]
      434         1379033100       NA        NA     SATELLITE 243.421470 [m]
      435         1379034900       NA        NA     SATELLITE         NA [m]
      436         1379036700       NA        NA     SATELLITE 243.421470 [m]
      437         1379038500       NA        NA     SATELLITE         NA [m]
      438         1379040300       NA        NA     SATELLITE 243.421470 [m]
      439         1379042100       NA        NA     SATELLITE         NA [m]
      440         1379043900       NA        NA     SATELLITE 243.421470 [m]
      441         1379045700       NA        NA     SATELLITE         NA [m]
      442         1379047500       NA        NA     SATELLITE 243.421470 [m]
      443         1379049300       NA        NA     SATELLITE         NA [m]
      444         1379051100       NA        NA     SATELLITE 242.076600 [m]
      445         1379052900       NA        NA     SATELLITE         NA [m]
      446         1379054700       NA        NA     SATELLITE 242.076600 [m]
      447         1379056500       NA        NA     SATELLITE         NA [m]
      448         1379058300       NA        NA     SATELLITE 240.731730 [m]
      449         1379060100       NA        NA     SATELLITE         NA [m]
      450         1379061900       NA        NA     SATELLITE 240.731730 [m]
      451         1379063700       NA        NA     SATELLITE         NA [m]
      452         1379065500       NA        NA     SATELLITE 240.731730 [m]
      453         1379067300       NA        NA     SATELLITE         NA [m]
      454         1379069100       NA        NA     SATELLITE 240.731730 [m]
      455         1379070900       NA        NA     SATELLITE         NA [m]
      456         1379072700       NA        NA     SATELLITE 240.731730 [m]
      457         1379074500       NA        NA     SATELLITE         NA [m]
      458         1379076300       NA        NA     SATELLITE 242.076600 [m]
      459         1379078100       NA        NA     SATELLITE         NA [m]
      460         1379079900       NA        NA     SATELLITE 242.076600 [m]
      461         1379081700       NA        NA     SATELLITE         NA [m]
      462         1379083500       NA        NA     SATELLITE 242.076600 [m]
      463         1379085300       NA        NA     SATELLITE         NA [m]
      464         1379087100       NA        NA     SATELLITE 243.421470 [m]
      465         1379088900       NA        NA     SATELLITE         NA [m]
      466         1379090700       NA        NA     SATELLITE 243.421470 [m]
      467         1379092500       NA        NA     SATELLITE         NA [m]
      468         1379094300       NA        NA     SATELLITE 242.076600 [m]
      469         1379096100       NA        NA     SATELLITE         NA [m]
      470         1379097900       NA        NA     SATELLITE 242.076600 [m]
      471         1379099700       NA        NA     SATELLITE         NA [m]
      472         1379101500       NA        NA     SATELLITE 242.076600 [m]
      473         1379103300       NA        NA     SATELLITE         NA [m]
      474         1379105100       NA        NA     SATELLITE 242.076600 [m]
      475         1379106900       NA        NA     SATELLITE         NA [m]
      476         1379108700       NA        NA     SATELLITE 242.076600 [m]
      477         1379110500       NA        NA     SATELLITE         NA [m]
      478         1379112300       NA        NA     SATELLITE 242.076600 [m]
      479         1379114100       NA        NA     SATELLITE         NA [m]
      480         1379115900       NA        NA     SATELLITE 242.076600 [m]
      481         1379117700       NA        NA     SATELLITE 242.076600 [m]
      482         1379121300       NA        NA     SATELLITE 243.421470 [m]
      483         1379124900       NA        NA     SATELLITE 243.421470 [m]
      484         1379128500       NA        NA     SATELLITE 243.421470 [m]
      485         1379132100       NA        NA     SATELLITE 243.421470 [m]
      486         1379135700       NA        NA     SATELLITE 243.421470 [m]
      487         1379139300       NA        NA     SATELLITE 243.421470 [m]
      488         1379142900       NA        NA     SATELLITE 242.076600 [m]
      489         1379146500       NA        NA     SATELLITE 242.076600 [m]
      490         1379150100       NA        NA     SATELLITE 240.731730 [m]
      491         1379153700       NA        NA     SATELLITE 240.731730 [m]
      492         1379157300       NA        NA     SATELLITE 240.731730 [m]
      493         1379160900       NA        NA     SATELLITE 240.731730 [m]
      494         1379164500       NA        NA     SATELLITE 242.076600 [m]
      495         1379168100       NA        NA     SATELLITE 242.076600 [m]
      496         1379171700       NA        NA     SATELLITE 242.076600 [m]
      497         1379175300       NA        NA     SATELLITE 243.421470 [m]
      498         1379178900       NA        NA     SATELLITE 243.421470 [m]
      499         1379182500       NA        NA     SATELLITE 243.421470 [m]
      500         1379186100       NA        NA     SATELLITE 243.421470 [m]
      501         1379189700       NA        NA     SATELLITE 242.076600 [m]
      502         1379193300       NA        NA     SATELLITE 242.076600 [m]
      503         1379196900       NA        NA     SATELLITE 242.076600 [m]
      504         1379200500       NA        NA     SATELLITE 242.076600 [m]
      505         1379203200       NA        NA     SATELLITE 242.076600 [m]
      506         1379205900       NA        NA     SATELLITE 242.076600 [m]
      507         1379206800       NA        NA     SATELLITE 242.076600 [m]
      508         1379209500       NA        NA     SATELLITE 243.421470 [m]
      509         1379210400       NA        NA     SATELLITE 243.421470 [m]
      510         1379213100       NA        NA     SATELLITE 243.421470 [m]
      511         1379214000       NA        NA     SATELLITE 243.421470 [m]
      512         1379216700       NA        NA     SATELLITE 243.421470 [m]
      513         1379217600       NA        NA     SATELLITE 243.421470 [m]
      514         1379220300       NA        NA     SATELLITE 243.421470 [m]
      515         1379221200       NA        NA     SATELLITE 243.421470 [m]
      516         1379223900       NA        NA     SATELLITE 243.421470 [m]
      517         1379224800       NA        NA     SATELLITE 243.421470 [m]
      518         1379227500       NA        NA     SATELLITE 243.421470 [m]
      519         1379228400       NA        NA     SATELLITE 243.421470 [m]
      520         1379231100       NA        NA     SATELLITE 243.421470 [m]
      521         1379232000       NA        NA     SATELLITE 243.421470 [m]
      522         1379234700       NA        NA     SATELLITE 242.076600 [m]
      523         1379235600       NA        NA     SATELLITE 242.076600 [m]
      524         1379238300       NA        NA     SATELLITE 242.076600 [m]
      525         1379239200       NA        NA     SATELLITE 242.076600 [m]
      526         1379241900       NA        NA     SATELLITE 240.731730 [m]
      527         1379242800       NA        NA     SATELLITE 240.731730 [m]
      528         1379245500       NA        NA     SATELLITE 240.731730 [m]
      529         1379246400       NA        NA     SATELLITE 240.731730 [m]
      530         1379249100       NA        NA     SATELLITE 240.731730 [m]
      531         1379250000       NA        NA     SATELLITE 240.731730 [m]
      532         1379252700       NA        NA     SATELLITE 240.731730 [m]
      533         1379253600       NA        NA     SATELLITE 240.731730 [m]
      534         1379256300       NA        NA     SATELLITE 242.076600 [m]
      535         1379257200       NA        NA     SATELLITE 242.076600 [m]
      536         1379259900       NA        NA     SATELLITE 242.076600 [m]
      537         1379260800       NA        NA     SATELLITE 242.076600 [m]
      538         1379263500       NA        NA     SATELLITE 243.421470 [m]
      539         1379264400       NA        NA     SATELLITE 243.421470 [m]
      540         1379267100       NA        NA     SATELLITE 243.421470 [m]
      541         1379268000       NA        NA     SATELLITE 243.421470 [m]
      542         1379270700       NA        NA     SATELLITE 243.421470 [m]
      543         1379271600       NA        NA     SATELLITE 243.421470 [m]
      544         1379274300       NA        NA     SATELLITE 243.421470 [m]
      545         1379275200       NA        NA     SATELLITE 243.421470 [m]
      546         1379277900       NA        NA     SATELLITE 243.421470 [m]
      547         1379278800       NA        NA     SATELLITE 243.421470 [m]
      548         1379281500       NA        NA     SATELLITE 242.076600 [m]
      549         1379282400       NA        NA     SATELLITE 242.076600 [m]
      550         1379285100       NA        NA     SATELLITE 242.076600 [m]
      551         1379286000       NA        NA     SATELLITE 242.076600 [m]
      552         1379288700       NA        NA     SATELLITE 242.076600 [m]
      553         1379290500       NA        NA     SATELLITE         NA [m]
      554         1379292300       NA        NA     SATELLITE 242.076600 [m]
      555         1379294100       NA        NA     SATELLITE         NA [m]
      556         1379295900       NA        NA     SATELLITE 242.076600 [m]
      557         1379297700       NA        NA     SATELLITE         NA [m]
      558         1379299500       NA        NA     SATELLITE 242.076600 [m]
      559         1379301300       NA        NA     SATELLITE         NA [m]
      560         1379303100       NA        NA     SATELLITE 243.421470 [m]
      561         1379304900       NA        NA     SATELLITE         NA [m]
      562         1379306700       NA        NA     SATELLITE 243.421470 [m]
      563         1379308500       NA        NA     SATELLITE         NA [m]
      564         1379310300       NA        NA     SATELLITE 244.766340 [m]
      565         1379312100       NA        NA     SATELLITE         NA [m]
      566         1379313900       NA        NA     SATELLITE 244.766340 [m]
      567         1379315700       NA        NA     SATELLITE         NA [m]
      568         1379317500       NA        NA     SATELLITE 244.766340 [m]
      569         1379319300       NA        NA     SATELLITE         NA [m]
      570         1379321100       NA        NA     SATELLITE 243.421470 [m]
      571         1379322900       NA        NA     SATELLITE         NA [m]
      572         1379324700       NA        NA     SATELLITE 243.421470 [m]
      573         1379326500       NA        NA     SATELLITE         NA [m]
      574         1379328300       NA        NA     SATELLITE 242.076600 [m]
      575         1379330100       NA        NA     SATELLITE         NA [m]
      576         1379331900       NA        NA     SATELLITE 242.076600 [m]
      577         1379333700       NA        NA     SATELLITE         NA [m]
      578         1379335500       NA        NA     SATELLITE 240.731730 [m]
      579         1379337300       NA        NA     SATELLITE         NA [m]
      580         1379339100       NA        NA     SATELLITE 240.731730 [m]
      581         1379340900       NA        NA     SATELLITE         NA [m]
      582         1379342700       NA        NA     SATELLITE 240.731730 [m]
      583         1379344500       NA        NA     SATELLITE         NA [m]
      584         1379346300       NA        NA     SATELLITE 242.076600 [m]
      585         1379348100       NA        NA     SATELLITE         NA [m]
      586         1379349900       NA        NA     SATELLITE 243.421470 [m]
      587         1379351700       NA        NA     SATELLITE         NA [m]
      588         1379353500       NA        NA     SATELLITE 243.421470 [m]
      589         1379355300       NA        NA     SATELLITE         NA [m]
      590         1379357100       NA        NA     SATELLITE 244.766340 [m]
      591         1379358900       NA        NA     SATELLITE         NA [m]
      592         1379360700       NA        NA     SATELLITE 244.766340 [m]
      593         1379362500       NA        NA     SATELLITE         NA [m]
      594         1379364300       NA        NA     SATELLITE 243.421470 [m]
      595         1379366100       NA        NA     SATELLITE         NA [m]
      596         1379367900       NA        NA     SATELLITE 243.421470 [m]
      597         1379369700       NA        NA     SATELLITE         NA [m]
      598         1379371500       NA        NA     SATELLITE 243.421470 [m]
      599         1379373300       NA        NA     SATELLITE         NA [m]
      600         1379375100       NA        NA     SATELLITE 242.076600 [m]
      601         1379376000       NA        NA     SATELLITE         NA [m]
      602         1379377800       NA        NA     SATELLITE 242.076600 [m]
      603         1379378700       NA        NA     SATELLITE         NA [m]
      604         1379379600       NA        NA     SATELLITE         NA [m]
      605         1379381400       NA        NA     SATELLITE 242.076600 [m]
      606         1379382300       NA        NA     SATELLITE         NA [m]
      607         1379383200       NA        NA     SATELLITE         NA [m]
      608         1379385000       NA        NA     SATELLITE 242.076600 [m]
      609         1379385900       NA        NA     SATELLITE         NA [m]
      610         1379386800       NA        NA     SATELLITE         NA [m]
      611         1379388600       NA        NA     SATELLITE 242.076600 [m]
      612         1379389500       NA        NA     SATELLITE         NA [m]
      613         1379390400       NA        NA     SATELLITE         NA [m]
      614         1379392200       NA        NA     SATELLITE 242.076600 [m]
      615         1379393100       NA        NA     SATELLITE         NA [m]
      616         1379394000       NA        NA     SATELLITE         NA [m]
      617         1379395800       NA        NA     SATELLITE 242.076600 [m]
      618         1379396700       NA        NA     SATELLITE         NA [m]
      619         1379397600       NA        NA     SATELLITE         NA [m]
      620         1379399400       NA        NA     SATELLITE 242.076600 [m]
      621         1379400300       NA        NA     SATELLITE         NA [m]
      622         1379401200       NA        NA     SATELLITE         NA [m]
      623         1379403000       NA        NA     SATELLITE 242.076600 [m]
      624         1379403900       NA        NA     SATELLITE         NA [m]
      625         1379404800       NA        NA     SATELLITE         NA [m]
      626         1379406600       NA        NA     SATELLITE  69.933240 [m]
      627         1379407500       NA        NA     SATELLITE         NA [m]
      628         1379408400       NA        NA     SATELLITE         NA [m]
      629         1379410200       NA        NA     SATELLITE   0.000000 [m]
      630         1379411100       NA        NA     SATELLITE         NA [m]
      631         1379412000       NA        NA     SATELLITE         NA [m]
      632         1379413800       NA        NA     SATELLITE   0.000000 [m]
      633         1379414700       NA        NA     SATELLITE         NA [m]
      634         1379415600       NA        NA     SATELLITE         NA [m]
      635         1379417400       NA        NA     SATELLITE   0.000000 [m]
      636         1379418300       NA        NA     SATELLITE         NA [m]
      637         1379419200       NA        NA     SATELLITE         NA [m]
      638         1379421000       NA        NA     SATELLITE   0.000000 [m]
      639         1379421900       NA        NA     SATELLITE         NA [m]
      640         1379422800       NA        NA     SATELLITE         NA [m]
      641         1379424600       NA        NA     SATELLITE   0.000000 [m]
      642         1379425500       NA        NA     SATELLITE         NA [m]
      643         1379426400       NA        NA     SATELLITE         NA [m]
      644         1379428200       NA        NA     SATELLITE   0.000000 [m]
      645         1379429100       NA        NA     SATELLITE         NA [m]
      646         1379430000       NA        NA     SATELLITE         NA [m]
      647         1379431800       NA        NA     SATELLITE   0.000000 [m]
      648         1379432700       NA        NA     SATELLITE         NA [m]
      649         1379433600       NA        NA     SATELLITE         NA [m]
      650         1379435400       NA        NA     SATELLITE   0.000000 [m]
      651         1379436300       NA        NA     SATELLITE         NA [m]
      652         1379437200       NA        NA     SATELLITE         NA [m]
      653         1379439000       NA        NA     SATELLITE   0.000000 [m]
      654         1379439900       NA        NA     SATELLITE         NA [m]
      655         1379440800       NA        NA     SATELLITE         NA [m]
      656         1379442600       NA        NA     SATELLITE   0.000000 [m]
      657         1379443500       NA        NA     SATELLITE         NA [m]
      658         1379444400       NA        NA     SATELLITE         NA [m]
      659         1379446200       NA        NA     SATELLITE   0.000000 [m]
      660         1379447100       NA        NA     SATELLITE         NA [m]
      661         1379448000       NA        NA     SATELLITE         NA [m]
      662         1379449800       NA        NA     SATELLITE   0.000000 [m]
      663         1379450700       NA        NA     SATELLITE         NA [m]
      664         1379451600       NA        NA     SATELLITE         NA [m]
      665         1379453400       NA        NA     SATELLITE   0.000000 [m]
      666         1379454300       NA        NA     SATELLITE         NA [m]
      667         1379455200       NA        NA     SATELLITE         NA [m]
      668         1379457000       NA        NA     SATELLITE   0.000000 [m]
      669         1379457900       NA        NA     SATELLITE         NA [m]
      670         1379458800       NA        NA     SATELLITE         NA [m]
      671         1379460600       NA        NA     SATELLITE   0.000000 [m]
      672         1379461500       NA        NA     SATELLITE         NA [m]
      673         1379462400       NA        NA     SATELLITE         NA [m]
      674         1379463300       NA        NA     SATELLITE         NA [m]
      675         1379464200       NA        NA     SATELLITE         NA [m]
      676         1379466000       NA        NA     SATELLITE         NA [m]
      677         1379466900       NA        NA     SATELLITE         NA [m]
      678         1379467800       NA        NA     SATELLITE         NA [m]
      679         1379469600       NA        NA     SATELLITE         NA [m]
      680         1379470500       NA        NA     SATELLITE         NA [m]
      681         1379471400       NA        NA     SATELLITE         NA [m]
      682         1379473200       NA        NA     SATELLITE         NA [m]
      683         1379474100       NA        NA     SATELLITE         NA [m]
      684         1379475000       NA        NA     SATELLITE         NA [m]
      685         1379476800       NA        NA     SATELLITE         NA [m]
      686         1379477700       NA        NA     SATELLITE         NA [m]
      687         1379478600       NA        NA     SATELLITE         NA [m]
      688         1379480400       NA        NA     SATELLITE         NA [m]
      689         1379481300       NA        NA     SATELLITE         NA [m]
      690         1379482200       NA        NA     SATELLITE         NA [m]
      691         1379484000       NA        NA     SATELLITE         NA [m]
      692         1379484900       NA        NA     SATELLITE         NA [m]
      693         1379485800       NA        NA     SATELLITE         NA [m]
      694         1379487600       NA        NA     SATELLITE         NA [m]
      695         1379488500       NA        NA     SATELLITE         NA [m]
      696         1379489400       NA        NA     SATELLITE         NA [m]
      697         1379491200       NA        NA     SATELLITE         NA [m]
      698         1379492100       NA        NA     SATELLITE         NA [m]
      699         1379493000       NA        NA     SATELLITE         NA [m]
      700         1379494800       NA        NA     SATELLITE         NA [m]
      701         1379495700       NA        NA     SATELLITE         NA [m]
      702         1379496600       NA        NA     SATELLITE         NA [m]
      703         1379498400       NA        NA     SATELLITE         NA [m]
      704         1379499300       NA        NA     SATELLITE         NA [m]
      705         1379500200       NA        NA     SATELLITE         NA [m]
      706         1379502000       NA        NA     SATELLITE         NA [m]
      707         1379502900       NA        NA     SATELLITE         NA [m]
      708         1379503800       NA        NA     SATELLITE         NA [m]
      709         1379505600       NA        NA     SATELLITE         NA [m]
      710         1379506500       NA        NA     SATELLITE         NA [m]
      711         1379507400       NA        NA     SATELLITE         NA [m]
      712         1379509200       NA        NA     SATELLITE         NA [m]
      713         1379510100       NA        NA     SATELLITE         NA [m]
      714         1379511000       NA        NA     SATELLITE         NA [m]
      715         1379512800       NA        NA     SATELLITE         NA [m]
      716         1379513700       NA        NA     SATELLITE         NA [m]
      717         1379514600       NA        NA     SATELLITE         NA [m]
      718         1379516400       NA        NA     SATELLITE         NA [m]
      719         1379517300       NA        NA     SATELLITE         NA [m]
      720         1379518200       NA        NA     SATELLITE         NA [m]
      721         1379520000       NA        NA     SATELLITE         NA [m]
      722         1379520900       NA        NA     SATELLITE         NA [m]
      723         1379521800       NA        NA     SATELLITE         NA [m]
      724         1379523600       NA        NA     SATELLITE         NA [m]
      725         1379524500       NA        NA     SATELLITE         NA [m]
      726         1379525400       NA        NA     SATELLITE         NA [m]
      727         1379527200       NA        NA     SATELLITE         NA [m]
      728         1379528100       NA        NA     SATELLITE         NA [m]
      729         1379529000       NA        NA     SATELLITE         NA [m]
      730         1379530800       NA        NA     SATELLITE         NA [m]
      731         1379531700       NA        NA     SATELLITE         NA [m]
      732         1379532600       NA        NA     SATELLITE         NA [m]
      733         1379534400       NA        NA     SATELLITE         NA [m]
      734         1379535300       NA        NA     SATELLITE         NA [m]
      735         1379536200       NA        NA     SATELLITE         NA [m]
      736         1379538000       NA        NA     SATELLITE         NA [m]
      737         1379538900       NA        NA     SATELLITE         NA [m]
      738         1379539800       NA        NA     SATELLITE         NA [m]
      739         1379541600       NA        NA     SATELLITE         NA [m]
      740         1379542500       NA        NA     SATELLITE         NA [m]
      741         1379543400       NA        NA     SATELLITE         NA [m]
      742         1379545200       NA        NA     SATELLITE         NA [m]
      743         1379546100       NA        NA     SATELLITE         NA [m]
      744         1379547000       NA        NA     SATELLITE         NA [m]
      745         1379548800       NA        NA     SATELLITE   0.000000 [m]
      746         1379549700       NA        NA     SATELLITE   0.000000 [m]
      747         1379550600       NA        NA     SATELLITE   0.000000 [m]
      748         1379552400       NA        NA     SATELLITE   0.000000 [m]
      749         1379553300       NA        NA     SATELLITE   0.000000 [m]
      750         1379554200       NA        NA     SATELLITE   0.000000 [m]
      751         1379556000       NA        NA     SATELLITE   0.000000 [m]
      752         1379556900       NA        NA     SATELLITE   0.000000 [m]
      753         1379557800       NA        NA     SATELLITE   0.000000 [m]
      754         1379559600       NA        NA     SATELLITE   0.000000 [m]
      755         1379560500       NA        NA     SATELLITE   0.000000 [m]
      756         1379561400       NA        NA     SATELLITE   0.000000 [m]
      757         1379563200       NA        NA     SATELLITE   0.000000 [m]
      758         1379564100       NA        NA     SATELLITE   0.000000 [m]
      759         1379565000       NA        NA     SATELLITE   0.000000 [m]
      760         1379566800       NA        NA     SATELLITE   0.000000 [m]
      761         1379567700       NA        NA     SATELLITE   0.000000 [m]
      762         1379568600       NA        NA     SATELLITE   0.000000 [m]
      763         1379570400       NA        NA     SATELLITE   0.000000 [m]
      764         1379571300       NA        NA     SATELLITE   0.000000 [m]
      765         1379572200       NA        NA     SATELLITE   0.000000 [m]
      766         1379574000       NA        NA     SATELLITE   0.000000 [m]
      767         1379574900       NA        NA     SATELLITE   0.000000 [m]
      768         1379575800       NA        NA     SATELLITE   0.000000 [m]
      769         1379577600       NA        NA     SATELLITE   0.000000 [m]
      770         1379578500       NA        NA     SATELLITE   0.000000 [m]
      771         1379579400       NA        NA     SATELLITE   0.000000 [m]
      772         1379581200       NA        NA     SATELLITE   0.000000 [m]
      773         1379582100       NA        NA     SATELLITE   0.000000 [m]
      774         1379583000       NA        NA     SATELLITE   0.000000 [m]
      775         1379584800       NA        NA     SATELLITE   0.000000 [m]
      776         1379585700       NA        NA     SATELLITE   0.000000 [m]
      777         1379586600       NA        NA     SATELLITE   0.000000 [m]
      778         1379588400       NA        NA     SATELLITE   0.000000 [m]
      779         1379589300       NA        NA     SATELLITE   0.000000 [m]
      780         1379590200       NA        NA     SATELLITE   0.000000 [m]
      781         1379592000       NA        NA     SATELLITE   0.000000 [m]
      782         1379592900       NA        NA     SATELLITE   0.000000 [m]
      783         1379593800       NA        NA     SATELLITE   0.000000 [m]
      784         1379595600       NA        NA     SATELLITE   0.000000 [m]
      785         1379596500       NA        NA     SATELLITE   0.000000 [m]
      786         1379597400       NA        NA     SATELLITE   0.000000 [m]
      787         1379599200       NA        NA     SATELLITE   0.000000 [m]
      788         1379600100       NA        NA     SATELLITE   0.000000 [m]
      789         1379601000       NA        NA     SATELLITE   0.000000 [m]
      790         1379602800       NA        NA     SATELLITE   0.000000 [m]
      791         1379603700       NA        NA     SATELLITE   0.000000 [m]
      792         1379604600       NA        NA     SATELLITE   0.000000 [m]
      793         1379606400       NA        NA     SATELLITE   0.000000 [m]
      794         1379607300       NA        NA     SATELLITE   0.000000 [m]
      795         1379608200       NA        NA     SATELLITE   0.000000 [m]
      796         1379610000       NA        NA     SATELLITE   0.000000 [m]
      797         1379610900       NA        NA     SATELLITE   0.000000 [m]
      798         1379611800       NA        NA     SATELLITE   0.000000 [m]
      799         1379613600       NA        NA     SATELLITE   0.000000 [m]
      800         1379614500       NA        NA     SATELLITE   0.000000 [m]
      801         1379615400       NA        NA     SATELLITE   0.000000 [m]
      802         1379617200       NA        NA     SATELLITE   0.000000 [m]
      803         1379618100       NA        NA     SATELLITE   0.000000 [m]
      804         1379619000       NA        NA     SATELLITE   0.000000 [m]
      805         1379620800       NA        NA     SATELLITE   0.000000 [m]
      806         1379621700       NA        NA     SATELLITE   0.000000 [m]
      807         1379622600       NA        NA     SATELLITE   0.000000 [m]
      808         1379624400       NA        NA     SATELLITE   0.000000 [m]
      809         1379625300       NA        NA     SATELLITE   0.672435 [m]
      810         1379626200       NA        NA     SATELLITE   0.672435 [m]
      811         1379628000       NA        NA     SATELLITE   0.672435 [m]
      812         1379628900       NA        NA     SATELLITE   0.672435 [m]
      813         1379629800       NA        NA     SATELLITE   0.000000 [m]
      814         1379631600       NA        NA     SATELLITE   0.000000 [m]
      815         1379632500       NA        NA     SATELLITE   0.000000 [m]
      816         1379633400       NA        NA     SATELLITE   0.000000 [m]
      817         1379637000       NA        NA     SATELLITE         NA [m]
      818         1379637900       NA        NA     SATELLITE   0.000000 [m]
      819         1379640600       NA        NA     SATELLITE         NA [m]
      820         1379641500       NA        NA     SATELLITE   0.000000 [m]
      821         1379644200       NA        NA     SATELLITE         NA [m]
      822         1379645100       NA        NA     SATELLITE   0.000000 [m]
      823         1379647800       NA        NA     SATELLITE         NA [m]
      824         1379648700       NA        NA     SATELLITE   0.000000 [m]
      825         1379651400       NA        NA     SATELLITE         NA [m]
      826         1379652300       NA        NA     SATELLITE   0.000000 [m]
      827         1379655000       NA        NA     SATELLITE         NA [m]
      828         1379655900       NA        NA     SATELLITE   0.000000 [m]
      829         1379658600       NA        NA     SATELLITE         NA [m]
      830         1379659500       NA        NA     SATELLITE   0.000000 [m]
      831         1379662200       NA        NA     SATELLITE         NA [m]
      832         1379663100       NA        NA     SATELLITE   0.000000 [m]
      833         1379665800       NA        NA     SATELLITE         NA [m]
      834         1379666700       NA        NA     SATELLITE   0.000000 [m]
      835         1379669400       NA        NA     SATELLITE         NA [m]
      836         1379670300       NA        NA     SATELLITE   0.672435 [m]
      837         1379673000       NA        NA     SATELLITE         NA [m]
      838         1379673900       NA        NA     SATELLITE   0.000000 [m]
      839         1379676600       NA        NA     SATELLITE         NA [m]
      840         1379677500       NA        NA     SATELLITE   0.000000 [m]
      841         1379680200       NA        NA     SATELLITE         NA [m]
      842         1379681100       NA        NA     SATELLITE   0.000000 [m]
      843         1379683800       NA        NA     SATELLITE         NA [m]
      844         1379684700       NA        NA     SATELLITE   0.000000 [m]
      845         1379687400       NA        NA     SATELLITE         NA [m]
      846         1379688300       NA        NA     SATELLITE   0.000000 [m]
      847         1379691000       NA        NA     SATELLITE         NA [m]
      848         1379691900       NA        NA     SATELLITE   0.672435 [m]
      849         1379694600       NA        NA     SATELLITE         NA [m]
      850         1379695500       NA        NA     SATELLITE   0.000000 [m]
      851         1379698200       NA        NA     SATELLITE         NA [m]
      852         1379699100       NA        NA     SATELLITE   0.000000 [m]
      853         1379701800       NA        NA     SATELLITE         NA [m]
      854         1379702700       NA        NA     SATELLITE   0.000000 [m]
      855         1379705400       NA        NA     SATELLITE         NA [m]
      856         1379706300       NA        NA     SATELLITE   0.000000 [m]
      857         1379709000       NA        NA     SATELLITE         NA [m]
      858         1379709900       NA        NA     SATELLITE   0.000000 [m]
      859         1379712600       NA        NA     SATELLITE         NA [m]
      860         1379713500       NA        NA     SATELLITE   0.000000 [m]
      861         1379716200       NA        NA     SATELLITE         NA [m]
      862         1379717100       NA        NA     SATELLITE   0.000000 [m]
      863         1379719800       NA        NA     SATELLITE         NA [m]
      864         1379720700       NA        NA     SATELLITE   0.000000 [m]
      865         1379721600       NA        NA     SATELLITE         NA [m]
      866         1379722500       NA        NA     SATELLITE   0.000000 [m]
      867         1379723400       NA        NA     SATELLITE         NA [m]
      868         1379725200       NA        NA     SATELLITE         NA [m]
      869         1379726100       NA        NA     SATELLITE   0.000000 [m]
      870         1379727000       NA        NA     SATELLITE         NA [m]
      871         1379728800       NA        NA     SATELLITE         NA [m]
      872         1379729700       NA        NA     SATELLITE   0.000000 [m]
      873         1379730600       NA        NA     SATELLITE         NA [m]
      874         1379732400       NA        NA     SATELLITE         NA [m]
      875         1379733300       NA        NA     SATELLITE   0.000000 [m]
      876         1379734200       NA        NA     SATELLITE         NA [m]
      877         1379736000       NA        NA     SATELLITE         NA [m]
      878         1379736900       NA        NA     SATELLITE   0.000000 [m]
      879         1379737800       NA        NA     SATELLITE         NA [m]
      880         1379739600       NA        NA     SATELLITE         NA [m]
      881         1379740500       NA        NA     SATELLITE   0.000000 [m]
      882         1379741400       NA        NA     SATELLITE         NA [m]
      883         1379743200       NA        NA     SATELLITE         NA [m]
      884         1379744100       NA        NA     SATELLITE   0.000000 [m]
      885         1379745000       NA        NA     SATELLITE         NA [m]
      886         1379746800       NA        NA     SATELLITE         NA [m]
      887         1379747700       NA        NA     SATELLITE   0.000000 [m]
      888         1379748600       NA        NA     SATELLITE         NA [m]
      889         1379750400       NA        NA     SATELLITE         NA [m]
      890         1379751300       NA        NA     SATELLITE   0.000000 [m]
      891         1379752200       NA        NA     SATELLITE         NA [m]
      892         1379754000       NA        NA     SATELLITE         NA [m]
      893         1379754900       NA        NA     SATELLITE   0.000000 [m]
      894         1379755800       NA        NA     SATELLITE         NA [m]
      895         1379757600       NA        NA     SATELLITE         NA [m]
      896         1379758500       NA        NA     SATELLITE   0.000000 [m]
      897         1379759400       NA        NA     SATELLITE         NA [m]
      898         1379761200       NA        NA     SATELLITE         NA [m]
      899         1379762100       NA        NA     SATELLITE   0.000000 [m]
      900         1379763000       NA        NA     SATELLITE         NA [m]
      901         1379764800       NA        NA     SATELLITE         NA [m]
      902         1379765700       NA        NA     SATELLITE   0.000000 [m]
      903         1379766600       NA        NA     SATELLITE         NA [m]
      904         1379768400       NA        NA     SATELLITE         NA [m]
      905         1379769300       NA        NA     SATELLITE   0.000000 [m]
      906         1379770200       NA        NA     SATELLITE         NA [m]
      907         1379772000       NA        NA     SATELLITE         NA [m]
      908         1379772900       NA        NA     SATELLITE   0.000000 [m]
      909         1379773800       NA        NA     SATELLITE         NA [m]
      910         1379775600       NA        NA     SATELLITE         NA [m]
      911         1379776500       NA        NA     SATELLITE   0.000000 [m]
      912         1379777400       NA        NA     SATELLITE         NA [m]
      913         1379779200       NA        NA     SATELLITE         NA [m]
      914         1379780100       NA        NA     SATELLITE   0.000000 [m]
      915         1379781000       NA        NA     SATELLITE         NA [m]
      916         1379782800       NA        NA     SATELLITE         NA [m]
      917         1379783700       NA        NA     SATELLITE   0.000000 [m]
      918         1379784600       NA        NA     SATELLITE         NA [m]
      919         1379786400       NA        NA     SATELLITE         NA [m]
      920         1379787300       NA        NA     SATELLITE   0.000000 [m]
      921         1379788200       NA        NA     SATELLITE         NA [m]
      922         1379790000       NA        NA     SATELLITE         NA [m]
      923         1379790900       NA        NA     SATELLITE   0.000000 [m]
      924         1379791800       NA        NA     SATELLITE         NA [m]
      925         1379793600       NA        NA     SATELLITE         NA [m]
      926         1379794500       NA        NA     SATELLITE   0.000000 [m]
      927         1379795400       NA        NA     SATELLITE         NA [m]
      928         1379797200       NA        NA     SATELLITE         NA [m]
      929         1379798100       NA        NA     SATELLITE   0.000000 [m]
      930         1379799000       NA        NA     SATELLITE         NA [m]
      931         1379800800       NA        NA     SATELLITE         NA [m]
      932         1379801700       NA        NA     SATELLITE   0.000000 [m]
      933         1379802600       NA        NA     SATELLITE         NA [m]
      934         1379804400       NA        NA     SATELLITE         NA [m]
      935         1379805300       NA        NA     SATELLITE   0.000000 [m]
      936         1379806200       NA        NA     SATELLITE         NA [m]
      937         1379808000       NA        NA     SATELLITE   0.000000 [m]
      938         1379811600       NA        NA     SATELLITE   0.000000 [m]
      939         1379815200       NA        NA     SATELLITE   0.000000 [m]
      940         1379818800       NA        NA     SATELLITE   0.000000 [m]
      941         1379822400       NA        NA     SATELLITE   0.000000 [m]
      942         1379826000       NA        NA     SATELLITE   0.000000 [m]
      943         1379829600       NA        NA     SATELLITE   0.000000 [m]
      944         1379833200       NA        NA     SATELLITE   0.000000 [m]
      945         1379836800       NA        NA     SATELLITE   0.000000 [m]
      946         1379840400       NA        NA     SATELLITE   0.000000 [m]
      947         1379844000       NA        NA     SATELLITE   0.000000 [m]
      948         1379847600       NA        NA     SATELLITE   0.000000 [m]
      949         1379851200       NA        NA     SATELLITE   0.672435 [m]
      950         1379854800       NA        NA     SATELLITE   0.000000 [m]
      951         1379858400       NA        NA     SATELLITE   0.000000 [m]
      952         1379862000       NA        NA     SATELLITE   0.000000 [m]
      953         1379865600       NA        NA     SATELLITE   0.672435 [m]
      954         1379869200       NA        NA     SATELLITE   0.000000 [m]
      955         1379872800       NA        NA     SATELLITE   0.000000 [m]
      956         1379876400       NA        NA     SATELLITE   0.000000 [m]
      957         1379880000       NA        NA     SATELLITE   0.000000 [m]
      958         1379883600       NA        NA     SATELLITE   0.000000 [m]
      959         1379887200       NA        NA     SATELLITE   0.000000 [m]
      960         1379890800       NA        NA     SATELLITE   0.000000 [m]
      961         1379896200       NA        NA     SATELLITE   0.000000 [m]
      962         1379897100       NA        NA     SATELLITE   0.000000 [m]
      963         1379899800       NA        NA     SATELLITE   0.000000 [m]
      964         1379900700       NA        NA     SATELLITE   0.000000 [m]
      965         1379903400       NA        NA     SATELLITE   0.000000 [m]
      966         1379904300       NA        NA     SATELLITE   0.000000 [m]
      967         1379907000       NA        NA     SATELLITE   0.000000 [m]
      968         1379907900       NA        NA     SATELLITE   0.000000 [m]
      969         1379910600       NA        NA     SATELLITE   0.000000 [m]
      970         1379911500       NA        NA     SATELLITE   0.000000 [m]
      971         1379914200       NA        NA     SATELLITE   0.000000 [m]
      972         1379915100       NA        NA     SATELLITE   0.672435 [m]
      973         1379917800       NA        NA     SATELLITE   0.672435 [m]
      974         1379918700       NA        NA     SATELLITE   0.000000 [m]
      975         1379921400       NA        NA     SATELLITE   0.672435 [m]
      976         1379922300       NA        NA     SATELLITE   0.672435 [m]
      977         1379925000       NA        NA     SATELLITE   0.000000 [m]
      978         1379925900       NA        NA     SATELLITE   0.000000 [m]
      979         1379928600       NA        NA     SATELLITE   0.000000 [m]
      980         1379929500       NA        NA     SATELLITE   0.000000 [m]
      981         1379932200       NA        NA     SATELLITE   0.672435 [m]
      982         1379933100       NA        NA     SATELLITE   0.000000 [m]
      983         1379935800       NA        NA     SATELLITE   0.000000 [m]
      984         1379936700       NA        NA     SATELLITE   0.000000 [m]
      985         1379939400       NA        NA     SATELLITE   0.000000 [m]
      986         1379940300       NA        NA     SATELLITE   0.000000 [m]
      987         1379943000       NA        NA     SATELLITE   0.000000 [m]
      988         1379943900       NA        NA     SATELLITE   0.000000 [m]
      989         1379946600       NA        NA     SATELLITE   0.000000 [m]
      990         1379947500       NA        NA     SATELLITE   0.000000 [m]
      991         1379950200       NA        NA     SATELLITE   0.000000 [m]
      992         1379951100       NA        NA     SATELLITE   0.000000 [m]
      993         1379953800       NA        NA     SATELLITE   0.000000 [m]
      994         1379954700       NA        NA     SATELLITE   0.000000 [m]
      995         1379957400       NA        NA     SATELLITE   0.000000 [m]
      996         1379958300       NA        NA     SATELLITE   0.000000 [m]
      997         1379961000       NA        NA     SATELLITE   0.000000 [m]
      998         1379961900       NA        NA     SATELLITE   0.000000 [m]
      999         1379964600       NA        NA     SATELLITE   0.000000 [m]
      1000        1379965500       NA        NA     SATELLITE   0.000000 [m]
      1001        1379968200       NA        NA     SATELLITE   0.000000 [m]
      1002        1379969100       NA        NA     SATELLITE   0.000000 [m]
      1003        1379971800       NA        NA     SATELLITE   0.000000 [m]
      1004        1379972700       NA        NA     SATELLITE   0.000000 [m]
      1005        1379975400       NA        NA     SATELLITE   0.000000 [m]
      1006        1379976300       NA        NA     SATELLITE   0.000000 [m]
      1007        1379979000       NA        NA     SATELLITE   0.000000 [m]
      1008        1379979900       NA        NA     SATELLITE   0.000000 [m]
      1009        1379980800       NA        NA     SATELLITE   0.000000 [m]
      1010        1379983500       NA        NA     SATELLITE   0.000000 [m]
      1011        1379984400       NA        NA     SATELLITE   0.000000 [m]
      1012        1379987100       NA        NA     SATELLITE   0.000000 [m]
      1013        1379988000       NA        NA     SATELLITE   0.000000 [m]
      1014        1379990700       NA        NA     SATELLITE   0.000000 [m]
      1015        1379991600       NA        NA     SATELLITE   0.000000 [m]
      1016        1379994300       NA        NA     SATELLITE   0.000000 [m]
      1017        1379995200       NA        NA     SATELLITE   0.000000 [m]
      1018        1379997900       NA        NA     SATELLITE   0.000000 [m]
      1019        1379998800       NA        NA     SATELLITE   0.000000 [m]
      1020        1380001500       NA        NA     SATELLITE   0.000000 [m]
      1021        1380002400       NA        NA     SATELLITE   0.000000 [m]
      1022        1380005100       NA        NA     SATELLITE   0.000000 [m]
      1023        1380006000       NA        NA     SATELLITE   0.000000 [m]
      1024        1380008700       NA        NA     SATELLITE   0.000000 [m]
      1025        1380009600       NA        NA     SATELLITE   0.000000 [m]
      1026        1380012300       NA        NA     SATELLITE   0.000000 [m]
      1027        1380013200       NA        NA     SATELLITE   0.000000 [m]
      1028        1380015900       NA        NA     SATELLITE   0.000000 [m]
      1029        1380016800       NA        NA     SATELLITE   0.000000 [m]
      1030        1380019500       NA        NA     SATELLITE   0.000000 [m]
      1031        1380020400       NA        NA     SATELLITE   0.000000 [m]
      1032        1380023100       NA        NA     SATELLITE   0.000000 [m]
      1033        1380024000       NA        NA     SATELLITE   0.000000 [m]
      1034        1380026700       NA        NA     SATELLITE   0.000000 [m]
      1035        1380027600       NA        NA     SATELLITE   0.000000 [m]
      1036        1380030300       NA        NA     SATELLITE   0.000000 [m]
      1037        1380031200       NA        NA     SATELLITE   0.000000 [m]
      1038        1380033900       NA        NA     SATELLITE   0.000000 [m]
      1039        1380034800       NA        NA     SATELLITE   0.000000 [m]
      1040        1380037500       NA        NA     SATELLITE   0.000000 [m]
      1041        1380038400       NA        NA     SATELLITE   0.000000 [m]
      1042        1380041100       NA        NA     SATELLITE   0.000000 [m]
      1043        1380042000       NA        NA     SATELLITE   0.000000 [m]
      1044        1380044700       NA        NA     SATELLITE   0.000000 [m]
      1045        1380045600       NA        NA     SATELLITE   0.000000 [m]
      1046        1380047716   56.383   134.637     SATELLITE         NA [m]
      1047        1380048300       NA        NA     SATELLITE   0.000000 [m]
      1048        1380049200       NA        NA     SATELLITE   0.000000 [m]
      1049        1380051900       NA        NA     SATELLITE   0.000000 [m]
      1050        1380052800       NA        NA     SATELLITE   0.672435 [m]
      1051        1380055500       NA        NA     SATELLITE   0.672435 [m]
      1052        1380056400       NA        NA     SATELLITE   0.000000 [m]
      1053        1380059100       NA        NA     SATELLITE   0.000000 [m]
      1054        1380060000       NA        NA     SATELLITE   0.000000 [m]
      1055        1380062700       NA        NA     SATELLITE   0.000000 [m]
      1056        1380063600       NA        NA     SATELLITE   0.000000 [m]
      1057        1380066300       NA        NA     SATELLITE   0.000000 [m]
      1058        1380069900       NA        NA     SATELLITE   0.000000 [m]
      1059        1380071206   56.384   134.641     SATELLITE         NA [m]
      1060        1380073500       NA        NA     SATELLITE   0.000000 [m]
      1061        1380077100       NA        NA     SATELLITE   0.000000 [m]
      1062        1380080700       NA        NA     SATELLITE   0.000000 [m]
      1063        1380084300       NA        NA     SATELLITE   0.672435 [m]
      1064        1380087900       NA        NA     SATELLITE   0.672435 [m]
      1065        1380091500       NA        NA     SATELLITE   0.000000 [m]
      1066        1380095100       NA        NA     SATELLITE   0.672435 [m]
      1067        1380098700       NA        NA     SATELLITE   0.000000 [m]
      1068        1380102300       NA        NA     SATELLITE   0.000000 [m]
      1069        1380105900       NA        NA     SATELLITE   0.000000 [m]
      1070        1380108672   56.382   134.642     SATELLITE         NA [m]
      1071        1380109500       NA        NA     SATELLITE   0.000000 [m]
      1072        1380113100       NA        NA     SATELLITE   0.672435 [m]
      1073        1380116700       NA        NA     SATELLITE   0.672435 [m]
      1074        1380117216   56.410   134.764     SATELLITE         NA [m]
      1075        1380118449   56.386   134.630     SATELLITE         NA [m]
      1076        1380120300       NA        NA     SATELLITE   0.672435 [m]
      1077        1380120738   56.384   134.637     SATELLITE         NA [m]
      1078        1380123900       NA        NA     SATELLITE   0.672435 [m]
      1079        1380127500       NA        NA     SATELLITE   0.672435 [m]
      1080        1380131100       NA        NA     SATELLITE   0.672435 [m]
      1081        1380134700       NA        NA     SATELLITE   0.672435 [m]
      1082        1380138300       NA        NA     SATELLITE   0.672435 [m]
      1083        1380141900       NA        NA     SATELLITE   0.672435 [m]
      1084        1380145500       NA        NA     SATELLITE   0.672435 [m]
      1085        1380149100       NA        NA     SATELLITE   0.672435 [m]
      1086        1380152700       NA        NA     SATELLITE   0.672435 [m]
      1087        1380153600       NA        NA     SATELLITE   0.672435 [m]
      1088        1380156120   56.386   134.648     SATELLITE         NA [m]
      1089        1380157200       NA        NA     SATELLITE   0.672435 [m]
      1090        1380160800       NA        NA     SATELLITE   0.672435 [m]
      1091        1380164400       NA        NA     SATELLITE   0.672435 [m]
      1092        1380168000       NA        NA     SATELLITE   0.672435 [m]
      1093        1380171600       NA        NA     SATELLITE   0.672435 [m]
      1094        1380175151   56.385   134.642     SATELLITE         NA [m]
      1095        1380175151   56.385   134.642     SATELLITE         NA [m]
      1096        1380175200       NA        NA     SATELLITE   0.672435 [m]
      1097        1380178800       NA        NA     SATELLITE   0.672435 [m]
      1098        1380182400       NA        NA     SATELLITE   0.000000 [m]
      1099        1380186000       NA        NA     SATELLITE   0.000000 [m]
      1100        1380189600       NA        NA     SATELLITE   0.672435 [m]
      1101        1380193200       NA        NA     SATELLITE   0.000000 [m]
      1102        1380196800       NA        NA     SATELLITE   0.672435 [m]
      1103        1380200400       NA        NA     SATELLITE   0.672435 [m]
      1104        1380203042   56.384   134.646     SATELLITE         NA [m]
      1105        1380204000       NA        NA     SATELLITE   0.672435 [m]
      1106        1380207600       NA        NA     SATELLITE   0.000000 [m]
      1107        1380211200       NA        NA     SATELLITE   0.672435 [m]
      1108        1380214800       NA        NA     SATELLITE   0.000000 [m]
      1109        1380218400       NA        NA     SATELLITE   0.672435 [m]
      1110        1380222000       NA        NA     SATELLITE   0.672435 [m]
      1111        1380225600       NA        NA     SATELLITE   0.672435 [m]
      1112        1380229200       NA        NA     SATELLITE   0.000000 [m]
      1113        1380232800       NA        NA     SATELLITE   0.000000 [m]
      1114        1380236400       NA        NA     SATELLITE   0.000000 [m]
      1115        1380240000       NA        NA     SATELLITE   0.000000 [m]
      1116        1380242700       NA        NA     SATELLITE   0.000000 [m]
      1117        1380243600       NA        NA     SATELLITE   0.000000 [m]
      1118        1380246300       NA        NA     SATELLITE   0.000000 [m]
      1119        1380247200       NA        NA     SATELLITE   0.000000 [m]
      1120        1380249900       NA        NA     SATELLITE   0.000000 [m]
      1121        1380250800       NA        NA     SATELLITE   0.000000 [m]
      1122        1380253500       NA        NA     SATELLITE   0.000000 [m]
      1123        1380254400       NA        NA     SATELLITE   0.000000 [m]
      1124        1380257100       NA        NA     SATELLITE   0.000000 [m]
      1125        1380258000       NA        NA     SATELLITE   0.000000 [m]
      1126        1380260700       NA        NA     SATELLITE   0.000000 [m]
      1127        1380261600       NA        NA     SATELLITE   0.000000 [m]
      1128        1380264300       NA        NA     SATELLITE   0.000000 [m]
      1129        1380265200       NA        NA     SATELLITE   0.000000 [m]
      1130        1380267900       NA        NA     SATELLITE   0.000000 [m]
      1131        1380268800       NA        NA     SATELLITE   0.000000 [m]
      1132        1380271500       NA        NA     SATELLITE   0.672435 [m]
      1133        1380272400       NA        NA     SATELLITE   0.672435 [m]
      1134        1380275100       NA        NA     SATELLITE   0.672435 [m]
      1135        1380276000       NA        NA     SATELLITE   0.672435 [m]
      1136        1380278700       NA        NA     SATELLITE   0.672435 [m]
      1137        1380279600       NA        NA     SATELLITE   0.672435 [m]
      1138        1380282300       NA        NA     SATELLITE   0.672435 [m]
      1139        1380283200       NA        NA     SATELLITE   0.000000 [m]
      1140        1380285900       NA        NA     SATELLITE   0.000000 [m]
      1141        1380286800       NA        NA     SATELLITE   0.000000 [m]
      1142        1380289500       NA        NA     SATELLITE   0.000000 [m]
      1143        1380290400       NA        NA     SATELLITE   0.000000 [m]
      1144        1380293100       NA        NA     SATELLITE   0.672435 [m]
      1145        1380294000       NA        NA     SATELLITE   0.672435 [m]
      1146        1380296700       NA        NA     SATELLITE   0.000000 [m]
      1147        1380297600       NA        NA     SATELLITE   0.000000 [m]
      1148        1380300300       NA        NA     SATELLITE   0.672435 [m]
      1149        1380301200       NA        NA     SATELLITE   0.672435 [m]
      1150        1380303900       NA        NA     SATELLITE   0.000000 [m]
      1151        1380304800       NA        NA     SATELLITE   0.672435 [m]
      1152        1380307500       NA        NA     SATELLITE   0.672435 [m]
      1153        1380308400       NA        NA     SATELLITE   0.000000 [m]
      1154        1380310034   56.390   134.650     SATELLITE         NA [m]
      1155        1380311100       NA        NA     SATELLITE   0.000000 [m]
      1156        1380312000       NA        NA     SATELLITE   0.000000 [m]
      1157        1380314700       NA        NA     SATELLITE   0.000000 [m]
      1158        1380315600       NA        NA     SATELLITE   0.000000 [m]
      1159        1380318300       NA        NA     SATELLITE   0.672435 [m]
      1160        1380319200       NA        NA     SATELLITE   0.000000 [m]
      1161        1380321900       NA        NA     SATELLITE   0.000000 [m]
      1162        1380322800       NA        NA     SATELLITE   0.000000 [m]
      1163        1380325500       NA        NA     SATELLITE   0.672435 [m]
      1164        1380326400       NA        NA     SATELLITE         NA [m]
      1165        1380328200       NA        NA     SATELLITE   0.000000 [m]
      1166        1380329100       NA        NA     SATELLITE         NA [m]
      1167        1380330000       NA        NA     SATELLITE         NA [m]
      1168        1380331800       NA        NA     SATELLITE   0.672435 [m]
      1169        1380331983   56.368   134.660     SATELLITE         NA [m]
      1170        1380332700       NA        NA     SATELLITE         NA [m]
      1171        1380333600       NA        NA     SATELLITE         NA [m]
      1172        1380335400       NA        NA     SATELLITE   0.000000 [m]
      1173        1380336300       NA        NA     SATELLITE         NA [m]
      1174        1380337200       NA        NA     SATELLITE         NA [m]
      1175        1380339000       NA        NA     SATELLITE   0.000000 [m]
      1176        1380339900       NA        NA     SATELLITE         NA [m]
      1177        1380340800       NA        NA     SATELLITE         NA [m]
      1178        1380342600       NA        NA     SATELLITE   0.000000 [m]
      1179        1380343500       NA        NA     SATELLITE         NA [m]
      1180        1380344400       NA        NA     SATELLITE         NA [m]
      1181        1380345448   56.378   134.610     SATELLITE         NA [m]
      1182        1380346200       NA        NA     SATELLITE   0.000000 [m]
      1183        1380347100       NA        NA     SATELLITE         NA [m]
      1184        1380348000       NA        NA     SATELLITE         NA [m]
      1185        1380349800       NA        NA     SATELLITE   0.000000 [m]
      1186        1380350700       NA        NA     SATELLITE         NA [m]
      1187        1380351600       NA        NA     SATELLITE         NA [m]
      1188        1380353400       NA        NA     SATELLITE   0.000000 [m]
      1189        1380354300       NA        NA     SATELLITE         NA [m]
      1190        1380355200       NA        NA     SATELLITE         NA [m]
      1191        1380357000       NA        NA     SATELLITE   0.000000 [m]
      1192        1380357900       NA        NA     SATELLITE         NA [m]
      1193        1380358800       NA        NA     SATELLITE         NA [m]
      1194        1380360600       NA        NA     SATELLITE   0.000000 [m]
      1195        1380361500       NA        NA     SATELLITE         NA [m]
      1196        1380362400       NA        NA     SATELLITE         NA [m]
      1197        1380364200       NA        NA     SATELLITE   0.000000 [m]
      1198        1380365100       NA        NA     SATELLITE         NA [m]
      1199        1380366000       NA        NA     SATELLITE         NA [m]
      1200        1380367800       NA        NA     SATELLITE   0.000000 [m]
      1201        1380368700       NA        NA     SATELLITE         NA [m]
      1202        1380369600       NA        NA     SATELLITE         NA [m]
      1203        1380371400       NA        NA     SATELLITE   0.000000 [m]
      1204        1380372300       NA        NA     SATELLITE         NA [m]
      1205        1380373200       NA        NA     SATELLITE         NA [m]
      1206        1380374500   56.400   134.578     SATELLITE         NA [m]
      1207        1380375000       NA        NA     SATELLITE   0.000000 [m]
      1208        1380375900       NA        NA     SATELLITE         NA [m]
      1209        1380376800       NA        NA     SATELLITE         NA [m]
      1210        1380378049   56.317   134.999     SATELLITE         NA [m]
      1211        1380378600       NA        NA     SATELLITE   0.672435 [m]
      1212        1380379500       NA        NA     SATELLITE         NA [m]
      1213        1380380400       NA        NA     SATELLITE         NA [m]
      1214        1380382200       NA        NA     SATELLITE   0.000000 [m]
      1215        1380383100       NA        NA     SATELLITE         NA [m]
      1216        1380384000       NA        NA     SATELLITE         NA [m]
      1217        1380385800       NA        NA     SATELLITE   0.000000 [m]
      1218        1380386700       NA        NA     SATELLITE         NA [m]
      1219        1380387600       NA        NA     SATELLITE         NA [m]
      1220        1380389400       NA        NA     SATELLITE   0.000000 [m]
      1221        1380390300       NA        NA     SATELLITE         NA [m]
      1222        1380391200       NA        NA     SATELLITE         NA [m]
      1223        1380393000       NA        NA     SATELLITE   0.000000 [m]
      1224        1380393900       NA        NA     SATELLITE         NA [m]
      1225        1380394800       NA        NA     SATELLITE         NA [m]
      1226        1380395182   56.398   134.641     SATELLITE         NA [m]
      1227        1380396600       NA        NA     SATELLITE   0.000000 [m]
      1228        1380397500       NA        NA     SATELLITE         NA [m]
      1229        1380398400       NA        NA     SATELLITE         NA [m]
      1230        1380400200       NA        NA     SATELLITE   0.000000 [m]
      1231        1380401100       NA        NA     SATELLITE         NA [m]
      1232        1380402000       NA        NA     SATELLITE         NA [m]
      1233        1380403800       NA        NA     SATELLITE   0.000000 [m]
      1234        1380404700       NA        NA     SATELLITE         NA [m]
      1235        1380405600       NA        NA     SATELLITE         NA [m]
      1236        1380407400       NA        NA     SATELLITE   0.000000 [m]
      1237        1380408300       NA        NA     SATELLITE         NA [m]
      1238        1380409200       NA        NA     SATELLITE         NA [m]
      1239        1380410119   56.384   134.645     SATELLITE         NA [m]
      1240        1380411000       NA        NA     SATELLITE   0.000000 [m]
      1241        1380411900       NA        NA     SATELLITE         NA [m]
      1242        1380412800       NA        NA     SATELLITE   0.000000 [m]
      1243        1380413700       NA        NA     SATELLITE         NA [m]
      1244        1380416400       NA        NA     SATELLITE   0.000000 [m]
      1245        1380416876   56.379   134.633     SATELLITE         NA [m]
      1246        1380417300       NA        NA     SATELLITE         NA [m]
      1247        1380420000       NA        NA     SATELLITE   0.000000 [m]
      1248        1380420900       NA        NA     SATELLITE         NA [m]
      1249        1380423600       NA        NA     SATELLITE   0.000000 [m]
      1250        1380424500       NA        NA     SATELLITE         NA [m]
      1251        1380427200       NA        NA     SATELLITE   0.000000 [m]
      1252        1380428100       NA        NA     SATELLITE         NA [m]
      1253        1380430800       NA        NA     SATELLITE   0.000000 [m]
      1254        1380431700       NA        NA     SATELLITE         NA [m]
      1255        1380432115   56.384   134.645     SATELLITE         NA [m]
      1256        1380434400       NA        NA     SATELLITE   0.000000 [m]
      1257        1380435300       NA        NA     SATELLITE         NA [m]
      1258        1380438000       NA        NA     SATELLITE   0.000000 [m]
      1259        1380438900       NA        NA     SATELLITE         NA [m]
      1260        1380441600       NA        NA     SATELLITE   0.000000 [m]
      1261        1380442500       NA        NA     SATELLITE         NA [m]
      1262        1380445200       NA        NA     SATELLITE   0.000000 [m]
      1263        1380446100       NA        NA     SATELLITE         NA [m]
      1264        1380448800       NA        NA     SATELLITE   0.000000 [m]
      1265        1380449700       NA        NA     SATELLITE         NA [m]
      1266        1380452400       NA        NA     SATELLITE   0.000000 [m]
      1267        1380453300       NA        NA     SATELLITE         NA [m]
      1268        1380456000       NA        NA     SATELLITE   0.000000 [m]
      1269        1380456900       NA        NA     SATELLITE         NA [m]
      1270        1380459600       NA        NA     SATELLITE   0.000000 [m]
      1271        1380460239   56.396   134.605     SATELLITE         NA [m]
      1272        1380460500       NA        NA     SATELLITE         NA [m]
      1273        1380462529   56.381   134.590     SATELLITE         NA [m]
      1274        1380463200       NA        NA     SATELLITE   0.000000 [m]
      1275        1380464100       NA        NA     SATELLITE         NA [m]
      1276        1380466501   56.384   134.636     SATELLITE         NA [m]
      1277        1380466800       NA        NA     SATELLITE   0.000000 [m]
      1278        1380467700       NA        NA     SATELLITE         NA [m]
      1279        1380470400       NA        NA     SATELLITE   0.000000 [m]
      1280        1380471300       NA        NA     SATELLITE         NA [m]
      1281        1380474000       NA        NA     SATELLITE   0.000000 [m]
      1282        1380474900       NA        NA     SATELLITE         NA [m]
      1283        1380477600       NA        NA     SATELLITE   0.000000 [m]
      1284        1380478500       NA        NA     SATELLITE         NA [m]
      1285        1380480327   56.394   134.646     SATELLITE         NA [m]
      1286        1380481200       NA        NA     SATELLITE   0.000000 [m]
      1287        1380482100       NA        NA     SATELLITE         NA [m]
      1288        1380482163   56.383   134.637     SATELLITE         NA [m]
      1289        1380484800       NA        NA     SATELLITE   0.000000 [m]
      1290        1380485700       NA        NA     SATELLITE         NA [m]
      1291        1380488400       NA        NA     SATELLITE   0.000000 [m]
      1292        1380489300       NA        NA     SATELLITE         NA [m]
      1293        1380492000       NA        NA     SATELLITE   0.000000 [m]
      1294        1380492900       NA        NA     SATELLITE         NA [m]
      1295        1380493376   56.382   134.642     SATELLITE         NA [m]
      1296        1380495600       NA        NA     SATELLITE   0.000000 [m]
      1297        1380495931   56.383   134.635     SATELLITE         NA [m]
      1298        1380496500       NA        NA     SATELLITE         NA [m]
      1299        1380499200       NA        NA     SATELLITE         NA [m]
      1300        1380500100       NA        NA     SATELLITE   0.000000 [m]
      1301        1380501848   56.383   134.646     SATELLITE         NA [m]
      1302        1380502800       NA        NA     SATELLITE         NA [m]
      1303        1380503700       NA        NA     SATELLITE   0.672435 [m]
      1304        1380506400       NA        NA     SATELLITE         NA [m]
      1305        1380507300       NA        NA     SATELLITE   0.000000 [m]
      1306        1380510000       NA        NA     SATELLITE         NA [m]
      1307        1380510900       NA        NA     SATELLITE   0.000000 [m]
      1308        1380513600       NA        NA     SATELLITE         NA [m]
      1309        1380514500       NA        NA     SATELLITE   0.000000 [m]
      1310        1380517200       NA        NA     SATELLITE         NA [m]
      1311        1380517781   56.386   134.551     SATELLITE         NA [m]
      1312        1380518100       NA        NA     SATELLITE   0.000000 [m]
      1313        1380520800       NA        NA     SATELLITE         NA [m]
      1314        1380521700       NA        NA     SATELLITE   0.000000 [m]
      1315        1380524400       NA        NA     SATELLITE         NA [m]
      1316        1380525300       NA        NA     SATELLITE   0.000000 [m]
      1317        1380528000       NA        NA     SATELLITE         NA [m]
      1318        1380528900       NA        NA     SATELLITE   0.000000 [m]
      1319        1380531600       NA        NA     SATELLITE         NA [m]
      1320        1380532500       NA        NA     SATELLITE   0.000000 [m]
      1321        1380535200       NA        NA     SATELLITE         NA [m]
      1322        1380536100       NA        NA     SATELLITE   0.000000 [m]
      1323        1380538800       NA        NA     SATELLITE         NA [m]
      1324        1380539700       NA        NA     SATELLITE   0.000000 [m]
      1325        1380542400       NA        NA     SATELLITE         NA [m]
      1326        1380543300       NA        NA     SATELLITE   0.000000 [m]
      1327        1380546000       NA        NA     SATELLITE         NA [m]
      1328        1380546900       NA        NA     SATELLITE   0.000000 [m]
      1329        1380549600       NA        NA     SATELLITE         NA [m]
      1330        1380550500       NA        NA     SATELLITE   0.000000 [m]
      1331        1380551444   56.406   134.605     SATELLITE         NA [m]
      1332        1380553200       NA        NA     SATELLITE         NA [m]
      1333        1380554100       NA        NA     SATELLITE   0.000000 [m]
      1334        1380556800       NA        NA     SATELLITE         NA [m]
      1335        1380557700       NA        NA     SATELLITE   0.000000 [m]
      1336        1380560400       NA        NA     SATELLITE         NA [m]
      1337        1380561300       NA        NA     SATELLITE   0.000000 [m]
      1338        1380564000       NA        NA     SATELLITE         NA [m]
      1339        1380564900       NA        NA     SATELLITE   0.000000 [m]
      1340        1380567600       NA        NA     SATELLITE         NA [m]
      1341        1380567794   56.391   134.681     SATELLITE         NA [m]
      1342        1380568500       NA        NA     SATELLITE   0.000000 [m]
      1343        1380571200       NA        NA     SATELLITE         NA [m]
      1344        1380572100       NA        NA     SATELLITE   0.000000 [m]
      1345        1380574800       NA        NA     SATELLITE         NA [m]
      1346        1380575700       NA        NA     SATELLITE   0.000000 [m]
      1347        1380578400       NA        NA     SATELLITE         NA [m]
      1348        1380579188   56.383   134.640     SATELLITE         NA [m]
      1349        1380579300       NA        NA     SATELLITE   0.000000 [m]
      1350        1380582000       NA        NA     SATELLITE         NA [m]
      1351        1380582900       NA        NA     SATELLITE   0.000000 [m]
      1352        1380585600       NA        NA     SATELLITE   0.000000 [m]
      1353        1380586500       NA        NA     SATELLITE         NA [m]
      1354        1380589200       NA        NA     SATELLITE   0.000000 [m]
      1355        1380590100       NA        NA     SATELLITE         NA [m]
      1356        1380592800       NA        NA     SATELLITE   0.000000 [m]
      1357        1380593700       NA        NA     SATELLITE         NA [m]
      1358        1380596400       NA        NA     SATELLITE   0.672435 [m]
      1359        1380597300       NA        NA     SATELLITE         NA [m]
      1360        1380600000       NA        NA     SATELLITE   0.000000 [m]
      1361        1380600900       NA        NA     SATELLITE         NA [m]
      1362        1380603600       NA        NA     SATELLITE   0.000000 [m]
      1363        1380604500       NA        NA     SATELLITE         NA [m]
      1364        1380607033   56.386   134.631     SATELLITE         NA [m]
      1365        1380607200       NA        NA     SATELLITE   0.000000 [m]
      1366        1380608100       NA        NA     SATELLITE         NA [m]
      1367        1380610800       NA        NA     SATELLITE   0.000000 [m]
      1368        1380611700       NA        NA     SATELLITE         NA [m]
      1369        1380614400       NA        NA     SATELLITE   0.000000 [m]
      1370        1380615300       NA        NA     SATELLITE         NA [m]
      1371        1380618000       NA        NA     SATELLITE   0.000000 [m]
      1372        1380618900       NA        NA     SATELLITE         NA [m]
      1373        1380621600       NA        NA     SATELLITE   0.000000 [m]
      1374        1380622500       NA        NA     SATELLITE         NA [m]
      1375        1380625200       NA        NA     SATELLITE   0.000000 [m]
      1376        1380626100       NA        NA     SATELLITE         NA [m]
      1377        1380628800       NA        NA     SATELLITE   0.000000 [m]
      1378        1380629700       NA        NA     SATELLITE         NA [m]
      1379        1380632400       NA        NA     SATELLITE   0.000000 [m]
      1380        1380633300       NA        NA     SATELLITE         NA [m]
      1381        1380636000       NA        NA     SATELLITE   0.000000 [m]
      1382        1380636900       NA        NA     SATELLITE         NA [m]
      1383        1380637552   56.361   134.701     SATELLITE         NA [m]
      1384        1380639600       NA        NA     SATELLITE   0.000000 [m]
      1385        1380640500       NA        NA     SATELLITE         NA [m]
      1386        1380643200       NA        NA     SATELLITE   0.000000 [m]
      1387        1380644100       NA        NA     SATELLITE         NA [m]
      1388        1380646800       NA        NA     SATELLITE   0.000000 [m]
      1389        1380647700       NA        NA     SATELLITE         NA [m]
      1390        1380650400       NA        NA     SATELLITE   0.000000 [m]
      1391        1380651300       NA        NA     SATELLITE         NA [m]
      1392        1380654000       NA        NA     SATELLITE   0.000000 [m]
      1393        1380654900       NA        NA     SATELLITE         NA [m]
      1394        1380657600       NA        NA     SATELLITE   0.000000 [m]
      1395        1380658500       NA        NA     SATELLITE         NA [m]
      1396        1380661200       NA        NA     SATELLITE   0.000000 [m]
      1397        1380662100       NA        NA     SATELLITE         NA [m]
      1398        1380664800       NA        NA     SATELLITE   0.000000 [m]
      1399        1380665700       NA        NA     SATELLITE         NA [m]
      1400        1380668400       NA        NA     SATELLITE   0.000000 [m]
      1401        1380669300       NA        NA     SATELLITE         NA [m]
      1402        1380672000       NA        NA     SATELLITE   0.000000 [m]
      1403        1380674700       NA        NA     SATELLITE   0.000000 [m]
      1404        1380675600       NA        NA     SATELLITE   0.000000 [m]
      1405        1380678300       NA        NA     SATELLITE   0.000000 [m]
      1406        1380679200       NA        NA     SATELLITE   0.000000 [m]
      1407        1380681900       NA        NA     SATELLITE   0.000000 [m]
      1408        1380682800       NA        NA     SATELLITE   0.000000 [m]
      1409        1380685500       NA        NA     SATELLITE   0.000000 [m]
      1410        1380686400       NA        NA     SATELLITE   0.000000 [m]
      1411        1380689100       NA        NA     SATELLITE   0.000000 [m]
      1412        1380690000       NA        NA     SATELLITE   0.000000 [m]
      1413        1380692700       NA        NA     SATELLITE   0.000000 [m]
      1414        1380693600       NA        NA     SATELLITE   0.000000 [m]
      1415        1380696300       NA        NA     SATELLITE   0.000000 [m]
      1416        1380697200       NA        NA     SATELLITE   0.000000 [m]
      1417        1380699900       NA        NA     SATELLITE   0.000000 [m]
      1418        1380700800       NA        NA     SATELLITE   0.000000 [m]
      1419        1380703500       NA        NA     SATELLITE   0.000000 [m]
      1420        1380704400       NA        NA     SATELLITE   0.000000 [m]
      1421        1380707100       NA        NA     SATELLITE   0.000000 [m]
      1422        1380708000       NA        NA     SATELLITE   0.000000 [m]
      1423        1380710700       NA        NA     SATELLITE   0.000000 [m]
      1424        1380711600       NA        NA     SATELLITE   0.000000 [m]
      1425        1380714300       NA        NA     SATELLITE   0.000000 [m]
      1426        1380715200       NA        NA     SATELLITE   0.000000 [m]
      1427        1380717900       NA        NA     SATELLITE   0.000000 [m]
      1428        1380718800       NA        NA     SATELLITE   0.000000 [m]
      1429        1380721500       NA        NA     SATELLITE   0.000000 [m]
      1430        1380722082   56.385   134.643     SATELLITE         NA [m]
      1431        1380722400       NA        NA     SATELLITE   0.000000 [m]
      1432        1380723407   56.388   134.637     SATELLITE         NA [m]
      1433        1380725100       NA        NA     SATELLITE   0.000000 [m]
      1434        1380726000       NA        NA     SATELLITE   0.000000 [m]
      1435        1380728700       NA        NA     SATELLITE   0.000000 [m]
      1436        1380729600       NA        NA     SATELLITE   0.000000 [m]
      1437        1380732300       NA        NA     SATELLITE   0.000000 [m]
      1438        1380733200       NA        NA     SATELLITE   0.000000 [m]
      1439        1380735900       NA        NA     SATELLITE   0.000000 [m]
      1440        1380736800       NA        NA     SATELLITE   0.000000 [m]
      1441        1380739500       NA        NA     SATELLITE   0.000000 [m]
      1442        1380740400       NA        NA     SATELLITE   0.000000 [m]
      1443        1380743100       NA        NA     SATELLITE   0.000000 [m]
      1444        1380744000       NA        NA     SATELLITE   0.000000 [m]
      1445        1380746700       NA        NA     SATELLITE   0.000000 [m]
      1446        1380747600       NA        NA     SATELLITE   0.000000 [m]
      1447        1380750300       NA        NA     SATELLITE   0.000000 [m]
      1448        1380750641   56.383   134.640     SATELLITE         NA [m]
      1449        1380751200       NA        NA     SATELLITE   0.000000 [m]
      1450        1380753900       NA        NA     SATELLITE   0.000000 [m]
      1451        1380754800       NA        NA     SATELLITE   0.000000 [m]
      1452        1380757500       NA        NA     SATELLITE   0.000000 [m]
      1453        1380758400       NA        NA     SATELLITE         NA [m]
      1454        1380759300       NA        NA     SATELLITE   0.000000 [m]
      1455        1380762000       NA        NA     SATELLITE         NA [m]
      1456        1380762601   56.387   134.662     SATELLITE         NA [m]
      1457        1380762900       NA        NA     SATELLITE   0.000000 [m]
      1458        1380765600       NA        NA     SATELLITE         NA [m]
      1459        1380766500       NA        NA     SATELLITE   0.000000 [m]
      1460        1380769200       NA        NA     SATELLITE         NA [m]
      1461        1380770100       NA        NA     SATELLITE   0.000000 [m]
      1462        1380772800       NA        NA     SATELLITE         NA [m]
      1463        1380773700       NA        NA     SATELLITE   0.000000 [m]
      1464        1380776400       NA        NA     SATELLITE         NA [m]
      1465        1380777240   56.384   134.643     SATELLITE         NA [m]
      1466        1380777300       NA        NA     SATELLITE   0.000000 [m]
      1467        1380780000       NA        NA     SATELLITE         NA [m]
      1468        1380780900       NA        NA     SATELLITE   0.000000 [m]
      1469        1380783600       NA        NA     SATELLITE         NA [m]
      1470        1380784500       NA        NA     SATELLITE   0.000000 [m]
      1471        1380787200       NA        NA     SATELLITE         NA [m]
      1472        1380788100       NA        NA     SATELLITE   0.000000 [m]
      1473        1380790800       NA        NA     SATELLITE         NA [m]
      1474        1380791700       NA        NA     SATELLITE   0.000000 [m]
      1475        1380794400       NA        NA     SATELLITE         NA [m]
      1476        1380795300       NA        NA     SATELLITE   0.000000 [m]
      1477        1380798000       NA        NA     SATELLITE         NA [m]
      1478        1380798900       NA        NA     SATELLITE   0.000000 [m]
      1479        1380801600       NA        NA     SATELLITE         NA [m]
      1480        1380802500       NA        NA     SATELLITE   0.000000 [m]
      1481        1380805200       NA        NA     SATELLITE         NA [m]
      1482        1380806100       NA        NA     SATELLITE   0.000000 [m]
      1483        1380808800       NA        NA     SATELLITE         NA [m]
      1484        1380809157   56.383   134.662     SATELLITE         NA [m]
      1485        1380809700       NA        NA     SATELLITE   0.000000 [m]
      1486        1380812257   56.385   134.642     SATELLITE         NA [m]
      1487        1380812400       NA        NA     SATELLITE         NA [m]
      1488        1380813300       NA        NA     SATELLITE   0.000000 [m]
      1489        1380816000       NA        NA     SATELLITE         NA [m]
      1490        1380816900       NA        NA     SATELLITE   0.000000 [m]
      1491        1380819600       NA        NA     SATELLITE         NA [m]
      1492        1380820500       NA        NA     SATELLITE   0.000000 [m]
      1493        1380823200       NA        NA     SATELLITE         NA [m]
      1494        1380824100       NA        NA     SATELLITE   0.000000 [m]
      1495        1380826800       NA        NA     SATELLITE         NA [m]
      1496        1380827700       NA        NA     SATELLITE   0.000000 [m]
      1497        1380830400       NA        NA     SATELLITE         NA [m]
      1498        1380831300       NA        NA     SATELLITE   0.000000 [m]
      1499        1380834000       NA        NA     SATELLITE         NA [m]
      1500        1380834900       NA        NA     SATELLITE   0.000000 [m]
      1501        1380837600       NA        NA     SATELLITE         NA [m]
      1502        1380838500       NA        NA     SATELLITE   0.000000 [m]
      1503        1380841200       NA        NA     SATELLITE         NA [m]
      1504        1380842100       NA        NA     SATELLITE   0.000000 [m]
      1505        1380845700       NA        NA     SATELLITE         NA [m]
      1506        1380846600       NA        NA     SATELLITE   0.000000 [m]
      1507        1380847609   56.358   134.800     SATELLITE         NA [m]
      1508        1380849300       NA        NA     SATELLITE         NA [m]
      1509        1380850200       NA        NA     SATELLITE   0.000000 [m]
      1510        1380852900       NA        NA     SATELLITE         NA [m]
      1511        1380853800       NA        NA     SATELLITE   0.000000 [m]
      1512        1380856500       NA        NA     SATELLITE         NA [m]
      1513        1380857400       NA        NA     SATELLITE   0.000000 [m]
      1514        1380860100       NA        NA     SATELLITE         NA [m]
      1515        1380861000       NA        NA     SATELLITE   0.000000 [m]
      1516        1380863700       NA        NA     SATELLITE         NA [m]
      1517        1380864600       NA        NA     SATELLITE   0.000000 [m]
      1518        1380867300       NA        NA     SATELLITE         NA [m]
      1519        1380868200       NA        NA     SATELLITE   0.000000 [m]
      1520        1380870900       NA        NA     SATELLITE         NA [m]
      1521        1380871800       NA        NA     SATELLITE   0.000000 [m]
      1522        1380874500       NA        NA     SATELLITE         NA [m]
      1523        1380875400       NA        NA     SATELLITE   0.000000 [m]
      1524        1380878100       NA        NA     SATELLITE         NA [m]
      1525        1380879000       NA        NA     SATELLITE   0.000000 [m]
      1526        1380881700       NA        NA     SATELLITE         NA [m]
      1527        1380882600       NA        NA     SATELLITE   0.000000 [m]
      1528        1380885300       NA        NA     SATELLITE         NA [m]
      1529        1380886200       NA        NA     SATELLITE   0.000000 [m]
      1530        1380888900       NA        NA     SATELLITE         NA [m]
      1531        1380889800       NA        NA     SATELLITE   0.000000 [m]
      1532        1380892500       NA        NA     SATELLITE         NA [m]
      1533        1380893400       NA        NA     SATELLITE   0.000000 [m]
      1534        1380896100       NA        NA     SATELLITE         NA [m]
      1535        1380897000       NA        NA     SATELLITE   0.000000 [m]
      1536        1380899700       NA        NA     SATELLITE         NA [m]
      1537        1380900600       NA        NA     SATELLITE   0.000000 [m]
      1538        1380903300       NA        NA     SATELLITE         NA [m]
      1539        1380904200       NA        NA     SATELLITE   0.000000 [m]
      1540        1380906900       NA        NA     SATELLITE         NA [m]
      1541        1380907800       NA        NA     SATELLITE   0.000000 [m]
      1542        1380910500       NA        NA     SATELLITE         NA [m]
      1543        1380911400       NA        NA     SATELLITE   0.000000 [m]
      1544        1380914100       NA        NA     SATELLITE         NA [m]
      1545        1380915000       NA        NA     SATELLITE   0.000000 [m]
      1546        1380917700       NA        NA     SATELLITE         NA [m]
      1547        1380918600       NA        NA     SATELLITE   0.000000 [m]
      1548        1380921300       NA        NA     SATELLITE         NA [m]
      1549        1380922200       NA        NA     SATELLITE   0.000000 [m]
      1550        1380924900       NA        NA     SATELLITE         NA [m]
      1551        1380925800       NA        NA     SATELLITE   0.000000 [m]
      1552        1380928500       NA        NA     SATELLITE         NA [m]
      1553        1380929400       NA        NA     SATELLITE   0.000000 [m]
      1554        1380932100       NA        NA     SATELLITE   0.000000 [m]
      1555        1380933900       NA        NA     SATELLITE   0.000000 [m]
      1556        1380935700       NA        NA     SATELLITE   0.000000 [m]
      1557        1380937500       NA        NA     SATELLITE   0.000000 [m]
      1558        1380939300       NA        NA     SATELLITE   0.000000 [m]
      1559        1380941100       NA        NA     SATELLITE   0.000000 [m]
      1560        1380942900       NA        NA     SATELLITE   0.000000 [m]
      1561        1380944700       NA        NA     SATELLITE   0.000000 [m]
      1562        1380946500       NA        NA     SATELLITE   0.000000 [m]
      1563        1380948300       NA        NA     SATELLITE   0.000000 [m]
      1564        1380950100       NA        NA     SATELLITE   0.000000 [m]
      1565        1380951900       NA        NA     SATELLITE   0.000000 [m]
      1566        1380953700       NA        NA     SATELLITE   0.000000 [m]
      1567        1380955500       NA        NA     SATELLITE   0.000000 [m]
      1568        1380957300       NA        NA     SATELLITE   0.000000 [m]
      1569        1380959100       NA        NA     SATELLITE   0.000000 [m]
      1570        1380960900       NA        NA     SATELLITE   0.000000 [m]
      1571        1380962700       NA        NA     SATELLITE   0.000000 [m]
      1572        1380964500       NA        NA     SATELLITE   0.000000 [m]
      1573        1380966300       NA        NA     SATELLITE   0.000000 [m]
      1574        1380968100       NA        NA     SATELLITE   0.000000 [m]
      1575        1380969900       NA        NA     SATELLITE   0.000000 [m]
      1576        1380971700       NA        NA     SATELLITE   0.000000 [m]
      1577        1380972273   56.390   134.695     SATELLITE         NA [m]
      1578        1380973500       NA        NA     SATELLITE   0.000000 [m]
      1579        1380975300       NA        NA     SATELLITE   0.000000 [m]
      1580        1380977100       NA        NA     SATELLITE   0.000000 [m]
      1581        1380978900       NA        NA     SATELLITE   0.000000 [m]
      1582        1380980668   56.389   134.652     SATELLITE         NA [m]
      1583        1380980700       NA        NA     SATELLITE   0.000000 [m]
      1584        1380981603   56.385   134.640     SATELLITE         NA [m]
      1585        1380982500       NA        NA     SATELLITE   0.000000 [m]
      1586        1380984300       NA        NA     SATELLITE   0.000000 [m]
      1587        1380986100       NA        NA     SATELLITE   0.000000 [m]
      1588        1380987900       NA        NA     SATELLITE   0.000000 [m]
      1589        1380989700       NA        NA     SATELLITE   0.000000 [m]
      1590        1380991500       NA        NA     SATELLITE   0.000000 [m]
      1591        1380993300       NA        NA     SATELLITE   0.672435 [m]
      1592        1380995100       NA        NA     SATELLITE   0.000000 [m]
      1593        1380996900       NA        NA     SATELLITE   0.672435 [m]
      1594        1380998700       NA        NA     SATELLITE   0.000000 [m]
      1595        1381000500       NA        NA     SATELLITE   0.000000 [m]
      1596        1381002300       NA        NA     SATELLITE   0.000000 [m]
      1597        1381004100       NA        NA     SATELLITE   0.672435 [m]
      1598        1381005900       NA        NA     SATELLITE   0.000000 [m]
      1599        1381007700       NA        NA     SATELLITE   0.000000 [m]
      1600        1381009500       NA        NA     SATELLITE   0.000000 [m]
      1601        1381011300       NA        NA     SATELLITE   0.000000 [m]
      1602        1381013100       NA        NA     SATELLITE   0.000000 [m]
      1603        1381014900       NA        NA     SATELLITE   0.000000 [m]
      1604        1381016700       NA        NA     SATELLITE   0.000000 [m]
      1605        1381018500       NA        NA     SATELLITE   0.000000 [m]
      1606        1381022100       NA        NA     SATELLITE   0.000000 [m]
      1607        1381025700       NA        NA     SATELLITE   0.000000 [m]
      1608        1381029300       NA        NA     SATELLITE   0.000000 [m]
      1609        1381032900       NA        NA     SATELLITE   0.000000 [m]
      1610        1381036500       NA        NA     SATELLITE   0.000000 [m]
      1611        1381037795   56.400   134.686     SATELLITE         NA [m]
      1612        1381038697   56.385   134.643     SATELLITE         NA [m]
      1613        1381040100       NA        NA     SATELLITE   0.000000 [m]
      1614        1381043700       NA        NA     SATELLITE   0.000000 [m]
      1615        1381047300       NA        NA     SATELLITE   0.000000 [m]
      1616        1381050900       NA        NA     SATELLITE   0.000000 [m]
      1617        1381054500       NA        NA     SATELLITE   0.000000 [m]
      1618        1381058100       NA        NA     SATELLITE   0.000000 [m]
      1619        1381061700       NA        NA     SATELLITE   0.000000 [m]
      1620        1381065300       NA        NA     SATELLITE   0.000000 [m]
      1621        1381068900       NA        NA     SATELLITE   0.000000 [m]
      1622        1381072500       NA        NA     SATELLITE   0.000000 [m]
      1623        1381076100       NA        NA     SATELLITE   0.000000 [m]
      1624        1381079700       NA        NA     SATELLITE   0.000000 [m]
      1625        1381083300       NA        NA     SATELLITE   0.000000 [m]
      1626        1381086900       NA        NA     SATELLITE   0.000000 [m]
      1627        1381090500       NA        NA     SATELLITE   0.672435 [m]
      1628        1381094100       NA        NA     SATELLITE   0.000000 [m]
      1629        1381097700       NA        NA     SATELLITE   0.000000 [m]
      1630        1381101300       NA        NA     SATELLITE   0.000000 [m]
      1631        1381108363   56.382   134.645     SATELLITE         NA [m]
      1632        1381123840   56.383   134.655     SATELLITE         NA [m]
      1633        1381152165   56.361   134.439     SATELLITE         NA [m]
      1634        1381470480   56.380   134.620     SATELLITE         NA [m]
           DEPTH_INCREASE_DELTA_LIMIT DEPTH_DECREASE_DELTA_LIMIT    TEMPERATURE
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
           TEMP_INCREASE_DELTA_LIMIT TEMP_DECREASE_DELTA_LIMIT
      1                            0                         0
      2                            0                         0
      3                            0                         0
      4                            0                         0
      5                            0                         0
      6                            0                         0
      7                            0                         0
      8                            0                         0
      9                            0                         0
      10                           0                         0
      11                           0                         0
      12                           0                         0
      13                           0                         0
      14                           0                         0
      15                           0                         0
      16                           0                         0
      17                           0                         0
      18                           0                         0
      19                           0                         0
      20                           0                         0
      21                           0                         0
      22                           0                         0
      23                           0                         0
      24                           0                         0
      25                           0                         0
      26                           0                         0
      27                           0                         0
      28                           0                         0
      29                           0                         0
      30                           0                         0
      31                           0                         0
      32                           0                         0
      33                           0                         0
      34                           0                         0
      35                           0                         0
      36                           0                         0
      37                           0                         0
      38                           0                         0
      39                           0                         0
      40                           0                         0
      41                           0                         0
      42                           0                         0
      43                           0                         0
      44                           0                         0
      45                           0                         0
      46                           0                         0
      47                           0                         0
      48                           0                         0
      49                           0                         0
      50                           0                         0
      51                           0                         0
      52                           0                         0
      53                           0                         0
      54                           0                         0
      55                           0                         0
      56                           0                         0
      57                           0                         0
      58                           0                         0
      59                           0                         0
      60                           0                         0
      61                           0                         0
      62                           0                         0
      63                           0                         0
      64                           0                         0
      65                           0                         0
      66                           0                         0
      67                           0                         0
      68                           0                         0
      69                           0                         0
      70                           0                         0
      71                           0                         0
      72                           0                         0
      73                           0                         0
      74                           0                         0
      75                           0                         0
      76                           0                         0
      77                           0                         0
      78                           0                         0
      79                           0                         0
      80                           0                         0
      81                           0                         0
      82                           0                         0
      83                           0                         0
      84                           0                         0
      85                           0                         0
      86                           0                         0
      87                           0                         0
      88                           0                         0
      89                           0                         0
      90                           0                         0
      91                           0                         0
      92                           0                         0
      93                           0                         0
      94                           0                         0
      95                           0                         0
      96                           0                         0
      97                           0                         0
      98                           0                         0
      99                           0                         0
      100                          0                         0
      101                          0                         0
      102                          0                         0
      103                          0                         0
      104                          0                         0
      105                          0                         0
      106                          0                         0
      107                          0                         0
      108                          0                         0
      109                          0                         0
      110                          0                         0
      111                          0                         0
      112                          0                         0
      113                          0                         0
      114                          0                         0
      115                          0                         0
      116                          0                         0
      117                          0                         0
      118                          0                         0
      119                          0                         0
      120                          0                         0
      121                          0                         0
      122                          0                         0
      123                          0                         0
      124                          0                         0
      125                          0                         0
      126                          0                         0
      127                          0                         0
      128                          0                         0
      129                          0                         0
      130                          0                         0
      131                          0                         0
      132                          0                         0
      133                          0                         0
      134                          0                         0
      135                          0                         0
      136                          0                         0
      137                          0                         0
      138                          0                         0
      139                          0                         0
      140                          0                         0
      141                          0                         0
      142                          0                         0
      143                          0                         0
      144                          0                         0
      145                          0                         0
      146                          0                         0
      147                          0                         0
      148                          0                         0
      149                          0                         0
      150                          0                         0
      151                          0                         0
      152                          0                         0
      153                          0                         0
      154                          0                         0
      155                          0                         0
      156                          0                         0
      157                          0                         0
      158                          0                         0
      159                          0                         0
      160                          0                         0
      161                          0                         0
      162                          0                         0
      163                          0                         0
      164                          0                         0
      165                          0                         0
      166                          0                         0
      167                          0                         0
      168                          0                         0
      169                          0                         0
      170                          0                         0
      171                          0                         0
      172                          0                         0
      173                          0                         0
      174                          0                         0
      175                          0                         0
      176                          0                         0
      177                          0                         0
      178                          0                         0
      179                          0                         0
      180                          0                         0
      181                          0                         0
      182                          0                         0
      183                          0                         0
      184                          0                         0
      185                          0                         0
      186                          0                         0
      187                          0                         0
      188                          0                         0
      189                          0                         0
      190                          0                         0
      191                          0                         0
      192                          0                         0
      193                          0                         0
      194                          0                         0
      195                          0                         0
      196                          0                         0
      197                          0                         0
      198                          0                         0
      199                          0                         0
      200                          0                         0
      201                          0                         0
      202                          0                         0
      203                          0                         0
      204                          0                         0
      205                          0                         0
      206                          0                         0
      207                          0                         0
      208                          0                         0
      209                          0                         0
      210                          0                         0
      211                          0                         0
      212                          0                         0
      213                          0                         0
      214                          0                         0
      215                          0                         0
      216                          0                         0
      217                          0                         0
      218                          0                         0
      219                          0                         0
      220                          0                         0
      221                          0                         0
      222                          0                         0
      223                          0                         0
      224                          0                         0
      225                          0                         0
      226                          0                         0
      227                          0                         0
      228                          0                         0
      229                          0                         0
      230                          0                         0
      231                          0                         0
      232                          0                         0
      233                          0                         0
      234                          0                         0
      235                          0                         0
      236                          0                         0
      237                          0                         0
      238                          0                         0
      239                          0                         0
      240                          0                         0
      241                          0                         0
      242                          0                         0
      243                          0                         0
      244                          0                         0
      245                          0                         0
      246                          0                         0
      247                          0                         0
      248                          0                         0
      249                          0                         0
      250                          0                         0
      251                          0                         0
      252                          0                         0
      253                          0                         0
      254                          0                         0
      255                          0                         0
      256                          0                         0
      257                          0                         0
      258                          0                         0
      259                          0                         0
      260                          0                         0
      261                          0                         0
      262                          0                         0
      263                          0                         0
      264                          0                         0
      265                          0                         0
      266                          0                         0
      267                          0                         0
      268                          0                         0
      269                          0                         0
      270                          0                         0
      271                          0                         0
      272                          0                         0
      273                          0                         0
      274                          0                         0
      275                          0                         0
      276                          0                         0
      277                          0                         0
      278                          0                         0
      279                          0                         0
      280                          0                         0
      281                          0                         0
      282                          0                         0
      283                          0                         0
      284                          0                         0
      285                          0                         0
      286                          0                         0
      287                          0                         0
      288                          0                         0
      289                          0                         0
      290                          0                         0
      291                          0                         0
      292                          0                         0
      293                          0                         0
      294                          0                         0
      295                          0                         0
      296                          0                         0
      297                          0                         0
      298                          0                         0
      299                          0                         0
      300                          0                         0
      301                          0                         0
      302                          0                         0
      303                          0                         0
      304                          0                         0
      305                          0                         0
      306                          0                         0
      307                          0                         0
      308                          0                         0
      309                          0                         0
      310                          0                         0
      311                          0                         0
      312                          0                         0
      313                          0                         0
      314                          0                         0
      315                          0                         0
      316                          0                         0
      317                          0                         0
      318                          0                         0
      319                          0                         0
      320                          0                         0
      321                          0                         0
      322                          0                         0
      323                          0                         0
      324                          0                         0
      325                          0                         0
      326                          0                         0
      327                          0                         0
      328                          0                         0
      329                          0                         0
      330                          0                         0
      331                          0                         0
      332                          0                         0
      333                          0                         0
      334                          0                         0
      335                          0                         0
      336                          0                         0
      337                          0                         0
      338                          0                         0
      339                          0                         0
      340                          0                         0
      341                          0                         0
      342                          0                         0
      343                          0                         0
      344                          0                         0
      345                          0                         0
      346                          0                         0
      347                          0                         0
      348                          0                         0
      349                          0                         0
      350                          0                         0
      351                          0                         0
      352                          0                         0
      353                          0                         0
      354                          0                         0
      355                          0                         0
      356                          0                         0
      357                          0                         0
      358                          0                         0
      359                          0                         0
      360                          0                         0
      361                          0                         0
      362                          0                         0
      363                          0                         0
      364                          0                         0
      365                          0                         0
      366                          0                         0
      367                          0                         0
      368                          0                         0
      369                          0                         0
      370                          0                         0
      371                          0                         0
      372                          0                         0
      373                          0                         0
      374                          0                         0
      375                          0                         0
      376                          0                         0
      377                          0                         0
      378                          0                         0
      379                          0                         0
      380                          0                         0
      381                          0                         0
      382                          0                         0
      383                          0                         0
      384                          0                         0
      385                          0                         0
      386                          0                         0
      387                          0                         0
      388                          0                         0
      389                          0                         0
      390                          0                         0
      391                          0                         0
      392                          0                         0
      393                          0                         0
      394                          0                         0
      395                          0                         0
      396                          0                         0
      397                          0                         0
      398                          0                         0
      399                          0                         0
      400                          0                         0
      401                          0                         0
      402                          0                         0
      403                          0                         0
      404                          0                         0
      405                          0                         0
      406                          0                         0
      407                          0                         0
      408                          0                         0
      409                          0                         0
      410                          0                         0
      411                          0                         0
      412                          0                         0
      413                          0                         0
      414                          0                         0
      415                          0                         0
      416                          0                         0
      417                          0                         0
      418                          0                         0
      419                          0                         0
      420                          0                         0
      421                          0                         0
      422                          0                         0
      423                          0                         0
      424                          0                         0
      425                          0                         0
      426                          0                         0
      427                          0                         0
      428                          0                         0
      429                          0                         0
      430                          0                         0
      431                          0                         0
      432                          0                         0
      433                          0                         0
      434                          0                         0
      435                          0                         0
      436                          0                         0
      437                          0                         0
      438                          0                         0
      439                          0                         0
      440                          0                         0
      441                          0                         0
      442                          0                         0
      443                          0                         0
      444                          0                         0
      445                          0                         0
      446                          0                         0
      447                          0                         0
      448                          0                         0
      449                          0                         0
      450                          0                         0
      451                          0                         0
      452                          0                         0
      453                          0                         0
      454                          0                         0
      455                          0                         0
      456                          0                         0
      457                          0                         0
      458                          0                         0
      459                          0                         0
      460                          0                         0
      461                          0                         0
      462                          0                         0
      463                          0                         0
      464                          0                         0
      465                          0                         0
      466                          0                         0
      467                          0                         0
      468                          0                         0
      469                          0                         0
      470                          0                         0
      471                          0                         0
      472                          0                         0
      473                          0                         0
      474                          0                         0
      475                          0                         0
      476                          0                         0
      477                          0                         0
      478                          0                         0
      479                          0                         0
      480                          0                         0
      481                          0                         0
      482                          0                         0
      483                          0                         0
      484                          0                         0
      485                          0                         0
      486                          0                         0
      487                          0                         0
      488                          0                         0
      489                          0                         0
      490                          0                         0
      491                          0                         0
      492                          0                         0
      493                          0                         0
      494                          0                         0
      495                          0                         0
      496                          0                         0
      497                          0                         0
      498                          0                         0
      499                          0                         0
      500                          0                         0
      501                          0                         0
      502                          0                         0
      503                          0                         0
      504                          0                         0
      505                          0                         0
      506                          0                         0
      507                          0                         0
      508                          0                         0
      509                          0                         0
      510                          0                         0
      511                          0                         0
      512                          0                         0
      513                          0                         0
      514                          0                         0
      515                          0                         0
      516                          0                         0
      517                          0                         0
      518                          0                         0
      519                          0                         0
      520                          0                         0
      521                          0                         0
      522                          0                         0
      523                          0                         0
      524                          0                         0
      525                          0                         0
      526                          0                         0
      527                          0                         0
      528                          0                         0
      529                          0                         0
      530                          0                         0
      531                          0                         0
      532                          0                         0
      533                          0                         0
      534                          0                         0
      535                          0                         0
      536                          0                         0
      537                          0                         0
      538                          0                         0
      539                          0                         0
      540                          0                         0
      541                          0                         0
      542                          0                         0
      543                          0                         0
      544                          0                         0
      545                          0                         0
      546                          0                         0
      547                          0                         0
      548                          0                         0
      549                          0                         0
      550                          0                         0
      551                          0                         0
      552                          0                         0
      553                          0                         0
      554                          0                         0
      555                          0                         0
      556                          0                         0
      557                          0                         0
      558                          0                         0
      559                          0                         0
      560                          0                         0
      561                          0                         0
      562                          0                         0
      563                          0                         0
      564                          0                         0
      565                          0                         0
      566                          0                         0
      567                          0                         0
      568                          0                         0
      569                          0                         0
      570                          0                         0
      571                          0                         0
      572                          0                         0
      573                          0                         0
      574                          0                         0
      575                          0                         0
      576                          0                         0
      577                          0                         0
      578                          0                         0
      579                          0                         0
      580                          0                         0
      581                          0                         0
      582                          0                         0
      583                          0                         0
      584                          0                         0
      585                          0                         0
      586                          0                         0
      587                          0                         0
      588                          0                         0
      589                          0                         0
      590                          0                         0
      591                          0                         0
      592                          0                         0
      593                          0                         0
      594                          0                         0
      595                          0                         0
      596                          0                         0
      597                          0                         0
      598                          0                         0
      599                          0                         0
      600                          0                         0
      601                          0                         0
      602                          0                         0
      603                          0                         0
      604                          0                         0
      605                          0                         0
      606                          0                         0
      607                          0                         0
      608                          0                         0
      609                          0                         0
      610                          0                         0
      611                          0                         0
      612                          0                         0
      613                          0                         0
      614                          0                         0
      615                          0                         0
      616                          0                         0
      617                          0                         0
      618                          0                         0
      619                          0                         0
      620                          0                         0
      621                          0                         0
      622                          0                         0
      623                          0                         0
      624                          0                         0
      625                          0                         0
      626                          0                         0
      627                          0                         0
      628                          0                         0
      629                          0                         0
      630                          0                         0
      631                          0                         0
      632                          0                         0
      633                          0                         0
      634                          0                         0
      635                          0                         0
      636                          0                         0
      637                          0                         0
      638                          0                         0
      639                          0                         0
      640                          0                         0
      641                          0                         0
      642                          0                         0
      643                          0                         0
      644                          0                         0
      645                          0                         0
      646                          0                         0
      647                          0                         0
      648                          0                         0
      649                          0                         0
      650                          0                         0
      651                          0                         0
      652                          0                         0
      653                          0                         0
      654                          0                         0
      655                          0                         0
      656                          0                         0
      657                          0                         0
      658                          0                         0
      659                          0                         0
      660                          0                         0
      661                          0                         0
      662                          0                         0
      663                          0                         0
      664                          0                         0
      665                          0                         0
      666                          0                         0
      667                          0                         0
      668                          0                         0
      669                          0                         0
      670                          0                         0
      671                          0                         0
      672                          0                         0
      673                          0                         0
      674                          0                         0
      675                          0                         0
      676                          0                         0
      677                          0                         0
      678                          0                         0
      679                          0                         0
      680                          0                         0
      681                          0                         0
      682                          0                         0
      683                          0                         0
      684                          0                         0
      685                          0                         0
      686                          0                         0
      687                          0                         0
      688                          0                         0
      689                          0                         0
      690                          0                         0
      691                          0                         0
      692                          0                         0
      693                          0                         0
      694                          0                         0
      695                          0                         0
      696                          0                         0
      697                          0                         0
      698                          0                         0
      699                          0                         0
      700                          0                         0
      701                          0                         0
      702                          0                         0
      703                          0                         0
      704                          0                         0
      705                          0                         0
      706                          0                         0
      707                          0                         0
      708                          0                         0
      709                          0                         0
      710                          0                         0
      711                          0                         0
      712                          0                         0
      713                          0                         0
      714                          0                         0
      715                          0                         0
      716                          0                         0
      717                          0                         0
      718                          0                         0
      719                          0                         0
      720                          0                         0
      721                          0                         0
      722                          0                         0
      723                          0                         0
      724                          0                         0
      725                          0                         0
      726                          0                         0
      727                          0                         0
      728                          0                         0
      729                          0                         0
      730                          0                         0
      731                          0                         0
      732                          0                         0
      733                          0                         0
      734                          0                         0
      735                          0                         0
      736                          0                         0
      737                          0                         0
      738                          0                         0
      739                          0                         0
      740                          0                         0
      741                          0                         0
      742                          0                         0
      743                          0                         0
      744                          0                         0
      745                          0                         0
      746                          0                         0
      747                          0                         0
      748                          0                         0
      749                          0                         0
      750                          0                         0
      751                          0                         0
      752                          0                         0
      753                          0                         0
      754                          0                         0
      755                          0                         0
      756                          0                         0
      757                          0                         0
      758                          0                         0
      759                          0                         0
      760                          0                         0
      761                          0                         0
      762                          0                         0
      763                          0                         0
      764                          0                         0
      765                          0                         0
      766                          0                         0
      767                          0                         0
      768                          0                         0
      769                          0                         0
      770                          0                         0
      771                          0                         0
      772                          0                         0
      773                          0                         0
      774                          0                         0
      775                          0                         0
      776                          0                         0
      777                          0                         0
      778                          0                         0
      779                          0                         0
      780                          0                         0
      781                          0                         0
      782                          0                         0
      783                          0                         0
      784                          0                         0
      785                          0                         0
      786                          0                         0
      787                          0                         0
      788                          0                         0
      789                          0                         0
      790                          0                         0
      791                          0                         0
      792                          0                         0
      793                          0                         0
      794                          0                         0
      795                          0                         0
      796                          0                         0
      797                          0                         0
      798                          0                         0
      799                          0                         0
      800                          0                         0
      801                          0                         0
      802                          0                         0
      803                          0                         0
      804                          0                         0
      805                          0                         0
      806                          0                         0
      807                          0                         0
      808                          0                         0
      809                          0                         0
      810                          0                         0
      811                          0                         0
      812                          0                         0
      813                          0                         0
      814                          0                         0
      815                          0                         0
      816                          0                         0
      817                          0                         0
      818                          0                         0
      819                          0                         0
      820                          0                         0
      821                          0                         0
      822                          0                         0
      823                          0                         0
      824                          0                         0
      825                          0                         0
      826                          0                         0
      827                          0                         0
      828                          0                         0
      829                          0                         0
      830                          0                         0
      831                          0                         0
      832                          0                         0
      833                          0                         0
      834                          0                         0
      835                          0                         0
      836                          0                         0
      837                          0                         0
      838                          0                         0
      839                          0                         0
      840                          0                         0
      841                          0                         0
      842                          0                         0
      843                          0                         0
      844                          0                         0
      845                          0                         0
      846                          0                         0
      847                          0                         0
      848                          0                         0
      849                          0                         0
      850                          0                         0
      851                          0                         0
      852                          0                         0
      853                          0                         0
      854                          0                         0
      855                          0                         0
      856                          0                         0
      857                          0                         0
      858                          0                         0
      859                          0                         0
      860                          0                         0
      861                          0                         0
      862                          0                         0
      863                          0                         0
      864                          0                         0
      865                          0                         0
      866                          0                         0
      867                          0                         0
      868                          0                         0
      869                          0                         0
      870                          0                         0
      871                          0                         0
      872                          0                         0
      873                          0                         0
      874                          0                         0
      875                          0                         0
      876                          0                         0
      877                          0                         0
      878                          0                         0
      879                          0                         0
      880                          0                         0
      881                          0                         0
      882                          0                         0
      883                          0                         0
      884                          0                         0
      885                          0                         0
      886                          0                         0
      887                          0                         0
      888                          0                         0
      889                          0                         0
      890                          0                         0
      891                          0                         0
      892                          0                         0
      893                          0                         0
      894                          0                         0
      895                          0                         0
      896                          0                         0
      897                          0                         0
      898                          0                         0
      899                          0                         0
      900                          0                         0
      901                          0                         0
      902                          0                         0
      903                          0                         0
      904                          0                         0
      905                          0                         0
      906                          0                         0
      907                          0                         0
      908                          0                         0
      909                          0                         0
      910                          0                         0
      911                          0                         0
      912                          0                         0
      913                          0                         0
      914                          0                         0
      915                          0                         0
      916                          0                         0
      917                          0                         0
      918                          0                         0
      919                          0                         0
      920                          0                         0
      921                          0                         0
      922                          0                         0
      923                          0                         0
      924                          0                         0
      925                          0                         0
      926                          0                         0
      927                          0                         0
      928                          0                         0
      929                          0                         0
      930                          0                         0
      931                          0                         0
      932                          0                         0
      933                          0                         0
      934                          0                         0
      935                          0                         0
      936                          0                         0
      937                          0                         0
      938                          0                         0
      939                          0                         0
      940                          0                         0
      941                          0                         0
      942                          0                         0
      943                          0                         0
      944                          0                         0
      945                          0                         0
      946                          0                         0
      947                          0                         0
      948                          0                         0
      949                          0                         0
      950                          0                         0
      951                          0                         0
      952                          0                         0
      953                          0                         0
      954                          0                         0
      955                          0                         0
      956                          0                         0
      957                          0                         0
      958                          0                         0
      959                          0                         0
      960                          0                         0
      961                          0                         0
      962                          0                         0
      963                          0                         0
      964                          0                         0
      965                          0                         0
      966                          0                         0
      967                          0                         0
      968                          0                         0
      969                          0                         0
      970                          0                         0
      971                          0                         0
      972                          0                         0
      973                          0                         0
      974                          0                         0
      975                          0                         0
      976                          0                         0
      977                          0                         0
      978                          0                         0
      979                          0                         0
      980                          0                         0
      981                          0                         0
      982                          0                         0
      983                          0                         0
      984                          0                         0
      985                          0                         0
      986                          0                         0
      987                          0                         0
      988                          0                         0
      989                          0                         0
      990                          0                         0
      991                          0                         0
      992                          0                         0
      993                          0                         0
      994                          0                         0
      995                          0                         0
      996                          0                         0
      997                          0                         0
      998                          0                         0
      999                          0                         0
      1000                         0                         0
      1001                         0                         0
      1002                         0                         0
      1003                         0                         0
      1004                         0                         0
      1005                         0                         0
      1006                         0                         0
      1007                         0                         0
      1008                         0                         0
      1009                         0                         0
      1010                         0                         0
      1011                         0                         0
      1012                         0                         0
      1013                         0                         0
      1014                         0                         0
      1015                         0                         0
      1016                         0                         0
      1017                         0                         0
      1018                         0                         0
      1019                         0                         0
      1020                         0                         0
      1021                         0                         0
      1022                         0                         0
      1023                         0                         0
      1024                         0                         0
      1025                         0                         0
      1026                         0                         0
      1027                         0                         0
      1028                         0                         0
      1029                         0                         0
      1030                         0                         0
      1031                         0                         0
      1032                         0                         0
      1033                         0                         0
      1034                         0                         0
      1035                         0                         0
      1036                         0                         0
      1037                         0                         0
      1038                         0                         0
      1039                         0                         0
      1040                         0                         0
      1041                         0                         0
      1042                         0                         0
      1043                         0                         0
      1044                         0                         0
      1045                         0                         0
      1046                         0                         0
      1047                         0                         0
      1048                         0                         0
      1049                         0                         0
      1050                         0                         0
      1051                         0                         0
      1052                         0                         0
      1053                         0                         0
      1054                         0                         0
      1055                         0                         0
      1056                         0                         0
      1057                         0                         0
      1058                         0                         0
      1059                         0                         0
      1060                         0                         0
      1061                         0                         0
      1062                         0                         0
      1063                         0                         0
      1064                         0                         0
      1065                         0                         0
      1066                         0                         0
      1067                         0                         0
      1068                         0                         0
      1069                         0                         0
      1070                         0                         0
      1071                         0                         0
      1072                         0                         0
      1073                         0                         0
      1074                         0                         0
      1075                         0                         0
      1076                         0                         0
      1077                         0                         0
      1078                         0                         0
      1079                         0                         0
      1080                         0                         0
      1081                         0                         0
      1082                         0                         0
      1083                         0                         0
      1084                         0                         0
      1085                         0                         0
      1086                         0                         0
      1087                         0                         0
      1088                         0                         0
      1089                         0                         0
      1090                         0                         0
      1091                         0                         0
      1092                         0                         0
      1093                         0                         0
      1094                         0                         0
      1095                         0                         0
      1096                         0                         0
      1097                         0                         0
      1098                         0                         0
      1099                         0                         0
      1100                         0                         0
      1101                         0                         0
      1102                         0                         0
      1103                         0                         0
      1104                         0                         0
      1105                         0                         0
      1106                         0                         0
      1107                         0                         0
      1108                         0                         0
      1109                         0                         0
      1110                         0                         0
      1111                         0                         0
      1112                         0                         0
      1113                         0                         0
      1114                         0                         0
      1115                         0                         0
      1116                         0                         0
      1117                         0                         0
      1118                         0                         0
      1119                         0                         0
      1120                         0                         0
      1121                         0                         0
      1122                         0                         0
      1123                         0                         0
      1124                         0                         0
      1125                         0                         0
      1126                         0                         0
      1127                         0                         0
      1128                         0                         0
      1129                         0                         0
      1130                         0                         0
      1131                         0                         0
      1132                         0                         0
      1133                         0                         0
      1134                         0                         0
      1135                         0                         0
      1136                         0                         0
      1137                         0                         0
      1138                         0                         0
      1139                         0                         0
      1140                         0                         0
      1141                         0                         0
      1142                         0                         0
      1143                         0                         0
      1144                         0                         0
      1145                         0                         0
      1146                         0                         0
      1147                         0                         0
      1148                         0                         0
      1149                         0                         0
      1150                         0                         0
      1151                         0                         0
      1152                         0                         0
      1153                         0                         0
      1154                         0                         0
      1155                         0                         0
      1156                         0                         0
      1157                         0                         0
      1158                         0                         0
      1159                         0                         0
      1160                         0                         0
      1161                         0                         0
      1162                         0                         0
      1163                         0                         0
      1164                         0                         0
      1165                         0                         0
      1166                         0                         0
      1167                         0                         0
      1168                         0                         0
      1169                         0                         0
      1170                         0                         0
      1171                         0                         0
      1172                         0                         0
      1173                         0                         0
      1174                         0                         0
      1175                         0                         0
      1176                         0                         0
      1177                         0                         0
      1178                         0                         0
      1179                         0                         0
      1180                         0                         0
      1181                         0                         0
      1182                         0                         0
      1183                         0                         0
      1184                         0                         0
      1185                         0                         0
      1186                         0                         0
      1187                         0                         0
      1188                         0                         0
      1189                         0                         0
      1190                         0                         0
      1191                         0                         0
      1192                         0                         0
      1193                         0                         0
      1194                         0                         0
      1195                         0                         0
      1196                         0                         0
      1197                         0                         0
      1198                         0                         0
      1199                         0                         0
      1200                         0                         0
      1201                         0                         0
      1202                         0                         0
      1203                         0                         0
      1204                         0                         0
      1205                         0                         0
      1206                         0                         0
      1207                         0                         0
      1208                         0                         0
      1209                         0                         0
      1210                         0                         0
      1211                         0                         0
      1212                         0                         0
      1213                         0                         0
      1214                         0                         0
      1215                         0                         0
      1216                         0                         0
      1217                         0                         0
      1218                         0                         0
      1219                         0                         0
      1220                         0                         0
      1221                         0                         0
      1222                         0                         0
      1223                         0                         0
      1224                         0                         0
      1225                         0                         0
      1226                         0                         0
      1227                         0                         0
      1228                         0                         0
      1229                         0                         0
      1230                         0                         0
      1231                         0                         0
      1232                         0                         0
      1233                         0                         0
      1234                         0                         0
      1235                         0                         0
      1236                         0                         0
      1237                         0                         0
      1238                         0                         0
      1239                         0                         0
      1240                         0                         0
      1241                         0                         0
      1242                         0                         0
      1243                         0                         0
      1244                         0                         0
      1245                         0                         0
      1246                         0                         0
      1247                         0                         0
      1248                         0                         0
      1249                         0                         0
      1250                         0                         0
      1251                         0                         0
      1252                         0                         0
      1253                         0                         0
      1254                         0                         0
      1255                         0                         0
      1256                         0                         0
      1257                         0                         0
      1258                         0                         0
      1259                         0                         0
      1260                         0                         0
      1261                         0                         0
      1262                         0                         0
      1263                         0                         0
      1264                         0                         0
      1265                         0                         0
      1266                         0                         0
      1267                         0                         0
      1268                         0                         0
      1269                         0                         0
      1270                         0                         0
      1271                         0                         0
      1272                         0                         0
      1273                         0                         0
      1274                         0                         0
      1275                         0                         0
      1276                         0                         0
      1277                         0                         0
      1278                         0                         0
      1279                         0                         0
      1280                         0                         0
      1281                         0                         0
      1282                         0                         0
      1283                         0                         0
      1284                         0                         0
      1285                         0                         0
      1286                         0                         0
      1287                         0                         0
      1288                         0                         0
      1289                         0                         0
      1290                         0                         0
      1291                         0                         0
      1292                         0                         0
      1293                         0                         0
      1294                         0                         0
      1295                         0                         0
      1296                         0                         0
      1297                         0                         0
      1298                         0                         0
      1299                         0                         0
      1300                         0                         0
      1301                         0                         0
      1302                         0                         0
      1303                         0                         0
      1304                         0                         0
      1305                         0                         0
      1306                         0                         0
      1307                         0                         0
      1308                         0                         0
      1309                         0                         0
      1310                         0                         0
      1311                         0                         0
      1312                         0                         0
      1313                         0                         0
      1314                         0                         0
      1315                         0                         0
      1316                         0                         0
      1317                         0                         0
      1318                         0                         0
      1319                         0                         0
      1320                         0                         0
      1321                         0                         0
      1322                         0                         0
      1323                         0                         0
      1324                         0                         0
      1325                         0                         0
      1326                         0                         0
      1327                         0                         0
      1328                         0                         0
      1329                         0                         0
      1330                         0                         0
      1331                         0                         0
      1332                         0                         0
      1333                         0                         0
      1334                         0                         0
      1335                         0                         0
      1336                         0                         0
      1337                         0                         0
      1338                         0                         0
      1339                         0                         0
      1340                         0                         0
      1341                         0                         0
      1342                         0                         0
      1343                         0                         0
      1344                         0                         0
      1345                         0                         0
      1346                         0                         0
      1347                         0                         0
      1348                         0                         0
      1349                         0                         0
      1350                         0                         0
      1351                         0                         0
      1352                         0                         0
      1353                         0                         0
      1354                         0                         0
      1355                         0                         0
      1356                         0                         0
      1357                         0                         0
      1358                         0                         0
      1359                         0                         0
      1360                         0                         0
      1361                         0                         0
      1362                         0                         0
      1363                         0                         0
      1364                         0                         0
      1365                         0                         0
      1366                         0                         0
      1367                         0                         0
      1368                         0                         0
      1369                         0                         0
      1370                         0                         0
      1371                         0                         0
      1372                         0                         0
      1373                         0                         0
      1374                         0                         0
      1375                         0                         0
      1376                         0                         0
      1377                         0                         0
      1378                         0                         0
      1379                         0                         0
      1380                         0                         0
      1381                         0                         0
      1382                         0                         0
      1383                         0                         0
      1384                         0                         0
      1385                         0                         0
      1386                         0                         0
      1387                         0                         0
      1388                         0                         0
      1389                         0                         0
      1390                         0                         0
      1391                         0                         0
      1392                         0                         0
      1393                         0                         0
      1394                         0                         0
      1395                         0                         0
      1396                         0                         0
      1397                         0                         0
      1398                         0                         0
      1399                         0                         0
      1400                         0                         0
      1401                         0                         0
      1402                         0                         0
      1403                         0                         0
      1404                         0                         0
      1405                         0                         0
      1406                         0                         0
      1407                         0                         0
      1408                         0                         0
      1409                         0                         0
      1410                         0                         0
      1411                         0                         0
      1412                         0                         0
      1413                         0                         0
      1414                         0                         0
      1415                         0                         0
      1416                         0                         0
      1417                         0                         0
      1418                         0                         0
      1419                         0                         0
      1420                         0                         0
      1421                         0                         0
      1422                         0                         0
      1423                         0                         0
      1424                         0                         0
      1425                         0                         0
      1426                         0                         0
      1427                         0                         0
      1428                         0                         0
      1429                         0                         0
      1430                         0                         0
      1431                         0                         0
      1432                         0                         0
      1433                         0                         0
      1434                         0                         0
      1435                         0                         0
      1436                         0                         0
      1437                         0                         0
      1438                         0                         0
      1439                         0                         0
      1440                         0                         0
      1441                         0                         0
      1442                         0                         0
      1443                         0                         0
      1444                         0                         0
      1445                         0                         0
      1446                         0                         0
      1447                         0                         0
      1448                         0                         0
      1449                         0                         0
      1450                         0                         0
      1451                         0                         0
      1452                         0                         0
      1453                         0                         0
      1454                         0                         0
      1455                         0                         0
      1456                         0                         0
      1457                         0                         0
      1458                         0                         0
      1459                         0                         0
      1460                         0                         0
      1461                         0                         0
      1462                         0                         0
      1463                         0                         0
      1464                         0                         0
      1465                         0                         0
      1466                         0                         0
      1467                         0                         0
      1468                         0                         0
      1469                         0                         0
      1470                         0                         0
      1471                         0                         0
      1472                         0                         0
      1473                         0                         0
      1474                         0                         0
      1475                         0                         0
      1476                         0                         0
      1477                         0                         0
      1478                         0                         0
      1479                         0                         0
      1480                         0                         0
      1481                         0                         0
      1482                         0                         0
      1483                         0                         0
      1484                         0                         0
      1485                         0                         0
      1486                         0                         0
      1487                         0                         0
      1488                         0                         0
      1489                         0                         0
      1490                         0                         0
      1491                         0                         0
      1492                         0                         0
      1493                         0                         0
      1494                         0                         0
      1495                         0                         0
      1496                         0                         0
      1497                         0                         0
      1498                         0                         0
      1499                         0                         0
      1500                         0                         0
      1501                         0                         0
      1502                         0                         0
      1503                         0                         0
      1504                         0                         0
      1505                         0                         0
      1506                         0                         0
      1507                         0                         0
      1508                         0                         0
      1509                         0                         0
      1510                         0                         0
      1511                         0                         0
      1512                         0                         0
      1513                         0                         0
      1514                         0                         0
      1515                         0                         0
      1516                         0                         0
      1517                         0                         0
      1518                         0                         0
      1519                         0                         0
      1520                         0                         0
      1521                         0                         0
      1522                         0                         0
      1523                         0                         0
      1524                         0                         0
      1525                         0                         0
      1526                         0                         0
      1527                         0                         0
      1528                         0                         0
      1529                         0                         0
      1530                         0                         0
      1531                         0                         0
      1532                         0                         0
      1533                         0                         0
      1534                         0                         0
      1535                         0                         0
      1536                         0                         0
      1537                         0                         0
      1538                         0                         0
      1539                         0                         0
      1540                         0                         0
      1541                         0                         0
      1542                         0                         0
      1543                         0                         0
      1544                         0                         0
      1545                         0                         0
      1546                         0                         0
      1547                         0                         0
      1548                         0                         0
      1549                         0                         0
      1550                         0                         0
      1551                         0                         0
      1552                         0                         0
      1553                         0                         0
      1554                         0                         0
      1555                         0                         0
      1556                         0                         0
      1557                         0                         0
      1558                         0                         0
      1559                         0                         0
      1560                         0                         0
      1561                         0                         0
      1562                         0                         0
      1563                         0                         0
      1564                         0                         0
      1565                         0                         0
      1566                         0                         0
      1567                         0                         0
      1568                         0                         0
      1569                         0                         0
      1570                         0                         0
      1571                         0                         0
      1572                         0                         0
      1573                         0                         0
      1574                         0                         0
      1575                         0                         0
      1576                         0                         0
      1577                         0                         0
      1578                         0                         0
      1579                         0                         0
      1580                         0                         0
      1581                         0                         0
      1582                         0                         0
      1583                         0                         0
      1584                         0                         0
      1585                         0                         0
      1586                         0                         0
      1587                         0                         0
      1588                         0                         0
      1589                         0                         0
      1590                         0                         0
      1591                         0                         0
      1592                         0                         0
      1593                         0                         0
      1594                         0                         0
      1595                         0                         0
      1596                         0                         0
      1597                         0                         0
      1598                         0                         0
      1599                         0                         0
      1600                         0                         0
      1601                         0                         0
      1602                         0                         0
      1603                         0                         0
      1604                         0                         0
      1605                         0                         0
      1606                         0                         0
      1607                         0                         0
      1608                         0                         0
      1609                         0                         0
      1610                         0                         0
      1611                         0                         0
      1612                         0                         0
      1613                         0                         0
      1614                         0                         0
      1615                         0                         0
      1616                         0                         0
      1617                         0                         0
      1618                         0                         0
      1619                         0                         0
      1620                         0                         0
      1621                         0                         0
      1622                         0                         0
      1623                         0                         0
      1624                         0                         0
      1625                         0                         0
      1626                         0                         0
      1627                         0                         0
      1628                         0                         0
      1629                         0                         0
      1630                         0                         0
      1631                         0                         0
      1632                         0                         0
      1633                         0                         0
      1634                         0                         0
                          TIMESTAMP TAG_NUM TAG_TYPE
      1    2013-09-05 16:00:00 AKDT    1234 SuperTag
      2    2013-09-05 16:15:00 AKDT    1234 SuperTag
      3    2013-09-05 16:30:00 AKDT    1234 SuperTag
      4    2013-09-05 16:45:00 AKDT    1234 SuperTag
      5    2013-09-05 17:00:00 AKDT    1234 SuperTag
      6    2013-09-05 17:15:00 AKDT    1234 SuperTag
      7    2013-09-05 17:30:00 AKDT    1234 SuperTag
      8    2013-09-05 17:45:00 AKDT    1234 SuperTag
      9    2013-09-05 18:00:00 AKDT    1234 SuperTag
      10   2013-09-05 18:15:00 AKDT    1234 SuperTag
      11   2013-09-05 18:30:00 AKDT    1234 SuperTag
      12   2013-09-05 18:45:00 AKDT    1234 SuperTag
      13   2013-09-05 19:00:00 AKDT    1234 SuperTag
      14   2013-09-05 19:15:00 AKDT    1234 SuperTag
      15   2013-09-05 19:30:00 AKDT    1234 SuperTag
      16   2013-09-05 19:45:00 AKDT    1234 SuperTag
      17   2013-09-05 20:00:00 AKDT    1234 SuperTag
      18   2013-09-05 20:15:00 AKDT    1234 SuperTag
      19   2013-09-05 20:30:00 AKDT    1234 SuperTag
      20   2013-09-05 20:45:00 AKDT    1234 SuperTag
      21   2013-09-05 21:00:00 AKDT    1234 SuperTag
      22   2013-09-05 21:15:00 AKDT    1234 SuperTag
      23   2013-09-05 21:30:00 AKDT    1234 SuperTag
      24   2013-09-05 21:45:00 AKDT    1234 SuperTag
      25   2013-09-05 22:00:00 AKDT    1234 SuperTag
      26   2013-09-05 22:15:00 AKDT    1234 SuperTag
      27   2013-09-05 22:30:00 AKDT    1234 SuperTag
      28   2013-09-05 22:45:00 AKDT    1234 SuperTag
      29   2013-09-05 23:00:00 AKDT    1234 SuperTag
      30   2013-09-05 23:15:00 AKDT    1234 SuperTag
      31   2013-09-05 23:30:00 AKDT    1234 SuperTag
      32   2013-09-05 23:45:00 AKDT    1234 SuperTag
      33   2013-09-06 00:00:00 AKDT    1234 SuperTag
      34   2013-09-06 00:15:00 AKDT    1234 SuperTag
      35   2013-09-06 00:30:00 AKDT    1234 SuperTag
      36   2013-09-06 00:45:00 AKDT    1234 SuperTag
      37   2013-09-06 01:00:00 AKDT    1234 SuperTag
      38   2013-09-06 01:15:00 AKDT    1234 SuperTag
      39   2013-09-06 01:30:00 AKDT    1234 SuperTag
      40   2013-09-06 01:45:00 AKDT    1234 SuperTag
      41   2013-09-06 02:00:00 AKDT    1234 SuperTag
      42   2013-09-06 02:15:00 AKDT    1234 SuperTag
      43   2013-09-06 02:30:00 AKDT    1234 SuperTag
      44   2013-09-06 02:45:00 AKDT    1234 SuperTag
      45   2013-09-06 03:00:00 AKDT    1234 SuperTag
      46   2013-09-06 03:15:00 AKDT    1234 SuperTag
      47   2013-09-06 03:30:00 AKDT    1234 SuperTag
      48   2013-09-06 03:45:00 AKDT    1234 SuperTag
      49   2013-09-06 04:00:00 AKDT    1234 SuperTag
      50   2013-09-06 04:15:00 AKDT    1234 SuperTag
      51   2013-09-06 04:30:00 AKDT    1234 SuperTag
      52   2013-09-06 04:45:00 AKDT    1234 SuperTag
      53   2013-09-06 05:00:00 AKDT    1234 SuperTag
      54   2013-09-06 05:15:00 AKDT    1234 SuperTag
      55   2013-09-06 05:30:00 AKDT    1234 SuperTag
      56   2013-09-06 05:45:00 AKDT    1234 SuperTag
      57   2013-09-06 06:00:00 AKDT    1234 SuperTag
      58   2013-09-06 06:15:00 AKDT    1234 SuperTag
      59   2013-09-06 06:30:00 AKDT    1234 SuperTag
      60   2013-09-06 06:45:00 AKDT    1234 SuperTag
      61   2013-09-06 07:00:00 AKDT    1234 SuperTag
      62   2013-09-06 07:15:00 AKDT    1234 SuperTag
      63   2013-09-06 07:30:00 AKDT    1234 SuperTag
      64   2013-09-06 07:45:00 AKDT    1234 SuperTag
      65   2013-09-06 08:00:00 AKDT    1234 SuperTag
      66   2013-09-06 08:15:00 AKDT    1234 SuperTag
      67   2013-09-06 08:30:00 AKDT    1234 SuperTag
      68   2013-09-06 08:45:00 AKDT    1234 SuperTag
      69   2013-09-06 09:00:00 AKDT    1234 SuperTag
      70   2013-09-06 09:15:00 AKDT    1234 SuperTag
      71   2013-09-06 09:30:00 AKDT    1234 SuperTag
      72   2013-09-06 09:45:00 AKDT    1234 SuperTag
      73   2013-09-06 10:00:00 AKDT    1234 SuperTag
      74   2013-09-06 10:15:00 AKDT    1234 SuperTag
      75   2013-09-06 10:30:00 AKDT    1234 SuperTag
      76   2013-09-06 10:45:00 AKDT    1234 SuperTag
      77   2013-09-06 11:00:00 AKDT    1234 SuperTag
      78   2013-09-06 11:15:00 AKDT    1234 SuperTag
      79   2013-09-06 11:30:00 AKDT    1234 SuperTag
      80   2013-09-06 11:45:00 AKDT    1234 SuperTag
      81   2013-09-06 12:00:00 AKDT    1234 SuperTag
      82   2013-09-06 12:15:00 AKDT    1234 SuperTag
      83   2013-09-06 12:30:00 AKDT    1234 SuperTag
      84   2013-09-06 12:45:00 AKDT    1234 SuperTag
      85   2013-09-06 13:00:00 AKDT    1234 SuperTag
      86   2013-09-06 13:15:00 AKDT    1234 SuperTag
      87   2013-09-06 13:30:00 AKDT    1234 SuperTag
      88   2013-09-06 13:45:00 AKDT    1234 SuperTag
      89   2013-09-06 14:00:00 AKDT    1234 SuperTag
      90   2013-09-06 14:15:00 AKDT    1234 SuperTag
      91   2013-09-06 14:30:00 AKDT    1234 SuperTag
      92   2013-09-06 14:45:00 AKDT    1234 SuperTag
      93   2013-09-06 15:00:00 AKDT    1234 SuperTag
      94   2013-09-06 15:15:00 AKDT    1234 SuperTag
      95   2013-09-06 15:30:00 AKDT    1234 SuperTag
      96   2013-09-06 15:45:00 AKDT    1234 SuperTag
      97   2013-09-06 16:00:00 AKDT    1234 SuperTag
      98   2013-09-06 16:15:00 AKDT    1234 SuperTag
      99   2013-09-06 16:45:00 AKDT    1234 SuperTag
      100  2013-09-06 17:00:00 AKDT    1234 SuperTag
      101  2013-09-06 17:15:00 AKDT    1234 SuperTag
      102  2013-09-06 17:45:00 AKDT    1234 SuperTag
      103  2013-09-06 18:00:00 AKDT    1234 SuperTag
      104  2013-09-06 18:15:00 AKDT    1234 SuperTag
      105  2013-09-06 18:45:00 AKDT    1234 SuperTag
      106  2013-09-06 19:00:00 AKDT    1234 SuperTag
      107  2013-09-06 19:15:00 AKDT    1234 SuperTag
      108  2013-09-06 19:45:00 AKDT    1234 SuperTag
      109  2013-09-06 20:00:00 AKDT    1234 SuperTag
      110  2013-09-06 20:15:00 AKDT    1234 SuperTag
      111  2013-09-06 20:45:00 AKDT    1234 SuperTag
      112  2013-09-06 21:00:00 AKDT    1234 SuperTag
      113  2013-09-06 21:15:00 AKDT    1234 SuperTag
      114  2013-09-06 21:45:00 AKDT    1234 SuperTag
      115  2013-09-06 22:00:00 AKDT    1234 SuperTag
      116  2013-09-06 22:15:00 AKDT    1234 SuperTag
      117  2013-09-06 22:45:00 AKDT    1234 SuperTag
      118  2013-09-06 23:00:00 AKDT    1234 SuperTag
      119  2013-09-06 23:15:00 AKDT    1234 SuperTag
      120  2013-09-06 23:45:00 AKDT    1234 SuperTag
      121  2013-09-07 00:00:00 AKDT    1234 SuperTag
      122  2013-09-07 00:15:00 AKDT    1234 SuperTag
      123  2013-09-07 00:45:00 AKDT    1234 SuperTag
      124  2013-09-07 01:00:00 AKDT    1234 SuperTag
      125  2013-09-07 01:15:00 AKDT    1234 SuperTag
      126  2013-09-07 01:45:00 AKDT    1234 SuperTag
      127  2013-09-07 02:00:00 AKDT    1234 SuperTag
      128  2013-09-07 02:15:00 AKDT    1234 SuperTag
      129  2013-09-07 02:45:00 AKDT    1234 SuperTag
      130  2013-09-07 03:00:00 AKDT    1234 SuperTag
      131  2013-09-07 03:15:00 AKDT    1234 SuperTag
      132  2013-09-07 03:45:00 AKDT    1234 SuperTag
      133  2013-09-07 04:00:00 AKDT    1234 SuperTag
      134  2013-09-07 04:15:00 AKDT    1234 SuperTag
      135  2013-09-07 04:45:00 AKDT    1234 SuperTag
      136  2013-09-07 05:00:00 AKDT    1234 SuperTag
      137  2013-09-07 05:15:00 AKDT    1234 SuperTag
      138  2013-09-07 05:45:00 AKDT    1234 SuperTag
      139  2013-09-07 06:00:00 AKDT    1234 SuperTag
      140  2013-09-07 06:15:00 AKDT    1234 SuperTag
      141  2013-09-07 06:45:00 AKDT    1234 SuperTag
      142  2013-09-07 07:00:00 AKDT    1234 SuperTag
      143  2013-09-07 07:15:00 AKDT    1234 SuperTag
      144  2013-09-07 07:45:00 AKDT    1234 SuperTag
      145  2013-09-07 08:00:00 AKDT    1234 SuperTag
      146  2013-09-07 08:15:00 AKDT    1234 SuperTag
      147  2013-09-07 08:45:00 AKDT    1234 SuperTag
      148  2013-09-07 09:00:00 AKDT    1234 SuperTag
      149  2013-09-07 09:15:00 AKDT    1234 SuperTag
      150  2013-09-07 09:45:00 AKDT    1234 SuperTag
      151  2013-09-07 10:00:00 AKDT    1234 SuperTag
      152  2013-09-07 10:15:00 AKDT    1234 SuperTag
      153  2013-09-07 10:45:00 AKDT    1234 SuperTag
      154  2013-09-07 11:00:00 AKDT    1234 SuperTag
      155  2013-09-07 11:15:00 AKDT    1234 SuperTag
      156  2013-09-07 11:45:00 AKDT    1234 SuperTag
      157  2013-09-07 12:00:00 AKDT    1234 SuperTag
      158  2013-09-07 12:15:00 AKDT    1234 SuperTag
      159  2013-09-07 12:45:00 AKDT    1234 SuperTag
      160  2013-09-07 13:00:00 AKDT    1234 SuperTag
      161  2013-09-07 13:15:00 AKDT    1234 SuperTag
      162  2013-09-07 13:45:00 AKDT    1234 SuperTag
      163  2013-09-07 14:00:00 AKDT    1234 SuperTag
      164  2013-09-07 14:15:00 AKDT    1234 SuperTag
      165  2013-09-07 14:45:00 AKDT    1234 SuperTag
      166  2013-09-07 15:00:00 AKDT    1234 SuperTag
      167  2013-09-07 15:15:00 AKDT    1234 SuperTag
      168  2013-09-07 15:45:00 AKDT    1234 SuperTag
      169  2013-09-07 16:00:00 AKDT    1234 SuperTag
      170  2013-09-07 16:15:00 AKDT    1234 SuperTag
      171  2013-09-07 16:30:00 AKDT    1234 SuperTag
      172  2013-09-07 17:00:00 AKDT    1234 SuperTag
      173  2013-09-07 17:15:00 AKDT    1234 SuperTag
      174  2013-09-07 17:30:00 AKDT    1234 SuperTag
      175  2013-09-07 18:00:00 AKDT    1234 SuperTag
      176  2013-09-07 18:15:00 AKDT    1234 SuperTag
      177  2013-09-07 18:30:00 AKDT    1234 SuperTag
      178  2013-09-07 19:00:00 AKDT    1234 SuperTag
      179  2013-09-07 19:15:00 AKDT    1234 SuperTag
      180  2013-09-07 19:30:00 AKDT    1234 SuperTag
      181  2013-09-07 20:00:00 AKDT    1234 SuperTag
      182  2013-09-07 20:15:00 AKDT    1234 SuperTag
      183  2013-09-07 20:30:00 AKDT    1234 SuperTag
      184  2013-09-07 21:00:00 AKDT    1234 SuperTag
      185  2013-09-07 21:15:00 AKDT    1234 SuperTag
      186  2013-09-07 21:30:00 AKDT    1234 SuperTag
      187  2013-09-07 22:00:00 AKDT    1234 SuperTag
      188  2013-09-07 22:15:00 AKDT    1234 SuperTag
      189  2013-09-07 22:30:00 AKDT    1234 SuperTag
      190  2013-09-07 23:00:00 AKDT    1234 SuperTag
      191  2013-09-07 23:15:00 AKDT    1234 SuperTag
      192  2013-09-07 23:30:00 AKDT    1234 SuperTag
      193  2013-09-08 00:00:00 AKDT    1234 SuperTag
      194  2013-09-08 00:15:00 AKDT    1234 SuperTag
      195  2013-09-08 00:30:00 AKDT    1234 SuperTag
      196  2013-09-08 01:00:00 AKDT    1234 SuperTag
      197  2013-09-08 01:15:00 AKDT    1234 SuperTag
      198  2013-09-08 01:30:00 AKDT    1234 SuperTag
      199  2013-09-08 02:00:00 AKDT    1234 SuperTag
      200  2013-09-08 02:15:00 AKDT    1234 SuperTag
      201  2013-09-08 02:30:00 AKDT    1234 SuperTag
      202  2013-09-08 03:00:00 AKDT    1234 SuperTag
      203  2013-09-08 03:15:00 AKDT    1234 SuperTag
      204  2013-09-08 03:30:00 AKDT    1234 SuperTag
      205  2013-09-08 04:00:00 AKDT    1234 SuperTag
      206  2013-09-08 04:15:00 AKDT    1234 SuperTag
      207  2013-09-08 04:30:00 AKDT    1234 SuperTag
      208  2013-09-08 05:00:00 AKDT    1234 SuperTag
      209  2013-09-08 05:15:00 AKDT    1234 SuperTag
      210  2013-09-08 05:30:00 AKDT    1234 SuperTag
      211  2013-09-08 06:00:00 AKDT    1234 SuperTag
      212  2013-09-08 06:15:00 AKDT    1234 SuperTag
      213  2013-09-08 06:30:00 AKDT    1234 SuperTag
      214  2013-09-08 07:00:00 AKDT    1234 SuperTag
      215  2013-09-08 07:15:00 AKDT    1234 SuperTag
      216  2013-09-08 07:30:00 AKDT    1234 SuperTag
      217  2013-09-08 08:00:00 AKDT    1234 SuperTag
      218  2013-09-08 08:15:00 AKDT    1234 SuperTag
      219  2013-09-08 08:30:00 AKDT    1234 SuperTag
      220  2013-09-08 09:00:00 AKDT    1234 SuperTag
      221  2013-09-08 09:15:00 AKDT    1234 SuperTag
      222  2013-09-08 09:30:00 AKDT    1234 SuperTag
      223  2013-09-08 10:00:00 AKDT    1234 SuperTag
      224  2013-09-08 10:15:00 AKDT    1234 SuperTag
      225  2013-09-08 10:30:00 AKDT    1234 SuperTag
      226  2013-09-08 11:00:00 AKDT    1234 SuperTag
      227  2013-09-08 11:15:00 AKDT    1234 SuperTag
      228  2013-09-08 11:30:00 AKDT    1234 SuperTag
      229  2013-09-08 12:00:00 AKDT    1234 SuperTag
      230  2013-09-08 12:15:00 AKDT    1234 SuperTag
      231  2013-09-08 12:30:00 AKDT    1234 SuperTag
      232  2013-09-08 13:00:00 AKDT    1234 SuperTag
      233  2013-09-08 13:15:00 AKDT    1234 SuperTag
      234  2013-09-08 13:30:00 AKDT    1234 SuperTag
      235  2013-09-08 14:00:00 AKDT    1234 SuperTag
      236  2013-09-08 14:15:00 AKDT    1234 SuperTag
      237  2013-09-08 14:30:00 AKDT    1234 SuperTag
      238  2013-09-08 15:00:00 AKDT    1234 SuperTag
      239  2013-09-08 15:15:00 AKDT    1234 SuperTag
      240  2013-09-08 15:30:00 AKDT    1234 SuperTag
      241  2013-09-08 16:15:00 AKDT    1234 SuperTag
      242  2013-09-08 16:45:00 AKDT    1234 SuperTag
      243  2013-09-08 17:15:00 AKDT    1234 SuperTag
      244  2013-09-08 17:45:00 AKDT    1234 SuperTag
      245  2013-09-08 18:15:00 AKDT    1234 SuperTag
      246  2013-09-08 18:45:00 AKDT    1234 SuperTag
      247  2013-09-08 19:15:00 AKDT    1234 SuperTag
      248  2013-09-08 19:45:00 AKDT    1234 SuperTag
      249  2013-09-08 20:15:00 AKDT    1234 SuperTag
      250  2013-09-08 20:45:00 AKDT    1234 SuperTag
      251  2013-09-08 21:15:00 AKDT    1234 SuperTag
      252  2013-09-08 21:45:00 AKDT    1234 SuperTag
      253  2013-09-08 22:15:00 AKDT    1234 SuperTag
      254  2013-09-08 22:45:00 AKDT    1234 SuperTag
      255  2013-09-08 23:15:00 AKDT    1234 SuperTag
      256  2013-09-08 23:45:00 AKDT    1234 SuperTag
      257  2013-09-09 00:15:00 AKDT    1234 SuperTag
      258  2013-09-09 00:45:00 AKDT    1234 SuperTag
      259  2013-09-09 01:15:00 AKDT    1234 SuperTag
      260  2013-09-09 01:45:00 AKDT    1234 SuperTag
      261  2013-09-09 02:15:00 AKDT    1234 SuperTag
      262  2013-09-09 02:45:00 AKDT    1234 SuperTag
      263  2013-09-09 03:15:00 AKDT    1234 SuperTag
      264  2013-09-09 03:45:00 AKDT    1234 SuperTag
      265  2013-09-09 04:15:00 AKDT    1234 SuperTag
      266  2013-09-09 04:45:00 AKDT    1234 SuperTag
      267  2013-09-09 05:15:00 AKDT    1234 SuperTag
      268  2013-09-09 05:45:00 AKDT    1234 SuperTag
      269  2013-09-09 06:15:00 AKDT    1234 SuperTag
      270  2013-09-09 06:45:00 AKDT    1234 SuperTag
      271  2013-09-09 07:15:00 AKDT    1234 SuperTag
      272  2013-09-09 07:45:00 AKDT    1234 SuperTag
      273  2013-09-09 08:15:00 AKDT    1234 SuperTag
      274  2013-09-09 08:45:00 AKDT    1234 SuperTag
      275  2013-09-09 09:15:00 AKDT    1234 SuperTag
      276  2013-09-09 09:45:00 AKDT    1234 SuperTag
      277  2013-09-09 10:15:00 AKDT    1234 SuperTag
      278  2013-09-09 10:45:00 AKDT    1234 SuperTag
      279  2013-09-09 11:15:00 AKDT    1234 SuperTag
      280  2013-09-09 11:45:00 AKDT    1234 SuperTag
      281  2013-09-09 12:15:00 AKDT    1234 SuperTag
      282  2013-09-09 12:45:00 AKDT    1234 SuperTag
      283  2013-09-09 13:15:00 AKDT    1234 SuperTag
      284  2013-09-09 13:45:00 AKDT    1234 SuperTag
      285  2013-09-09 14:15:00 AKDT    1234 SuperTag
      286  2013-09-09 14:45:00 AKDT    1234 SuperTag
      287  2013-09-09 15:15:00 AKDT    1234 SuperTag
      288  2013-09-09 15:45:00 AKDT    1234 SuperTag
      289  2013-09-09 16:00:00 AKDT    1234 SuperTag
      290  2013-09-09 16:15:00 AKDT    1234 SuperTag
      291  2013-09-09 16:30:00 AKDT    1234 SuperTag
      292  2013-09-09 17:00:00 AKDT    1234 SuperTag
      293  2013-09-09 17:15:00 AKDT    1234 SuperTag
      294  2013-09-09 17:30:00 AKDT    1234 SuperTag
      295  2013-09-09 18:00:00 AKDT    1234 SuperTag
      296  2013-09-09 18:15:00 AKDT    1234 SuperTag
      297  2013-09-09 18:30:00 AKDT    1234 SuperTag
      298  2013-09-09 19:00:00 AKDT    1234 SuperTag
      299  2013-09-09 19:15:00 AKDT    1234 SuperTag
      300  2013-09-09 19:30:00 AKDT    1234 SuperTag
      301  2013-09-09 20:00:00 AKDT    1234 SuperTag
      302  2013-09-09 20:15:00 AKDT    1234 SuperTag
      303  2013-09-09 20:30:00 AKDT    1234 SuperTag
      304  2013-09-09 21:00:00 AKDT    1234 SuperTag
      305  2013-09-09 21:15:00 AKDT    1234 SuperTag
      306  2013-09-09 21:30:00 AKDT    1234 SuperTag
      307  2013-09-09 22:00:00 AKDT    1234 SuperTag
      308  2013-09-09 22:15:00 AKDT    1234 SuperTag
      309  2013-09-09 22:30:00 AKDT    1234 SuperTag
      310  2013-09-09 23:00:00 AKDT    1234 SuperTag
      311  2013-09-09 23:15:00 AKDT    1234 SuperTag
      312  2013-09-09 23:30:00 AKDT    1234 SuperTag
      313  2013-09-10 00:00:00 AKDT    1234 SuperTag
      314  2013-09-10 00:15:00 AKDT    1234 SuperTag
      315  2013-09-10 00:30:00 AKDT    1234 SuperTag
      316  2013-09-10 01:00:00 AKDT    1234 SuperTag
      317  2013-09-10 01:15:00 AKDT    1234 SuperTag
      318  2013-09-10 01:30:00 AKDT    1234 SuperTag
      319  2013-09-10 02:00:00 AKDT    1234 SuperTag
      320  2013-09-10 02:15:00 AKDT    1234 SuperTag
      321  2013-09-10 02:30:00 AKDT    1234 SuperTag
      322  2013-09-10 03:00:00 AKDT    1234 SuperTag
      323  2013-09-10 03:15:00 AKDT    1234 SuperTag
      324  2013-09-10 03:30:00 AKDT    1234 SuperTag
      325  2013-09-10 04:00:00 AKDT    1234 SuperTag
      326  2013-09-10 04:15:00 AKDT    1234 SuperTag
      327  2013-09-10 04:30:00 AKDT    1234 SuperTag
      328  2013-09-10 05:00:00 AKDT    1234 SuperTag
      329  2013-09-10 05:15:00 AKDT    1234 SuperTag
      330  2013-09-10 05:30:00 AKDT    1234 SuperTag
      331  2013-09-10 06:00:00 AKDT    1234 SuperTag
      332  2013-09-10 06:15:00 AKDT    1234 SuperTag
      333  2013-09-10 06:30:00 AKDT    1234 SuperTag
      334  2013-09-10 07:00:00 AKDT    1234 SuperTag
      335  2013-09-10 07:15:00 AKDT    1234 SuperTag
      336  2013-09-10 07:30:00 AKDT    1234 SuperTag
      337  2013-09-10 08:00:00 AKDT    1234 SuperTag
      338  2013-09-10 08:15:00 AKDT    1234 SuperTag
      339  2013-09-10 08:30:00 AKDT    1234 SuperTag
      340  2013-09-10 09:00:00 AKDT    1234 SuperTag
      341  2013-09-10 09:15:00 AKDT    1234 SuperTag
      342  2013-09-10 09:30:00 AKDT    1234 SuperTag
      343  2013-09-10 10:00:00 AKDT    1234 SuperTag
      344  2013-09-10 10:15:00 AKDT    1234 SuperTag
      345  2013-09-10 10:30:00 AKDT    1234 SuperTag
      346  2013-09-10 11:00:00 AKDT    1234 SuperTag
      347  2013-09-10 11:15:00 AKDT    1234 SuperTag
      348  2013-09-10 11:30:00 AKDT    1234 SuperTag
      349  2013-09-10 12:00:00 AKDT    1234 SuperTag
      350  2013-09-10 12:15:00 AKDT    1234 SuperTag
      351  2013-09-10 12:30:00 AKDT    1234 SuperTag
      352  2013-09-10 13:00:00 AKDT    1234 SuperTag
      353  2013-09-10 13:15:00 AKDT    1234 SuperTag
      354  2013-09-10 13:30:00 AKDT    1234 SuperTag
      355  2013-09-10 14:00:00 AKDT    1234 SuperTag
      356  2013-09-10 14:15:00 AKDT    1234 SuperTag
      357  2013-09-10 14:30:00 AKDT    1234 SuperTag
      358  2013-09-10 15:00:00 AKDT    1234 SuperTag
      359  2013-09-10 15:15:00 AKDT    1234 SuperTag
      360  2013-09-10 15:30:00 AKDT    1234 SuperTag
      361  2013-09-10 16:00:00 AKDT    1234 SuperTag
      362  2013-09-10 16:15:00 AKDT    1234 SuperTag
      363  2013-09-10 16:30:00 AKDT    1234 SuperTag
      364  2013-09-10 17:00:00 AKDT    1234 SuperTag
      365  2013-09-10 17:15:00 AKDT    1234 SuperTag
      366  2013-09-10 17:30:00 AKDT    1234 SuperTag
      367  2013-09-10 18:00:00 AKDT    1234 SuperTag
      368  2013-09-10 18:15:00 AKDT    1234 SuperTag
      369  2013-09-10 18:30:00 AKDT    1234 SuperTag
      370  2013-09-10 19:00:00 AKDT    1234 SuperTag
      371  2013-09-10 19:15:00 AKDT    1234 SuperTag
      372  2013-09-10 19:30:00 AKDT    1234 SuperTag
      373  2013-09-10 20:00:00 AKDT    1234 SuperTag
      374  2013-09-10 20:15:00 AKDT    1234 SuperTag
      375  2013-09-10 20:30:00 AKDT    1234 SuperTag
      376  2013-09-10 21:00:00 AKDT    1234 SuperTag
      377  2013-09-10 21:15:00 AKDT    1234 SuperTag
      378  2013-09-10 21:30:00 AKDT    1234 SuperTag
      379  2013-09-10 22:00:00 AKDT    1234 SuperTag
      380  2013-09-10 22:15:00 AKDT    1234 SuperTag
      381  2013-09-10 22:30:00 AKDT    1234 SuperTag
      382  2013-09-10 23:00:00 AKDT    1234 SuperTag
      383  2013-09-10 23:15:00 AKDT    1234 SuperTag
      384  2013-09-10 23:30:00 AKDT    1234 SuperTag
      385  2013-09-11 00:00:00 AKDT    1234 SuperTag
      386  2013-09-11 00:15:00 AKDT    1234 SuperTag
      387  2013-09-11 00:30:00 AKDT    1234 SuperTag
      388  2013-09-11 01:00:00 AKDT    1234 SuperTag
      389  2013-09-11 01:15:00 AKDT    1234 SuperTag
      390  2013-09-11 01:30:00 AKDT    1234 SuperTag
      391  2013-09-11 02:00:00 AKDT    1234 SuperTag
      392  2013-09-11 02:15:00 AKDT    1234 SuperTag
      393  2013-09-11 02:30:00 AKDT    1234 SuperTag
      394  2013-09-11 03:00:00 AKDT    1234 SuperTag
      395  2013-09-11 03:15:00 AKDT    1234 SuperTag
      396  2013-09-11 03:30:00 AKDT    1234 SuperTag
      397  2013-09-11 04:00:00 AKDT    1234 SuperTag
      398  2013-09-11 04:15:00 AKDT    1234 SuperTag
      399  2013-09-11 04:30:00 AKDT    1234 SuperTag
      400  2013-09-11 05:00:00 AKDT    1234 SuperTag
      401  2013-09-11 05:15:00 AKDT    1234 SuperTag
      402  2013-09-11 05:30:00 AKDT    1234 SuperTag
      403  2013-09-11 06:00:00 AKDT    1234 SuperTag
      404  2013-09-11 06:15:00 AKDT    1234 SuperTag
      405  2013-09-11 06:30:00 AKDT    1234 SuperTag
      406  2013-09-11 07:00:00 AKDT    1234 SuperTag
      407  2013-09-11 07:15:00 AKDT    1234 SuperTag
      408  2013-09-11 07:30:00 AKDT    1234 SuperTag
      409  2013-09-11 08:00:00 AKDT    1234 SuperTag
      410  2013-09-11 08:15:00 AKDT    1234 SuperTag
      411  2013-09-11 08:30:00 AKDT    1234 SuperTag
      412  2013-09-11 09:00:00 AKDT    1234 SuperTag
      413  2013-09-11 09:15:00 AKDT    1234 SuperTag
      414  2013-09-11 09:30:00 AKDT    1234 SuperTag
      415  2013-09-11 10:00:00 AKDT    1234 SuperTag
      416  2013-09-11 10:15:00 AKDT    1234 SuperTag
      417  2013-09-11 10:30:00 AKDT    1234 SuperTag
      418  2013-09-11 11:00:00 AKDT    1234 SuperTag
      419  2013-09-11 11:15:00 AKDT    1234 SuperTag
      420  2013-09-11 11:30:00 AKDT    1234 SuperTag
      421  2013-09-11 12:00:00 AKDT    1234 SuperTag
      422  2013-09-11 12:15:00 AKDT    1234 SuperTag
      423  2013-09-11 12:30:00 AKDT    1234 SuperTag
      424  2013-09-11 13:00:00 AKDT    1234 SuperTag
      425  2013-09-11 13:15:00 AKDT    1234 SuperTag
      426  2013-09-11 13:30:00 AKDT    1234 SuperTag
      427  2013-09-11 14:00:00 AKDT    1234 SuperTag
      428  2013-09-11 14:15:00 AKDT    1234 SuperTag
      429  2013-09-11 14:30:00 AKDT    1234 SuperTag
      430  2013-09-11 15:00:00 AKDT    1234 SuperTag
      431  2013-09-11 15:15:00 AKDT    1234 SuperTag
      432  2013-09-11 15:30:00 AKDT    1234 SuperTag
      433  2013-09-12 16:15:00 AKDT    1234 SuperTag
      434  2013-09-12 16:45:00 AKDT    1234 SuperTag
      435  2013-09-12 17:15:00 AKDT    1234 SuperTag
      436  2013-09-12 17:45:00 AKDT    1234 SuperTag
      437  2013-09-12 18:15:00 AKDT    1234 SuperTag
      438  2013-09-12 18:45:00 AKDT    1234 SuperTag
      439  2013-09-12 19:15:00 AKDT    1234 SuperTag
      440  2013-09-12 19:45:00 AKDT    1234 SuperTag
      441  2013-09-12 20:15:00 AKDT    1234 SuperTag
      442  2013-09-12 20:45:00 AKDT    1234 SuperTag
      443  2013-09-12 21:15:00 AKDT    1234 SuperTag
      444  2013-09-12 21:45:00 AKDT    1234 SuperTag
      445  2013-09-12 22:15:00 AKDT    1234 SuperTag
      446  2013-09-12 22:45:00 AKDT    1234 SuperTag
      447  2013-09-12 23:15:00 AKDT    1234 SuperTag
      448  2013-09-12 23:45:00 AKDT    1234 SuperTag
      449  2013-09-13 00:15:00 AKDT    1234 SuperTag
      450  2013-09-13 00:45:00 AKDT    1234 SuperTag
      451  2013-09-13 01:15:00 AKDT    1234 SuperTag
      452  2013-09-13 01:45:00 AKDT    1234 SuperTag
      453  2013-09-13 02:15:00 AKDT    1234 SuperTag
      454  2013-09-13 02:45:00 AKDT    1234 SuperTag
      455  2013-09-13 03:15:00 AKDT    1234 SuperTag
      456  2013-09-13 03:45:00 AKDT    1234 SuperTag
      457  2013-09-13 04:15:00 AKDT    1234 SuperTag
      458  2013-09-13 04:45:00 AKDT    1234 SuperTag
      459  2013-09-13 05:15:00 AKDT    1234 SuperTag
      460  2013-09-13 05:45:00 AKDT    1234 SuperTag
      461  2013-09-13 06:15:00 AKDT    1234 SuperTag
      462  2013-09-13 06:45:00 AKDT    1234 SuperTag
      463  2013-09-13 07:15:00 AKDT    1234 SuperTag
      464  2013-09-13 07:45:00 AKDT    1234 SuperTag
      465  2013-09-13 08:15:00 AKDT    1234 SuperTag
      466  2013-09-13 08:45:00 AKDT    1234 SuperTag
      467  2013-09-13 09:15:00 AKDT    1234 SuperTag
      468  2013-09-13 09:45:00 AKDT    1234 SuperTag
      469  2013-09-13 10:15:00 AKDT    1234 SuperTag
      470  2013-09-13 10:45:00 AKDT    1234 SuperTag
      471  2013-09-13 11:15:00 AKDT    1234 SuperTag
      472  2013-09-13 11:45:00 AKDT    1234 SuperTag
      473  2013-09-13 12:15:00 AKDT    1234 SuperTag
      474  2013-09-13 12:45:00 AKDT    1234 SuperTag
      475  2013-09-13 13:15:00 AKDT    1234 SuperTag
      476  2013-09-13 13:45:00 AKDT    1234 SuperTag
      477  2013-09-13 14:15:00 AKDT    1234 SuperTag
      478  2013-09-13 14:45:00 AKDT    1234 SuperTag
      479  2013-09-13 15:15:00 AKDT    1234 SuperTag
      480  2013-09-13 15:45:00 AKDT    1234 SuperTag
      481  2013-09-13 16:15:00 AKDT    1234 SuperTag
      482  2013-09-13 17:15:00 AKDT    1234 SuperTag
      483  2013-09-13 18:15:00 AKDT    1234 SuperTag
      484  2013-09-13 19:15:00 AKDT    1234 SuperTag
      485  2013-09-13 20:15:00 AKDT    1234 SuperTag
      486  2013-09-13 21:15:00 AKDT    1234 SuperTag
      487  2013-09-13 22:15:00 AKDT    1234 SuperTag
      488  2013-09-13 23:15:00 AKDT    1234 SuperTag
      489  2013-09-14 00:15:00 AKDT    1234 SuperTag
      490  2013-09-14 01:15:00 AKDT    1234 SuperTag
      491  2013-09-14 02:15:00 AKDT    1234 SuperTag
      492  2013-09-14 03:15:00 AKDT    1234 SuperTag
      493  2013-09-14 04:15:00 AKDT    1234 SuperTag
      494  2013-09-14 05:15:00 AKDT    1234 SuperTag
      495  2013-09-14 06:15:00 AKDT    1234 SuperTag
      496  2013-09-14 07:15:00 AKDT    1234 SuperTag
      497  2013-09-14 08:15:00 AKDT    1234 SuperTag
      498  2013-09-14 09:15:00 AKDT    1234 SuperTag
      499  2013-09-14 10:15:00 AKDT    1234 SuperTag
      500  2013-09-14 11:15:00 AKDT    1234 SuperTag
      501  2013-09-14 12:15:00 AKDT    1234 SuperTag
      502  2013-09-14 13:15:00 AKDT    1234 SuperTag
      503  2013-09-14 14:15:00 AKDT    1234 SuperTag
      504  2013-09-14 15:15:00 AKDT    1234 SuperTag
      505  2013-09-14 16:00:00 AKDT    1234 SuperTag
      506  2013-09-14 16:45:00 AKDT    1234 SuperTag
      507  2013-09-14 17:00:00 AKDT    1234 SuperTag
      508  2013-09-14 17:45:00 AKDT    1234 SuperTag
      509  2013-09-14 18:00:00 AKDT    1234 SuperTag
      510  2013-09-14 18:45:00 AKDT    1234 SuperTag
      511  2013-09-14 19:00:00 AKDT    1234 SuperTag
      512  2013-09-14 19:45:00 AKDT    1234 SuperTag
      513  2013-09-14 20:00:00 AKDT    1234 SuperTag
      514  2013-09-14 20:45:00 AKDT    1234 SuperTag
      515  2013-09-14 21:00:00 AKDT    1234 SuperTag
      516  2013-09-14 21:45:00 AKDT    1234 SuperTag
      517  2013-09-14 22:00:00 AKDT    1234 SuperTag
      518  2013-09-14 22:45:00 AKDT    1234 SuperTag
      519  2013-09-14 23:00:00 AKDT    1234 SuperTag
      520  2013-09-14 23:45:00 AKDT    1234 SuperTag
      521  2013-09-15 00:00:00 AKDT    1234 SuperTag
      522  2013-09-15 00:45:00 AKDT    1234 SuperTag
      523  2013-09-15 01:00:00 AKDT    1234 SuperTag
      524  2013-09-15 01:45:00 AKDT    1234 SuperTag
      525  2013-09-15 02:00:00 AKDT    1234 SuperTag
      526  2013-09-15 02:45:00 AKDT    1234 SuperTag
      527  2013-09-15 03:00:00 AKDT    1234 SuperTag
      528  2013-09-15 03:45:00 AKDT    1234 SuperTag
      529  2013-09-15 04:00:00 AKDT    1234 SuperTag
      530  2013-09-15 04:45:00 AKDT    1234 SuperTag
      531  2013-09-15 05:00:00 AKDT    1234 SuperTag
      532  2013-09-15 05:45:00 AKDT    1234 SuperTag
      533  2013-09-15 06:00:00 AKDT    1234 SuperTag
      534  2013-09-15 06:45:00 AKDT    1234 SuperTag
      535  2013-09-15 07:00:00 AKDT    1234 SuperTag
      536  2013-09-15 07:45:00 AKDT    1234 SuperTag
      537  2013-09-15 08:00:00 AKDT    1234 SuperTag
      538  2013-09-15 08:45:00 AKDT    1234 SuperTag
      539  2013-09-15 09:00:00 AKDT    1234 SuperTag
      540  2013-09-15 09:45:00 AKDT    1234 SuperTag
      541  2013-09-15 10:00:00 AKDT    1234 SuperTag
      542  2013-09-15 10:45:00 AKDT    1234 SuperTag
      543  2013-09-15 11:00:00 AKDT    1234 SuperTag
      544  2013-09-15 11:45:00 AKDT    1234 SuperTag
      545  2013-09-15 12:00:00 AKDT    1234 SuperTag
      546  2013-09-15 12:45:00 AKDT    1234 SuperTag
      547  2013-09-15 13:00:00 AKDT    1234 SuperTag
      548  2013-09-15 13:45:00 AKDT    1234 SuperTag
      549  2013-09-15 14:00:00 AKDT    1234 SuperTag
      550  2013-09-15 14:45:00 AKDT    1234 SuperTag
      551  2013-09-15 15:00:00 AKDT    1234 SuperTag
      552  2013-09-15 15:45:00 AKDT    1234 SuperTag
      553  2013-09-15 16:15:00 AKDT    1234 SuperTag
      554  2013-09-15 16:45:00 AKDT    1234 SuperTag
      555  2013-09-15 17:15:00 AKDT    1234 SuperTag
      556  2013-09-15 17:45:00 AKDT    1234 SuperTag
      557  2013-09-15 18:15:00 AKDT    1234 SuperTag
      558  2013-09-15 18:45:00 AKDT    1234 SuperTag
      559  2013-09-15 19:15:00 AKDT    1234 SuperTag
      560  2013-09-15 19:45:00 AKDT    1234 SuperTag
      561  2013-09-15 20:15:00 AKDT    1234 SuperTag
      562  2013-09-15 20:45:00 AKDT    1234 SuperTag
      563  2013-09-15 21:15:00 AKDT    1234 SuperTag
      564  2013-09-15 21:45:00 AKDT    1234 SuperTag
      565  2013-09-15 22:15:00 AKDT    1234 SuperTag
      566  2013-09-15 22:45:00 AKDT    1234 SuperTag
      567  2013-09-15 23:15:00 AKDT    1234 SuperTag
      568  2013-09-15 23:45:00 AKDT    1234 SuperTag
      569  2013-09-16 00:15:00 AKDT    1234 SuperTag
      570  2013-09-16 00:45:00 AKDT    1234 SuperTag
      571  2013-09-16 01:15:00 AKDT    1234 SuperTag
      572  2013-09-16 01:45:00 AKDT    1234 SuperTag
      573  2013-09-16 02:15:00 AKDT    1234 SuperTag
      574  2013-09-16 02:45:00 AKDT    1234 SuperTag
      575  2013-09-16 03:15:00 AKDT    1234 SuperTag
      576  2013-09-16 03:45:00 AKDT    1234 SuperTag
      577  2013-09-16 04:15:00 AKDT    1234 SuperTag
      578  2013-09-16 04:45:00 AKDT    1234 SuperTag
      579  2013-09-16 05:15:00 AKDT    1234 SuperTag
      580  2013-09-16 05:45:00 AKDT    1234 SuperTag
      581  2013-09-16 06:15:00 AKDT    1234 SuperTag
      582  2013-09-16 06:45:00 AKDT    1234 SuperTag
      583  2013-09-16 07:15:00 AKDT    1234 SuperTag
      584  2013-09-16 07:45:00 AKDT    1234 SuperTag
      585  2013-09-16 08:15:00 AKDT    1234 SuperTag
      586  2013-09-16 08:45:00 AKDT    1234 SuperTag
      587  2013-09-16 09:15:00 AKDT    1234 SuperTag
      588  2013-09-16 09:45:00 AKDT    1234 SuperTag
      589  2013-09-16 10:15:00 AKDT    1234 SuperTag
      590  2013-09-16 10:45:00 AKDT    1234 SuperTag
      591  2013-09-16 11:15:00 AKDT    1234 SuperTag
      592  2013-09-16 11:45:00 AKDT    1234 SuperTag
      593  2013-09-16 12:15:00 AKDT    1234 SuperTag
      594  2013-09-16 12:45:00 AKDT    1234 SuperTag
      595  2013-09-16 13:15:00 AKDT    1234 SuperTag
      596  2013-09-16 13:45:00 AKDT    1234 SuperTag
      597  2013-09-16 14:15:00 AKDT    1234 SuperTag
      598  2013-09-16 14:45:00 AKDT    1234 SuperTag
      599  2013-09-16 15:15:00 AKDT    1234 SuperTag
      600  2013-09-16 15:45:00 AKDT    1234 SuperTag
      601  2013-09-16 16:00:00 AKDT    1234 SuperTag
      602  2013-09-16 16:30:00 AKDT    1234 SuperTag
      603  2013-09-16 16:45:00 AKDT    1234 SuperTag
      604  2013-09-16 17:00:00 AKDT    1234 SuperTag
      605  2013-09-16 17:30:00 AKDT    1234 SuperTag
      606  2013-09-16 17:45:00 AKDT    1234 SuperTag
      607  2013-09-16 18:00:00 AKDT    1234 SuperTag
      608  2013-09-16 18:30:00 AKDT    1234 SuperTag
      609  2013-09-16 18:45:00 AKDT    1234 SuperTag
      610  2013-09-16 19:00:00 AKDT    1234 SuperTag
      611  2013-09-16 19:30:00 AKDT    1234 SuperTag
      612  2013-09-16 19:45:00 AKDT    1234 SuperTag
      613  2013-09-16 20:00:00 AKDT    1234 SuperTag
      614  2013-09-16 20:30:00 AKDT    1234 SuperTag
      615  2013-09-16 20:45:00 AKDT    1234 SuperTag
      616  2013-09-16 21:00:00 AKDT    1234 SuperTag
      617  2013-09-16 21:30:00 AKDT    1234 SuperTag
      618  2013-09-16 21:45:00 AKDT    1234 SuperTag
      619  2013-09-16 22:00:00 AKDT    1234 SuperTag
      620  2013-09-16 22:30:00 AKDT    1234 SuperTag
      621  2013-09-16 22:45:00 AKDT    1234 SuperTag
      622  2013-09-16 23:00:00 AKDT    1234 SuperTag
      623  2013-09-16 23:30:00 AKDT    1234 SuperTag
      624  2013-09-16 23:45:00 AKDT    1234 SuperTag
      625  2013-09-17 00:00:00 AKDT    1234 SuperTag
      626  2013-09-17 00:30:00 AKDT    1234 SuperTag
      627  2013-09-17 00:45:00 AKDT    1234 SuperTag
      628  2013-09-17 01:00:00 AKDT    1234 SuperTag
      629  2013-09-17 01:30:00 AKDT    1234 SuperTag
      630  2013-09-17 01:45:00 AKDT    1234 SuperTag
      631  2013-09-17 02:00:00 AKDT    1234 SuperTag
      632  2013-09-17 02:30:00 AKDT    1234 SuperTag
      633  2013-09-17 02:45:00 AKDT    1234 SuperTag
      634  2013-09-17 03:00:00 AKDT    1234 SuperTag
      635  2013-09-17 03:30:00 AKDT    1234 SuperTag
      636  2013-09-17 03:45:00 AKDT    1234 SuperTag
      637  2013-09-17 04:00:00 AKDT    1234 SuperTag
      638  2013-09-17 04:30:00 AKDT    1234 SuperTag
      639  2013-09-17 04:45:00 AKDT    1234 SuperTag
      640  2013-09-17 05:00:00 AKDT    1234 SuperTag
      641  2013-09-17 05:30:00 AKDT    1234 SuperTag
      642  2013-09-17 05:45:00 AKDT    1234 SuperTag
      643  2013-09-17 06:00:00 AKDT    1234 SuperTag
      644  2013-09-17 06:30:00 AKDT    1234 SuperTag
      645  2013-09-17 06:45:00 AKDT    1234 SuperTag
      646  2013-09-17 07:00:00 AKDT    1234 SuperTag
      647  2013-09-17 07:30:00 AKDT    1234 SuperTag
      648  2013-09-17 07:45:00 AKDT    1234 SuperTag
      649  2013-09-17 08:00:00 AKDT    1234 SuperTag
      650  2013-09-17 08:30:00 AKDT    1234 SuperTag
      651  2013-09-17 08:45:00 AKDT    1234 SuperTag
      652  2013-09-17 09:00:00 AKDT    1234 SuperTag
      653  2013-09-17 09:30:00 AKDT    1234 SuperTag
      654  2013-09-17 09:45:00 AKDT    1234 SuperTag
      655  2013-09-17 10:00:00 AKDT    1234 SuperTag
      656  2013-09-17 10:30:00 AKDT    1234 SuperTag
      657  2013-09-17 10:45:00 AKDT    1234 SuperTag
      658  2013-09-17 11:00:00 AKDT    1234 SuperTag
      659  2013-09-17 11:30:00 AKDT    1234 SuperTag
      660  2013-09-17 11:45:00 AKDT    1234 SuperTag
      661  2013-09-17 12:00:00 AKDT    1234 SuperTag
      662  2013-09-17 12:30:00 AKDT    1234 SuperTag
      663  2013-09-17 12:45:00 AKDT    1234 SuperTag
      664  2013-09-17 13:00:00 AKDT    1234 SuperTag
      665  2013-09-17 13:30:00 AKDT    1234 SuperTag
      666  2013-09-17 13:45:00 AKDT    1234 SuperTag
      667  2013-09-17 14:00:00 AKDT    1234 SuperTag
      668  2013-09-17 14:30:00 AKDT    1234 SuperTag
      669  2013-09-17 14:45:00 AKDT    1234 SuperTag
      670  2013-09-17 15:00:00 AKDT    1234 SuperTag
      671  2013-09-17 15:30:00 AKDT    1234 SuperTag
      672  2013-09-17 15:45:00 AKDT    1234 SuperTag
      673  2013-09-17 16:00:00 AKDT    1234 SuperTag
      674  2013-09-17 16:15:00 AKDT    1234 SuperTag
      675  2013-09-17 16:30:00 AKDT    1234 SuperTag
      676  2013-09-17 17:00:00 AKDT    1234 SuperTag
      677  2013-09-17 17:15:00 AKDT    1234 SuperTag
      678  2013-09-17 17:30:00 AKDT    1234 SuperTag
      679  2013-09-17 18:00:00 AKDT    1234 SuperTag
      680  2013-09-17 18:15:00 AKDT    1234 SuperTag
      681  2013-09-17 18:30:00 AKDT    1234 SuperTag
      682  2013-09-17 19:00:00 AKDT    1234 SuperTag
      683  2013-09-17 19:15:00 AKDT    1234 SuperTag
      684  2013-09-17 19:30:00 AKDT    1234 SuperTag
      685  2013-09-17 20:00:00 AKDT    1234 SuperTag
      686  2013-09-17 20:15:00 AKDT    1234 SuperTag
      687  2013-09-17 20:30:00 AKDT    1234 SuperTag
      688  2013-09-17 21:00:00 AKDT    1234 SuperTag
      689  2013-09-17 21:15:00 AKDT    1234 SuperTag
      690  2013-09-17 21:30:00 AKDT    1234 SuperTag
      691  2013-09-17 22:00:00 AKDT    1234 SuperTag
      692  2013-09-17 22:15:00 AKDT    1234 SuperTag
      693  2013-09-17 22:30:00 AKDT    1234 SuperTag
      694  2013-09-17 23:00:00 AKDT    1234 SuperTag
      695  2013-09-17 23:15:00 AKDT    1234 SuperTag
      696  2013-09-17 23:30:00 AKDT    1234 SuperTag
      697  2013-09-18 00:00:00 AKDT    1234 SuperTag
      698  2013-09-18 00:15:00 AKDT    1234 SuperTag
      699  2013-09-18 00:30:00 AKDT    1234 SuperTag
      700  2013-09-18 01:00:00 AKDT    1234 SuperTag
      701  2013-09-18 01:15:00 AKDT    1234 SuperTag
      702  2013-09-18 01:30:00 AKDT    1234 SuperTag
      703  2013-09-18 02:00:00 AKDT    1234 SuperTag
      704  2013-09-18 02:15:00 AKDT    1234 SuperTag
      705  2013-09-18 02:30:00 AKDT    1234 SuperTag
      706  2013-09-18 03:00:00 AKDT    1234 SuperTag
      707  2013-09-18 03:15:00 AKDT    1234 SuperTag
      708  2013-09-18 03:30:00 AKDT    1234 SuperTag
      709  2013-09-18 04:00:00 AKDT    1234 SuperTag
      710  2013-09-18 04:15:00 AKDT    1234 SuperTag
      711  2013-09-18 04:30:00 AKDT    1234 SuperTag
      712  2013-09-18 05:00:00 AKDT    1234 SuperTag
      713  2013-09-18 05:15:00 AKDT    1234 SuperTag
      714  2013-09-18 05:30:00 AKDT    1234 SuperTag
      715  2013-09-18 06:00:00 AKDT    1234 SuperTag
      716  2013-09-18 06:15:00 AKDT    1234 SuperTag
      717  2013-09-18 06:30:00 AKDT    1234 SuperTag
      718  2013-09-18 07:00:00 AKDT    1234 SuperTag
      719  2013-09-18 07:15:00 AKDT    1234 SuperTag
      720  2013-09-18 07:30:00 AKDT    1234 SuperTag
      721  2013-09-18 08:00:00 AKDT    1234 SuperTag
      722  2013-09-18 08:15:00 AKDT    1234 SuperTag
      723  2013-09-18 08:30:00 AKDT    1234 SuperTag
      724  2013-09-18 09:00:00 AKDT    1234 SuperTag
      725  2013-09-18 09:15:00 AKDT    1234 SuperTag
      726  2013-09-18 09:30:00 AKDT    1234 SuperTag
      727  2013-09-18 10:00:00 AKDT    1234 SuperTag
      728  2013-09-18 10:15:00 AKDT    1234 SuperTag
      729  2013-09-18 10:30:00 AKDT    1234 SuperTag
      730  2013-09-18 11:00:00 AKDT    1234 SuperTag
      731  2013-09-18 11:15:00 AKDT    1234 SuperTag
      732  2013-09-18 11:30:00 AKDT    1234 SuperTag
      733  2013-09-18 12:00:00 AKDT    1234 SuperTag
      734  2013-09-18 12:15:00 AKDT    1234 SuperTag
      735  2013-09-18 12:30:00 AKDT    1234 SuperTag
      736  2013-09-18 13:00:00 AKDT    1234 SuperTag
      737  2013-09-18 13:15:00 AKDT    1234 SuperTag
      738  2013-09-18 13:30:00 AKDT    1234 SuperTag
      739  2013-09-18 14:00:00 AKDT    1234 SuperTag
      740  2013-09-18 14:15:00 AKDT    1234 SuperTag
      741  2013-09-18 14:30:00 AKDT    1234 SuperTag
      742  2013-09-18 15:00:00 AKDT    1234 SuperTag
      743  2013-09-18 15:15:00 AKDT    1234 SuperTag
      744  2013-09-18 15:30:00 AKDT    1234 SuperTag
      745  2013-09-18 16:00:00 AKDT    1234 SuperTag
      746  2013-09-18 16:15:00 AKDT    1234 SuperTag
      747  2013-09-18 16:30:00 AKDT    1234 SuperTag
      748  2013-09-18 17:00:00 AKDT    1234 SuperTag
      749  2013-09-18 17:15:00 AKDT    1234 SuperTag
      750  2013-09-18 17:30:00 AKDT    1234 SuperTag
      751  2013-09-18 18:00:00 AKDT    1234 SuperTag
      752  2013-09-18 18:15:00 AKDT    1234 SuperTag
      753  2013-09-18 18:30:00 AKDT    1234 SuperTag
      754  2013-09-18 19:00:00 AKDT    1234 SuperTag
      755  2013-09-18 19:15:00 AKDT    1234 SuperTag
      756  2013-09-18 19:30:00 AKDT    1234 SuperTag
      757  2013-09-18 20:00:00 AKDT    1234 SuperTag
      758  2013-09-18 20:15:00 AKDT    1234 SuperTag
      759  2013-09-18 20:30:00 AKDT    1234 SuperTag
      760  2013-09-18 21:00:00 AKDT    1234 SuperTag
      761  2013-09-18 21:15:00 AKDT    1234 SuperTag
      762  2013-09-18 21:30:00 AKDT    1234 SuperTag
      763  2013-09-18 22:00:00 AKDT    1234 SuperTag
      764  2013-09-18 22:15:00 AKDT    1234 SuperTag
      765  2013-09-18 22:30:00 AKDT    1234 SuperTag
      766  2013-09-18 23:00:00 AKDT    1234 SuperTag
      767  2013-09-18 23:15:00 AKDT    1234 SuperTag
      768  2013-09-18 23:30:00 AKDT    1234 SuperTag
      769  2013-09-19 00:00:00 AKDT    1234 SuperTag
      770  2013-09-19 00:15:00 AKDT    1234 SuperTag
      771  2013-09-19 00:30:00 AKDT    1234 SuperTag
      772  2013-09-19 01:00:00 AKDT    1234 SuperTag
      773  2013-09-19 01:15:00 AKDT    1234 SuperTag
      774  2013-09-19 01:30:00 AKDT    1234 SuperTag
      775  2013-09-19 02:00:00 AKDT    1234 SuperTag
      776  2013-09-19 02:15:00 AKDT    1234 SuperTag
      777  2013-09-19 02:30:00 AKDT    1234 SuperTag
      778  2013-09-19 03:00:00 AKDT    1234 SuperTag
      779  2013-09-19 03:15:00 AKDT    1234 SuperTag
      780  2013-09-19 03:30:00 AKDT    1234 SuperTag
      781  2013-09-19 04:00:00 AKDT    1234 SuperTag
      782  2013-09-19 04:15:00 AKDT    1234 SuperTag
      783  2013-09-19 04:30:00 AKDT    1234 SuperTag
      784  2013-09-19 05:00:00 AKDT    1234 SuperTag
      785  2013-09-19 05:15:00 AKDT    1234 SuperTag
      786  2013-09-19 05:30:00 AKDT    1234 SuperTag
      787  2013-09-19 06:00:00 AKDT    1234 SuperTag
      788  2013-09-19 06:15:00 AKDT    1234 SuperTag
      789  2013-09-19 06:30:00 AKDT    1234 SuperTag
      790  2013-09-19 07:00:00 AKDT    1234 SuperTag
      791  2013-09-19 07:15:00 AKDT    1234 SuperTag
      792  2013-09-19 07:30:00 AKDT    1234 SuperTag
      793  2013-09-19 08:00:00 AKDT    1234 SuperTag
      794  2013-09-19 08:15:00 AKDT    1234 SuperTag
      795  2013-09-19 08:30:00 AKDT    1234 SuperTag
      796  2013-09-19 09:00:00 AKDT    1234 SuperTag
      797  2013-09-19 09:15:00 AKDT    1234 SuperTag
      798  2013-09-19 09:30:00 AKDT    1234 SuperTag
      799  2013-09-19 10:00:00 AKDT    1234 SuperTag
      800  2013-09-19 10:15:00 AKDT    1234 SuperTag
      801  2013-09-19 10:30:00 AKDT    1234 SuperTag
      802  2013-09-19 11:00:00 AKDT    1234 SuperTag
      803  2013-09-19 11:15:00 AKDT    1234 SuperTag
      804  2013-09-19 11:30:00 AKDT    1234 SuperTag
      805  2013-09-19 12:00:00 AKDT    1234 SuperTag
      806  2013-09-19 12:15:00 AKDT    1234 SuperTag
      807  2013-09-19 12:30:00 AKDT    1234 SuperTag
      808  2013-09-19 13:00:00 AKDT    1234 SuperTag
      809  2013-09-19 13:15:00 AKDT    1234 SuperTag
      810  2013-09-19 13:30:00 AKDT    1234 SuperTag
      811  2013-09-19 14:00:00 AKDT    1234 SuperTag
      812  2013-09-19 14:15:00 AKDT    1234 SuperTag
      813  2013-09-19 14:30:00 AKDT    1234 SuperTag
      814  2013-09-19 15:00:00 AKDT    1234 SuperTag
      815  2013-09-19 15:15:00 AKDT    1234 SuperTag
      816  2013-09-19 15:30:00 AKDT    1234 SuperTag
      817  2013-09-19 16:30:00 AKDT    1234 SuperTag
      818  2013-09-19 16:45:00 AKDT    1234 SuperTag
      819  2013-09-19 17:30:00 AKDT    1234 SuperTag
      820  2013-09-19 17:45:00 AKDT    1234 SuperTag
      821  2013-09-19 18:30:00 AKDT    1234 SuperTag
      822  2013-09-19 18:45:00 AKDT    1234 SuperTag
      823  2013-09-19 19:30:00 AKDT    1234 SuperTag
      824  2013-09-19 19:45:00 AKDT    1234 SuperTag
      825  2013-09-19 20:30:00 AKDT    1234 SuperTag
      826  2013-09-19 20:45:00 AKDT    1234 SuperTag
      827  2013-09-19 21:30:00 AKDT    1234 SuperTag
      828  2013-09-19 21:45:00 AKDT    1234 SuperTag
      829  2013-09-19 22:30:00 AKDT    1234 SuperTag
      830  2013-09-19 22:45:00 AKDT    1234 SuperTag
      831  2013-09-19 23:30:00 AKDT    1234 SuperTag
      832  2013-09-19 23:45:00 AKDT    1234 SuperTag
      833  2013-09-20 00:30:00 AKDT    1234 SuperTag
      834  2013-09-20 00:45:00 AKDT    1234 SuperTag
      835  2013-09-20 01:30:00 AKDT    1234 SuperTag
      836  2013-09-20 01:45:00 AKDT    1234 SuperTag
      837  2013-09-20 02:30:00 AKDT    1234 SuperTag
      838  2013-09-20 02:45:00 AKDT    1234 SuperTag
      839  2013-09-20 03:30:00 AKDT    1234 SuperTag
      840  2013-09-20 03:45:00 AKDT    1234 SuperTag
      841  2013-09-20 04:30:00 AKDT    1234 SuperTag
      842  2013-09-20 04:45:00 AKDT    1234 SuperTag
      843  2013-09-20 05:30:00 AKDT    1234 SuperTag
      844  2013-09-20 05:45:00 AKDT    1234 SuperTag
      845  2013-09-20 06:30:00 AKDT    1234 SuperTag
      846  2013-09-20 06:45:00 AKDT    1234 SuperTag
      847  2013-09-20 07:30:00 AKDT    1234 SuperTag
      848  2013-09-20 07:45:00 AKDT    1234 SuperTag
      849  2013-09-20 08:30:00 AKDT    1234 SuperTag
      850  2013-09-20 08:45:00 AKDT    1234 SuperTag
      851  2013-09-20 09:30:00 AKDT    1234 SuperTag
      852  2013-09-20 09:45:00 AKDT    1234 SuperTag
      853  2013-09-20 10:30:00 AKDT    1234 SuperTag
      854  2013-09-20 10:45:00 AKDT    1234 SuperTag
      855  2013-09-20 11:30:00 AKDT    1234 SuperTag
      856  2013-09-20 11:45:00 AKDT    1234 SuperTag
      857  2013-09-20 12:30:00 AKDT    1234 SuperTag
      858  2013-09-20 12:45:00 AKDT    1234 SuperTag
      859  2013-09-20 13:30:00 AKDT    1234 SuperTag
      860  2013-09-20 13:45:00 AKDT    1234 SuperTag
      861  2013-09-20 14:30:00 AKDT    1234 SuperTag
      862  2013-09-20 14:45:00 AKDT    1234 SuperTag
      863  2013-09-20 15:30:00 AKDT    1234 SuperTag
      864  2013-09-20 15:45:00 AKDT    1234 SuperTag
      865  2013-09-20 16:00:00 AKDT    1234 SuperTag
      866  2013-09-20 16:15:00 AKDT    1234 SuperTag
      867  2013-09-20 16:30:00 AKDT    1234 SuperTag
      868  2013-09-20 17:00:00 AKDT    1234 SuperTag
      869  2013-09-20 17:15:00 AKDT    1234 SuperTag
      870  2013-09-20 17:30:00 AKDT    1234 SuperTag
      871  2013-09-20 18:00:00 AKDT    1234 SuperTag
      872  2013-09-20 18:15:00 AKDT    1234 SuperTag
      873  2013-09-20 18:30:00 AKDT    1234 SuperTag
      874  2013-09-20 19:00:00 AKDT    1234 SuperTag
      875  2013-09-20 19:15:00 AKDT    1234 SuperTag
      876  2013-09-20 19:30:00 AKDT    1234 SuperTag
      877  2013-09-20 20:00:00 AKDT    1234 SuperTag
      878  2013-09-20 20:15:00 AKDT    1234 SuperTag
      879  2013-09-20 20:30:00 AKDT    1234 SuperTag
      880  2013-09-20 21:00:00 AKDT    1234 SuperTag
      881  2013-09-20 21:15:00 AKDT    1234 SuperTag
      882  2013-09-20 21:30:00 AKDT    1234 SuperTag
      883  2013-09-20 22:00:00 AKDT    1234 SuperTag
      884  2013-09-20 22:15:00 AKDT    1234 SuperTag
      885  2013-09-20 22:30:00 AKDT    1234 SuperTag
      886  2013-09-20 23:00:00 AKDT    1234 SuperTag
      887  2013-09-20 23:15:00 AKDT    1234 SuperTag
      888  2013-09-20 23:30:00 AKDT    1234 SuperTag
      889  2013-09-21 00:00:00 AKDT    1234 SuperTag
      890  2013-09-21 00:15:00 AKDT    1234 SuperTag
      891  2013-09-21 00:30:00 AKDT    1234 SuperTag
      892  2013-09-21 01:00:00 AKDT    1234 SuperTag
      893  2013-09-21 01:15:00 AKDT    1234 SuperTag
      894  2013-09-21 01:30:00 AKDT    1234 SuperTag
      895  2013-09-21 02:00:00 AKDT    1234 SuperTag
      896  2013-09-21 02:15:00 AKDT    1234 SuperTag
      897  2013-09-21 02:30:00 AKDT    1234 SuperTag
      898  2013-09-21 03:00:00 AKDT    1234 SuperTag
      899  2013-09-21 03:15:00 AKDT    1234 SuperTag
      900  2013-09-21 03:30:00 AKDT    1234 SuperTag
      901  2013-09-21 04:00:00 AKDT    1234 SuperTag
      902  2013-09-21 04:15:00 AKDT    1234 SuperTag
      903  2013-09-21 04:30:00 AKDT    1234 SuperTag
      904  2013-09-21 05:00:00 AKDT    1234 SuperTag
      905  2013-09-21 05:15:00 AKDT    1234 SuperTag
      906  2013-09-21 05:30:00 AKDT    1234 SuperTag
      907  2013-09-21 06:00:00 AKDT    1234 SuperTag
      908  2013-09-21 06:15:00 AKDT    1234 SuperTag
      909  2013-09-21 06:30:00 AKDT    1234 SuperTag
      910  2013-09-21 07:00:00 AKDT    1234 SuperTag
      911  2013-09-21 07:15:00 AKDT    1234 SuperTag
      912  2013-09-21 07:30:00 AKDT    1234 SuperTag
      913  2013-09-21 08:00:00 AKDT    1234 SuperTag
      914  2013-09-21 08:15:00 AKDT    1234 SuperTag
      915  2013-09-21 08:30:00 AKDT    1234 SuperTag
      916  2013-09-21 09:00:00 AKDT    1234 SuperTag
      917  2013-09-21 09:15:00 AKDT    1234 SuperTag
      918  2013-09-21 09:30:00 AKDT    1234 SuperTag
      919  2013-09-21 10:00:00 AKDT    1234 SuperTag
      920  2013-09-21 10:15:00 AKDT    1234 SuperTag
      921  2013-09-21 10:30:00 AKDT    1234 SuperTag
      922  2013-09-21 11:00:00 AKDT    1234 SuperTag
      923  2013-09-21 11:15:00 AKDT    1234 SuperTag
      924  2013-09-21 11:30:00 AKDT    1234 SuperTag
      925  2013-09-21 12:00:00 AKDT    1234 SuperTag
      926  2013-09-21 12:15:00 AKDT    1234 SuperTag
      927  2013-09-21 12:30:00 AKDT    1234 SuperTag
      928  2013-09-21 13:00:00 AKDT    1234 SuperTag
      929  2013-09-21 13:15:00 AKDT    1234 SuperTag
      930  2013-09-21 13:30:00 AKDT    1234 SuperTag
      931  2013-09-21 14:00:00 AKDT    1234 SuperTag
      932  2013-09-21 14:15:00 AKDT    1234 SuperTag
      933  2013-09-21 14:30:00 AKDT    1234 SuperTag
      934  2013-09-21 15:00:00 AKDT    1234 SuperTag
      935  2013-09-21 15:15:00 AKDT    1234 SuperTag
      936  2013-09-21 15:30:00 AKDT    1234 SuperTag
      937  2013-09-21 16:00:00 AKDT    1234 SuperTag
      938  2013-09-21 17:00:00 AKDT    1234 SuperTag
      939  2013-09-21 18:00:00 AKDT    1234 SuperTag
      940  2013-09-21 19:00:00 AKDT    1234 SuperTag
      941  2013-09-21 20:00:00 AKDT    1234 SuperTag
      942  2013-09-21 21:00:00 AKDT    1234 SuperTag
      943  2013-09-21 22:00:00 AKDT    1234 SuperTag
      944  2013-09-21 23:00:00 AKDT    1234 SuperTag
      945  2013-09-22 00:00:00 AKDT    1234 SuperTag
      946  2013-09-22 01:00:00 AKDT    1234 SuperTag
      947  2013-09-22 02:00:00 AKDT    1234 SuperTag
      948  2013-09-22 03:00:00 AKDT    1234 SuperTag
      949  2013-09-22 04:00:00 AKDT    1234 SuperTag
      950  2013-09-22 05:00:00 AKDT    1234 SuperTag
      951  2013-09-22 06:00:00 AKDT    1234 SuperTag
      952  2013-09-22 07:00:00 AKDT    1234 SuperTag
      953  2013-09-22 08:00:00 AKDT    1234 SuperTag
      954  2013-09-22 09:00:00 AKDT    1234 SuperTag
      955  2013-09-22 10:00:00 AKDT    1234 SuperTag
      956  2013-09-22 11:00:00 AKDT    1234 SuperTag
      957  2013-09-22 12:00:00 AKDT    1234 SuperTag
      958  2013-09-22 13:00:00 AKDT    1234 SuperTag
      959  2013-09-22 14:00:00 AKDT    1234 SuperTag
      960  2013-09-22 15:00:00 AKDT    1234 SuperTag
      961  2013-09-22 16:30:00 AKDT    1234 SuperTag
      962  2013-09-22 16:45:00 AKDT    1234 SuperTag
      963  2013-09-22 17:30:00 AKDT    1234 SuperTag
      964  2013-09-22 17:45:00 AKDT    1234 SuperTag
      965  2013-09-22 18:30:00 AKDT    1234 SuperTag
      966  2013-09-22 18:45:00 AKDT    1234 SuperTag
      967  2013-09-22 19:30:00 AKDT    1234 SuperTag
      968  2013-09-22 19:45:00 AKDT    1234 SuperTag
      969  2013-09-22 20:30:00 AKDT    1234 SuperTag
      970  2013-09-22 20:45:00 AKDT    1234 SuperTag
      971  2013-09-22 21:30:00 AKDT    1234 SuperTag
      972  2013-09-22 21:45:00 AKDT    1234 SuperTag
      973  2013-09-22 22:30:00 AKDT    1234 SuperTag
      974  2013-09-22 22:45:00 AKDT    1234 SuperTag
      975  2013-09-22 23:30:00 AKDT    1234 SuperTag
      976  2013-09-22 23:45:00 AKDT    1234 SuperTag
      977  2013-09-23 00:30:00 AKDT    1234 SuperTag
      978  2013-09-23 00:45:00 AKDT    1234 SuperTag
      979  2013-09-23 01:30:00 AKDT    1234 SuperTag
      980  2013-09-23 01:45:00 AKDT    1234 SuperTag
      981  2013-09-23 02:30:00 AKDT    1234 SuperTag
      982  2013-09-23 02:45:00 AKDT    1234 SuperTag
      983  2013-09-23 03:30:00 AKDT    1234 SuperTag
      984  2013-09-23 03:45:00 AKDT    1234 SuperTag
      985  2013-09-23 04:30:00 AKDT    1234 SuperTag
      986  2013-09-23 04:45:00 AKDT    1234 SuperTag
      987  2013-09-23 05:30:00 AKDT    1234 SuperTag
      988  2013-09-23 05:45:00 AKDT    1234 SuperTag
      989  2013-09-23 06:30:00 AKDT    1234 SuperTag
      990  2013-09-23 06:45:00 AKDT    1234 SuperTag
      991  2013-09-23 07:30:00 AKDT    1234 SuperTag
      992  2013-09-23 07:45:00 AKDT    1234 SuperTag
      993  2013-09-23 08:30:00 AKDT    1234 SuperTag
      994  2013-09-23 08:45:00 AKDT    1234 SuperTag
      995  2013-09-23 09:30:00 AKDT    1234 SuperTag
      996  2013-09-23 09:45:00 AKDT    1234 SuperTag
      997  2013-09-23 10:30:00 AKDT    1234 SuperTag
      998  2013-09-23 10:45:00 AKDT    1234 SuperTag
      999  2013-09-23 11:30:00 AKDT    1234 SuperTag
      1000 2013-09-23 11:45:00 AKDT    1234 SuperTag
      1001 2013-09-23 12:30:00 AKDT    1234 SuperTag
      1002 2013-09-23 12:45:00 AKDT    1234 SuperTag
      1003 2013-09-23 13:30:00 AKDT    1234 SuperTag
      1004 2013-09-23 13:45:00 AKDT    1234 SuperTag
      1005 2013-09-23 14:30:00 AKDT    1234 SuperTag
      1006 2013-09-23 14:45:00 AKDT    1234 SuperTag
      1007 2013-09-23 15:30:00 AKDT    1234 SuperTag
      1008 2013-09-23 15:45:00 AKDT    1234 SuperTag
      1009 2013-09-23 16:00:00 AKDT    1234 SuperTag
      1010 2013-09-23 16:45:00 AKDT    1234 SuperTag
      1011 2013-09-23 17:00:00 AKDT    1234 SuperTag
      1012 2013-09-23 17:45:00 AKDT    1234 SuperTag
      1013 2013-09-23 18:00:00 AKDT    1234 SuperTag
      1014 2013-09-23 18:45:00 AKDT    1234 SuperTag
      1015 2013-09-23 19:00:00 AKDT    1234 SuperTag
      1016 2013-09-23 19:45:00 AKDT    1234 SuperTag
      1017 2013-09-23 20:00:00 AKDT    1234 SuperTag
      1018 2013-09-23 20:45:00 AKDT    1234 SuperTag
      1019 2013-09-23 21:00:00 AKDT    1234 SuperTag
      1020 2013-09-23 21:45:00 AKDT    1234 SuperTag
      1021 2013-09-23 22:00:00 AKDT    1234 SuperTag
      1022 2013-09-23 22:45:00 AKDT    1234 SuperTag
      1023 2013-09-23 23:00:00 AKDT    1234 SuperTag
      1024 2013-09-23 23:45:00 AKDT    1234 SuperTag
      1025 2013-09-24 00:00:00 AKDT    1234 SuperTag
      1026 2013-09-24 00:45:00 AKDT    1234 SuperTag
      1027 2013-09-24 01:00:00 AKDT    1234 SuperTag
      1028 2013-09-24 01:45:00 AKDT    1234 SuperTag
      1029 2013-09-24 02:00:00 AKDT    1234 SuperTag
      1030 2013-09-24 02:45:00 AKDT    1234 SuperTag
      1031 2013-09-24 03:00:00 AKDT    1234 SuperTag
      1032 2013-09-24 03:45:00 AKDT    1234 SuperTag
      1033 2013-09-24 04:00:00 AKDT    1234 SuperTag
      1034 2013-09-24 04:45:00 AKDT    1234 SuperTag
      1035 2013-09-24 05:00:00 AKDT    1234 SuperTag
      1036 2013-09-24 05:45:00 AKDT    1234 SuperTag
      1037 2013-09-24 06:00:00 AKDT    1234 SuperTag
      1038 2013-09-24 06:45:00 AKDT    1234 SuperTag
      1039 2013-09-24 07:00:00 AKDT    1234 SuperTag
      1040 2013-09-24 07:45:00 AKDT    1234 SuperTag
      1041 2013-09-24 08:00:00 AKDT    1234 SuperTag
      1042 2013-09-24 08:45:00 AKDT    1234 SuperTag
      1043 2013-09-24 09:00:00 AKDT    1234 SuperTag
      1044 2013-09-24 09:45:00 AKDT    1234 SuperTag
      1045 2013-09-24 10:00:00 AKDT    1234 SuperTag
      1046 2013-09-24 10:35:16 AKDT    1234 SuperTag
      1047 2013-09-24 10:45:00 AKDT    1234 SuperTag
      1048 2013-09-24 11:00:00 AKDT    1234 SuperTag
      1049 2013-09-24 11:45:00 AKDT    1234 SuperTag
      1050 2013-09-24 12:00:00 AKDT    1234 SuperTag
      1051 2013-09-24 12:45:00 AKDT    1234 SuperTag
      1052 2013-09-24 13:00:00 AKDT    1234 SuperTag
      1053 2013-09-24 13:45:00 AKDT    1234 SuperTag
      1054 2013-09-24 14:00:00 AKDT    1234 SuperTag
      1055 2013-09-24 14:45:00 AKDT    1234 SuperTag
      1056 2013-09-24 15:00:00 AKDT    1234 SuperTag
      1057 2013-09-24 15:45:00 AKDT    1234 SuperTag
      1058 2013-09-24 16:45:00 AKDT    1234 SuperTag
      1059 2013-09-24 17:06:46 AKDT    1234 SuperTag
      1060 2013-09-24 17:45:00 AKDT    1234 SuperTag
      1061 2013-09-24 18:45:00 AKDT    1234 SuperTag
      1062 2013-09-24 19:45:00 AKDT    1234 SuperTag
      1063 2013-09-24 20:45:00 AKDT    1234 SuperTag
      1064 2013-09-24 21:45:00 AKDT    1234 SuperTag
      1065 2013-09-24 22:45:00 AKDT    1234 SuperTag
      1066 2013-09-24 23:45:00 AKDT    1234 SuperTag
      1067 2013-09-25 00:45:00 AKDT    1234 SuperTag
      1068 2013-09-25 01:45:00 AKDT    1234 SuperTag
      1069 2013-09-25 02:45:00 AKDT    1234 SuperTag
      1070 2013-09-25 03:31:12 AKDT    1234 SuperTag
      1071 2013-09-25 03:45:00 AKDT    1234 SuperTag
      1072 2013-09-25 04:45:00 AKDT    1234 SuperTag
      1073 2013-09-25 05:45:00 AKDT    1234 SuperTag
      1074 2013-09-25 05:53:36 AKDT    1234 SuperTag
      1075 2013-09-25 06:14:09 AKDT    1234 SuperTag
      1076 2013-09-25 06:45:00 AKDT    1234 SuperTag
      1077 2013-09-25 06:52:18 AKDT    1234 SuperTag
      1078 2013-09-25 07:45:00 AKDT    1234 SuperTag
      1079 2013-09-25 08:45:00 AKDT    1234 SuperTag
      1080 2013-09-25 09:45:00 AKDT    1234 SuperTag
      1081 2013-09-25 10:45:00 AKDT    1234 SuperTag
      1082 2013-09-25 11:45:00 AKDT    1234 SuperTag
      1083 2013-09-25 12:45:00 AKDT    1234 SuperTag
      1084 2013-09-25 13:45:00 AKDT    1234 SuperTag
      1085 2013-09-25 14:45:00 AKDT    1234 SuperTag
      1086 2013-09-25 15:45:00 AKDT    1234 SuperTag
      1087 2013-09-25 16:00:00 AKDT    1234 SuperTag
      1088 2013-09-25 16:42:00 AKDT    1234 SuperTag
      1089 2013-09-25 17:00:00 AKDT    1234 SuperTag
      1090 2013-09-25 18:00:00 AKDT    1234 SuperTag
      1091 2013-09-25 19:00:00 AKDT    1234 SuperTag
      1092 2013-09-25 20:00:00 AKDT    1234 SuperTag
      1093 2013-09-25 21:00:00 AKDT    1234 SuperTag
      1094 2013-09-25 21:59:11 AKDT    1234 SuperTag
      1095 2013-09-25 21:59:11 AKDT    1234 SuperTag
      1096 2013-09-25 22:00:00 AKDT    1234 SuperTag
      1097 2013-09-25 23:00:00 AKDT    1234 SuperTag
      1098 2013-09-26 00:00:00 AKDT    1234 SuperTag
      1099 2013-09-26 01:00:00 AKDT    1234 SuperTag
      1100 2013-09-26 02:00:00 AKDT    1234 SuperTag
      1101 2013-09-26 03:00:00 AKDT    1234 SuperTag
      1102 2013-09-26 04:00:00 AKDT    1234 SuperTag
      1103 2013-09-26 05:00:00 AKDT    1234 SuperTag
      1104 2013-09-26 05:44:02 AKDT    1234 SuperTag
      1105 2013-09-26 06:00:00 AKDT    1234 SuperTag
      1106 2013-09-26 07:00:00 AKDT    1234 SuperTag
      1107 2013-09-26 08:00:00 AKDT    1234 SuperTag
      1108 2013-09-26 09:00:00 AKDT    1234 SuperTag
      1109 2013-09-26 10:00:00 AKDT    1234 SuperTag
      1110 2013-09-26 11:00:00 AKDT    1234 SuperTag
      1111 2013-09-26 12:00:00 AKDT    1234 SuperTag
      1112 2013-09-26 13:00:00 AKDT    1234 SuperTag
      1113 2013-09-26 14:00:00 AKDT    1234 SuperTag
      1114 2013-09-26 15:00:00 AKDT    1234 SuperTag
      1115 2013-09-26 16:00:00 AKDT    1234 SuperTag
      1116 2013-09-26 16:45:00 AKDT    1234 SuperTag
      1117 2013-09-26 17:00:00 AKDT    1234 SuperTag
      1118 2013-09-26 17:45:00 AKDT    1234 SuperTag
      1119 2013-09-26 18:00:00 AKDT    1234 SuperTag
      1120 2013-09-26 18:45:00 AKDT    1234 SuperTag
      1121 2013-09-26 19:00:00 AKDT    1234 SuperTag
      1122 2013-09-26 19:45:00 AKDT    1234 SuperTag
      1123 2013-09-26 20:00:00 AKDT    1234 SuperTag
      1124 2013-09-26 20:45:00 AKDT    1234 SuperTag
      1125 2013-09-26 21:00:00 AKDT    1234 SuperTag
      1126 2013-09-26 21:45:00 AKDT    1234 SuperTag
      1127 2013-09-26 22:00:00 AKDT    1234 SuperTag
      1128 2013-09-26 22:45:00 AKDT    1234 SuperTag
      1129 2013-09-26 23:00:00 AKDT    1234 SuperTag
      1130 2013-09-26 23:45:00 AKDT    1234 SuperTag
      1131 2013-09-27 00:00:00 AKDT    1234 SuperTag
      1132 2013-09-27 00:45:00 AKDT    1234 SuperTag
      1133 2013-09-27 01:00:00 AKDT    1234 SuperTag
      1134 2013-09-27 01:45:00 AKDT    1234 SuperTag
      1135 2013-09-27 02:00:00 AKDT    1234 SuperTag
      1136 2013-09-27 02:45:00 AKDT    1234 SuperTag
      1137 2013-09-27 03:00:00 AKDT    1234 SuperTag
      1138 2013-09-27 03:45:00 AKDT    1234 SuperTag
      1139 2013-09-27 04:00:00 AKDT    1234 SuperTag
      1140 2013-09-27 04:45:00 AKDT    1234 SuperTag
      1141 2013-09-27 05:00:00 AKDT    1234 SuperTag
      1142 2013-09-27 05:45:00 AKDT    1234 SuperTag
      1143 2013-09-27 06:00:00 AKDT    1234 SuperTag
      1144 2013-09-27 06:45:00 AKDT    1234 SuperTag
      1145 2013-09-27 07:00:00 AKDT    1234 SuperTag
      1146 2013-09-27 07:45:00 AKDT    1234 SuperTag
      1147 2013-09-27 08:00:00 AKDT    1234 SuperTag
      1148 2013-09-27 08:45:00 AKDT    1234 SuperTag
      1149 2013-09-27 09:00:00 AKDT    1234 SuperTag
      1150 2013-09-27 09:45:00 AKDT    1234 SuperTag
      1151 2013-09-27 10:00:00 AKDT    1234 SuperTag
      1152 2013-09-27 10:45:00 AKDT    1234 SuperTag
      1153 2013-09-27 11:00:00 AKDT    1234 SuperTag
      1154 2013-09-27 11:27:14 AKDT    1234 SuperTag
      1155 2013-09-27 11:45:00 AKDT    1234 SuperTag
      1156 2013-09-27 12:00:00 AKDT    1234 SuperTag
      1157 2013-09-27 12:45:00 AKDT    1234 SuperTag
      1158 2013-09-27 13:00:00 AKDT    1234 SuperTag
      1159 2013-09-27 13:45:00 AKDT    1234 SuperTag
      1160 2013-09-27 14:00:00 AKDT    1234 SuperTag
      1161 2013-09-27 14:45:00 AKDT    1234 SuperTag
      1162 2013-09-27 15:00:00 AKDT    1234 SuperTag
      1163 2013-09-27 15:45:00 AKDT    1234 SuperTag
      1164 2013-09-27 16:00:00 AKDT    1234 SuperTag
      1165 2013-09-27 16:30:00 AKDT    1234 SuperTag
      1166 2013-09-27 16:45:00 AKDT    1234 SuperTag
      1167 2013-09-27 17:00:00 AKDT    1234 SuperTag
      1168 2013-09-27 17:30:00 AKDT    1234 SuperTag
      1169 2013-09-27 17:33:03 AKDT    1234 SuperTag
      1170 2013-09-27 17:45:00 AKDT    1234 SuperTag
      1171 2013-09-27 18:00:00 AKDT    1234 SuperTag
      1172 2013-09-27 18:30:00 AKDT    1234 SuperTag
      1173 2013-09-27 18:45:00 AKDT    1234 SuperTag
      1174 2013-09-27 19:00:00 AKDT    1234 SuperTag
      1175 2013-09-27 19:30:00 AKDT    1234 SuperTag
      1176 2013-09-27 19:45:00 AKDT    1234 SuperTag
      1177 2013-09-27 20:00:00 AKDT    1234 SuperTag
      1178 2013-09-27 20:30:00 AKDT    1234 SuperTag
      1179 2013-09-27 20:45:00 AKDT    1234 SuperTag
      1180 2013-09-27 21:00:00 AKDT    1234 SuperTag
      1181 2013-09-27 21:17:28 AKDT    1234 SuperTag
      1182 2013-09-27 21:30:00 AKDT    1234 SuperTag
      1183 2013-09-27 21:45:00 AKDT    1234 SuperTag
      1184 2013-09-27 22:00:00 AKDT    1234 SuperTag
      1185 2013-09-27 22:30:00 AKDT    1234 SuperTag
      1186 2013-09-27 22:45:00 AKDT    1234 SuperTag
      1187 2013-09-27 23:00:00 AKDT    1234 SuperTag
      1188 2013-09-27 23:30:00 AKDT    1234 SuperTag
      1189 2013-09-27 23:45:00 AKDT    1234 SuperTag
      1190 2013-09-28 00:00:00 AKDT    1234 SuperTag
      1191 2013-09-28 00:30:00 AKDT    1234 SuperTag
      1192 2013-09-28 00:45:00 AKDT    1234 SuperTag
      1193 2013-09-28 01:00:00 AKDT    1234 SuperTag
      1194 2013-09-28 01:30:00 AKDT    1234 SuperTag
      1195 2013-09-28 01:45:00 AKDT    1234 SuperTag
      1196 2013-09-28 02:00:00 AKDT    1234 SuperTag
      1197 2013-09-28 02:30:00 AKDT    1234 SuperTag
      1198 2013-09-28 02:45:00 AKDT    1234 SuperTag
      1199 2013-09-28 03:00:00 AKDT    1234 SuperTag
      1200 2013-09-28 03:30:00 AKDT    1234 SuperTag
      1201 2013-09-28 03:45:00 AKDT    1234 SuperTag
      1202 2013-09-28 04:00:00 AKDT    1234 SuperTag
      1203 2013-09-28 04:30:00 AKDT    1234 SuperTag
      1204 2013-09-28 04:45:00 AKDT    1234 SuperTag
      1205 2013-09-28 05:00:00 AKDT    1234 SuperTag
      1206 2013-09-28 05:21:40 AKDT    1234 SuperTag
      1207 2013-09-28 05:30:00 AKDT    1234 SuperTag
      1208 2013-09-28 05:45:00 AKDT    1234 SuperTag
      1209 2013-09-28 06:00:00 AKDT    1234 SuperTag
      1210 2013-09-28 06:20:49 AKDT    1234 SuperTag
      1211 2013-09-28 06:30:00 AKDT    1234 SuperTag
      1212 2013-09-28 06:45:00 AKDT    1234 SuperTag
      1213 2013-09-28 07:00:00 AKDT    1234 SuperTag
      1214 2013-09-28 07:30:00 AKDT    1234 SuperTag
      1215 2013-09-28 07:45:00 AKDT    1234 SuperTag
      1216 2013-09-28 08:00:00 AKDT    1234 SuperTag
      1217 2013-09-28 08:30:00 AKDT    1234 SuperTag
      1218 2013-09-28 08:45:00 AKDT    1234 SuperTag
      1219 2013-09-28 09:00:00 AKDT    1234 SuperTag
      1220 2013-09-28 09:30:00 AKDT    1234 SuperTag
      1221 2013-09-28 09:45:00 AKDT    1234 SuperTag
      1222 2013-09-28 10:00:00 AKDT    1234 SuperTag
      1223 2013-09-28 10:30:00 AKDT    1234 SuperTag
      1224 2013-09-28 10:45:00 AKDT    1234 SuperTag
      1225 2013-09-28 11:00:00 AKDT    1234 SuperTag
      1226 2013-09-28 11:06:22 AKDT    1234 SuperTag
      1227 2013-09-28 11:30:00 AKDT    1234 SuperTag
      1228 2013-09-28 11:45:00 AKDT    1234 SuperTag
      1229 2013-09-28 12:00:00 AKDT    1234 SuperTag
      1230 2013-09-28 12:30:00 AKDT    1234 SuperTag
      1231 2013-09-28 12:45:00 AKDT    1234 SuperTag
      1232 2013-09-28 13:00:00 AKDT    1234 SuperTag
      1233 2013-09-28 13:30:00 AKDT    1234 SuperTag
      1234 2013-09-28 13:45:00 AKDT    1234 SuperTag
      1235 2013-09-28 14:00:00 AKDT    1234 SuperTag
      1236 2013-09-28 14:30:00 AKDT    1234 SuperTag
      1237 2013-09-28 14:45:00 AKDT    1234 SuperTag
      1238 2013-09-28 15:00:00 AKDT    1234 SuperTag
      1239 2013-09-28 15:15:19 AKDT    1234 SuperTag
      1240 2013-09-28 15:30:00 AKDT    1234 SuperTag
      1241 2013-09-28 15:45:00 AKDT    1234 SuperTag
      1242 2013-09-28 16:00:00 AKDT    1234 SuperTag
      1243 2013-09-28 16:15:00 AKDT    1234 SuperTag
      1244 2013-09-28 17:00:00 AKDT    1234 SuperTag
      1245 2013-09-28 17:07:56 AKDT    1234 SuperTag
      1246 2013-09-28 17:15:00 AKDT    1234 SuperTag
      1247 2013-09-28 18:00:00 AKDT    1234 SuperTag
      1248 2013-09-28 18:15:00 AKDT    1234 SuperTag
      1249 2013-09-28 19:00:00 AKDT    1234 SuperTag
      1250 2013-09-28 19:15:00 AKDT    1234 SuperTag
      1251 2013-09-28 20:00:00 AKDT    1234 SuperTag
      1252 2013-09-28 20:15:00 AKDT    1234 SuperTag
      1253 2013-09-28 21:00:00 AKDT    1234 SuperTag
      1254 2013-09-28 21:15:00 AKDT    1234 SuperTag
      1255 2013-09-28 21:21:55 AKDT    1234 SuperTag
      1256 2013-09-28 22:00:00 AKDT    1234 SuperTag
      1257 2013-09-28 22:15:00 AKDT    1234 SuperTag
      1258 2013-09-28 23:00:00 AKDT    1234 SuperTag
      1259 2013-09-28 23:15:00 AKDT    1234 SuperTag
      1260 2013-09-29 00:00:00 AKDT    1234 SuperTag
      1261 2013-09-29 00:15:00 AKDT    1234 SuperTag
      1262 2013-09-29 01:00:00 AKDT    1234 SuperTag
      1263 2013-09-29 01:15:00 AKDT    1234 SuperTag
      1264 2013-09-29 02:00:00 AKDT    1234 SuperTag
      1265 2013-09-29 02:15:00 AKDT    1234 SuperTag
      1266 2013-09-29 03:00:00 AKDT    1234 SuperTag
      1267 2013-09-29 03:15:00 AKDT    1234 SuperTag
      1268 2013-09-29 04:00:00 AKDT    1234 SuperTag
      1269 2013-09-29 04:15:00 AKDT    1234 SuperTag
      1270 2013-09-29 05:00:00 AKDT    1234 SuperTag
      1271 2013-09-29 05:10:39 AKDT    1234 SuperTag
      1272 2013-09-29 05:15:00 AKDT    1234 SuperTag
      1273 2013-09-29 05:48:49 AKDT    1234 SuperTag
      1274 2013-09-29 06:00:00 AKDT    1234 SuperTag
      1275 2013-09-29 06:15:00 AKDT    1234 SuperTag
      1276 2013-09-29 06:55:01 AKDT    1234 SuperTag
      1277 2013-09-29 07:00:00 AKDT    1234 SuperTag
      1278 2013-09-29 07:15:00 AKDT    1234 SuperTag
      1279 2013-09-29 08:00:00 AKDT    1234 SuperTag
      1280 2013-09-29 08:15:00 AKDT    1234 SuperTag
      1281 2013-09-29 09:00:00 AKDT    1234 SuperTag
      1282 2013-09-29 09:15:00 AKDT    1234 SuperTag
      1283 2013-09-29 10:00:00 AKDT    1234 SuperTag
      1284 2013-09-29 10:15:00 AKDT    1234 SuperTag
      1285 2013-09-29 10:45:27 AKDT    1234 SuperTag
      1286 2013-09-29 11:00:00 AKDT    1234 SuperTag
      1287 2013-09-29 11:15:00 AKDT    1234 SuperTag
      1288 2013-09-29 11:16:03 AKDT    1234 SuperTag
      1289 2013-09-29 12:00:00 AKDT    1234 SuperTag
      1290 2013-09-29 12:15:00 AKDT    1234 SuperTag
      1291 2013-09-29 13:00:00 AKDT    1234 SuperTag
      1292 2013-09-29 13:15:00 AKDT    1234 SuperTag
      1293 2013-09-29 14:00:00 AKDT    1234 SuperTag
      1294 2013-09-29 14:15:00 AKDT    1234 SuperTag
      1295 2013-09-29 14:22:56 AKDT    1234 SuperTag
      1296 2013-09-29 15:00:00 AKDT    1234 SuperTag
      1297 2013-09-29 15:05:31 AKDT    1234 SuperTag
      1298 2013-09-29 15:15:00 AKDT    1234 SuperTag
      1299 2013-09-29 16:00:00 AKDT    1234 SuperTag
      1300 2013-09-29 16:15:00 AKDT    1234 SuperTag
      1301 2013-09-29 16:44:08 AKDT    1234 SuperTag
      1302 2013-09-29 17:00:00 AKDT    1234 SuperTag
      1303 2013-09-29 17:15:00 AKDT    1234 SuperTag
      1304 2013-09-29 18:00:00 AKDT    1234 SuperTag
      1305 2013-09-29 18:15:00 AKDT    1234 SuperTag
      1306 2013-09-29 19:00:00 AKDT    1234 SuperTag
      1307 2013-09-29 19:15:00 AKDT    1234 SuperTag
      1308 2013-09-29 20:00:00 AKDT    1234 SuperTag
      1309 2013-09-29 20:15:00 AKDT    1234 SuperTag
      1310 2013-09-29 21:00:00 AKDT    1234 SuperTag
      1311 2013-09-29 21:09:41 AKDT    1234 SuperTag
      1312 2013-09-29 21:15:00 AKDT    1234 SuperTag
      1313 2013-09-29 22:00:00 AKDT    1234 SuperTag
      1314 2013-09-29 22:15:00 AKDT    1234 SuperTag
      1315 2013-09-29 23:00:00 AKDT    1234 SuperTag
      1316 2013-09-29 23:15:00 AKDT    1234 SuperTag
      1317 2013-09-30 00:00:00 AKDT    1234 SuperTag
      1318 2013-09-30 00:15:00 AKDT    1234 SuperTag
      1319 2013-09-30 01:00:00 AKDT    1234 SuperTag
      1320 2013-09-30 01:15:00 AKDT    1234 SuperTag
      1321 2013-09-30 02:00:00 AKDT    1234 SuperTag
      1322 2013-09-30 02:15:00 AKDT    1234 SuperTag
      1323 2013-09-30 03:00:00 AKDT    1234 SuperTag
      1324 2013-09-30 03:15:00 AKDT    1234 SuperTag
      1325 2013-09-30 04:00:00 AKDT    1234 SuperTag
      1326 2013-09-30 04:15:00 AKDT    1234 SuperTag
      1327 2013-09-30 05:00:00 AKDT    1234 SuperTag
      1328 2013-09-30 05:15:00 AKDT    1234 SuperTag
      1329 2013-09-30 06:00:00 AKDT    1234 SuperTag
      1330 2013-09-30 06:15:00 AKDT    1234 SuperTag
      1331 2013-09-30 06:30:44 AKDT    1234 SuperTag
      1332 2013-09-30 07:00:00 AKDT    1234 SuperTag
      1333 2013-09-30 07:15:00 AKDT    1234 SuperTag
      1334 2013-09-30 08:00:00 AKDT    1234 SuperTag
      1335 2013-09-30 08:15:00 AKDT    1234 SuperTag
      1336 2013-09-30 09:00:00 AKDT    1234 SuperTag
      1337 2013-09-30 09:15:00 AKDT    1234 SuperTag
      1338 2013-09-30 10:00:00 AKDT    1234 SuperTag
      1339 2013-09-30 10:15:00 AKDT    1234 SuperTag
      1340 2013-09-30 11:00:00 AKDT    1234 SuperTag
      1341 2013-09-30 11:03:14 AKDT    1234 SuperTag
      1342 2013-09-30 11:15:00 AKDT    1234 SuperTag
      1343 2013-09-30 12:00:00 AKDT    1234 SuperTag
      1344 2013-09-30 12:15:00 AKDT    1234 SuperTag
      1345 2013-09-30 13:00:00 AKDT    1234 SuperTag
      1346 2013-09-30 13:15:00 AKDT    1234 SuperTag
      1347 2013-09-30 14:00:00 AKDT    1234 SuperTag
      1348 2013-09-30 14:13:08 AKDT    1234 SuperTag
      1349 2013-09-30 14:15:00 AKDT    1234 SuperTag
      1350 2013-09-30 15:00:00 AKDT    1234 SuperTag
      1351 2013-09-30 15:15:00 AKDT    1234 SuperTag
      1352 2013-09-30 16:00:00 AKDT    1234 SuperTag
      1353 2013-09-30 16:15:00 AKDT    1234 SuperTag
      1354 2013-09-30 17:00:00 AKDT    1234 SuperTag
      1355 2013-09-30 17:15:00 AKDT    1234 SuperTag
      1356 2013-09-30 18:00:00 AKDT    1234 SuperTag
      1357 2013-09-30 18:15:00 AKDT    1234 SuperTag
      1358 2013-09-30 19:00:00 AKDT    1234 SuperTag
      1359 2013-09-30 19:15:00 AKDT    1234 SuperTag
      1360 2013-09-30 20:00:00 AKDT    1234 SuperTag
      1361 2013-09-30 20:15:00 AKDT    1234 SuperTag
      1362 2013-09-30 21:00:00 AKDT    1234 SuperTag
      1363 2013-09-30 21:15:00 AKDT    1234 SuperTag
      1364 2013-09-30 21:57:13 AKDT    1234 SuperTag
      1365 2013-09-30 22:00:00 AKDT    1234 SuperTag
      1366 2013-09-30 22:15:00 AKDT    1234 SuperTag
      1367 2013-09-30 23:00:00 AKDT    1234 SuperTag
      1368 2013-09-30 23:15:00 AKDT    1234 SuperTag
      1369 2013-10-01 00:00:00 AKDT    1234 SuperTag
      1370 2013-10-01 00:15:00 AKDT    1234 SuperTag
      1371 2013-10-01 01:00:00 AKDT    1234 SuperTag
      1372 2013-10-01 01:15:00 AKDT    1234 SuperTag
      1373 2013-10-01 02:00:00 AKDT    1234 SuperTag
      1374 2013-10-01 02:15:00 AKDT    1234 SuperTag
      1375 2013-10-01 03:00:00 AKDT    1234 SuperTag
      1376 2013-10-01 03:15:00 AKDT    1234 SuperTag
      1377 2013-10-01 04:00:00 AKDT    1234 SuperTag
      1378 2013-10-01 04:15:00 AKDT    1234 SuperTag
      1379 2013-10-01 05:00:00 AKDT    1234 SuperTag
      1380 2013-10-01 05:15:00 AKDT    1234 SuperTag
      1381 2013-10-01 06:00:00 AKDT    1234 SuperTag
      1382 2013-10-01 06:15:00 AKDT    1234 SuperTag
      1383 2013-10-01 06:25:52 AKDT    1234 SuperTag
      1384 2013-10-01 07:00:00 AKDT    1234 SuperTag
      1385 2013-10-01 07:15:00 AKDT    1234 SuperTag
      1386 2013-10-01 08:00:00 AKDT    1234 SuperTag
      1387 2013-10-01 08:15:00 AKDT    1234 SuperTag
      1388 2013-10-01 09:00:00 AKDT    1234 SuperTag
      1389 2013-10-01 09:15:00 AKDT    1234 SuperTag
      1390 2013-10-01 10:00:00 AKDT    1234 SuperTag
      1391 2013-10-01 10:15:00 AKDT    1234 SuperTag
      1392 2013-10-01 11:00:00 AKDT    1234 SuperTag
      1393 2013-10-01 11:15:00 AKDT    1234 SuperTag
      1394 2013-10-01 12:00:00 AKDT    1234 SuperTag
      1395 2013-10-01 12:15:00 AKDT    1234 SuperTag
      1396 2013-10-01 13:00:00 AKDT    1234 SuperTag
      1397 2013-10-01 13:15:00 AKDT    1234 SuperTag
      1398 2013-10-01 14:00:00 AKDT    1234 SuperTag
      1399 2013-10-01 14:15:00 AKDT    1234 SuperTag
      1400 2013-10-01 15:00:00 AKDT    1234 SuperTag
      1401 2013-10-01 15:15:00 AKDT    1234 SuperTag
      1402 2013-10-01 16:00:00 AKDT    1234 SuperTag
      1403 2013-10-01 16:45:00 AKDT    1234 SuperTag
      1404 2013-10-01 17:00:00 AKDT    1234 SuperTag
      1405 2013-10-01 17:45:00 AKDT    1234 SuperTag
      1406 2013-10-01 18:00:00 AKDT    1234 SuperTag
      1407 2013-10-01 18:45:00 AKDT    1234 SuperTag
      1408 2013-10-01 19:00:00 AKDT    1234 SuperTag
      1409 2013-10-01 19:45:00 AKDT    1234 SuperTag
      1410 2013-10-01 20:00:00 AKDT    1234 SuperTag
      1411 2013-10-01 20:45:00 AKDT    1234 SuperTag
      1412 2013-10-01 21:00:00 AKDT    1234 SuperTag
      1413 2013-10-01 21:45:00 AKDT    1234 SuperTag
      1414 2013-10-01 22:00:00 AKDT    1234 SuperTag
      1415 2013-10-01 22:45:00 AKDT    1234 SuperTag
      1416 2013-10-01 23:00:00 AKDT    1234 SuperTag
      1417 2013-10-01 23:45:00 AKDT    1234 SuperTag
      1418 2013-10-02 00:00:00 AKDT    1234 SuperTag
      1419 2013-10-02 00:45:00 AKDT    1234 SuperTag
      1420 2013-10-02 01:00:00 AKDT    1234 SuperTag
      1421 2013-10-02 01:45:00 AKDT    1234 SuperTag
      1422 2013-10-02 02:00:00 AKDT    1234 SuperTag
      1423 2013-10-02 02:45:00 AKDT    1234 SuperTag
      1424 2013-10-02 03:00:00 AKDT    1234 SuperTag
      1425 2013-10-02 03:45:00 AKDT    1234 SuperTag
      1426 2013-10-02 04:00:00 AKDT    1234 SuperTag
      1427 2013-10-02 04:45:00 AKDT    1234 SuperTag
      1428 2013-10-02 05:00:00 AKDT    1234 SuperTag
      1429 2013-10-02 05:45:00 AKDT    1234 SuperTag
      1430 2013-10-02 05:54:42 AKDT    1234 SuperTag
      1431 2013-10-02 06:00:00 AKDT    1234 SuperTag
      1432 2013-10-02 06:16:47 AKDT    1234 SuperTag
      1433 2013-10-02 06:45:00 AKDT    1234 SuperTag
      1434 2013-10-02 07:00:00 AKDT    1234 SuperTag
      1435 2013-10-02 07:45:00 AKDT    1234 SuperTag
      1436 2013-10-02 08:00:00 AKDT    1234 SuperTag
      1437 2013-10-02 08:45:00 AKDT    1234 SuperTag
      1438 2013-10-02 09:00:00 AKDT    1234 SuperTag
      1439 2013-10-02 09:45:00 AKDT    1234 SuperTag
      1440 2013-10-02 10:00:00 AKDT    1234 SuperTag
      1441 2013-10-02 10:45:00 AKDT    1234 SuperTag
      1442 2013-10-02 11:00:00 AKDT    1234 SuperTag
      1443 2013-10-02 11:45:00 AKDT    1234 SuperTag
      1444 2013-10-02 12:00:00 AKDT    1234 SuperTag
      1445 2013-10-02 12:45:00 AKDT    1234 SuperTag
      1446 2013-10-02 13:00:00 AKDT    1234 SuperTag
      1447 2013-10-02 13:45:00 AKDT    1234 SuperTag
      1448 2013-10-02 13:50:41 AKDT    1234 SuperTag
      1449 2013-10-02 14:00:00 AKDT    1234 SuperTag
      1450 2013-10-02 14:45:00 AKDT    1234 SuperTag
      1451 2013-10-02 15:00:00 AKDT    1234 SuperTag
      1452 2013-10-02 15:45:00 AKDT    1234 SuperTag
      1453 2013-10-02 16:00:00 AKDT    1234 SuperTag
      1454 2013-10-02 16:15:00 AKDT    1234 SuperTag
      1455 2013-10-02 17:00:00 AKDT    1234 SuperTag
      1456 2013-10-02 17:10:01 AKDT    1234 SuperTag
      1457 2013-10-02 17:15:00 AKDT    1234 SuperTag
      1458 2013-10-02 18:00:00 AKDT    1234 SuperTag
      1459 2013-10-02 18:15:00 AKDT    1234 SuperTag
      1460 2013-10-02 19:00:00 AKDT    1234 SuperTag
      1461 2013-10-02 19:15:00 AKDT    1234 SuperTag
      1462 2013-10-02 20:00:00 AKDT    1234 SuperTag
      1463 2013-10-02 20:15:00 AKDT    1234 SuperTag
      1464 2013-10-02 21:00:00 AKDT    1234 SuperTag
      1465 2013-10-02 21:14:00 AKDT    1234 SuperTag
      1466 2013-10-02 21:15:00 AKDT    1234 SuperTag
      1467 2013-10-02 22:00:00 AKDT    1234 SuperTag
      1468 2013-10-02 22:15:00 AKDT    1234 SuperTag
      1469 2013-10-02 23:00:00 AKDT    1234 SuperTag
      1470 2013-10-02 23:15:00 AKDT    1234 SuperTag
      1471 2013-10-03 00:00:00 AKDT    1234 SuperTag
      1472 2013-10-03 00:15:00 AKDT    1234 SuperTag
      1473 2013-10-03 01:00:00 AKDT    1234 SuperTag
      1474 2013-10-03 01:15:00 AKDT    1234 SuperTag
      1475 2013-10-03 02:00:00 AKDT    1234 SuperTag
      1476 2013-10-03 02:15:00 AKDT    1234 SuperTag
      1477 2013-10-03 03:00:00 AKDT    1234 SuperTag
      1478 2013-10-03 03:15:00 AKDT    1234 SuperTag
      1479 2013-10-03 04:00:00 AKDT    1234 SuperTag
      1480 2013-10-03 04:15:00 AKDT    1234 SuperTag
      1481 2013-10-03 05:00:00 AKDT    1234 SuperTag
      1482 2013-10-03 05:15:00 AKDT    1234 SuperTag
      1483 2013-10-03 06:00:00 AKDT    1234 SuperTag
      1484 2013-10-03 06:05:57 AKDT    1234 SuperTag
      1485 2013-10-03 06:15:00 AKDT    1234 SuperTag
      1486 2013-10-03 06:57:37 AKDT    1234 SuperTag
      1487 2013-10-03 07:00:00 AKDT    1234 SuperTag
      1488 2013-10-03 07:15:00 AKDT    1234 SuperTag
      1489 2013-10-03 08:00:00 AKDT    1234 SuperTag
      1490 2013-10-03 08:15:00 AKDT    1234 SuperTag
      1491 2013-10-03 09:00:00 AKDT    1234 SuperTag
      1492 2013-10-03 09:15:00 AKDT    1234 SuperTag
      1493 2013-10-03 10:00:00 AKDT    1234 SuperTag
      1494 2013-10-03 10:15:00 AKDT    1234 SuperTag
      1495 2013-10-03 11:00:00 AKDT    1234 SuperTag
      1496 2013-10-03 11:15:00 AKDT    1234 SuperTag
      1497 2013-10-03 12:00:00 AKDT    1234 SuperTag
      1498 2013-10-03 12:15:00 AKDT    1234 SuperTag
      1499 2013-10-03 13:00:00 AKDT    1234 SuperTag
      1500 2013-10-03 13:15:00 AKDT    1234 SuperTag
      1501 2013-10-03 14:00:00 AKDT    1234 SuperTag
      1502 2013-10-03 14:15:00 AKDT    1234 SuperTag
      1503 2013-10-03 15:00:00 AKDT    1234 SuperTag
      1504 2013-10-03 15:15:00 AKDT    1234 SuperTag
      1505 2013-10-03 16:15:00 AKDT    1234 SuperTag
      1506 2013-10-03 16:30:00 AKDT    1234 SuperTag
      1507 2013-10-03 16:46:49 AKDT    1234 SuperTag
      1508 2013-10-03 17:15:00 AKDT    1234 SuperTag
      1509 2013-10-03 17:30:00 AKDT    1234 SuperTag
      1510 2013-10-03 18:15:00 AKDT    1234 SuperTag
      1511 2013-10-03 18:30:00 AKDT    1234 SuperTag
      1512 2013-10-03 19:15:00 AKDT    1234 SuperTag
      1513 2013-10-03 19:30:00 AKDT    1234 SuperTag
      1514 2013-10-03 20:15:00 AKDT    1234 SuperTag
      1515 2013-10-03 20:30:00 AKDT    1234 SuperTag
      1516 2013-10-03 21:15:00 AKDT    1234 SuperTag
      1517 2013-10-03 21:30:00 AKDT    1234 SuperTag
      1518 2013-10-03 22:15:00 AKDT    1234 SuperTag
      1519 2013-10-03 22:30:00 AKDT    1234 SuperTag
      1520 2013-10-03 23:15:00 AKDT    1234 SuperTag
      1521 2013-10-03 23:30:00 AKDT    1234 SuperTag
      1522 2013-10-04 00:15:00 AKDT    1234 SuperTag
      1523 2013-10-04 00:30:00 AKDT    1234 SuperTag
      1524 2013-10-04 01:15:00 AKDT    1234 SuperTag
      1525 2013-10-04 01:30:00 AKDT    1234 SuperTag
      1526 2013-10-04 02:15:00 AKDT    1234 SuperTag
      1527 2013-10-04 02:30:00 AKDT    1234 SuperTag
      1528 2013-10-04 03:15:00 AKDT    1234 SuperTag
      1529 2013-10-04 03:30:00 AKDT    1234 SuperTag
      1530 2013-10-04 04:15:00 AKDT    1234 SuperTag
      1531 2013-10-04 04:30:00 AKDT    1234 SuperTag
      1532 2013-10-04 05:15:00 AKDT    1234 SuperTag
      1533 2013-10-04 05:30:00 AKDT    1234 SuperTag
      1534 2013-10-04 06:15:00 AKDT    1234 SuperTag
      1535 2013-10-04 06:30:00 AKDT    1234 SuperTag
      1536 2013-10-04 07:15:00 AKDT    1234 SuperTag
      1537 2013-10-04 07:30:00 AKDT    1234 SuperTag
      1538 2013-10-04 08:15:00 AKDT    1234 SuperTag
      1539 2013-10-04 08:30:00 AKDT    1234 SuperTag
      1540 2013-10-04 09:15:00 AKDT    1234 SuperTag
      1541 2013-10-04 09:30:00 AKDT    1234 SuperTag
      1542 2013-10-04 10:15:00 AKDT    1234 SuperTag
      1543 2013-10-04 10:30:00 AKDT    1234 SuperTag
      1544 2013-10-04 11:15:00 AKDT    1234 SuperTag
      1545 2013-10-04 11:30:00 AKDT    1234 SuperTag
      1546 2013-10-04 12:15:00 AKDT    1234 SuperTag
      1547 2013-10-04 12:30:00 AKDT    1234 SuperTag
      1548 2013-10-04 13:15:00 AKDT    1234 SuperTag
      1549 2013-10-04 13:30:00 AKDT    1234 SuperTag
      1550 2013-10-04 14:15:00 AKDT    1234 SuperTag
      1551 2013-10-04 14:30:00 AKDT    1234 SuperTag
      1552 2013-10-04 15:15:00 AKDT    1234 SuperTag
      1553 2013-10-04 15:30:00 AKDT    1234 SuperTag
      1554 2013-10-04 16:15:00 AKDT    1234 SuperTag
      1555 2013-10-04 16:45:00 AKDT    1234 SuperTag
      1556 2013-10-04 17:15:00 AKDT    1234 SuperTag
      1557 2013-10-04 17:45:00 AKDT    1234 SuperTag
      1558 2013-10-04 18:15:00 AKDT    1234 SuperTag
      1559 2013-10-04 18:45:00 AKDT    1234 SuperTag
      1560 2013-10-04 19:15:00 AKDT    1234 SuperTag
      1561 2013-10-04 19:45:00 AKDT    1234 SuperTag
      1562 2013-10-04 20:15:00 AKDT    1234 SuperTag
      1563 2013-10-04 20:45:00 AKDT    1234 SuperTag
      1564 2013-10-04 21:15:00 AKDT    1234 SuperTag
      1565 2013-10-04 21:45:00 AKDT    1234 SuperTag
      1566 2013-10-04 22:15:00 AKDT    1234 SuperTag
      1567 2013-10-04 22:45:00 AKDT    1234 SuperTag
      1568 2013-10-04 23:15:00 AKDT    1234 SuperTag
      1569 2013-10-04 23:45:00 AKDT    1234 SuperTag
      1570 2013-10-05 00:15:00 AKDT    1234 SuperTag
      1571 2013-10-05 00:45:00 AKDT    1234 SuperTag
      1572 2013-10-05 01:15:00 AKDT    1234 SuperTag
      1573 2013-10-05 01:45:00 AKDT    1234 SuperTag
      1574 2013-10-05 02:15:00 AKDT    1234 SuperTag
      1575 2013-10-05 02:45:00 AKDT    1234 SuperTag
      1576 2013-10-05 03:15:00 AKDT    1234 SuperTag
      1577 2013-10-05 03:24:33 AKDT    1234 SuperTag
      1578 2013-10-05 03:45:00 AKDT    1234 SuperTag
      1579 2013-10-05 04:15:00 AKDT    1234 SuperTag
      1580 2013-10-05 04:45:00 AKDT    1234 SuperTag
      1581 2013-10-05 05:15:00 AKDT    1234 SuperTag
      1582 2013-10-05 05:44:28 AKDT    1234 SuperTag
      1583 2013-10-05 05:45:00 AKDT    1234 SuperTag
      1584 2013-10-05 06:00:03 AKDT    1234 SuperTag
      1585 2013-10-05 06:15:00 AKDT    1234 SuperTag
      1586 2013-10-05 06:45:00 AKDT    1234 SuperTag
      1587 2013-10-05 07:15:00 AKDT    1234 SuperTag
      1588 2013-10-05 07:45:00 AKDT    1234 SuperTag
      1589 2013-10-05 08:15:00 AKDT    1234 SuperTag
      1590 2013-10-05 08:45:00 AKDT    1234 SuperTag
      1591 2013-10-05 09:15:00 AKDT    1234 SuperTag
      1592 2013-10-05 09:45:00 AKDT    1234 SuperTag
      1593 2013-10-05 10:15:00 AKDT    1234 SuperTag
      1594 2013-10-05 10:45:00 AKDT    1234 SuperTag
      1595 2013-10-05 11:15:00 AKDT    1234 SuperTag
      1596 2013-10-05 11:45:00 AKDT    1234 SuperTag
      1597 2013-10-05 12:15:00 AKDT    1234 SuperTag
      1598 2013-10-05 12:45:00 AKDT    1234 SuperTag
      1599 2013-10-05 13:15:00 AKDT    1234 SuperTag
      1600 2013-10-05 13:45:00 AKDT    1234 SuperTag
      1601 2013-10-05 14:15:00 AKDT    1234 SuperTag
      1602 2013-10-05 14:45:00 AKDT    1234 SuperTag
      1603 2013-10-05 15:15:00 AKDT    1234 SuperTag
      1604 2013-10-05 15:45:00 AKDT    1234 SuperTag
      1605 2013-10-05 16:15:00 AKDT    1234 SuperTag
      1606 2013-10-05 17:15:00 AKDT    1234 SuperTag
      1607 2013-10-05 18:15:00 AKDT    1234 SuperTag
      1608 2013-10-05 19:15:00 AKDT    1234 SuperTag
      1609 2013-10-05 20:15:00 AKDT    1234 SuperTag
      1610 2013-10-05 21:15:00 AKDT    1234 SuperTag
      1611 2013-10-05 21:36:35 AKDT    1234 SuperTag
      1612 2013-10-05 21:51:37 AKDT    1234 SuperTag
      1613 2013-10-05 22:15:00 AKDT    1234 SuperTag
      1614 2013-10-05 23:15:00 AKDT    1234 SuperTag
      1615 2013-10-06 00:15:00 AKDT    1234 SuperTag
      1616 2013-10-06 01:15:00 AKDT    1234 SuperTag
      1617 2013-10-06 02:15:00 AKDT    1234 SuperTag
      1618 2013-10-06 03:15:00 AKDT    1234 SuperTag
      1619 2013-10-06 04:15:00 AKDT    1234 SuperTag
      1620 2013-10-06 05:15:00 AKDT    1234 SuperTag
      1621 2013-10-06 06:15:00 AKDT    1234 SuperTag
      1622 2013-10-06 07:15:00 AKDT    1234 SuperTag
      1623 2013-10-06 08:15:00 AKDT    1234 SuperTag
      1624 2013-10-06 09:15:00 AKDT    1234 SuperTag
      1625 2013-10-06 10:15:00 AKDT    1234 SuperTag
      1626 2013-10-06 11:15:00 AKDT    1234 SuperTag
      1627 2013-10-06 12:15:00 AKDT    1234 SuperTag
      1628 2013-10-06 13:15:00 AKDT    1234 SuperTag
      1629 2013-10-06 14:15:00 AKDT    1234 SuperTag
      1630 2013-10-06 15:15:00 AKDT    1234 SuperTag
      1631 2013-10-06 17:12:43 AKDT    1234 SuperTag
      1632 2013-10-06 21:30:40 AKDT    1234 SuperTag
      1633 2013-10-07 05:22:45 AKDT    1234 SuperTag
      1634 2013-10-10 21:48:00 AKDT    1234 SuperTag

---

    Code
      summary_data_c
    Output
      # A tibble: 20 x 9
         START_TIME_POSIXct END_TIME_POSIXct LATITUDE LONGITUDE LOCATION_TYPE         
                      <dbl>            <dbl>    <dbl>     <dbl> <chr>                 
       1         1379462400       1379548799     66.5      135. LIGHT_BASED_GEOLOCATI~
       2         1379548800       1379635199     42.5      139. LIGHT_BASED_GEOLOCATI~
       3         1379635200       1379721599     59.0      135. LIGHT_BASED_GEOLOCATI~
       4         1379721600       1379807999     56.8      135. LIGHT_BASED_GEOLOCATI~
       5         1379808000       1379894399     10.5      133. LIGHT_BASED_GEOLOCATI~
       6         1379894400       1379980799     58.0      136. LIGHT_BASED_GEOLOCATI~
       7         1379980800       1380067199     66.8      135. LIGHT_BASED_GEOLOCATI~
       8         1380067200       1380153599     68.4      134. LIGHT_BASED_GEOLOCATI~
       9         1380153600       1380239999     18.9      136. LIGHT_BASED_GEOLOCATI~
      10         1380240000       1380326399     64.8      134. LIGHT_BASED_GEOLOCATI~
      11         1380326400       1380412799     36.8      134. LIGHT_BASED_GEOLOCATI~
      12         1380412800       1380499199     75.5      135. LIGHT_BASED_GEOLOCATI~
      13         1380499200       1380585599     75.7      133. LIGHT_BASED_GEOLOCATI~
      14         1380585600       1380671999     13.0      135. LIGHT_BASED_GEOLOCATI~
      15         1380672000       1380758399     19.1      135. LIGHT_BASED_GEOLOCATI~
      16         1380758400       1380844799     54.8      137. LIGHT_BASED_GEOLOCATI~
      17         1380844800       1380931199     57.0      134. LIGHT_BASED_GEOLOCATI~
      18         1380931200       1381017599     51.5      133. LIGHT_BASED_GEOLOCATI~
      19         1381017600       1381103999     50.5      136. LIGHT_BASED_GEOLOCATI~
      20         1381276800       1381363199     53.3      134. LIGHT_BASED_GEOLOCATI~
      # i 4 more variables: START_TIME <chr>, END_TIME <chr>, TAG_NUM <chr>,
      #   TAG_TYPE <chr>

# Decoder::decode

    Code
      decode_op[["meta"]]
    Output
                       MAKE MODEL TAG_NUM TAG_TYPE REL_SEQ SPECIES_CODE
      1 Microwave Telemetry X-Tag    1234 SuperTag       1        56789

---

    Code
      decode_op[["instant"]]
    Output
           TIMESTAMP_POSIXct LATITUDE LONGITUDE LOCATION_TYPE          DEPTH
      1           1378425600       NA        NA     SATELLITE 244.766340 [m]
      2           1378426500       NA        NA     SATELLITE         NA [m]
      3           1378427400       NA        NA     SATELLITE         NA [m]
      4           1378428300       NA        NA     SATELLITE 244.766340 [m]
      5           1378429200       NA        NA     SATELLITE 244.766340 [m]
      6           1378430100       NA        NA     SATELLITE         NA [m]
      7           1378431000       NA        NA     SATELLITE         NA [m]
      8           1378431900       NA        NA     SATELLITE 242.076600 [m]
      9           1378432800       NA        NA     SATELLITE 240.731730 [m]
      10          1378433700       NA        NA     SATELLITE         NA [m]
      11          1378434600       NA        NA     SATELLITE         NA [m]
      12          1378435500       NA        NA     SATELLITE 239.386860 [m]
      13          1378436400       NA        NA     SATELLITE 238.041990 [m]
      14          1378437300       NA        NA     SATELLITE         NA [m]
      15          1378438200       NA        NA     SATELLITE         NA [m]
      16          1378439100       NA        NA     SATELLITE 235.352250 [m]
      17          1378440000       NA        NA     SATELLITE 238.041990 [m]
      18          1378440900       NA        NA     SATELLITE         NA [m]
      19          1378441800       NA        NA     SATELLITE         NA [m]
      20          1378442700       NA        NA     SATELLITE 239.386860 [m]
      21          1378443600       NA        NA     SATELLITE 240.731730 [m]
      22          1378444500       NA        NA     SATELLITE         NA [m]
      23          1378445400       NA        NA     SATELLITE         NA [m]
      24          1378446300       NA        NA     SATELLITE 244.766340 [m]
      25          1378447200       NA        NA     SATELLITE 239.386860 [m]
      26          1378448100       NA        NA     SATELLITE         NA [m]
      27          1378449000       NA        NA     SATELLITE         NA [m]
      28          1378449900       NA        NA     SATELLITE 246.111210 [m]
      29          1378450800       NA        NA     SATELLITE 246.111210 [m]
      30          1378451700       NA        NA     SATELLITE         NA [m]
      31          1378452600       NA        NA     SATELLITE         NA [m]
      32          1378453500       NA        NA     SATELLITE 246.111210 [m]
      33          1378454400       NA        NA     SATELLITE 246.111210 [m]
      34          1378455300       NA        NA     SATELLITE         NA [m]
      35          1378456200       NA        NA     SATELLITE         NA [m]
      36          1378457100       NA        NA     SATELLITE 247.456080 [m]
      37          1378458000       NA        NA     SATELLITE 247.456080 [m]
      38          1378458900       NA        NA     SATELLITE         NA [m]
      39          1378459800       NA        NA     SATELLITE         NA [m]
      40          1378460700       NA        NA     SATELLITE 244.766340 [m]
      41          1378461600       NA        NA     SATELLITE 243.421470 [m]
      42          1378462500       NA        NA     SATELLITE         NA [m]
      43          1378463400       NA        NA     SATELLITE         NA [m]
      44          1378464300       NA        NA     SATELLITE 243.421470 [m]
      45          1378465200       NA        NA     SATELLITE 242.076600 [m]
      46          1378466100       NA        NA     SATELLITE         NA [m]
      47          1378467000       NA        NA     SATELLITE         NA [m]
      48          1378467900       NA        NA     SATELLITE 242.076600 [m]
      49          1378468800       NA        NA     SATELLITE 242.076600 [m]
      50          1378469700       NA        NA     SATELLITE         NA [m]
      51          1378470600       NA        NA     SATELLITE         NA [m]
      52          1378471500       NA        NA     SATELLITE 242.076600 [m]
      53          1378472400       NA        NA     SATELLITE 242.076600 [m]
      54          1378473300       NA        NA     SATELLITE         NA [m]
      55          1378474200       NA        NA     SATELLITE         NA [m]
      56          1378475100       NA        NA     SATELLITE 240.731730 [m]
      57          1378476000       NA        NA     SATELLITE 239.386860 [m]
      58          1378476900       NA        NA     SATELLITE         NA [m]
      59          1378477800       NA        NA     SATELLITE         NA [m]
      60          1378478700       NA        NA     SATELLITE 239.386860 [m]
      61          1378479600       NA        NA     SATELLITE 239.386860 [m]
      62          1378480500       NA        NA     SATELLITE         NA [m]
      63          1378481400       NA        NA     SATELLITE         NA [m]
      64          1378482300       NA        NA     SATELLITE 239.386860 [m]
      65          1378483200       NA        NA     SATELLITE 239.386860 [m]
      66          1378484100       NA        NA     SATELLITE         NA [m]
      67          1378485000       NA        NA     SATELLITE         NA [m]
      68          1378485900       NA        NA     SATELLITE 239.386860 [m]
      69          1378486800       NA        NA     SATELLITE 239.386860 [m]
      70          1378487700       NA        NA     SATELLITE         NA [m]
      71          1378488600       NA        NA     SATELLITE         NA [m]
      72          1378489500       NA        NA     SATELLITE 239.386860 [m]
      73          1378490400       NA        NA     SATELLITE 239.386860 [m]
      74          1378491300       NA        NA     SATELLITE         NA [m]
      75          1378492200       NA        NA     SATELLITE         NA [m]
      76          1378493100       NA        NA     SATELLITE 240.731730 [m]
      77          1378494000       NA        NA     SATELLITE 240.731730 [m]
      78          1378494900       NA        NA     SATELLITE         NA [m]
      79          1378495800       NA        NA     SATELLITE         NA [m]
      80          1378496700       NA        NA     SATELLITE 240.731730 [m]
      81          1378497600       NA        NA     SATELLITE 242.076600 [m]
      82          1378498500       NA        NA     SATELLITE         NA [m]
      83          1378499400       NA        NA     SATELLITE         NA [m]
      84          1378500300       NA        NA     SATELLITE 242.076600 [m]
      85          1378501200       NA        NA     SATELLITE 242.076600 [m]
      86          1378502100       NA        NA     SATELLITE         NA [m]
      87          1378503000       NA        NA     SATELLITE         NA [m]
      88          1378503900       NA        NA     SATELLITE 242.076600 [m]
      89          1378504800       NA        NA     SATELLITE 242.076600 [m]
      90          1378505700       NA        NA     SATELLITE         NA [m]
      91          1378506600       NA        NA     SATELLITE         NA [m]
      92          1378507500       NA        NA     SATELLITE 243.421470 [m]
      93          1378508400       NA        NA     SATELLITE 243.421470 [m]
      94          1378509300       NA        NA     SATELLITE         NA [m]
      95          1378510200       NA        NA     SATELLITE         NA [m]
      96          1378511100       NA        NA     SATELLITE 242.076600 [m]
      97          1378512000       NA        NA     SATELLITE 242.076600 [m]
      98          1378512900       NA        NA     SATELLITE 242.076600 [m]
      99          1378514700       NA        NA     SATELLITE 242.076600 [m]
      100         1378515600       NA        NA     SATELLITE 242.076600 [m]
      101         1378516500       NA        NA     SATELLITE 240.731730 [m]
      102         1378518300       NA        NA     SATELLITE 240.731730 [m]
      103         1378519200       NA        NA     SATELLITE 240.731730 [m]
      104         1378520100       NA        NA     SATELLITE 240.731730 [m]
      105         1378521900       NA        NA     SATELLITE 239.386860 [m]
      106         1378522800       NA        NA     SATELLITE 239.386860 [m]
      107         1378523700       NA        NA     SATELLITE 239.386860 [m]
      108         1378525500       NA        NA     SATELLITE 239.386860 [m]
      109         1378526400       NA        NA     SATELLITE 239.386860 [m]
      110         1378527300       NA        NA     SATELLITE 239.386860 [m]
      111         1378529100       NA        NA     SATELLITE 239.386860 [m]
      112         1378530000       NA        NA     SATELLITE 239.386860 [m]
      113         1378530900       NA        NA     SATELLITE 239.386860 [m]
      114         1378532700       NA        NA     SATELLITE 239.386860 [m]
      115         1378533600       NA        NA     SATELLITE 239.386860 [m]
      116         1378534500       NA        NA     SATELLITE 240.731730 [m]
      117         1378536300       NA        NA     SATELLITE 240.731730 [m]
      118         1378537200       NA        NA     SATELLITE 240.731730 [m]
      119         1378538100       NA        NA     SATELLITE 240.731730 [m]
      120         1378539900       NA        NA     SATELLITE 242.076600 [m]
      121         1378540800       NA        NA     SATELLITE 242.076600 [m]
      122         1378541700       NA        NA     SATELLITE 242.076600 [m]
      123         1378543500       NA        NA     SATELLITE 242.076600 [m]
      124         1378544400       NA        NA     SATELLITE 242.076600 [m]
      125         1378545300       NA        NA     SATELLITE 242.076600 [m]
      126         1378547100       NA        NA     SATELLITE 243.421470 [m]
      127         1378548000       NA        NA     SATELLITE 243.421470 [m]
      128         1378548900       NA        NA     SATELLITE 243.421470 [m]
      129         1378550700       NA        NA     SATELLITE 243.421470 [m]
      130         1378551600       NA        NA     SATELLITE 243.421470 [m]
      131         1378552500       NA        NA     SATELLITE 243.421470 [m]
      132         1378554300       NA        NA     SATELLITE 243.421470 [m]
      133         1378555200       NA        NA     SATELLITE 242.076600 [m]
      134         1378556100       NA        NA     SATELLITE 242.076600 [m]
      135         1378557900       NA        NA     SATELLITE 242.076600 [m]
      136         1378558800       NA        NA     SATELLITE 242.076600 [m]
      137         1378559700       NA        NA     SATELLITE 242.076600 [m]
      138         1378561500       NA        NA     SATELLITE 240.731730 [m]
      139         1378562400       NA        NA     SATELLITE 240.731730 [m]
      140         1378563300       NA        NA     SATELLITE 240.731730 [m]
      141         1378565100       NA        NA     SATELLITE 240.731730 [m]
      142         1378566000       NA        NA     SATELLITE 240.731730 [m]
      143         1378566900       NA        NA     SATELLITE 239.386860 [m]
      144         1378568700       NA        NA     SATELLITE 239.386860 [m]
      145         1378569600       NA        NA     SATELLITE 239.386860 [m]
      146         1378570500       NA        NA     SATELLITE 239.386860 [m]
      147         1378572300       NA        NA     SATELLITE 239.386860 [m]
      148         1378573200       NA        NA     SATELLITE 239.386860 [m]
      149         1378574100       NA        NA     SATELLITE 239.386860 [m]
      150         1378575900       NA        NA     SATELLITE 240.731730 [m]
      151         1378576800       NA        NA     SATELLITE 240.731730 [m]
      152         1378577700       NA        NA     SATELLITE 240.731730 [m]
      153         1378579500       NA        NA     SATELLITE 240.731730 [m]
      154         1378580400       NA        NA     SATELLITE 240.731730 [m]
      155         1378581300       NA        NA     SATELLITE 240.731730 [m]
      156         1378583100       NA        NA     SATELLITE 242.076600 [m]
      157         1378584000       NA        NA     SATELLITE 242.076600 [m]
      158         1378584900       NA        NA     SATELLITE 242.076600 [m]
      159         1378586700       NA        NA     SATELLITE 243.421470 [m]
      160         1378587600       NA        NA     SATELLITE 243.421470 [m]
      161         1378588500       NA        NA     SATELLITE 243.421470 [m]
      162         1378590300       NA        NA     SATELLITE 243.421470 [m]
      163         1378591200       NA        NA     SATELLITE 243.421470 [m]
      164         1378592100       NA        NA     SATELLITE 243.421470 [m]
      165         1378593900       NA        NA     SATELLITE 243.421470 [m]
      166         1378594800       NA        NA     SATELLITE 243.421470 [m]
      167         1378595700       NA        NA     SATELLITE 243.421470 [m]
      168         1378597500       NA        NA     SATELLITE 243.421470 [m]
      169         1378598400       NA        NA     SATELLITE 243.421470 [m]
      170         1378599300       NA        NA     SATELLITE 243.421470 [m]
      171         1378600200       NA        NA     SATELLITE         NA [m]
      172         1378602000       NA        NA     SATELLITE 243.421470 [m]
      173         1378602900       NA        NA     SATELLITE 242.076600 [m]
      174         1378603800       NA        NA     SATELLITE         NA [m]
      175         1378605600       NA        NA     SATELLITE 242.076600 [m]
      176         1378606500       NA        NA     SATELLITE 242.076600 [m]
      177         1378607400       NA        NA     SATELLITE         NA [m]
      178         1378609200       NA        NA     SATELLITE 240.731730 [m]
      179         1378610100       NA        NA     SATELLITE 240.731730 [m]
      180         1378611000       NA        NA     SATELLITE         NA [m]
      181         1378612800       NA        NA     SATELLITE 240.731730 [m]
      182         1378613700       NA        NA     SATELLITE 240.731730 [m]
      183         1378614600       NA        NA     SATELLITE         NA [m]
      184         1378616400       NA        NA     SATELLITE 239.386860 [m]
      185         1378617300       NA        NA     SATELLITE 239.386860 [m]
      186         1378618200       NA        NA     SATELLITE         NA [m]
      187         1378620000       NA        NA     SATELLITE 240.731730 [m]
      188         1378620900       NA        NA     SATELLITE 240.731730 [m]
      189         1378621800       NA        NA     SATELLITE         NA [m]
      190         1378623600       NA        NA     SATELLITE 240.731730 [m]
      191         1378624500       NA        NA     SATELLITE 240.731730 [m]
      192         1378625400       NA        NA     SATELLITE         NA [m]
      193         1378627200       NA        NA     SATELLITE 242.076600 [m]
      194         1378628100       NA        NA     SATELLITE 242.076600 [m]
      195         1378629000       NA        NA     SATELLITE         NA [m]
      196         1378630800       NA        NA     SATELLITE 242.076600 [m]
      197         1378631700       NA        NA     SATELLITE 243.421470 [m]
      198         1378632600       NA        NA     SATELLITE         NA [m]
      199         1378634400       NA        NA     SATELLITE 243.421470 [m]
      200         1378635300       NA        NA     SATELLITE 243.421470 [m]
      201         1378636200       NA        NA     SATELLITE         NA [m]
      202         1378638000       NA        NA     SATELLITE 243.421470 [m]
      203         1378638900       NA        NA     SATELLITE 243.421470 [m]
      204         1378639800       NA        NA     SATELLITE         NA [m]
      205         1378641600       NA        NA     SATELLITE 243.421470 [m]
      206         1378642500       NA        NA     SATELLITE 243.421470 [m]
      207         1378643400       NA        NA     SATELLITE         NA [m]
      208         1378645200       NA        NA     SATELLITE 242.076600 [m]
      209         1378646100       NA        NA     SATELLITE 242.076600 [m]
      210         1378647000       NA        NA     SATELLITE         NA [m]
      211         1378648800       NA        NA     SATELLITE 242.076600 [m]
      212         1378649700       NA        NA     SATELLITE 242.076600 [m]
      213         1378650600       NA        NA     SATELLITE         NA [m]
      214         1378652400       NA        NA     SATELLITE 240.731730 [m]
      215         1378653300       NA        NA     SATELLITE 240.731730 [m]
      216         1378654200       NA        NA     SATELLITE         NA [m]
      217         1378656000       NA        NA     SATELLITE 240.731730 [m]
      218         1378656900       NA        NA     SATELLITE 240.731730 [m]
      219         1378657800       NA        NA     SATELLITE         NA [m]
      220         1378659600       NA        NA     SATELLITE 239.386860 [m]
      221         1378660500       NA        NA     SATELLITE 239.386860 [m]
      222         1378661400       NA        NA     SATELLITE         NA [m]
      223         1378663200       NA        NA     SATELLITE 240.731730 [m]
      224         1378664100       NA        NA     SATELLITE 240.731730 [m]
      225         1378665000       NA        NA     SATELLITE         NA [m]
      226         1378666800       NA        NA     SATELLITE 240.731730 [m]
      227         1378667700       NA        NA     SATELLITE 240.731730 [m]
      228         1378668600       NA        NA     SATELLITE         NA [m]
      229         1378670400       NA        NA     SATELLITE 242.076600 [m]
      230         1378671300       NA        NA     SATELLITE 242.076600 [m]
      231         1378672200       NA        NA     SATELLITE         NA [m]
      232         1378674000       NA        NA     SATELLITE 242.076600 [m]
      233         1378674900       NA        NA     SATELLITE 243.421470 [m]
      234         1378675800       NA        NA     SATELLITE         NA [m]
      235         1378677600       NA        NA     SATELLITE 243.421470 [m]
      236         1378678500       NA        NA     SATELLITE 243.421470 [m]
      237         1378679400       NA        NA     SATELLITE         NA [m]
      238         1378681200       NA        NA     SATELLITE 243.421470 [m]
      239         1378682100       NA        NA     SATELLITE 243.421470 [m]
      240         1378683000       NA        NA     SATELLITE         NA [m]
      241         1378685700       NA        NA     SATELLITE 243.421470 [m]
      242         1378687500       NA        NA     SATELLITE         NA [m]
      243         1378689300       NA        NA     SATELLITE 243.421470 [m]
      244         1378691100       NA        NA     SATELLITE         NA [m]
      245         1378692900       NA        NA     SATELLITE 242.076600 [m]
      246         1378694700       NA        NA     SATELLITE         NA [m]
      247         1378696500       NA        NA     SATELLITE 240.731730 [m]
      248         1378698300       NA        NA     SATELLITE         NA [m]
      249         1378700100       NA        NA     SATELLITE 240.731730 [m]
      250         1378701900       NA        NA     SATELLITE         NA [m]
      251         1378703700       NA        NA     SATELLITE 240.731730 [m]
      252         1378705500       NA        NA     SATELLITE         NA [m]
      253         1378707300       NA        NA     SATELLITE 240.731730 [m]
      254         1378709100       NA        NA     SATELLITE         NA [m]
      255         1378710900       NA        NA     SATELLITE 240.731730 [m]
      256         1378712700       NA        NA     SATELLITE         NA [m]
      257         1378714500       NA        NA     SATELLITE 242.076600 [m]
      258         1378716300       NA        NA     SATELLITE         NA [m]
      259         1378718100       NA        NA     SATELLITE 242.076600 [m]
      260         1378719900       NA        NA     SATELLITE         NA [m]
      261         1378721700       NA        NA     SATELLITE 243.421470 [m]
      262         1378723500       NA        NA     SATELLITE         NA [m]
      263         1378725300       NA        NA     SATELLITE 243.421470 [m]
      264         1378727100       NA        NA     SATELLITE         NA [m]
      265         1378728900       NA        NA     SATELLITE 243.421470 [m]
      266         1378730700       NA        NA     SATELLITE         NA [m]
      267         1378732500       NA        NA     SATELLITE 243.421470 [m]
      268         1378734300       NA        NA     SATELLITE         NA [m]
      269         1378736100       NA        NA     SATELLITE 242.076600 [m]
      270         1378737900       NA        NA     SATELLITE         NA [m]
      271         1378739700       NA        NA     SATELLITE 242.076600 [m]
      272         1378741500       NA        NA     SATELLITE         NA [m]
      273         1378743300       NA        NA     SATELLITE 240.731730 [m]
      274         1378745100       NA        NA     SATELLITE         NA [m]
      275         1378746900       NA        NA     SATELLITE 240.731730 [m]
      276         1378748700       NA        NA     SATELLITE         NA [m]
      277         1378750500       NA        NA     SATELLITE 240.731730 [m]
      278         1378752300       NA        NA     SATELLITE         NA [m]
      279         1378754100       NA        NA     SATELLITE 240.731730 [m]
      280         1378755900       NA        NA     SATELLITE         NA [m]
      281         1378757700       NA        NA     SATELLITE 242.076600 [m]
      282         1378759500       NA        NA     SATELLITE         NA [m]
      283         1378761300       NA        NA     SATELLITE 242.076600 [m]
      284         1378763100       NA        NA     SATELLITE         NA [m]
      285         1378764900       NA        NA     SATELLITE 243.421470 [m]
      286         1378766700       NA        NA     SATELLITE         NA [m]
      287         1378768500       NA        NA     SATELLITE 243.421470 [m]
      288         1378770300       NA        NA     SATELLITE         NA [m]
      289         1378771200       NA        NA     SATELLITE         NA [m]
      290         1378772100       NA        NA     SATELLITE         NA [m]
      291         1378773000       NA        NA     SATELLITE 243.421470 [m]
      292         1378774800       NA        NA     SATELLITE         NA [m]
      293         1378775700       NA        NA     SATELLITE         NA [m]
      294         1378776600       NA        NA     SATELLITE 243.421470 [m]
      295         1378778400       NA        NA     SATELLITE         NA [m]
      296         1378779300       NA        NA     SATELLITE         NA [m]
      297         1378780200       NA        NA     SATELLITE 242.076600 [m]
      298         1378782000       NA        NA     SATELLITE         NA [m]
      299         1378782900       NA        NA     SATELLITE         NA [m]
      300         1378783800       NA        NA     SATELLITE 242.076600 [m]
      301         1378785600       NA        NA     SATELLITE         NA [m]
      302         1378786500       NA        NA     SATELLITE         NA [m]
      303         1378787400       NA        NA     SATELLITE 240.731730 [m]
      304         1378789200       NA        NA     SATELLITE         NA [m]
      305         1378790100       NA        NA     SATELLITE         NA [m]
      306         1378791000       NA        NA     SATELLITE 240.731730 [m]
      307         1378792800       NA        NA     SATELLITE         NA [m]
      308         1378793700       NA        NA     SATELLITE         NA [m]
      309         1378794600       NA        NA     SATELLITE 240.731730 [m]
      310         1378796400       NA        NA     SATELLITE         NA [m]
      311         1378797300       NA        NA     SATELLITE         NA [m]
      312         1378798200       NA        NA     SATELLITE 240.731730 [m]
      313         1378800000       NA        NA     SATELLITE         NA [m]
      314         1378800900       NA        NA     SATELLITE         NA [m]
      315         1378801800       NA        NA     SATELLITE 240.731730 [m]
      316         1378803600       NA        NA     SATELLITE         NA [m]
      317         1378804500       NA        NA     SATELLITE         NA [m]
      318         1378805400       NA        NA     SATELLITE 242.076600 [m]
      319         1378807200       NA        NA     SATELLITE         NA [m]
      320         1378808100       NA        NA     SATELLITE         NA [m]
      321         1378809000       NA        NA     SATELLITE 242.076600 [m]
      322         1378810800       NA        NA     SATELLITE         NA [m]
      323         1378811700       NA        NA     SATELLITE         NA [m]
      324         1378812600       NA        NA     SATELLITE 243.421470 [m]
      325         1378814400       NA        NA     SATELLITE         NA [m]
      326         1378815300       NA        NA     SATELLITE         NA [m]
      327         1378816200       NA        NA     SATELLITE 243.421470 [m]
      328         1378818000       NA        NA     SATELLITE         NA [m]
      329         1378818900       NA        NA     SATELLITE         NA [m]
      330         1378819800       NA        NA     SATELLITE 243.421470 [m]
      331         1378821600       NA        NA     SATELLITE         NA [m]
      332         1378822500       NA        NA     SATELLITE         NA [m]
      333         1378823400       NA        NA     SATELLITE 243.421470 [m]
      334         1378825200       NA        NA     SATELLITE         NA [m]
      335         1378826100       NA        NA     SATELLITE         NA [m]
      336         1378827000       NA        NA     SATELLITE 242.076600 [m]
      337         1378828800       NA        NA     SATELLITE         NA [m]
      338         1378829700       NA        NA     SATELLITE         NA [m]
      339         1378830600       NA        NA     SATELLITE 242.076600 [m]
      340         1378832400       NA        NA     SATELLITE         NA [m]
      341         1378833300       NA        NA     SATELLITE         NA [m]
      342         1378834200       NA        NA     SATELLITE 240.731730 [m]
      343         1378836000       NA        NA     SATELLITE         NA [m]
      344         1378836900       NA        NA     SATELLITE         NA [m]
      345         1378837800       NA        NA     SATELLITE 240.731730 [m]
      346         1378839600       NA        NA     SATELLITE         NA [m]
      347         1378840500       NA        NA     SATELLITE         NA [m]
      348         1378841400       NA        NA     SATELLITE 240.731730 [m]
      349         1378843200       NA        NA     SATELLITE         NA [m]
      350         1378844100       NA        NA     SATELLITE         NA [m]
      351         1378845000       NA        NA     SATELLITE 242.076600 [m]
      352         1378846800       NA        NA     SATELLITE         NA [m]
      353         1378847700       NA        NA     SATELLITE         NA [m]
      354         1378848600       NA        NA     SATELLITE 242.076600 [m]
      355         1378850400       NA        NA     SATELLITE         NA [m]
      356         1378851300       NA        NA     SATELLITE         NA [m]
      357         1378852200       NA        NA     SATELLITE 243.421470 [m]
      358         1378854000       NA        NA     SATELLITE         NA [m]
      359         1378854900       NA        NA     SATELLITE         NA [m]
      360         1378855800       NA        NA     SATELLITE 243.421470 [m]
      361         1378857600       NA        NA     SATELLITE 243.421470 [m]
      362         1378858500       NA        NA     SATELLITE 244.766340 [m]
      363         1378859400       NA        NA     SATELLITE 244.766340 [m]
      364         1378861200       NA        NA     SATELLITE 243.421470 [m]
      365         1378862100       NA        NA     SATELLITE 243.421470 [m]
      366         1378863000       NA        NA     SATELLITE 243.421470 [m]
      367         1378864800       NA        NA     SATELLITE 243.421470 [m]
      368         1378865700       NA        NA     SATELLITE 243.421470 [m]
      369         1378866600       NA        NA     SATELLITE 243.421470 [m]
      370         1378868400       NA        NA     SATELLITE 243.421470 [m]
      371         1378869300       NA        NA     SATELLITE 243.421470 [m]
      372         1378870200       NA        NA     SATELLITE 242.076600 [m]
      373         1378872000       NA        NA     SATELLITE 242.076600 [m]
      374         1378872900       NA        NA     SATELLITE 242.076600 [m]
      375         1378873800       NA        NA     SATELLITE 242.076600 [m]
      376         1378875600       NA        NA     SATELLITE 242.076600 [m]
      377         1378876500       NA        NA     SATELLITE 240.731730 [m]
      378         1378877400       NA        NA     SATELLITE 240.731730 [m]
      379         1378879200       NA        NA     SATELLITE 240.731730 [m]
      380         1378880100       NA        NA     SATELLITE 240.731730 [m]
      381         1378881000       NA        NA     SATELLITE 240.731730 [m]
      382         1378882800       NA        NA     SATELLITE 240.731730 [m]
      383         1378883700       NA        NA     SATELLITE 240.731730 [m]
      384         1378884600       NA        NA     SATELLITE 240.731730 [m]
      385         1378886400       NA        NA     SATELLITE 240.731730 [m]
      386         1378887300       NA        NA     SATELLITE 240.731730 [m]
      387         1378888200       NA        NA     SATELLITE 240.731730 [m]
      388         1378890000       NA        NA     SATELLITE 240.731730 [m]
      389         1378890900       NA        NA     SATELLITE 240.731730 [m]
      390         1378891800       NA        NA     SATELLITE 242.076600 [m]
      391         1378893600       NA        NA     SATELLITE 242.076600 [m]
      392         1378894500       NA        NA     SATELLITE 242.076600 [m]
      393         1378895400       NA        NA     SATELLITE 242.076600 [m]
      394         1378897200       NA        NA     SATELLITE 242.076600 [m]
      395         1378898100       NA        NA     SATELLITE 242.076600 [m]
      396         1378899000       NA        NA     SATELLITE 243.421470 [m]
      397         1378900800       NA        NA     SATELLITE 243.421470 [m]
      398         1378901700       NA        NA     SATELLITE 243.421470 [m]
      399         1378902600       NA        NA     SATELLITE 243.421470 [m]
      400         1378904400       NA        NA     SATELLITE 243.421470 [m]
      401         1378905300       NA        NA     SATELLITE 243.421470 [m]
      402         1378906200       NA        NA     SATELLITE 243.421470 [m]
      403         1378908000       NA        NA     SATELLITE 243.421470 [m]
      404         1378908900       NA        NA     SATELLITE 243.421470 [m]
      405         1378909800       NA        NA     SATELLITE 243.421470 [m]
      406         1378911600       NA        NA     SATELLITE 243.421470 [m]
      407         1378912500       NA        NA     SATELLITE 243.421470 [m]
      408         1378913400       NA        NA     SATELLITE 243.421470 [m]
      409         1378915200       NA        NA     SATELLITE 242.076600 [m]
      410         1378916100       NA        NA     SATELLITE 242.076600 [m]
      411         1378917000       NA        NA     SATELLITE 242.076600 [m]
      412         1378918800       NA        NA     SATELLITE 242.076600 [m]
      413         1378919700       NA        NA     SATELLITE 242.076600 [m]
      414         1378920600       NA        NA     SATELLITE 242.076600 [m]
      415         1378922400       NA        NA     SATELLITE 240.731730 [m]
      416         1378923300       NA        NA     SATELLITE 242.076600 [m]
      417         1378924200       NA        NA     SATELLITE 242.076600 [m]
      418         1378926000       NA        NA     SATELLITE 240.731730 [m]
      419         1378926900       NA        NA     SATELLITE 240.731730 [m]
      420         1378927800       NA        NA     SATELLITE 242.076600 [m]
      421         1378929600       NA        NA     SATELLITE 242.076600 [m]
      422         1378930500       NA        NA     SATELLITE 242.076600 [m]
      423         1378931400       NA        NA     SATELLITE 242.076600 [m]
      424         1378933200       NA        NA     SATELLITE 242.076600 [m]
      425         1378934100       NA        NA     SATELLITE 242.076600 [m]
      426         1378935000       NA        NA     SATELLITE 242.076600 [m]
      427         1378936800       NA        NA     SATELLITE 242.076600 [m]
      428         1378937700       NA        NA     SATELLITE 242.076600 [m]
      429         1378938600       NA        NA     SATELLITE 242.076600 [m]
      430         1378940400       NA        NA     SATELLITE 243.421470 [m]
      431         1378941300       NA        NA     SATELLITE 243.421470 [m]
      432         1378942200       NA        NA     SATELLITE 243.421470 [m]
      433         1379031300       NA        NA     SATELLITE         NA [m]
      434         1379033100       NA        NA     SATELLITE 243.421470 [m]
      435         1379034900       NA        NA     SATELLITE         NA [m]
      436         1379036700       NA        NA     SATELLITE 243.421470 [m]
      437         1379038500       NA        NA     SATELLITE         NA [m]
      438         1379040300       NA        NA     SATELLITE 243.421470 [m]
      439         1379042100       NA        NA     SATELLITE         NA [m]
      440         1379043900       NA        NA     SATELLITE 243.421470 [m]
      441         1379045700       NA        NA     SATELLITE         NA [m]
      442         1379047500       NA        NA     SATELLITE 243.421470 [m]
      443         1379049300       NA        NA     SATELLITE         NA [m]
      444         1379051100       NA        NA     SATELLITE 242.076600 [m]
      445         1379052900       NA        NA     SATELLITE         NA [m]
      446         1379054700       NA        NA     SATELLITE 242.076600 [m]
      447         1379056500       NA        NA     SATELLITE         NA [m]
      448         1379058300       NA        NA     SATELLITE 240.731730 [m]
      449         1379060100       NA        NA     SATELLITE         NA [m]
      450         1379061900       NA        NA     SATELLITE 240.731730 [m]
      451         1379063700       NA        NA     SATELLITE         NA [m]
      452         1379065500       NA        NA     SATELLITE 240.731730 [m]
      453         1379067300       NA        NA     SATELLITE         NA [m]
      454         1379069100       NA        NA     SATELLITE 240.731730 [m]
      455         1379070900       NA        NA     SATELLITE         NA [m]
      456         1379072700       NA        NA     SATELLITE 240.731730 [m]
      457         1379074500       NA        NA     SATELLITE         NA [m]
      458         1379076300       NA        NA     SATELLITE 242.076600 [m]
      459         1379078100       NA        NA     SATELLITE         NA [m]
      460         1379079900       NA        NA     SATELLITE 242.076600 [m]
      461         1379081700       NA        NA     SATELLITE         NA [m]
      462         1379083500       NA        NA     SATELLITE 242.076600 [m]
      463         1379085300       NA        NA     SATELLITE         NA [m]
      464         1379087100       NA        NA     SATELLITE 243.421470 [m]
      465         1379088900       NA        NA     SATELLITE         NA [m]
      466         1379090700       NA        NA     SATELLITE 243.421470 [m]
      467         1379092500       NA        NA     SATELLITE         NA [m]
      468         1379094300       NA        NA     SATELLITE 242.076600 [m]
      469         1379096100       NA        NA     SATELLITE         NA [m]
      470         1379097900       NA        NA     SATELLITE 242.076600 [m]
      471         1379099700       NA        NA     SATELLITE         NA [m]
      472         1379101500       NA        NA     SATELLITE 242.076600 [m]
      473         1379103300       NA        NA     SATELLITE         NA [m]
      474         1379105100       NA        NA     SATELLITE 242.076600 [m]
      475         1379106900       NA        NA     SATELLITE         NA [m]
      476         1379108700       NA        NA     SATELLITE 242.076600 [m]
      477         1379110500       NA        NA     SATELLITE         NA [m]
      478         1379112300       NA        NA     SATELLITE 242.076600 [m]
      479         1379114100       NA        NA     SATELLITE         NA [m]
      480         1379115900       NA        NA     SATELLITE 242.076600 [m]
      481         1379117700       NA        NA     SATELLITE 242.076600 [m]
      482         1379121300       NA        NA     SATELLITE 243.421470 [m]
      483         1379124900       NA        NA     SATELLITE 243.421470 [m]
      484         1379128500       NA        NA     SATELLITE 243.421470 [m]
      485         1379132100       NA        NA     SATELLITE 243.421470 [m]
      486         1379135700       NA        NA     SATELLITE 243.421470 [m]
      487         1379139300       NA        NA     SATELLITE 243.421470 [m]
      488         1379142900       NA        NA     SATELLITE 242.076600 [m]
      489         1379146500       NA        NA     SATELLITE 242.076600 [m]
      490         1379150100       NA        NA     SATELLITE 240.731730 [m]
      491         1379153700       NA        NA     SATELLITE 240.731730 [m]
      492         1379157300       NA        NA     SATELLITE 240.731730 [m]
      493         1379160900       NA        NA     SATELLITE 240.731730 [m]
      494         1379164500       NA        NA     SATELLITE 242.076600 [m]
      495         1379168100       NA        NA     SATELLITE 242.076600 [m]
      496         1379171700       NA        NA     SATELLITE 242.076600 [m]
      497         1379175300       NA        NA     SATELLITE 243.421470 [m]
      498         1379178900       NA        NA     SATELLITE 243.421470 [m]
      499         1379182500       NA        NA     SATELLITE 243.421470 [m]
      500         1379186100       NA        NA     SATELLITE 243.421470 [m]
      501         1379189700       NA        NA     SATELLITE 242.076600 [m]
      502         1379193300       NA        NA     SATELLITE 242.076600 [m]
      503         1379196900       NA        NA     SATELLITE 242.076600 [m]
      504         1379200500       NA        NA     SATELLITE 242.076600 [m]
      505         1379203200       NA        NA     SATELLITE 242.076600 [m]
      506         1379205900       NA        NA     SATELLITE 242.076600 [m]
      507         1379206800       NA        NA     SATELLITE 242.076600 [m]
      508         1379209500       NA        NA     SATELLITE 243.421470 [m]
      509         1379210400       NA        NA     SATELLITE 243.421470 [m]
      510         1379213100       NA        NA     SATELLITE 243.421470 [m]
      511         1379214000       NA        NA     SATELLITE 243.421470 [m]
      512         1379216700       NA        NA     SATELLITE 243.421470 [m]
      513         1379217600       NA        NA     SATELLITE 243.421470 [m]
      514         1379220300       NA        NA     SATELLITE 243.421470 [m]
      515         1379221200       NA        NA     SATELLITE 243.421470 [m]
      516         1379223900       NA        NA     SATELLITE 243.421470 [m]
      517         1379224800       NA        NA     SATELLITE 243.421470 [m]
      518         1379227500       NA        NA     SATELLITE 243.421470 [m]
      519         1379228400       NA        NA     SATELLITE 243.421470 [m]
      520         1379231100       NA        NA     SATELLITE 243.421470 [m]
      521         1379232000       NA        NA     SATELLITE 243.421470 [m]
      522         1379234700       NA        NA     SATELLITE 242.076600 [m]
      523         1379235600       NA        NA     SATELLITE 242.076600 [m]
      524         1379238300       NA        NA     SATELLITE 242.076600 [m]
      525         1379239200       NA        NA     SATELLITE 242.076600 [m]
      526         1379241900       NA        NA     SATELLITE 240.731730 [m]
      527         1379242800       NA        NA     SATELLITE 240.731730 [m]
      528         1379245500       NA        NA     SATELLITE 240.731730 [m]
      529         1379246400       NA        NA     SATELLITE 240.731730 [m]
      530         1379249100       NA        NA     SATELLITE 240.731730 [m]
      531         1379250000       NA        NA     SATELLITE 240.731730 [m]
      532         1379252700       NA        NA     SATELLITE 240.731730 [m]
      533         1379253600       NA        NA     SATELLITE 240.731730 [m]
      534         1379256300       NA        NA     SATELLITE 242.076600 [m]
      535         1379257200       NA        NA     SATELLITE 242.076600 [m]
      536         1379259900       NA        NA     SATELLITE 242.076600 [m]
      537         1379260800       NA        NA     SATELLITE 242.076600 [m]
      538         1379263500       NA        NA     SATELLITE 243.421470 [m]
      539         1379264400       NA        NA     SATELLITE 243.421470 [m]
      540         1379267100       NA        NA     SATELLITE 243.421470 [m]
      541         1379268000       NA        NA     SATELLITE 243.421470 [m]
      542         1379270700       NA        NA     SATELLITE 243.421470 [m]
      543         1379271600       NA        NA     SATELLITE 243.421470 [m]
      544         1379274300       NA        NA     SATELLITE 243.421470 [m]
      545         1379275200       NA        NA     SATELLITE 243.421470 [m]
      546         1379277900       NA        NA     SATELLITE 243.421470 [m]
      547         1379278800       NA        NA     SATELLITE 243.421470 [m]
      548         1379281500       NA        NA     SATELLITE 242.076600 [m]
      549         1379282400       NA        NA     SATELLITE 242.076600 [m]
      550         1379285100       NA        NA     SATELLITE 242.076600 [m]
      551         1379286000       NA        NA     SATELLITE 242.076600 [m]
      552         1379288700       NA        NA     SATELLITE 242.076600 [m]
      553         1379290500       NA        NA     SATELLITE         NA [m]
      554         1379292300       NA        NA     SATELLITE 242.076600 [m]
      555         1379294100       NA        NA     SATELLITE         NA [m]
      556         1379295900       NA        NA     SATELLITE 242.076600 [m]
      557         1379297700       NA        NA     SATELLITE         NA [m]
      558         1379299500       NA        NA     SATELLITE 242.076600 [m]
      559         1379301300       NA        NA     SATELLITE         NA [m]
      560         1379303100       NA        NA     SATELLITE 243.421470 [m]
      561         1379304900       NA        NA     SATELLITE         NA [m]
      562         1379306700       NA        NA     SATELLITE 243.421470 [m]
      563         1379308500       NA        NA     SATELLITE         NA [m]
      564         1379310300       NA        NA     SATELLITE 244.766340 [m]
      565         1379312100       NA        NA     SATELLITE         NA [m]
      566         1379313900       NA        NA     SATELLITE 244.766340 [m]
      567         1379315700       NA        NA     SATELLITE         NA [m]
      568         1379317500       NA        NA     SATELLITE 244.766340 [m]
      569         1379319300       NA        NA     SATELLITE         NA [m]
      570         1379321100       NA        NA     SATELLITE 243.421470 [m]
      571         1379322900       NA        NA     SATELLITE         NA [m]
      572         1379324700       NA        NA     SATELLITE 243.421470 [m]
      573         1379326500       NA        NA     SATELLITE         NA [m]
      574         1379328300       NA        NA     SATELLITE 242.076600 [m]
      575         1379330100       NA        NA     SATELLITE         NA [m]
      576         1379331900       NA        NA     SATELLITE 242.076600 [m]
      577         1379333700       NA        NA     SATELLITE         NA [m]
      578         1379335500       NA        NA     SATELLITE 240.731730 [m]
      579         1379337300       NA        NA     SATELLITE         NA [m]
      580         1379339100       NA        NA     SATELLITE 240.731730 [m]
      581         1379340900       NA        NA     SATELLITE         NA [m]
      582         1379342700       NA        NA     SATELLITE 240.731730 [m]
      583         1379344500       NA        NA     SATELLITE         NA [m]
      584         1379346300       NA        NA     SATELLITE 242.076600 [m]
      585         1379348100       NA        NA     SATELLITE         NA [m]
      586         1379349900       NA        NA     SATELLITE 243.421470 [m]
      587         1379351700       NA        NA     SATELLITE         NA [m]
      588         1379353500       NA        NA     SATELLITE 243.421470 [m]
      589         1379355300       NA        NA     SATELLITE         NA [m]
      590         1379357100       NA        NA     SATELLITE 244.766340 [m]
      591         1379358900       NA        NA     SATELLITE         NA [m]
      592         1379360700       NA        NA     SATELLITE 244.766340 [m]
      593         1379362500       NA        NA     SATELLITE         NA [m]
      594         1379364300       NA        NA     SATELLITE 243.421470 [m]
      595         1379366100       NA        NA     SATELLITE         NA [m]
      596         1379367900       NA        NA     SATELLITE 243.421470 [m]
      597         1379369700       NA        NA     SATELLITE         NA [m]
      598         1379371500       NA        NA     SATELLITE 243.421470 [m]
      599         1379373300       NA        NA     SATELLITE         NA [m]
      600         1379375100       NA        NA     SATELLITE 242.076600 [m]
      601         1379376000       NA        NA     SATELLITE         NA [m]
      602         1379377800       NA        NA     SATELLITE 242.076600 [m]
      603         1379378700       NA        NA     SATELLITE         NA [m]
      604         1379379600       NA        NA     SATELLITE         NA [m]
      605         1379381400       NA        NA     SATELLITE 242.076600 [m]
      606         1379382300       NA        NA     SATELLITE         NA [m]
      607         1379383200       NA        NA     SATELLITE         NA [m]
      608         1379385000       NA        NA     SATELLITE 242.076600 [m]
      609         1379385900       NA        NA     SATELLITE         NA [m]
      610         1379386800       NA        NA     SATELLITE         NA [m]
      611         1379388600       NA        NA     SATELLITE 242.076600 [m]
      612         1379389500       NA        NA     SATELLITE         NA [m]
      613         1379390400       NA        NA     SATELLITE         NA [m]
      614         1379392200       NA        NA     SATELLITE 242.076600 [m]
      615         1379393100       NA        NA     SATELLITE         NA [m]
      616         1379394000       NA        NA     SATELLITE         NA [m]
      617         1379395800       NA        NA     SATELLITE 242.076600 [m]
      618         1379396700       NA        NA     SATELLITE         NA [m]
      619         1379397600       NA        NA     SATELLITE         NA [m]
      620         1379399400       NA        NA     SATELLITE 242.076600 [m]
      621         1379400300       NA        NA     SATELLITE         NA [m]
      622         1379401200       NA        NA     SATELLITE         NA [m]
      623         1379403000       NA        NA     SATELLITE 242.076600 [m]
      624         1379403900       NA        NA     SATELLITE         NA [m]
      625         1379404800       NA        NA     SATELLITE         NA [m]
      626         1379406600       NA        NA     SATELLITE  69.933240 [m]
      627         1379407500       NA        NA     SATELLITE         NA [m]
      628         1379408400       NA        NA     SATELLITE         NA [m]
      629         1379410200       NA        NA     SATELLITE   0.000000 [m]
      630         1379411100       NA        NA     SATELLITE         NA [m]
      631         1379412000       NA        NA     SATELLITE         NA [m]
      632         1379413800       NA        NA     SATELLITE   0.000000 [m]
      633         1379414700       NA        NA     SATELLITE         NA [m]
      634         1379415600       NA        NA     SATELLITE         NA [m]
      635         1379417400       NA        NA     SATELLITE   0.000000 [m]
      636         1379418300       NA        NA     SATELLITE         NA [m]
      637         1379419200       NA        NA     SATELLITE         NA [m]
      638         1379421000       NA        NA     SATELLITE   0.000000 [m]
      639         1379421900       NA        NA     SATELLITE         NA [m]
      640         1379422800       NA        NA     SATELLITE         NA [m]
      641         1379424600       NA        NA     SATELLITE   0.000000 [m]
      642         1379425500       NA        NA     SATELLITE         NA [m]
      643         1379426400       NA        NA     SATELLITE         NA [m]
      644         1379428200       NA        NA     SATELLITE   0.000000 [m]
      645         1379429100       NA        NA     SATELLITE         NA [m]
      646         1379430000       NA        NA     SATELLITE         NA [m]
      647         1379431800       NA        NA     SATELLITE   0.000000 [m]
      648         1379432700       NA        NA     SATELLITE         NA [m]
      649         1379433600       NA        NA     SATELLITE         NA [m]
      650         1379435400       NA        NA     SATELLITE   0.000000 [m]
      651         1379436300       NA        NA     SATELLITE         NA [m]
      652         1379437200       NA        NA     SATELLITE         NA [m]
      653         1379439000       NA        NA     SATELLITE   0.000000 [m]
      654         1379439900       NA        NA     SATELLITE         NA [m]
      655         1379440800       NA        NA     SATELLITE         NA [m]
      656         1379442600       NA        NA     SATELLITE   0.000000 [m]
      657         1379443500       NA        NA     SATELLITE         NA [m]
      658         1379444400       NA        NA     SATELLITE         NA [m]
      659         1379446200       NA        NA     SATELLITE   0.000000 [m]
      660         1379447100       NA        NA     SATELLITE         NA [m]
      661         1379448000       NA        NA     SATELLITE         NA [m]
      662         1379449800       NA        NA     SATELLITE   0.000000 [m]
      663         1379450700       NA        NA     SATELLITE         NA [m]
      664         1379451600       NA        NA     SATELLITE         NA [m]
      665         1379453400       NA        NA     SATELLITE   0.000000 [m]
      666         1379454300       NA        NA     SATELLITE         NA [m]
      667         1379455200       NA        NA     SATELLITE         NA [m]
      668         1379457000       NA        NA     SATELLITE   0.000000 [m]
      669         1379457900       NA        NA     SATELLITE         NA [m]
      670         1379458800       NA        NA     SATELLITE         NA [m]
      671         1379460600       NA        NA     SATELLITE   0.000000 [m]
      672         1379461500       NA        NA     SATELLITE         NA [m]
      673         1379462400       NA        NA     SATELLITE         NA [m]
      674         1379463300       NA        NA     SATELLITE         NA [m]
      675         1379464200       NA        NA     SATELLITE         NA [m]
      676         1379466000       NA        NA     SATELLITE         NA [m]
      677         1379466900       NA        NA     SATELLITE         NA [m]
      678         1379467800       NA        NA     SATELLITE         NA [m]
      679         1379469600       NA        NA     SATELLITE         NA [m]
      680         1379470500       NA        NA     SATELLITE         NA [m]
      681         1379471400       NA        NA     SATELLITE         NA [m]
      682         1379473200       NA        NA     SATELLITE         NA [m]
      683         1379474100       NA        NA     SATELLITE         NA [m]
      684         1379475000       NA        NA     SATELLITE         NA [m]
      685         1379476800       NA        NA     SATELLITE         NA [m]
      686         1379477700       NA        NA     SATELLITE         NA [m]
      687         1379478600       NA        NA     SATELLITE         NA [m]
      688         1379480400       NA        NA     SATELLITE         NA [m]
      689         1379481300       NA        NA     SATELLITE         NA [m]
      690         1379482200       NA        NA     SATELLITE         NA [m]
      691         1379484000       NA        NA     SATELLITE         NA [m]
      692         1379484900       NA        NA     SATELLITE         NA [m]
      693         1379485800       NA        NA     SATELLITE         NA [m]
      694         1379487600       NA        NA     SATELLITE         NA [m]
      695         1379488500       NA        NA     SATELLITE         NA [m]
      696         1379489400       NA        NA     SATELLITE         NA [m]
      697         1379491200       NA        NA     SATELLITE         NA [m]
      698         1379492100       NA        NA     SATELLITE         NA [m]
      699         1379493000       NA        NA     SATELLITE         NA [m]
      700         1379494800       NA        NA     SATELLITE         NA [m]
      701         1379495700       NA        NA     SATELLITE         NA [m]
      702         1379496600       NA        NA     SATELLITE         NA [m]
      703         1379498400       NA        NA     SATELLITE         NA [m]
      704         1379499300       NA        NA     SATELLITE         NA [m]
      705         1379500200       NA        NA     SATELLITE         NA [m]
      706         1379502000       NA        NA     SATELLITE         NA [m]
      707         1379502900       NA        NA     SATELLITE         NA [m]
      708         1379503800       NA        NA     SATELLITE         NA [m]
      709         1379505600       NA        NA     SATELLITE         NA [m]
      710         1379506500       NA        NA     SATELLITE         NA [m]
      711         1379507400       NA        NA     SATELLITE         NA [m]
      712         1379509200       NA        NA     SATELLITE         NA [m]
      713         1379510100       NA        NA     SATELLITE         NA [m]
      714         1379511000       NA        NA     SATELLITE         NA [m]
      715         1379512800       NA        NA     SATELLITE         NA [m]
      716         1379513700       NA        NA     SATELLITE         NA [m]
      717         1379514600       NA        NA     SATELLITE         NA [m]
      718         1379516400       NA        NA     SATELLITE         NA [m]
      719         1379517300       NA        NA     SATELLITE         NA [m]
      720         1379518200       NA        NA     SATELLITE         NA [m]
      721         1379520000       NA        NA     SATELLITE         NA [m]
      722         1379520900       NA        NA     SATELLITE         NA [m]
      723         1379521800       NA        NA     SATELLITE         NA [m]
      724         1379523600       NA        NA     SATELLITE         NA [m]
      725         1379524500       NA        NA     SATELLITE         NA [m]
      726         1379525400       NA        NA     SATELLITE         NA [m]
      727         1379527200       NA        NA     SATELLITE         NA [m]
      728         1379528100       NA        NA     SATELLITE         NA [m]
      729         1379529000       NA        NA     SATELLITE         NA [m]
      730         1379530800       NA        NA     SATELLITE         NA [m]
      731         1379531700       NA        NA     SATELLITE         NA [m]
      732         1379532600       NA        NA     SATELLITE         NA [m]
      733         1379534400       NA        NA     SATELLITE         NA [m]
      734         1379535300       NA        NA     SATELLITE         NA [m]
      735         1379536200       NA        NA     SATELLITE         NA [m]
      736         1379538000       NA        NA     SATELLITE         NA [m]
      737         1379538900       NA        NA     SATELLITE         NA [m]
      738         1379539800       NA        NA     SATELLITE         NA [m]
      739         1379541600       NA        NA     SATELLITE         NA [m]
      740         1379542500       NA        NA     SATELLITE         NA [m]
      741         1379543400       NA        NA     SATELLITE         NA [m]
      742         1379545200       NA        NA     SATELLITE         NA [m]
      743         1379546100       NA        NA     SATELLITE         NA [m]
      744         1379547000       NA        NA     SATELLITE         NA [m]
      745         1379548800       NA        NA     SATELLITE   0.000000 [m]
      746         1379549700       NA        NA     SATELLITE   0.000000 [m]
      747         1379550600       NA        NA     SATELLITE   0.000000 [m]
      748         1379552400       NA        NA     SATELLITE   0.000000 [m]
      749         1379553300       NA        NA     SATELLITE   0.000000 [m]
      750         1379554200       NA        NA     SATELLITE   0.000000 [m]
      751         1379556000       NA        NA     SATELLITE   0.000000 [m]
      752         1379556900       NA        NA     SATELLITE   0.000000 [m]
      753         1379557800       NA        NA     SATELLITE   0.000000 [m]
      754         1379559600       NA        NA     SATELLITE   0.000000 [m]
      755         1379560500       NA        NA     SATELLITE   0.000000 [m]
      756         1379561400       NA        NA     SATELLITE   0.000000 [m]
      757         1379563200       NA        NA     SATELLITE   0.000000 [m]
      758         1379564100       NA        NA     SATELLITE   0.000000 [m]
      759         1379565000       NA        NA     SATELLITE   0.000000 [m]
      760         1379566800       NA        NA     SATELLITE   0.000000 [m]
      761         1379567700       NA        NA     SATELLITE   0.000000 [m]
      762         1379568600       NA        NA     SATELLITE   0.000000 [m]
      763         1379570400       NA        NA     SATELLITE   0.000000 [m]
      764         1379571300       NA        NA     SATELLITE   0.000000 [m]
      765         1379572200       NA        NA     SATELLITE   0.000000 [m]
      766         1379574000       NA        NA     SATELLITE   0.000000 [m]
      767         1379574900       NA        NA     SATELLITE   0.000000 [m]
      768         1379575800       NA        NA     SATELLITE   0.000000 [m]
      769         1379577600       NA        NA     SATELLITE   0.000000 [m]
      770         1379578500       NA        NA     SATELLITE   0.000000 [m]
      771         1379579400       NA        NA     SATELLITE   0.000000 [m]
      772         1379581200       NA        NA     SATELLITE   0.000000 [m]
      773         1379582100       NA        NA     SATELLITE   0.000000 [m]
      774         1379583000       NA        NA     SATELLITE   0.000000 [m]
      775         1379584800       NA        NA     SATELLITE   0.000000 [m]
      776         1379585700       NA        NA     SATELLITE   0.000000 [m]
      777         1379586600       NA        NA     SATELLITE   0.000000 [m]
      778         1379588400       NA        NA     SATELLITE   0.000000 [m]
      779         1379589300       NA        NA     SATELLITE   0.000000 [m]
      780         1379590200       NA        NA     SATELLITE   0.000000 [m]
      781         1379592000       NA        NA     SATELLITE   0.000000 [m]
      782         1379592900       NA        NA     SATELLITE   0.000000 [m]
      783         1379593800       NA        NA     SATELLITE   0.000000 [m]
      784         1379595600       NA        NA     SATELLITE   0.000000 [m]
      785         1379596500       NA        NA     SATELLITE   0.000000 [m]
      786         1379597400       NA        NA     SATELLITE   0.000000 [m]
      787         1379599200       NA        NA     SATELLITE   0.000000 [m]
      788         1379600100       NA        NA     SATELLITE   0.000000 [m]
      789         1379601000       NA        NA     SATELLITE   0.000000 [m]
      790         1379602800       NA        NA     SATELLITE   0.000000 [m]
      791         1379603700       NA        NA     SATELLITE   0.000000 [m]
      792         1379604600       NA        NA     SATELLITE   0.000000 [m]
      793         1379606400       NA        NA     SATELLITE   0.000000 [m]
      794         1379607300       NA        NA     SATELLITE   0.000000 [m]
      795         1379608200       NA        NA     SATELLITE   0.000000 [m]
      796         1379610000       NA        NA     SATELLITE   0.000000 [m]
      797         1379610900       NA        NA     SATELLITE   0.000000 [m]
      798         1379611800       NA        NA     SATELLITE   0.000000 [m]
      799         1379613600       NA        NA     SATELLITE   0.000000 [m]
      800         1379614500       NA        NA     SATELLITE   0.000000 [m]
      801         1379615400       NA        NA     SATELLITE   0.000000 [m]
      802         1379617200       NA        NA     SATELLITE   0.000000 [m]
      803         1379618100       NA        NA     SATELLITE   0.000000 [m]
      804         1379619000       NA        NA     SATELLITE   0.000000 [m]
      805         1379620800       NA        NA     SATELLITE   0.000000 [m]
      806         1379621700       NA        NA     SATELLITE   0.000000 [m]
      807         1379622600       NA        NA     SATELLITE   0.000000 [m]
      808         1379624400       NA        NA     SATELLITE   0.000000 [m]
      809         1379625300       NA        NA     SATELLITE   0.672435 [m]
      810         1379626200       NA        NA     SATELLITE   0.672435 [m]
      811         1379628000       NA        NA     SATELLITE   0.672435 [m]
      812         1379628900       NA        NA     SATELLITE   0.672435 [m]
      813         1379629800       NA        NA     SATELLITE   0.000000 [m]
      814         1379631600       NA        NA     SATELLITE   0.000000 [m]
      815         1379632500       NA        NA     SATELLITE   0.000000 [m]
      816         1379633400       NA        NA     SATELLITE   0.000000 [m]
      817         1379637000       NA        NA     SATELLITE         NA [m]
      818         1379637900       NA        NA     SATELLITE   0.000000 [m]
      819         1379640600       NA        NA     SATELLITE         NA [m]
      820         1379641500       NA        NA     SATELLITE   0.000000 [m]
      821         1379644200       NA        NA     SATELLITE         NA [m]
      822         1379645100       NA        NA     SATELLITE   0.000000 [m]
      823         1379647800       NA        NA     SATELLITE         NA [m]
      824         1379648700       NA        NA     SATELLITE   0.000000 [m]
      825         1379651400       NA        NA     SATELLITE         NA [m]
      826         1379652300       NA        NA     SATELLITE   0.000000 [m]
      827         1379655000       NA        NA     SATELLITE         NA [m]
      828         1379655900       NA        NA     SATELLITE   0.000000 [m]
      829         1379658600       NA        NA     SATELLITE         NA [m]
      830         1379659500       NA        NA     SATELLITE   0.000000 [m]
      831         1379662200       NA        NA     SATELLITE         NA [m]
      832         1379663100       NA        NA     SATELLITE   0.000000 [m]
      833         1379665800       NA        NA     SATELLITE         NA [m]
      834         1379666700       NA        NA     SATELLITE   0.000000 [m]
      835         1379669400       NA        NA     SATELLITE         NA [m]
      836         1379670300       NA        NA     SATELLITE   0.672435 [m]
      837         1379673000       NA        NA     SATELLITE         NA [m]
      838         1379673900       NA        NA     SATELLITE   0.000000 [m]
      839         1379676600       NA        NA     SATELLITE         NA [m]
      840         1379677500       NA        NA     SATELLITE   0.000000 [m]
      841         1379680200       NA        NA     SATELLITE         NA [m]
      842         1379681100       NA        NA     SATELLITE   0.000000 [m]
      843         1379683800       NA        NA     SATELLITE         NA [m]
      844         1379684700       NA        NA     SATELLITE   0.000000 [m]
      845         1379687400       NA        NA     SATELLITE         NA [m]
      846         1379688300       NA        NA     SATELLITE   0.000000 [m]
      847         1379691000       NA        NA     SATELLITE         NA [m]
      848         1379691900       NA        NA     SATELLITE   0.672435 [m]
      849         1379694600       NA        NA     SATELLITE         NA [m]
      850         1379695500       NA        NA     SATELLITE   0.000000 [m]
      851         1379698200       NA        NA     SATELLITE         NA [m]
      852         1379699100       NA        NA     SATELLITE   0.000000 [m]
      853         1379701800       NA        NA     SATELLITE         NA [m]
      854         1379702700       NA        NA     SATELLITE   0.000000 [m]
      855         1379705400       NA        NA     SATELLITE         NA [m]
      856         1379706300       NA        NA     SATELLITE   0.000000 [m]
      857         1379709000       NA        NA     SATELLITE         NA [m]
      858         1379709900       NA        NA     SATELLITE   0.000000 [m]
      859         1379712600       NA        NA     SATELLITE         NA [m]
      860         1379713500       NA        NA     SATELLITE   0.000000 [m]
      861         1379716200       NA        NA     SATELLITE         NA [m]
      862         1379717100       NA        NA     SATELLITE   0.000000 [m]
      863         1379719800       NA        NA     SATELLITE         NA [m]
      864         1379720700       NA        NA     SATELLITE   0.000000 [m]
      865         1379721600       NA        NA     SATELLITE         NA [m]
      866         1379722500       NA        NA     SATELLITE   0.000000 [m]
      867         1379723400       NA        NA     SATELLITE         NA [m]
      868         1379725200       NA        NA     SATELLITE         NA [m]
      869         1379726100       NA        NA     SATELLITE   0.000000 [m]
      870         1379727000       NA        NA     SATELLITE         NA [m]
      871         1379728800       NA        NA     SATELLITE         NA [m]
      872         1379729700       NA        NA     SATELLITE   0.000000 [m]
      873         1379730600       NA        NA     SATELLITE         NA [m]
      874         1379732400       NA        NA     SATELLITE         NA [m]
      875         1379733300       NA        NA     SATELLITE   0.000000 [m]
      876         1379734200       NA        NA     SATELLITE         NA [m]
      877         1379736000       NA        NA     SATELLITE         NA [m]
      878         1379736900       NA        NA     SATELLITE   0.000000 [m]
      879         1379737800       NA        NA     SATELLITE         NA [m]
      880         1379739600       NA        NA     SATELLITE         NA [m]
      881         1379740500       NA        NA     SATELLITE   0.000000 [m]
      882         1379741400       NA        NA     SATELLITE         NA [m]
      883         1379743200       NA        NA     SATELLITE         NA [m]
      884         1379744100       NA        NA     SATELLITE   0.000000 [m]
      885         1379745000       NA        NA     SATELLITE         NA [m]
      886         1379746800       NA        NA     SATELLITE         NA [m]
      887         1379747700       NA        NA     SATELLITE   0.000000 [m]
      888         1379748600       NA        NA     SATELLITE         NA [m]
      889         1379750400       NA        NA     SATELLITE         NA [m]
      890         1379751300       NA        NA     SATELLITE   0.000000 [m]
      891         1379752200       NA        NA     SATELLITE         NA [m]
      892         1379754000       NA        NA     SATELLITE         NA [m]
      893         1379754900       NA        NA     SATELLITE   0.000000 [m]
      894         1379755800       NA        NA     SATELLITE         NA [m]
      895         1379757600       NA        NA     SATELLITE         NA [m]
      896         1379758500       NA        NA     SATELLITE   0.000000 [m]
      897         1379759400       NA        NA     SATELLITE         NA [m]
      898         1379761200       NA        NA     SATELLITE         NA [m]
      899         1379762100       NA        NA     SATELLITE   0.000000 [m]
      900         1379763000       NA        NA     SATELLITE         NA [m]
      901         1379764800       NA        NA     SATELLITE         NA [m]
      902         1379765700       NA        NA     SATELLITE   0.000000 [m]
      903         1379766600       NA        NA     SATELLITE         NA [m]
      904         1379768400       NA        NA     SATELLITE         NA [m]
      905         1379769300       NA        NA     SATELLITE   0.000000 [m]
      906         1379770200       NA        NA     SATELLITE         NA [m]
      907         1379772000       NA        NA     SATELLITE         NA [m]
      908         1379772900       NA        NA     SATELLITE   0.000000 [m]
      909         1379773800       NA        NA     SATELLITE         NA [m]
      910         1379775600       NA        NA     SATELLITE         NA [m]
      911         1379776500       NA        NA     SATELLITE   0.000000 [m]
      912         1379777400       NA        NA     SATELLITE         NA [m]
      913         1379779200       NA        NA     SATELLITE         NA [m]
      914         1379780100       NA        NA     SATELLITE   0.000000 [m]
      915         1379781000       NA        NA     SATELLITE         NA [m]
      916         1379782800       NA        NA     SATELLITE         NA [m]
      917         1379783700       NA        NA     SATELLITE   0.000000 [m]
      918         1379784600       NA        NA     SATELLITE         NA [m]
      919         1379786400       NA        NA     SATELLITE         NA [m]
      920         1379787300       NA        NA     SATELLITE   0.000000 [m]
      921         1379788200       NA        NA     SATELLITE         NA [m]
      922         1379790000       NA        NA     SATELLITE         NA [m]
      923         1379790900       NA        NA     SATELLITE   0.000000 [m]
      924         1379791800       NA        NA     SATELLITE         NA [m]
      925         1379793600       NA        NA     SATELLITE         NA [m]
      926         1379794500       NA        NA     SATELLITE   0.000000 [m]
      927         1379795400       NA        NA     SATELLITE         NA [m]
      928         1379797200       NA        NA     SATELLITE         NA [m]
      929         1379798100       NA        NA     SATELLITE   0.000000 [m]
      930         1379799000       NA        NA     SATELLITE         NA [m]
      931         1379800800       NA        NA     SATELLITE         NA [m]
      932         1379801700       NA        NA     SATELLITE   0.000000 [m]
      933         1379802600       NA        NA     SATELLITE         NA [m]
      934         1379804400       NA        NA     SATELLITE         NA [m]
      935         1379805300       NA        NA     SATELLITE   0.000000 [m]
      936         1379806200       NA        NA     SATELLITE         NA [m]
      937         1379808000       NA        NA     SATELLITE   0.000000 [m]
      938         1379811600       NA        NA     SATELLITE   0.000000 [m]
      939         1379815200       NA        NA     SATELLITE   0.000000 [m]
      940         1379818800       NA        NA     SATELLITE   0.000000 [m]
      941         1379822400       NA        NA     SATELLITE   0.000000 [m]
      942         1379826000       NA        NA     SATELLITE   0.000000 [m]
      943         1379829600       NA        NA     SATELLITE   0.000000 [m]
      944         1379833200       NA        NA     SATELLITE   0.000000 [m]
      945         1379836800       NA        NA     SATELLITE   0.000000 [m]
      946         1379840400       NA        NA     SATELLITE   0.000000 [m]
      947         1379844000       NA        NA     SATELLITE   0.000000 [m]
      948         1379847600       NA        NA     SATELLITE   0.000000 [m]
      949         1379851200       NA        NA     SATELLITE   0.672435 [m]
      950         1379854800       NA        NA     SATELLITE   0.000000 [m]
      951         1379858400       NA        NA     SATELLITE   0.000000 [m]
      952         1379862000       NA        NA     SATELLITE   0.000000 [m]
      953         1379865600       NA        NA     SATELLITE   0.672435 [m]
      954         1379869200       NA        NA     SATELLITE   0.000000 [m]
      955         1379872800       NA        NA     SATELLITE   0.000000 [m]
      956         1379876400       NA        NA     SATELLITE   0.000000 [m]
      957         1379880000       NA        NA     SATELLITE   0.000000 [m]
      958         1379883600       NA        NA     SATELLITE   0.000000 [m]
      959         1379887200       NA        NA     SATELLITE   0.000000 [m]
      960         1379890800       NA        NA     SATELLITE   0.000000 [m]
      961         1379896200       NA        NA     SATELLITE   0.000000 [m]
      962         1379897100       NA        NA     SATELLITE   0.000000 [m]
      963         1379899800       NA        NA     SATELLITE   0.000000 [m]
      964         1379900700       NA        NA     SATELLITE   0.000000 [m]
      965         1379903400       NA        NA     SATELLITE   0.000000 [m]
      966         1379904300       NA        NA     SATELLITE   0.000000 [m]
      967         1379907000       NA        NA     SATELLITE   0.000000 [m]
      968         1379907900       NA        NA     SATELLITE   0.000000 [m]
      969         1379910600       NA        NA     SATELLITE   0.000000 [m]
      970         1379911500       NA        NA     SATELLITE   0.000000 [m]
      971         1379914200       NA        NA     SATELLITE   0.000000 [m]
      972         1379915100       NA        NA     SATELLITE   0.672435 [m]
      973         1379917800       NA        NA     SATELLITE   0.672435 [m]
      974         1379918700       NA        NA     SATELLITE   0.000000 [m]
      975         1379921400       NA        NA     SATELLITE   0.672435 [m]
      976         1379922300       NA        NA     SATELLITE   0.672435 [m]
      977         1379925000       NA        NA     SATELLITE   0.000000 [m]
      978         1379925900       NA        NA     SATELLITE   0.000000 [m]
      979         1379928600       NA        NA     SATELLITE   0.000000 [m]
      980         1379929500       NA        NA     SATELLITE   0.000000 [m]
      981         1379932200       NA        NA     SATELLITE   0.672435 [m]
      982         1379933100       NA        NA     SATELLITE   0.000000 [m]
      983         1379935800       NA        NA     SATELLITE   0.000000 [m]
      984         1379936700       NA        NA     SATELLITE   0.000000 [m]
      985         1379939400       NA        NA     SATELLITE   0.000000 [m]
      986         1379940300       NA        NA     SATELLITE   0.000000 [m]
      987         1379943000       NA        NA     SATELLITE   0.000000 [m]
      988         1379943900       NA        NA     SATELLITE   0.000000 [m]
      989         1379946600       NA        NA     SATELLITE   0.000000 [m]
      990         1379947500       NA        NA     SATELLITE   0.000000 [m]
      991         1379950200       NA        NA     SATELLITE   0.000000 [m]
      992         1379951100       NA        NA     SATELLITE   0.000000 [m]
      993         1379953800       NA        NA     SATELLITE   0.000000 [m]
      994         1379954700       NA        NA     SATELLITE   0.000000 [m]
      995         1379957400       NA        NA     SATELLITE   0.000000 [m]
      996         1379958300       NA        NA     SATELLITE   0.000000 [m]
      997         1379961000       NA        NA     SATELLITE   0.000000 [m]
      998         1379961900       NA        NA     SATELLITE   0.000000 [m]
      999         1379964600       NA        NA     SATELLITE   0.000000 [m]
      1000        1379965500       NA        NA     SATELLITE   0.000000 [m]
      1001        1379968200       NA        NA     SATELLITE   0.000000 [m]
      1002        1379969100       NA        NA     SATELLITE   0.000000 [m]
      1003        1379971800       NA        NA     SATELLITE   0.000000 [m]
      1004        1379972700       NA        NA     SATELLITE   0.000000 [m]
      1005        1379975400       NA        NA     SATELLITE   0.000000 [m]
      1006        1379976300       NA        NA     SATELLITE   0.000000 [m]
      1007        1379979000       NA        NA     SATELLITE   0.000000 [m]
      1008        1379979900       NA        NA     SATELLITE   0.000000 [m]
      1009        1379980800       NA        NA     SATELLITE   0.000000 [m]
      1010        1379983500       NA        NA     SATELLITE   0.000000 [m]
      1011        1379984400       NA        NA     SATELLITE   0.000000 [m]
      1012        1379987100       NA        NA     SATELLITE   0.000000 [m]
      1013        1379988000       NA        NA     SATELLITE   0.000000 [m]
      1014        1379990700       NA        NA     SATELLITE   0.000000 [m]
      1015        1379991600       NA        NA     SATELLITE   0.000000 [m]
      1016        1379994300       NA        NA     SATELLITE   0.000000 [m]
      1017        1379995200       NA        NA     SATELLITE   0.000000 [m]
      1018        1379997900       NA        NA     SATELLITE   0.000000 [m]
      1019        1379998800       NA        NA     SATELLITE   0.000000 [m]
      1020        1380001500       NA        NA     SATELLITE   0.000000 [m]
      1021        1380002400       NA        NA     SATELLITE   0.000000 [m]
      1022        1380005100       NA        NA     SATELLITE   0.000000 [m]
      1023        1380006000       NA        NA     SATELLITE   0.000000 [m]
      1024        1380008700       NA        NA     SATELLITE   0.000000 [m]
      1025        1380009600       NA        NA     SATELLITE   0.000000 [m]
      1026        1380012300       NA        NA     SATELLITE   0.000000 [m]
      1027        1380013200       NA        NA     SATELLITE   0.000000 [m]
      1028        1380015900       NA        NA     SATELLITE   0.000000 [m]
      1029        1380016800       NA        NA     SATELLITE   0.000000 [m]
      1030        1380019500       NA        NA     SATELLITE   0.000000 [m]
      1031        1380020400       NA        NA     SATELLITE   0.000000 [m]
      1032        1380023100       NA        NA     SATELLITE   0.000000 [m]
      1033        1380024000       NA        NA     SATELLITE   0.000000 [m]
      1034        1380026700       NA        NA     SATELLITE   0.000000 [m]
      1035        1380027600       NA        NA     SATELLITE   0.000000 [m]
      1036        1380030300       NA        NA     SATELLITE   0.000000 [m]
      1037        1380031200       NA        NA     SATELLITE   0.000000 [m]
      1038        1380033900       NA        NA     SATELLITE   0.000000 [m]
      1039        1380034800       NA        NA     SATELLITE   0.000000 [m]
      1040        1380037500       NA        NA     SATELLITE   0.000000 [m]
      1041        1380038400       NA        NA     SATELLITE   0.000000 [m]
      1042        1380041100       NA        NA     SATELLITE   0.000000 [m]
      1043        1380042000       NA        NA     SATELLITE   0.000000 [m]
      1044        1380044700       NA        NA     SATELLITE   0.000000 [m]
      1045        1380045600       NA        NA     SATELLITE   0.000000 [m]
      1046        1380047716   56.383   134.637     SATELLITE         NA [m]
      1047        1380048300       NA        NA     SATELLITE   0.000000 [m]
      1048        1380049200       NA        NA     SATELLITE   0.000000 [m]
      1049        1380051900       NA        NA     SATELLITE   0.000000 [m]
      1050        1380052800       NA        NA     SATELLITE   0.672435 [m]
      1051        1380055500       NA        NA     SATELLITE   0.672435 [m]
      1052        1380056400       NA        NA     SATELLITE   0.000000 [m]
      1053        1380059100       NA        NA     SATELLITE   0.000000 [m]
      1054        1380060000       NA        NA     SATELLITE   0.000000 [m]
      1055        1380062700       NA        NA     SATELLITE   0.000000 [m]
      1056        1380063600       NA        NA     SATELLITE   0.000000 [m]
      1057        1380066300       NA        NA     SATELLITE   0.000000 [m]
      1058        1380069900       NA        NA     SATELLITE   0.000000 [m]
      1059        1380071206   56.384   134.641     SATELLITE         NA [m]
      1060        1380073500       NA        NA     SATELLITE   0.000000 [m]
      1061        1380077100       NA        NA     SATELLITE   0.000000 [m]
      1062        1380080700       NA        NA     SATELLITE   0.000000 [m]
      1063        1380084300       NA        NA     SATELLITE   0.672435 [m]
      1064        1380087900       NA        NA     SATELLITE   0.672435 [m]
      1065        1380091500       NA        NA     SATELLITE   0.000000 [m]
      1066        1380095100       NA        NA     SATELLITE   0.672435 [m]
      1067        1380098700       NA        NA     SATELLITE   0.000000 [m]
      1068        1380102300       NA        NA     SATELLITE   0.000000 [m]
      1069        1380105900       NA        NA     SATELLITE   0.000000 [m]
      1070        1380108672   56.382   134.642     SATELLITE         NA [m]
      1071        1380109500       NA        NA     SATELLITE   0.000000 [m]
      1072        1380113100       NA        NA     SATELLITE   0.672435 [m]
      1073        1380116700       NA        NA     SATELLITE   0.672435 [m]
      1074        1380117216   56.410   134.764     SATELLITE         NA [m]
      1075        1380118449   56.386   134.630     SATELLITE         NA [m]
      1076        1380120300       NA        NA     SATELLITE   0.672435 [m]
      1077        1380120738   56.384   134.637     SATELLITE         NA [m]
      1078        1380123900       NA        NA     SATELLITE   0.672435 [m]
      1079        1380127500       NA        NA     SATELLITE   0.672435 [m]
      1080        1380131100       NA        NA     SATELLITE   0.672435 [m]
      1081        1380134700       NA        NA     SATELLITE   0.672435 [m]
      1082        1380138300       NA        NA     SATELLITE   0.672435 [m]
      1083        1380141900       NA        NA     SATELLITE   0.672435 [m]
      1084        1380145500       NA        NA     SATELLITE   0.672435 [m]
      1085        1380149100       NA        NA     SATELLITE   0.672435 [m]
      1086        1380152700       NA        NA     SATELLITE   0.672435 [m]
      1087        1380153600       NA        NA     SATELLITE   0.672435 [m]
      1088        1380156120   56.386   134.648     SATELLITE         NA [m]
      1089        1380157200       NA        NA     SATELLITE   0.672435 [m]
      1090        1380160800       NA        NA     SATELLITE   0.672435 [m]
      1091        1380164400       NA        NA     SATELLITE   0.672435 [m]
      1092        1380168000       NA        NA     SATELLITE   0.672435 [m]
      1093        1380171600       NA        NA     SATELLITE   0.672435 [m]
      1094        1380175151   56.385   134.642     SATELLITE         NA [m]
      1095        1380175151   56.385   134.642     SATELLITE         NA [m]
      1096        1380175200       NA        NA     SATELLITE   0.672435 [m]
      1097        1380178800       NA        NA     SATELLITE   0.672435 [m]
      1098        1380182400       NA        NA     SATELLITE   0.000000 [m]
      1099        1380186000       NA        NA     SATELLITE   0.000000 [m]
      1100        1380189600       NA        NA     SATELLITE   0.672435 [m]
      1101        1380193200       NA        NA     SATELLITE   0.000000 [m]
      1102        1380196800       NA        NA     SATELLITE   0.672435 [m]
      1103        1380200400       NA        NA     SATELLITE   0.672435 [m]
      1104        1380203042   56.384   134.646     SATELLITE         NA [m]
      1105        1380204000       NA        NA     SATELLITE   0.672435 [m]
      1106        1380207600       NA        NA     SATELLITE   0.000000 [m]
      1107        1380211200       NA        NA     SATELLITE   0.672435 [m]
      1108        1380214800       NA        NA     SATELLITE   0.000000 [m]
      1109        1380218400       NA        NA     SATELLITE   0.672435 [m]
      1110        1380222000       NA        NA     SATELLITE   0.672435 [m]
      1111        1380225600       NA        NA     SATELLITE   0.672435 [m]
      1112        1380229200       NA        NA     SATELLITE   0.000000 [m]
      1113        1380232800       NA        NA     SATELLITE   0.000000 [m]
      1114        1380236400       NA        NA     SATELLITE   0.000000 [m]
      1115        1380240000       NA        NA     SATELLITE   0.000000 [m]
      1116        1380242700       NA        NA     SATELLITE   0.000000 [m]
      1117        1380243600       NA        NA     SATELLITE   0.000000 [m]
      1118        1380246300       NA        NA     SATELLITE   0.000000 [m]
      1119        1380247200       NA        NA     SATELLITE   0.000000 [m]
      1120        1380249900       NA        NA     SATELLITE   0.000000 [m]
      1121        1380250800       NA        NA     SATELLITE   0.000000 [m]
      1122        1380253500       NA        NA     SATELLITE   0.000000 [m]
      1123        1380254400       NA        NA     SATELLITE   0.000000 [m]
      1124        1380257100       NA        NA     SATELLITE   0.000000 [m]
      1125        1380258000       NA        NA     SATELLITE   0.000000 [m]
      1126        1380260700       NA        NA     SATELLITE   0.000000 [m]
      1127        1380261600       NA        NA     SATELLITE   0.000000 [m]
      1128        1380264300       NA        NA     SATELLITE   0.000000 [m]
      1129        1380265200       NA        NA     SATELLITE   0.000000 [m]
      1130        1380267900       NA        NA     SATELLITE   0.000000 [m]
      1131        1380268800       NA        NA     SATELLITE   0.000000 [m]
      1132        1380271500       NA        NA     SATELLITE   0.672435 [m]
      1133        1380272400       NA        NA     SATELLITE   0.672435 [m]
      1134        1380275100       NA        NA     SATELLITE   0.672435 [m]
      1135        1380276000       NA        NA     SATELLITE   0.672435 [m]
      1136        1380278700       NA        NA     SATELLITE   0.672435 [m]
      1137        1380279600       NA        NA     SATELLITE   0.672435 [m]
      1138        1380282300       NA        NA     SATELLITE   0.672435 [m]
      1139        1380283200       NA        NA     SATELLITE   0.000000 [m]
      1140        1380285900       NA        NA     SATELLITE   0.000000 [m]
      1141        1380286800       NA        NA     SATELLITE   0.000000 [m]
      1142        1380289500       NA        NA     SATELLITE   0.000000 [m]
      1143        1380290400       NA        NA     SATELLITE   0.000000 [m]
      1144        1380293100       NA        NA     SATELLITE   0.672435 [m]
      1145        1380294000       NA        NA     SATELLITE   0.672435 [m]
      1146        1380296700       NA        NA     SATELLITE   0.000000 [m]
      1147        1380297600       NA        NA     SATELLITE   0.000000 [m]
      1148        1380300300       NA        NA     SATELLITE   0.672435 [m]
      1149        1380301200       NA        NA     SATELLITE   0.672435 [m]
      1150        1380303900       NA        NA     SATELLITE   0.000000 [m]
      1151        1380304800       NA        NA     SATELLITE   0.672435 [m]
      1152        1380307500       NA        NA     SATELLITE   0.672435 [m]
      1153        1380308400       NA        NA     SATELLITE   0.000000 [m]
      1154        1380310034   56.390   134.650     SATELLITE         NA [m]
      1155        1380311100       NA        NA     SATELLITE   0.000000 [m]
      1156        1380312000       NA        NA     SATELLITE   0.000000 [m]
      1157        1380314700       NA        NA     SATELLITE   0.000000 [m]
      1158        1380315600       NA        NA     SATELLITE   0.000000 [m]
      1159        1380318300       NA        NA     SATELLITE   0.672435 [m]
      1160        1380319200       NA        NA     SATELLITE   0.000000 [m]
      1161        1380321900       NA        NA     SATELLITE   0.000000 [m]
      1162        1380322800       NA        NA     SATELLITE   0.000000 [m]
      1163        1380325500       NA        NA     SATELLITE   0.672435 [m]
      1164        1380326400       NA        NA     SATELLITE         NA [m]
      1165        1380328200       NA        NA     SATELLITE   0.000000 [m]
      1166        1380329100       NA        NA     SATELLITE         NA [m]
      1167        1380330000       NA        NA     SATELLITE         NA [m]
      1168        1380331800       NA        NA     SATELLITE   0.672435 [m]
      1169        1380331983   56.368   134.660     SATELLITE         NA [m]
      1170        1380332700       NA        NA     SATELLITE         NA [m]
      1171        1380333600       NA        NA     SATELLITE         NA [m]
      1172        1380335400       NA        NA     SATELLITE   0.000000 [m]
      1173        1380336300       NA        NA     SATELLITE         NA [m]
      1174        1380337200       NA        NA     SATELLITE         NA [m]
      1175        1380339000       NA        NA     SATELLITE   0.000000 [m]
      1176        1380339900       NA        NA     SATELLITE         NA [m]
      1177        1380340800       NA        NA     SATELLITE         NA [m]
      1178        1380342600       NA        NA     SATELLITE   0.000000 [m]
      1179        1380343500       NA        NA     SATELLITE         NA [m]
      1180        1380344400       NA        NA     SATELLITE         NA [m]
      1181        1380345448   56.378   134.610     SATELLITE         NA [m]
      1182        1380346200       NA        NA     SATELLITE   0.000000 [m]
      1183        1380347100       NA        NA     SATELLITE         NA [m]
      1184        1380348000       NA        NA     SATELLITE         NA [m]
      1185        1380349800       NA        NA     SATELLITE   0.000000 [m]
      1186        1380350700       NA        NA     SATELLITE         NA [m]
      1187        1380351600       NA        NA     SATELLITE         NA [m]
      1188        1380353400       NA        NA     SATELLITE   0.000000 [m]
      1189        1380354300       NA        NA     SATELLITE         NA [m]
      1190        1380355200       NA        NA     SATELLITE         NA [m]
      1191        1380357000       NA        NA     SATELLITE   0.000000 [m]
      1192        1380357900       NA        NA     SATELLITE         NA [m]
      1193        1380358800       NA        NA     SATELLITE         NA [m]
      1194        1380360600       NA        NA     SATELLITE   0.000000 [m]
      1195        1380361500       NA        NA     SATELLITE         NA [m]
      1196        1380362400       NA        NA     SATELLITE         NA [m]
      1197        1380364200       NA        NA     SATELLITE   0.000000 [m]
      1198        1380365100       NA        NA     SATELLITE         NA [m]
      1199        1380366000       NA        NA     SATELLITE         NA [m]
      1200        1380367800       NA        NA     SATELLITE   0.000000 [m]
      1201        1380368700       NA        NA     SATELLITE         NA [m]
      1202        1380369600       NA        NA     SATELLITE         NA [m]
      1203        1380371400       NA        NA     SATELLITE   0.000000 [m]
      1204        1380372300       NA        NA     SATELLITE         NA [m]
      1205        1380373200       NA        NA     SATELLITE         NA [m]
      1206        1380374500   56.400   134.578     SATELLITE         NA [m]
      1207        1380375000       NA        NA     SATELLITE   0.000000 [m]
      1208        1380375900       NA        NA     SATELLITE         NA [m]
      1209        1380376800       NA        NA     SATELLITE         NA [m]
      1210        1380378049   56.317   134.999     SATELLITE         NA [m]
      1211        1380378600       NA        NA     SATELLITE   0.672435 [m]
      1212        1380379500       NA        NA     SATELLITE         NA [m]
      1213        1380380400       NA        NA     SATELLITE         NA [m]
      1214        1380382200       NA        NA     SATELLITE   0.000000 [m]
      1215        1380383100       NA        NA     SATELLITE         NA [m]
      1216        1380384000       NA        NA     SATELLITE         NA [m]
      1217        1380385800       NA        NA     SATELLITE   0.000000 [m]
      1218        1380386700       NA        NA     SATELLITE         NA [m]
      1219        1380387600       NA        NA     SATELLITE         NA [m]
      1220        1380389400       NA        NA     SATELLITE   0.000000 [m]
      1221        1380390300       NA        NA     SATELLITE         NA [m]
      1222        1380391200       NA        NA     SATELLITE         NA [m]
      1223        1380393000       NA        NA     SATELLITE   0.000000 [m]
      1224        1380393900       NA        NA     SATELLITE         NA [m]
      1225        1380394800       NA        NA     SATELLITE         NA [m]
      1226        1380395182   56.398   134.641     SATELLITE         NA [m]
      1227        1380396600       NA        NA     SATELLITE   0.000000 [m]
      1228        1380397500       NA        NA     SATELLITE         NA [m]
      1229        1380398400       NA        NA     SATELLITE         NA [m]
      1230        1380400200       NA        NA     SATELLITE   0.000000 [m]
      1231        1380401100       NA        NA     SATELLITE         NA [m]
      1232        1380402000       NA        NA     SATELLITE         NA [m]
      1233        1380403800       NA        NA     SATELLITE   0.000000 [m]
      1234        1380404700       NA        NA     SATELLITE         NA [m]
      1235        1380405600       NA        NA     SATELLITE         NA [m]
      1236        1380407400       NA        NA     SATELLITE   0.000000 [m]
      1237        1380408300       NA        NA     SATELLITE         NA [m]
      1238        1380409200       NA        NA     SATELLITE         NA [m]
      1239        1380410119   56.384   134.645     SATELLITE         NA [m]
      1240        1380411000       NA        NA     SATELLITE   0.000000 [m]
      1241        1380411900       NA        NA     SATELLITE         NA [m]
      1242        1380412800       NA        NA     SATELLITE   0.000000 [m]
      1243        1380413700       NA        NA     SATELLITE         NA [m]
      1244        1380416400       NA        NA     SATELLITE   0.000000 [m]
      1245        1380416876   56.379   134.633     SATELLITE         NA [m]
      1246        1380417300       NA        NA     SATELLITE         NA [m]
      1247        1380420000       NA        NA     SATELLITE   0.000000 [m]
      1248        1380420900       NA        NA     SATELLITE         NA [m]
      1249        1380423600       NA        NA     SATELLITE   0.000000 [m]
      1250        1380424500       NA        NA     SATELLITE         NA [m]
      1251        1380427200       NA        NA     SATELLITE   0.000000 [m]
      1252        1380428100       NA        NA     SATELLITE         NA [m]
      1253        1380430800       NA        NA     SATELLITE   0.000000 [m]
      1254        1380431700       NA        NA     SATELLITE         NA [m]
      1255        1380432115   56.384   134.645     SATELLITE         NA [m]
      1256        1380434400       NA        NA     SATELLITE   0.000000 [m]
      1257        1380435300       NA        NA     SATELLITE         NA [m]
      1258        1380438000       NA        NA     SATELLITE   0.000000 [m]
      1259        1380438900       NA        NA     SATELLITE         NA [m]
      1260        1380441600       NA        NA     SATELLITE   0.000000 [m]
      1261        1380442500       NA        NA     SATELLITE         NA [m]
      1262        1380445200       NA        NA     SATELLITE   0.000000 [m]
      1263        1380446100       NA        NA     SATELLITE         NA [m]
      1264        1380448800       NA        NA     SATELLITE   0.000000 [m]
      1265        1380449700       NA        NA     SATELLITE         NA [m]
      1266        1380452400       NA        NA     SATELLITE   0.000000 [m]
      1267        1380453300       NA        NA     SATELLITE         NA [m]
      1268        1380456000       NA        NA     SATELLITE   0.000000 [m]
      1269        1380456900       NA        NA     SATELLITE         NA [m]
      1270        1380459600       NA        NA     SATELLITE   0.000000 [m]
      1271        1380460239   56.396   134.605     SATELLITE         NA [m]
      1272        1380460500       NA        NA     SATELLITE         NA [m]
      1273        1380462529   56.381   134.590     SATELLITE         NA [m]
      1274        1380463200       NA        NA     SATELLITE   0.000000 [m]
      1275        1380464100       NA        NA     SATELLITE         NA [m]
      1276        1380466501   56.384   134.636     SATELLITE         NA [m]
      1277        1380466800       NA        NA     SATELLITE   0.000000 [m]
      1278        1380467700       NA        NA     SATELLITE         NA [m]
      1279        1380470400       NA        NA     SATELLITE   0.000000 [m]
      1280        1380471300       NA        NA     SATELLITE         NA [m]
      1281        1380474000       NA        NA     SATELLITE   0.000000 [m]
      1282        1380474900       NA        NA     SATELLITE         NA [m]
      1283        1380477600       NA        NA     SATELLITE   0.000000 [m]
      1284        1380478500       NA        NA     SATELLITE         NA [m]
      1285        1380480327   56.394   134.646     SATELLITE         NA [m]
      1286        1380481200       NA        NA     SATELLITE   0.000000 [m]
      1287        1380482100       NA        NA     SATELLITE         NA [m]
      1288        1380482163   56.383   134.637     SATELLITE         NA [m]
      1289        1380484800       NA        NA     SATELLITE   0.000000 [m]
      1290        1380485700       NA        NA     SATELLITE         NA [m]
      1291        1380488400       NA        NA     SATELLITE   0.000000 [m]
      1292        1380489300       NA        NA     SATELLITE         NA [m]
      1293        1380492000       NA        NA     SATELLITE   0.000000 [m]
      1294        1380492900       NA        NA     SATELLITE         NA [m]
      1295        1380493376   56.382   134.642     SATELLITE         NA [m]
      1296        1380495600       NA        NA     SATELLITE   0.000000 [m]
      1297        1380495931   56.383   134.635     SATELLITE         NA [m]
      1298        1380496500       NA        NA     SATELLITE         NA [m]
      1299        1380499200       NA        NA     SATELLITE         NA [m]
      1300        1380500100       NA        NA     SATELLITE   0.000000 [m]
      1301        1380501848   56.383   134.646     SATELLITE         NA [m]
      1302        1380502800       NA        NA     SATELLITE         NA [m]
      1303        1380503700       NA        NA     SATELLITE   0.672435 [m]
      1304        1380506400       NA        NA     SATELLITE         NA [m]
      1305        1380507300       NA        NA     SATELLITE   0.000000 [m]
      1306        1380510000       NA        NA     SATELLITE         NA [m]
      1307        1380510900       NA        NA     SATELLITE   0.000000 [m]
      1308        1380513600       NA        NA     SATELLITE         NA [m]
      1309        1380514500       NA        NA     SATELLITE   0.000000 [m]
      1310        1380517200       NA        NA     SATELLITE         NA [m]
      1311        1380517781   56.386   134.551     SATELLITE         NA [m]
      1312        1380518100       NA        NA     SATELLITE   0.000000 [m]
      1313        1380520800       NA        NA     SATELLITE         NA [m]
      1314        1380521700       NA        NA     SATELLITE   0.000000 [m]
      1315        1380524400       NA        NA     SATELLITE         NA [m]
      1316        1380525300       NA        NA     SATELLITE   0.000000 [m]
      1317        1380528000       NA        NA     SATELLITE         NA [m]
      1318        1380528900       NA        NA     SATELLITE   0.000000 [m]
      1319        1380531600       NA        NA     SATELLITE         NA [m]
      1320        1380532500       NA        NA     SATELLITE   0.000000 [m]
      1321        1380535200       NA        NA     SATELLITE         NA [m]
      1322        1380536100       NA        NA     SATELLITE   0.000000 [m]
      1323        1380538800       NA        NA     SATELLITE         NA [m]
      1324        1380539700       NA        NA     SATELLITE   0.000000 [m]
      1325        1380542400       NA        NA     SATELLITE         NA [m]
      1326        1380543300       NA        NA     SATELLITE   0.000000 [m]
      1327        1380546000       NA        NA     SATELLITE         NA [m]
      1328        1380546900       NA        NA     SATELLITE   0.000000 [m]
      1329        1380549600       NA        NA     SATELLITE         NA [m]
      1330        1380550500       NA        NA     SATELLITE   0.000000 [m]
      1331        1380551444   56.406   134.605     SATELLITE         NA [m]
      1332        1380553200       NA        NA     SATELLITE         NA [m]
      1333        1380554100       NA        NA     SATELLITE   0.000000 [m]
      1334        1380556800       NA        NA     SATELLITE         NA [m]
      1335        1380557700       NA        NA     SATELLITE   0.000000 [m]
      1336        1380560400       NA        NA     SATELLITE         NA [m]
      1337        1380561300       NA        NA     SATELLITE   0.000000 [m]
      1338        1380564000       NA        NA     SATELLITE         NA [m]
      1339        1380564900       NA        NA     SATELLITE   0.000000 [m]
      1340        1380567600       NA        NA     SATELLITE         NA [m]
      1341        1380567794   56.391   134.681     SATELLITE         NA [m]
      1342        1380568500       NA        NA     SATELLITE   0.000000 [m]
      1343        1380571200       NA        NA     SATELLITE         NA [m]
      1344        1380572100       NA        NA     SATELLITE   0.000000 [m]
      1345        1380574800       NA        NA     SATELLITE         NA [m]
      1346        1380575700       NA        NA     SATELLITE   0.000000 [m]
      1347        1380578400       NA        NA     SATELLITE         NA [m]
      1348        1380579188   56.383   134.640     SATELLITE         NA [m]
      1349        1380579300       NA        NA     SATELLITE   0.000000 [m]
      1350        1380582000       NA        NA     SATELLITE         NA [m]
      1351        1380582900       NA        NA     SATELLITE   0.000000 [m]
      1352        1380585600       NA        NA     SATELLITE   0.000000 [m]
      1353        1380586500       NA        NA     SATELLITE         NA [m]
      1354        1380589200       NA        NA     SATELLITE   0.000000 [m]
      1355        1380590100       NA        NA     SATELLITE         NA [m]
      1356        1380592800       NA        NA     SATELLITE   0.000000 [m]
      1357        1380593700       NA        NA     SATELLITE         NA [m]
      1358        1380596400       NA        NA     SATELLITE   0.672435 [m]
      1359        1380597300       NA        NA     SATELLITE         NA [m]
      1360        1380600000       NA        NA     SATELLITE   0.000000 [m]
      1361        1380600900       NA        NA     SATELLITE         NA [m]
      1362        1380603600       NA        NA     SATELLITE   0.000000 [m]
      1363        1380604500       NA        NA     SATELLITE         NA [m]
      1364        1380607033   56.386   134.631     SATELLITE         NA [m]
      1365        1380607200       NA        NA     SATELLITE   0.000000 [m]
      1366        1380608100       NA        NA     SATELLITE         NA [m]
      1367        1380610800       NA        NA     SATELLITE   0.000000 [m]
      1368        1380611700       NA        NA     SATELLITE         NA [m]
      1369        1380614400       NA        NA     SATELLITE   0.000000 [m]
      1370        1380615300       NA        NA     SATELLITE         NA [m]
      1371        1380618000       NA        NA     SATELLITE   0.000000 [m]
      1372        1380618900       NA        NA     SATELLITE         NA [m]
      1373        1380621600       NA        NA     SATELLITE   0.000000 [m]
      1374        1380622500       NA        NA     SATELLITE         NA [m]
      1375        1380625200       NA        NA     SATELLITE   0.000000 [m]
      1376        1380626100       NA        NA     SATELLITE         NA [m]
      1377        1380628800       NA        NA     SATELLITE   0.000000 [m]
      1378        1380629700       NA        NA     SATELLITE         NA [m]
      1379        1380632400       NA        NA     SATELLITE   0.000000 [m]
      1380        1380633300       NA        NA     SATELLITE         NA [m]
      1381        1380636000       NA        NA     SATELLITE   0.000000 [m]
      1382        1380636900       NA        NA     SATELLITE         NA [m]
      1383        1380637552   56.361   134.701     SATELLITE         NA [m]
      1384        1380639600       NA        NA     SATELLITE   0.000000 [m]
      1385        1380640500       NA        NA     SATELLITE         NA [m]
      1386        1380643200       NA        NA     SATELLITE   0.000000 [m]
      1387        1380644100       NA        NA     SATELLITE         NA [m]
      1388        1380646800       NA        NA     SATELLITE   0.000000 [m]
      1389        1380647700       NA        NA     SATELLITE         NA [m]
      1390        1380650400       NA        NA     SATELLITE   0.000000 [m]
      1391        1380651300       NA        NA     SATELLITE         NA [m]
      1392        1380654000       NA        NA     SATELLITE   0.000000 [m]
      1393        1380654900       NA        NA     SATELLITE         NA [m]
      1394        1380657600       NA        NA     SATELLITE   0.000000 [m]
      1395        1380658500       NA        NA     SATELLITE         NA [m]
      1396        1380661200       NA        NA     SATELLITE   0.000000 [m]
      1397        1380662100       NA        NA     SATELLITE         NA [m]
      1398        1380664800       NA        NA     SATELLITE   0.000000 [m]
      1399        1380665700       NA        NA     SATELLITE         NA [m]
      1400        1380668400       NA        NA     SATELLITE   0.000000 [m]
      1401        1380669300       NA        NA     SATELLITE         NA [m]
      1402        1380672000       NA        NA     SATELLITE   0.000000 [m]
      1403        1380674700       NA        NA     SATELLITE   0.000000 [m]
      1404        1380675600       NA        NA     SATELLITE   0.000000 [m]
      1405        1380678300       NA        NA     SATELLITE   0.000000 [m]
      1406        1380679200       NA        NA     SATELLITE   0.000000 [m]
      1407        1380681900       NA        NA     SATELLITE   0.000000 [m]
      1408        1380682800       NA        NA     SATELLITE   0.000000 [m]
      1409        1380685500       NA        NA     SATELLITE   0.000000 [m]
      1410        1380686400       NA        NA     SATELLITE   0.000000 [m]
      1411        1380689100       NA        NA     SATELLITE   0.000000 [m]
      1412        1380690000       NA        NA     SATELLITE   0.000000 [m]
      1413        1380692700       NA        NA     SATELLITE   0.000000 [m]
      1414        1380693600       NA        NA     SATELLITE   0.000000 [m]
      1415        1380696300       NA        NA     SATELLITE   0.000000 [m]
      1416        1380697200       NA        NA     SATELLITE   0.000000 [m]
      1417        1380699900       NA        NA     SATELLITE   0.000000 [m]
      1418        1380700800       NA        NA     SATELLITE   0.000000 [m]
      1419        1380703500       NA        NA     SATELLITE   0.000000 [m]
      1420        1380704400       NA        NA     SATELLITE   0.000000 [m]
      1421        1380707100       NA        NA     SATELLITE   0.000000 [m]
      1422        1380708000       NA        NA     SATELLITE   0.000000 [m]
      1423        1380710700       NA        NA     SATELLITE   0.000000 [m]
      1424        1380711600       NA        NA     SATELLITE   0.000000 [m]
      1425        1380714300       NA        NA     SATELLITE   0.000000 [m]
      1426        1380715200       NA        NA     SATELLITE   0.000000 [m]
      1427        1380717900       NA        NA     SATELLITE   0.000000 [m]
      1428        1380718800       NA        NA     SATELLITE   0.000000 [m]
      1429        1380721500       NA        NA     SATELLITE   0.000000 [m]
      1430        1380722082   56.385   134.643     SATELLITE         NA [m]
      1431        1380722400       NA        NA     SATELLITE   0.000000 [m]
      1432        1380723407   56.388   134.637     SATELLITE         NA [m]
      1433        1380725100       NA        NA     SATELLITE   0.000000 [m]
      1434        1380726000       NA        NA     SATELLITE   0.000000 [m]
      1435        1380728700       NA        NA     SATELLITE   0.000000 [m]
      1436        1380729600       NA        NA     SATELLITE   0.000000 [m]
      1437        1380732300       NA        NA     SATELLITE   0.000000 [m]
      1438        1380733200       NA        NA     SATELLITE   0.000000 [m]
      1439        1380735900       NA        NA     SATELLITE   0.000000 [m]
      1440        1380736800       NA        NA     SATELLITE   0.000000 [m]
      1441        1380739500       NA        NA     SATELLITE   0.000000 [m]
      1442        1380740400       NA        NA     SATELLITE   0.000000 [m]
      1443        1380743100       NA        NA     SATELLITE   0.000000 [m]
      1444        1380744000       NA        NA     SATELLITE   0.000000 [m]
      1445        1380746700       NA        NA     SATELLITE   0.000000 [m]
      1446        1380747600       NA        NA     SATELLITE   0.000000 [m]
      1447        1380750300       NA        NA     SATELLITE   0.000000 [m]
      1448        1380750641   56.383   134.640     SATELLITE         NA [m]
      1449        1380751200       NA        NA     SATELLITE   0.000000 [m]
      1450        1380753900       NA        NA     SATELLITE   0.000000 [m]
      1451        1380754800       NA        NA     SATELLITE   0.000000 [m]
      1452        1380757500       NA        NA     SATELLITE   0.000000 [m]
      1453        1380758400       NA        NA     SATELLITE         NA [m]
      1454        1380759300       NA        NA     SATELLITE   0.000000 [m]
      1455        1380762000       NA        NA     SATELLITE         NA [m]
      1456        1380762601   56.387   134.662     SATELLITE         NA [m]
      1457        1380762900       NA        NA     SATELLITE   0.000000 [m]
      1458        1380765600       NA        NA     SATELLITE         NA [m]
      1459        1380766500       NA        NA     SATELLITE   0.000000 [m]
      1460        1380769200       NA        NA     SATELLITE         NA [m]
      1461        1380770100       NA        NA     SATELLITE   0.000000 [m]
      1462        1380772800       NA        NA     SATELLITE         NA [m]
      1463        1380773700       NA        NA     SATELLITE   0.000000 [m]
      1464        1380776400       NA        NA     SATELLITE         NA [m]
      1465        1380777240   56.384   134.643     SATELLITE         NA [m]
      1466        1380777300       NA        NA     SATELLITE   0.000000 [m]
      1467        1380780000       NA        NA     SATELLITE         NA [m]
      1468        1380780900       NA        NA     SATELLITE   0.000000 [m]
      1469        1380783600       NA        NA     SATELLITE         NA [m]
      1470        1380784500       NA        NA     SATELLITE   0.000000 [m]
      1471        1380787200       NA        NA     SATELLITE         NA [m]
      1472        1380788100       NA        NA     SATELLITE   0.000000 [m]
      1473        1380790800       NA        NA     SATELLITE         NA [m]
      1474        1380791700       NA        NA     SATELLITE   0.000000 [m]
      1475        1380794400       NA        NA     SATELLITE         NA [m]
      1476        1380795300       NA        NA     SATELLITE   0.000000 [m]
      1477        1380798000       NA        NA     SATELLITE         NA [m]
      1478        1380798900       NA        NA     SATELLITE   0.000000 [m]
      1479        1380801600       NA        NA     SATELLITE         NA [m]
      1480        1380802500       NA        NA     SATELLITE   0.000000 [m]
      1481        1380805200       NA        NA     SATELLITE         NA [m]
      1482        1380806100       NA        NA     SATELLITE   0.000000 [m]
      1483        1380808800       NA        NA     SATELLITE         NA [m]
      1484        1380809157   56.383   134.662     SATELLITE         NA [m]
      1485        1380809700       NA        NA     SATELLITE   0.000000 [m]
      1486        1380812257   56.385   134.642     SATELLITE         NA [m]
      1487        1380812400       NA        NA     SATELLITE         NA [m]
      1488        1380813300       NA        NA     SATELLITE   0.000000 [m]
      1489        1380816000       NA        NA     SATELLITE         NA [m]
      1490        1380816900       NA        NA     SATELLITE   0.000000 [m]
      1491        1380819600       NA        NA     SATELLITE         NA [m]
      1492        1380820500       NA        NA     SATELLITE   0.000000 [m]
      1493        1380823200       NA        NA     SATELLITE         NA [m]
      1494        1380824100       NA        NA     SATELLITE   0.000000 [m]
      1495        1380826800       NA        NA     SATELLITE         NA [m]
      1496        1380827700       NA        NA     SATELLITE   0.000000 [m]
      1497        1380830400       NA        NA     SATELLITE         NA [m]
      1498        1380831300       NA        NA     SATELLITE   0.000000 [m]
      1499        1380834000       NA        NA     SATELLITE         NA [m]
      1500        1380834900       NA        NA     SATELLITE   0.000000 [m]
      1501        1380837600       NA        NA     SATELLITE         NA [m]
      1502        1380838500       NA        NA     SATELLITE   0.000000 [m]
      1503        1380841200       NA        NA     SATELLITE         NA [m]
      1504        1380842100       NA        NA     SATELLITE   0.000000 [m]
      1505        1380845700       NA        NA     SATELLITE         NA [m]
      1506        1380846600       NA        NA     SATELLITE   0.000000 [m]
      1507        1380847609   56.358   134.800     SATELLITE         NA [m]
      1508        1380849300       NA        NA     SATELLITE         NA [m]
      1509        1380850200       NA        NA     SATELLITE   0.000000 [m]
      1510        1380852900       NA        NA     SATELLITE         NA [m]
      1511        1380853800       NA        NA     SATELLITE   0.000000 [m]
      1512        1380856500       NA        NA     SATELLITE         NA [m]
      1513        1380857400       NA        NA     SATELLITE   0.000000 [m]
      1514        1380860100       NA        NA     SATELLITE         NA [m]
      1515        1380861000       NA        NA     SATELLITE   0.000000 [m]
      1516        1380863700       NA        NA     SATELLITE         NA [m]
      1517        1380864600       NA        NA     SATELLITE   0.000000 [m]
      1518        1380867300       NA        NA     SATELLITE         NA [m]
      1519        1380868200       NA        NA     SATELLITE   0.000000 [m]
      1520        1380870900       NA        NA     SATELLITE         NA [m]
      1521        1380871800       NA        NA     SATELLITE   0.000000 [m]
      1522        1380874500       NA        NA     SATELLITE         NA [m]
      1523        1380875400       NA        NA     SATELLITE   0.000000 [m]
      1524        1380878100       NA        NA     SATELLITE         NA [m]
      1525        1380879000       NA        NA     SATELLITE   0.000000 [m]
      1526        1380881700       NA        NA     SATELLITE         NA [m]
      1527        1380882600       NA        NA     SATELLITE   0.000000 [m]
      1528        1380885300       NA        NA     SATELLITE         NA [m]
      1529        1380886200       NA        NA     SATELLITE   0.000000 [m]
      1530        1380888900       NA        NA     SATELLITE         NA [m]
      1531        1380889800       NA        NA     SATELLITE   0.000000 [m]
      1532        1380892500       NA        NA     SATELLITE         NA [m]
      1533        1380893400       NA        NA     SATELLITE   0.000000 [m]
      1534        1380896100       NA        NA     SATELLITE         NA [m]
      1535        1380897000       NA        NA     SATELLITE   0.000000 [m]
      1536        1380899700       NA        NA     SATELLITE         NA [m]
      1537        1380900600       NA        NA     SATELLITE   0.000000 [m]
      1538        1380903300       NA        NA     SATELLITE         NA [m]
      1539        1380904200       NA        NA     SATELLITE   0.000000 [m]
      1540        1380906900       NA        NA     SATELLITE         NA [m]
      1541        1380907800       NA        NA     SATELLITE   0.000000 [m]
      1542        1380910500       NA        NA     SATELLITE         NA [m]
      1543        1380911400       NA        NA     SATELLITE   0.000000 [m]
      1544        1380914100       NA        NA     SATELLITE         NA [m]
      1545        1380915000       NA        NA     SATELLITE   0.000000 [m]
      1546        1380917700       NA        NA     SATELLITE         NA [m]
      1547        1380918600       NA        NA     SATELLITE   0.000000 [m]
      1548        1380921300       NA        NA     SATELLITE         NA [m]
      1549        1380922200       NA        NA     SATELLITE   0.000000 [m]
      1550        1380924900       NA        NA     SATELLITE         NA [m]
      1551        1380925800       NA        NA     SATELLITE   0.000000 [m]
      1552        1380928500       NA        NA     SATELLITE         NA [m]
      1553        1380929400       NA        NA     SATELLITE   0.000000 [m]
      1554        1380932100       NA        NA     SATELLITE   0.000000 [m]
      1555        1380933900       NA        NA     SATELLITE   0.000000 [m]
      1556        1380935700       NA        NA     SATELLITE   0.000000 [m]
      1557        1380937500       NA        NA     SATELLITE   0.000000 [m]
      1558        1380939300       NA        NA     SATELLITE   0.000000 [m]
      1559        1380941100       NA        NA     SATELLITE   0.000000 [m]
      1560        1380942900       NA        NA     SATELLITE   0.000000 [m]
      1561        1380944700       NA        NA     SATELLITE   0.000000 [m]
      1562        1380946500       NA        NA     SATELLITE   0.000000 [m]
      1563        1380948300       NA        NA     SATELLITE   0.000000 [m]
      1564        1380950100       NA        NA     SATELLITE   0.000000 [m]
      1565        1380951900       NA        NA     SATELLITE   0.000000 [m]
      1566        1380953700       NA        NA     SATELLITE   0.000000 [m]
      1567        1380955500       NA        NA     SATELLITE   0.000000 [m]
      1568        1380957300       NA        NA     SATELLITE   0.000000 [m]
      1569        1380959100       NA        NA     SATELLITE   0.000000 [m]
      1570        1380960900       NA        NA     SATELLITE   0.000000 [m]
      1571        1380962700       NA        NA     SATELLITE   0.000000 [m]
      1572        1380964500       NA        NA     SATELLITE   0.000000 [m]
      1573        1380966300       NA        NA     SATELLITE   0.000000 [m]
      1574        1380968100       NA        NA     SATELLITE   0.000000 [m]
      1575        1380969900       NA        NA     SATELLITE   0.000000 [m]
      1576        1380971700       NA        NA     SATELLITE   0.000000 [m]
      1577        1380972273   56.390   134.695     SATELLITE         NA [m]
      1578        1380973500       NA        NA     SATELLITE   0.000000 [m]
      1579        1380975300       NA        NA     SATELLITE   0.000000 [m]
      1580        1380977100       NA        NA     SATELLITE   0.000000 [m]
      1581        1380978900       NA        NA     SATELLITE   0.000000 [m]
      1582        1380980668   56.389   134.652     SATELLITE         NA [m]
      1583        1380980700       NA        NA     SATELLITE   0.000000 [m]
      1584        1380981603   56.385   134.640     SATELLITE         NA [m]
      1585        1380982500       NA        NA     SATELLITE   0.000000 [m]
      1586        1380984300       NA        NA     SATELLITE   0.000000 [m]
      1587        1380986100       NA        NA     SATELLITE   0.000000 [m]
      1588        1380987900       NA        NA     SATELLITE   0.000000 [m]
      1589        1380989700       NA        NA     SATELLITE   0.000000 [m]
      1590        1380991500       NA        NA     SATELLITE   0.000000 [m]
      1591        1380993300       NA        NA     SATELLITE   0.672435 [m]
      1592        1380995100       NA        NA     SATELLITE   0.000000 [m]
      1593        1380996900       NA        NA     SATELLITE   0.672435 [m]
      1594        1380998700       NA        NA     SATELLITE   0.000000 [m]
      1595        1381000500       NA        NA     SATELLITE   0.000000 [m]
      1596        1381002300       NA        NA     SATELLITE   0.000000 [m]
      1597        1381004100       NA        NA     SATELLITE   0.672435 [m]
      1598        1381005900       NA        NA     SATELLITE   0.000000 [m]
      1599        1381007700       NA        NA     SATELLITE   0.000000 [m]
      1600        1381009500       NA        NA     SATELLITE   0.000000 [m]
      1601        1381011300       NA        NA     SATELLITE   0.000000 [m]
      1602        1381013100       NA        NA     SATELLITE   0.000000 [m]
      1603        1381014900       NA        NA     SATELLITE   0.000000 [m]
      1604        1381016700       NA        NA     SATELLITE   0.000000 [m]
      1605        1381018500       NA        NA     SATELLITE   0.000000 [m]
      1606        1381022100       NA        NA     SATELLITE   0.000000 [m]
      1607        1381025700       NA        NA     SATELLITE   0.000000 [m]
      1608        1381029300       NA        NA     SATELLITE   0.000000 [m]
      1609        1381032900       NA        NA     SATELLITE   0.000000 [m]
      1610        1381036500       NA        NA     SATELLITE   0.000000 [m]
      1611        1381037795   56.400   134.686     SATELLITE         NA [m]
      1612        1381038697   56.385   134.643     SATELLITE         NA [m]
      1613        1381040100       NA        NA     SATELLITE   0.000000 [m]
      1614        1381043700       NA        NA     SATELLITE   0.000000 [m]
      1615        1381047300       NA        NA     SATELLITE   0.000000 [m]
      1616        1381050900       NA        NA     SATELLITE   0.000000 [m]
      1617        1381054500       NA        NA     SATELLITE   0.000000 [m]
      1618        1381058100       NA        NA     SATELLITE   0.000000 [m]
      1619        1381061700       NA        NA     SATELLITE   0.000000 [m]
      1620        1381065300       NA        NA     SATELLITE   0.000000 [m]
      1621        1381068900       NA        NA     SATELLITE   0.000000 [m]
      1622        1381072500       NA        NA     SATELLITE   0.000000 [m]
      1623        1381076100       NA        NA     SATELLITE   0.000000 [m]
      1624        1381079700       NA        NA     SATELLITE   0.000000 [m]
      1625        1381083300       NA        NA     SATELLITE   0.000000 [m]
      1626        1381086900       NA        NA     SATELLITE   0.000000 [m]
      1627        1381090500       NA        NA     SATELLITE   0.672435 [m]
      1628        1381094100       NA        NA     SATELLITE   0.000000 [m]
      1629        1381097700       NA        NA     SATELLITE   0.000000 [m]
      1630        1381101300       NA        NA     SATELLITE   0.000000 [m]
      1631        1381108363   56.382   134.645     SATELLITE         NA [m]
      1632        1381123840   56.383   134.655     SATELLITE         NA [m]
      1633        1381152165   56.361   134.439     SATELLITE         NA [m]
      1634        1381470480   56.380   134.620     SATELLITE         NA [m]
           DEPTH_INCREASE_DELTA_LIMIT DEPTH_DECREASE_DELTA_LIMIT    TEMPERATURE
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
           TEMP_INCREASE_DELTA_LIMIT TEMP_DECREASE_DELTA_LIMIT
      1                            0                         0
      2                            0                         0
      3                            0                         0
      4                            0                         0
      5                            0                         0
      6                            0                         0
      7                            0                         0
      8                            0                         0
      9                            0                         0
      10                           0                         0
      11                           0                         0
      12                           0                         0
      13                           0                         0
      14                           0                         0
      15                           0                         0
      16                           0                         0
      17                           0                         0
      18                           0                         0
      19                           0                         0
      20                           0                         0
      21                           0                         0
      22                           0                         0
      23                           0                         0
      24                           0                         0
      25                           0                         0
      26                           0                         0
      27                           0                         0
      28                           0                         0
      29                           0                         0
      30                           0                         0
      31                           0                         0
      32                           0                         0
      33                           0                         0
      34                           0                         0
      35                           0                         0
      36                           0                         0
      37                           0                         0
      38                           0                         0
      39                           0                         0
      40                           0                         0
      41                           0                         0
      42                           0                         0
      43                           0                         0
      44                           0                         0
      45                           0                         0
      46                           0                         0
      47                           0                         0
      48                           0                         0
      49                           0                         0
      50                           0                         0
      51                           0                         0
      52                           0                         0
      53                           0                         0
      54                           0                         0
      55                           0                         0
      56                           0                         0
      57                           0                         0
      58                           0                         0
      59                           0                         0
      60                           0                         0
      61                           0                         0
      62                           0                         0
      63                           0                         0
      64                           0                         0
      65                           0                         0
      66                           0                         0
      67                           0                         0
      68                           0                         0
      69                           0                         0
      70                           0                         0
      71                           0                         0
      72                           0                         0
      73                           0                         0
      74                           0                         0
      75                           0                         0
      76                           0                         0
      77                           0                         0
      78                           0                         0
      79                           0                         0
      80                           0                         0
      81                           0                         0
      82                           0                         0
      83                           0                         0
      84                           0                         0
      85                           0                         0
      86                           0                         0
      87                           0                         0
      88                           0                         0
      89                           0                         0
      90                           0                         0
      91                           0                         0
      92                           0                         0
      93                           0                         0
      94                           0                         0
      95                           0                         0
      96                           0                         0
      97                           0                         0
      98                           0                         0
      99                           0                         0
      100                          0                         0
      101                          0                         0
      102                          0                         0
      103                          0                         0
      104                          0                         0
      105                          0                         0
      106                          0                         0
      107                          0                         0
      108                          0                         0
      109                          0                         0
      110                          0                         0
      111                          0                         0
      112                          0                         0
      113                          0                         0
      114                          0                         0
      115                          0                         0
      116                          0                         0
      117                          0                         0
      118                          0                         0
      119                          0                         0
      120                          0                         0
      121                          0                         0
      122                          0                         0
      123                          0                         0
      124                          0                         0
      125                          0                         0
      126                          0                         0
      127                          0                         0
      128                          0                         0
      129                          0                         0
      130                          0                         0
      131                          0                         0
      132                          0                         0
      133                          0                         0
      134                          0                         0
      135                          0                         0
      136                          0                         0
      137                          0                         0
      138                          0                         0
      139                          0                         0
      140                          0                         0
      141                          0                         0
      142                          0                         0
      143                          0                         0
      144                          0                         0
      145                          0                         0
      146                          0                         0
      147                          0                         0
      148                          0                         0
      149                          0                         0
      150                          0                         0
      151                          0                         0
      152                          0                         0
      153                          0                         0
      154                          0                         0
      155                          0                         0
      156                          0                         0
      157                          0                         0
      158                          0                         0
      159                          0                         0
      160                          0                         0
      161                          0                         0
      162                          0                         0
      163                          0                         0
      164                          0                         0
      165                          0                         0
      166                          0                         0
      167                          0                         0
      168                          0                         0
      169                          0                         0
      170                          0                         0
      171                          0                         0
      172                          0                         0
      173                          0                         0
      174                          0                         0
      175                          0                         0
      176                          0                         0
      177                          0                         0
      178                          0                         0
      179                          0                         0
      180                          0                         0
      181                          0                         0
      182                          0                         0
      183                          0                         0
      184                          0                         0
      185                          0                         0
      186                          0                         0
      187                          0                         0
      188                          0                         0
      189                          0                         0
      190                          0                         0
      191                          0                         0
      192                          0                         0
      193                          0                         0
      194                          0                         0
      195                          0                         0
      196                          0                         0
      197                          0                         0
      198                          0                         0
      199                          0                         0
      200                          0                         0
      201                          0                         0
      202                          0                         0
      203                          0                         0
      204                          0                         0
      205                          0                         0
      206                          0                         0
      207                          0                         0
      208                          0                         0
      209                          0                         0
      210                          0                         0
      211                          0                         0
      212                          0                         0
      213                          0                         0
      214                          0                         0
      215                          0                         0
      216                          0                         0
      217                          0                         0
      218                          0                         0
      219                          0                         0
      220                          0                         0
      221                          0                         0
      222                          0                         0
      223                          0                         0
      224                          0                         0
      225                          0                         0
      226                          0                         0
      227                          0                         0
      228                          0                         0
      229                          0                         0
      230                          0                         0
      231                          0                         0
      232                          0                         0
      233                          0                         0
      234                          0                         0
      235                          0                         0
      236                          0                         0
      237                          0                         0
      238                          0                         0
      239                          0                         0
      240                          0                         0
      241                          0                         0
      242                          0                         0
      243                          0                         0
      244                          0                         0
      245                          0                         0
      246                          0                         0
      247                          0                         0
      248                          0                         0
      249                          0                         0
      250                          0                         0
      251                          0                         0
      252                          0                         0
      253                          0                         0
      254                          0                         0
      255                          0                         0
      256                          0                         0
      257                          0                         0
      258                          0                         0
      259                          0                         0
      260                          0                         0
      261                          0                         0
      262                          0                         0
      263                          0                         0
      264                          0                         0
      265                          0                         0
      266                          0                         0
      267                          0                         0
      268                          0                         0
      269                          0                         0
      270                          0                         0
      271                          0                         0
      272                          0                         0
      273                          0                         0
      274                          0                         0
      275                          0                         0
      276                          0                         0
      277                          0                         0
      278                          0                         0
      279                          0                         0
      280                          0                         0
      281                          0                         0
      282                          0                         0
      283                          0                         0
      284                          0                         0
      285                          0                         0
      286                          0                         0
      287                          0                         0
      288                          0                         0
      289                          0                         0
      290                          0                         0
      291                          0                         0
      292                          0                         0
      293                          0                         0
      294                          0                         0
      295                          0                         0
      296                          0                         0
      297                          0                         0
      298                          0                         0
      299                          0                         0
      300                          0                         0
      301                          0                         0
      302                          0                         0
      303                          0                         0
      304                          0                         0
      305                          0                         0
      306                          0                         0
      307                          0                         0
      308                          0                         0
      309                          0                         0
      310                          0                         0
      311                          0                         0
      312                          0                         0
      313                          0                         0
      314                          0                         0
      315                          0                         0
      316                          0                         0
      317                          0                         0
      318                          0                         0
      319                          0                         0
      320                          0                         0
      321                          0                         0
      322                          0                         0
      323                          0                         0
      324                          0                         0
      325                          0                         0
      326                          0                         0
      327                          0                         0
      328                          0                         0
      329                          0                         0
      330                          0                         0
      331                          0                         0
      332                          0                         0
      333                          0                         0
      334                          0                         0
      335                          0                         0
      336                          0                         0
      337                          0                         0
      338                          0                         0
      339                          0                         0
      340                          0                         0
      341                          0                         0
      342                          0                         0
      343                          0                         0
      344                          0                         0
      345                          0                         0
      346                          0                         0
      347                          0                         0
      348                          0                         0
      349                          0                         0
      350                          0                         0
      351                          0                         0
      352                          0                         0
      353                          0                         0
      354                          0                         0
      355                          0                         0
      356                          0                         0
      357                          0                         0
      358                          0                         0
      359                          0                         0
      360                          0                         0
      361                          0                         0
      362                          0                         0
      363                          0                         0
      364                          0                         0
      365                          0                         0
      366                          0                         0
      367                          0                         0
      368                          0                         0
      369                          0                         0
      370                          0                         0
      371                          0                         0
      372                          0                         0
      373                          0                         0
      374                          0                         0
      375                          0                         0
      376                          0                         0
      377                          0                         0
      378                          0                         0
      379                          0                         0
      380                          0                         0
      381                          0                         0
      382                          0                         0
      383                          0                         0
      384                          0                         0
      385                          0                         0
      386                          0                         0
      387                          0                         0
      388                          0                         0
      389                          0                         0
      390                          0                         0
      391                          0                         0
      392                          0                         0
      393                          0                         0
      394                          0                         0
      395                          0                         0
      396                          0                         0
      397                          0                         0
      398                          0                         0
      399                          0                         0
      400                          0                         0
      401                          0                         0
      402                          0                         0
      403                          0                         0
      404                          0                         0
      405                          0                         0
      406                          0                         0
      407                          0                         0
      408                          0                         0
      409                          0                         0
      410                          0                         0
      411                          0                         0
      412                          0                         0
      413                          0                         0
      414                          0                         0
      415                          0                         0
      416                          0                         0
      417                          0                         0
      418                          0                         0
      419                          0                         0
      420                          0                         0
      421                          0                         0
      422                          0                         0
      423                          0                         0
      424                          0                         0
      425                          0                         0
      426                          0                         0
      427                          0                         0
      428                          0                         0
      429                          0                         0
      430                          0                         0
      431                          0                         0
      432                          0                         0
      433                          0                         0
      434                          0                         0
      435                          0                         0
      436                          0                         0
      437                          0                         0
      438                          0                         0
      439                          0                         0
      440                          0                         0
      441                          0                         0
      442                          0                         0
      443                          0                         0
      444                          0                         0
      445                          0                         0
      446                          0                         0
      447                          0                         0
      448                          0                         0
      449                          0                         0
      450                          0                         0
      451                          0                         0
      452                          0                         0
      453                          0                         0
      454                          0                         0
      455                          0                         0
      456                          0                         0
      457                          0                         0
      458                          0                         0
      459                          0                         0
      460                          0                         0
      461                          0                         0
      462                          0                         0
      463                          0                         0
      464                          0                         0
      465                          0                         0
      466                          0                         0
      467                          0                         0
      468                          0                         0
      469                          0                         0
      470                          0                         0
      471                          0                         0
      472                          0                         0
      473                          0                         0
      474                          0                         0
      475                          0                         0
      476                          0                         0
      477                          0                         0
      478                          0                         0
      479                          0                         0
      480                          0                         0
      481                          0                         0
      482                          0                         0
      483                          0                         0
      484                          0                         0
      485                          0                         0
      486                          0                         0
      487                          0                         0
      488                          0                         0
      489                          0                         0
      490                          0                         0
      491                          0                         0
      492                          0                         0
      493                          0                         0
      494                          0                         0
      495                          0                         0
      496                          0                         0
      497                          0                         0
      498                          0                         0
      499                          0                         0
      500                          0                         0
      501                          0                         0
      502                          0                         0
      503                          0                         0
      504                          0                         0
      505                          0                         0
      506                          0                         0
      507                          0                         0
      508                          0                         0
      509                          0                         0
      510                          0                         0
      511                          0                         0
      512                          0                         0
      513                          0                         0
      514                          0                         0
      515                          0                         0
      516                          0                         0
      517                          0                         0
      518                          0                         0
      519                          0                         0
      520                          0                         0
      521                          0                         0
      522                          0                         0
      523                          0                         0
      524                          0                         0
      525                          0                         0
      526                          0                         0
      527                          0                         0
      528                          0                         0
      529                          0                         0
      530                          0                         0
      531                          0                         0
      532                          0                         0
      533                          0                         0
      534                          0                         0
      535                          0                         0
      536                          0                         0
      537                          0                         0
      538                          0                         0
      539                          0                         0
      540                          0                         0
      541                          0                         0
      542                          0                         0
      543                          0                         0
      544                          0                         0
      545                          0                         0
      546                          0                         0
      547                          0                         0
      548                          0                         0
      549                          0                         0
      550                          0                         0
      551                          0                         0
      552                          0                         0
      553                          0                         0
      554                          0                         0
      555                          0                         0
      556                          0                         0
      557                          0                         0
      558                          0                         0
      559                          0                         0
      560                          0                         0
      561                          0                         0
      562                          0                         0
      563                          0                         0
      564                          0                         0
      565                          0                         0
      566                          0                         0
      567                          0                         0
      568                          0                         0
      569                          0                         0
      570                          0                         0
      571                          0                         0
      572                          0                         0
      573                          0                         0
      574                          0                         0
      575                          0                         0
      576                          0                         0
      577                          0                         0
      578                          0                         0
      579                          0                         0
      580                          0                         0
      581                          0                         0
      582                          0                         0
      583                          0                         0
      584                          0                         0
      585                          0                         0
      586                          0                         0
      587                          0                         0
      588                          0                         0
      589                          0                         0
      590                          0                         0
      591                          0                         0
      592                          0                         0
      593                          0                         0
      594                          0                         0
      595                          0                         0
      596                          0                         0
      597                          0                         0
      598                          0                         0
      599                          0                         0
      600                          0                         0
      601                          0                         0
      602                          0                         0
      603                          0                         0
      604                          0                         0
      605                          0                         0
      606                          0                         0
      607                          0                         0
      608                          0                         0
      609                          0                         0
      610                          0                         0
      611                          0                         0
      612                          0                         0
      613                          0                         0
      614                          0                         0
      615                          0                         0
      616                          0                         0
      617                          0                         0
      618                          0                         0
      619                          0                         0
      620                          0                         0
      621                          0                         0
      622                          0                         0
      623                          0                         0
      624                          0                         0
      625                          0                         0
      626                          0                         0
      627                          0                         0
      628                          0                         0
      629                          0                         0
      630                          0                         0
      631                          0                         0
      632                          0                         0
      633                          0                         0
      634                          0                         0
      635                          0                         0
      636                          0                         0
      637                          0                         0
      638                          0                         0
      639                          0                         0
      640                          0                         0
      641                          0                         0
      642                          0                         0
      643                          0                         0
      644                          0                         0
      645                          0                         0
      646                          0                         0
      647                          0                         0
      648                          0                         0
      649                          0                         0
      650                          0                         0
      651                          0                         0
      652                          0                         0
      653                          0                         0
      654                          0                         0
      655                          0                         0
      656                          0                         0
      657                          0                         0
      658                          0                         0
      659                          0                         0
      660                          0                         0
      661                          0                         0
      662                          0                         0
      663                          0                         0
      664                          0                         0
      665                          0                         0
      666                          0                         0
      667                          0                         0
      668                          0                         0
      669                          0                         0
      670                          0                         0
      671                          0                         0
      672                          0                         0
      673                          0                         0
      674                          0                         0
      675                          0                         0
      676                          0                         0
      677                          0                         0
      678                          0                         0
      679                          0                         0
      680                          0                         0
      681                          0                         0
      682                          0                         0
      683                          0                         0
      684                          0                         0
      685                          0                         0
      686                          0                         0
      687                          0                         0
      688                          0                         0
      689                          0                         0
      690                          0                         0
      691                          0                         0
      692                          0                         0
      693                          0                         0
      694                          0                         0
      695                          0                         0
      696                          0                         0
      697                          0                         0
      698                          0                         0
      699                          0                         0
      700                          0                         0
      701                          0                         0
      702                          0                         0
      703                          0                         0
      704                          0                         0
      705                          0                         0
      706                          0                         0
      707                          0                         0
      708                          0                         0
      709                          0                         0
      710                          0                         0
      711                          0                         0
      712                          0                         0
      713                          0                         0
      714                          0                         0
      715                          0                         0
      716                          0                         0
      717                          0                         0
      718                          0                         0
      719                          0                         0
      720                          0                         0
      721                          0                         0
      722                          0                         0
      723                          0                         0
      724                          0                         0
      725                          0                         0
      726                          0                         0
      727                          0                         0
      728                          0                         0
      729                          0                         0
      730                          0                         0
      731                          0                         0
      732                          0                         0
      733                          0                         0
      734                          0                         0
      735                          0                         0
      736                          0                         0
      737                          0                         0
      738                          0                         0
      739                          0                         0
      740                          0                         0
      741                          0                         0
      742                          0                         0
      743                          0                         0
      744                          0                         0
      745                          0                         0
      746                          0                         0
      747                          0                         0
      748                          0                         0
      749                          0                         0
      750                          0                         0
      751                          0                         0
      752                          0                         0
      753                          0                         0
      754                          0                         0
      755                          0                         0
      756                          0                         0
      757                          0                         0
      758                          0                         0
      759                          0                         0
      760                          0                         0
      761                          0                         0
      762                          0                         0
      763                          0                         0
      764                          0                         0
      765                          0                         0
      766                          0                         0
      767                          0                         0
      768                          0                         0
      769                          0                         0
      770                          0                         0
      771                          0                         0
      772                          0                         0
      773                          0                         0
      774                          0                         0
      775                          0                         0
      776                          0                         0
      777                          0                         0
      778                          0                         0
      779                          0                         0
      780                          0                         0
      781                          0                         0
      782                          0                         0
      783                          0                         0
      784                          0                         0
      785                          0                         0
      786                          0                         0
      787                          0                         0
      788                          0                         0
      789                          0                         0
      790                          0                         0
      791                          0                         0
      792                          0                         0
      793                          0                         0
      794                          0                         0
      795                          0                         0
      796                          0                         0
      797                          0                         0
      798                          0                         0
      799                          0                         0
      800                          0                         0
      801                          0                         0
      802                          0                         0
      803                          0                         0
      804                          0                         0
      805                          0                         0
      806                          0                         0
      807                          0                         0
      808                          0                         0
      809                          0                         0
      810                          0                         0
      811                          0                         0
      812                          0                         0
      813                          0                         0
      814                          0                         0
      815                          0                         0
      816                          0                         0
      817                          0                         0
      818                          0                         0
      819                          0                         0
      820                          0                         0
      821                          0                         0
      822                          0                         0
      823                          0                         0
      824                          0                         0
      825                          0                         0
      826                          0                         0
      827                          0                         0
      828                          0                         0
      829                          0                         0
      830                          0                         0
      831                          0                         0
      832                          0                         0
      833                          0                         0
      834                          0                         0
      835                          0                         0
      836                          0                         0
      837                          0                         0
      838                          0                         0
      839                          0                         0
      840                          0                         0
      841                          0                         0
      842                          0                         0
      843                          0                         0
      844                          0                         0
      845                          0                         0
      846                          0                         0
      847                          0                         0
      848                          0                         0
      849                          0                         0
      850                          0                         0
      851                          0                         0
      852                          0                         0
      853                          0                         0
      854                          0                         0
      855                          0                         0
      856                          0                         0
      857                          0                         0
      858                          0                         0
      859                          0                         0
      860                          0                         0
      861                          0                         0
      862                          0                         0
      863                          0                         0
      864                          0                         0
      865                          0                         0
      866                          0                         0
      867                          0                         0
      868                          0                         0
      869                          0                         0
      870                          0                         0
      871                          0                         0
      872                          0                         0
      873                          0                         0
      874                          0                         0
      875                          0                         0
      876                          0                         0
      877                          0                         0
      878                          0                         0
      879                          0                         0
      880                          0                         0
      881                          0                         0
      882                          0                         0
      883                          0                         0
      884                          0                         0
      885                          0                         0
      886                          0                         0
      887                          0                         0
      888                          0                         0
      889                          0                         0
      890                          0                         0
      891                          0                         0
      892                          0                         0
      893                          0                         0
      894                          0                         0
      895                          0                         0
      896                          0                         0
      897                          0                         0
      898                          0                         0
      899                          0                         0
      900                          0                         0
      901                          0                         0
      902                          0                         0
      903                          0                         0
      904                          0                         0
      905                          0                         0
      906                          0                         0
      907                          0                         0
      908                          0                         0
      909                          0                         0
      910                          0                         0
      911                          0                         0
      912                          0                         0
      913                          0                         0
      914                          0                         0
      915                          0                         0
      916                          0                         0
      917                          0                         0
      918                          0                         0
      919                          0                         0
      920                          0                         0
      921                          0                         0
      922                          0                         0
      923                          0                         0
      924                          0                         0
      925                          0                         0
      926                          0                         0
      927                          0                         0
      928                          0                         0
      929                          0                         0
      930                          0                         0
      931                          0                         0
      932                          0                         0
      933                          0                         0
      934                          0                         0
      935                          0                         0
      936                          0                         0
      937                          0                         0
      938                          0                         0
      939                          0                         0
      940                          0                         0
      941                          0                         0
      942                          0                         0
      943                          0                         0
      944                          0                         0
      945                          0                         0
      946                          0                         0
      947                          0                         0
      948                          0                         0
      949                          0                         0
      950                          0                         0
      951                          0                         0
      952                          0                         0
      953                          0                         0
      954                          0                         0
      955                          0                         0
      956                          0                         0
      957                          0                         0
      958                          0                         0
      959                          0                         0
      960                          0                         0
      961                          0                         0
      962                          0                         0
      963                          0                         0
      964                          0                         0
      965                          0                         0
      966                          0                         0
      967                          0                         0
      968                          0                         0
      969                          0                         0
      970                          0                         0
      971                          0                         0
      972                          0                         0
      973                          0                         0
      974                          0                         0
      975                          0                         0
      976                          0                         0
      977                          0                         0
      978                          0                         0
      979                          0                         0
      980                          0                         0
      981                          0                         0
      982                          0                         0
      983                          0                         0
      984                          0                         0
      985                          0                         0
      986                          0                         0
      987                          0                         0
      988                          0                         0
      989                          0                         0
      990                          0                         0
      991                          0                         0
      992                          0                         0
      993                          0                         0
      994                          0                         0
      995                          0                         0
      996                          0                         0
      997                          0                         0
      998                          0                         0
      999                          0                         0
      1000                         0                         0
      1001                         0                         0
      1002                         0                         0
      1003                         0                         0
      1004                         0                         0
      1005                         0                         0
      1006                         0                         0
      1007                         0                         0
      1008                         0                         0
      1009                         0                         0
      1010                         0                         0
      1011                         0                         0
      1012                         0                         0
      1013                         0                         0
      1014                         0                         0
      1015                         0                         0
      1016                         0                         0
      1017                         0                         0
      1018                         0                         0
      1019                         0                         0
      1020                         0                         0
      1021                         0                         0
      1022                         0                         0
      1023                         0                         0
      1024                         0                         0
      1025                         0                         0
      1026                         0                         0
      1027                         0                         0
      1028                         0                         0
      1029                         0                         0
      1030                         0                         0
      1031                         0                         0
      1032                         0                         0
      1033                         0                         0
      1034                         0                         0
      1035                         0                         0
      1036                         0                         0
      1037                         0                         0
      1038                         0                         0
      1039                         0                         0
      1040                         0                         0
      1041                         0                         0
      1042                         0                         0
      1043                         0                         0
      1044                         0                         0
      1045                         0                         0
      1046                         0                         0
      1047                         0                         0
      1048                         0                         0
      1049                         0                         0
      1050                         0                         0
      1051                         0                         0
      1052                         0                         0
      1053                         0                         0
      1054                         0                         0
      1055                         0                         0
      1056                         0                         0
      1057                         0                         0
      1058                         0                         0
      1059                         0                         0
      1060                         0                         0
      1061                         0                         0
      1062                         0                         0
      1063                         0                         0
      1064                         0                         0
      1065                         0                         0
      1066                         0                         0
      1067                         0                         0
      1068                         0                         0
      1069                         0                         0
      1070                         0                         0
      1071                         0                         0
      1072                         0                         0
      1073                         0                         0
      1074                         0                         0
      1075                         0                         0
      1076                         0                         0
      1077                         0                         0
      1078                         0                         0
      1079                         0                         0
      1080                         0                         0
      1081                         0                         0
      1082                         0                         0
      1083                         0                         0
      1084                         0                         0
      1085                         0                         0
      1086                         0                         0
      1087                         0                         0
      1088                         0                         0
      1089                         0                         0
      1090                         0                         0
      1091                         0                         0
      1092                         0                         0
      1093                         0                         0
      1094                         0                         0
      1095                         0                         0
      1096                         0                         0
      1097                         0                         0
      1098                         0                         0
      1099                         0                         0
      1100                         0                         0
      1101                         0                         0
      1102                         0                         0
      1103                         0                         0
      1104                         0                         0
      1105                         0                         0
      1106                         0                         0
      1107                         0                         0
      1108                         0                         0
      1109                         0                         0
      1110                         0                         0
      1111                         0                         0
      1112                         0                         0
      1113                         0                         0
      1114                         0                         0
      1115                         0                         0
      1116                         0                         0
      1117                         0                         0
      1118                         0                         0
      1119                         0                         0
      1120                         0                         0
      1121                         0                         0
      1122                         0                         0
      1123                         0                         0
      1124                         0                         0
      1125                         0                         0
      1126                         0                         0
      1127                         0                         0
      1128                         0                         0
      1129                         0                         0
      1130                         0                         0
      1131                         0                         0
      1132                         0                         0
      1133                         0                         0
      1134                         0                         0
      1135                         0                         0
      1136                         0                         0
      1137                         0                         0
      1138                         0                         0
      1139                         0                         0
      1140                         0                         0
      1141                         0                         0
      1142                         0                         0
      1143                         0                         0
      1144                         0                         0
      1145                         0                         0
      1146                         0                         0
      1147                         0                         0
      1148                         0                         0
      1149                         0                         0
      1150                         0                         0
      1151                         0                         0
      1152                         0                         0
      1153                         0                         0
      1154                         0                         0
      1155                         0                         0
      1156                         0                         0
      1157                         0                         0
      1158                         0                         0
      1159                         0                         0
      1160                         0                         0
      1161                         0                         0
      1162                         0                         0
      1163                         0                         0
      1164                         0                         0
      1165                         0                         0
      1166                         0                         0
      1167                         0                         0
      1168                         0                         0
      1169                         0                         0
      1170                         0                         0
      1171                         0                         0
      1172                         0                         0
      1173                         0                         0
      1174                         0                         0
      1175                         0                         0
      1176                         0                         0
      1177                         0                         0
      1178                         0                         0
      1179                         0                         0
      1180                         0                         0
      1181                         0                         0
      1182                         0                         0
      1183                         0                         0
      1184                         0                         0
      1185                         0                         0
      1186                         0                         0
      1187                         0                         0
      1188                         0                         0
      1189                         0                         0
      1190                         0                         0
      1191                         0                         0
      1192                         0                         0
      1193                         0                         0
      1194                         0                         0
      1195                         0                         0
      1196                         0                         0
      1197                         0                         0
      1198                         0                         0
      1199                         0                         0
      1200                         0                         0
      1201                         0                         0
      1202                         0                         0
      1203                         0                         0
      1204                         0                         0
      1205                         0                         0
      1206                         0                         0
      1207                         0                         0
      1208                         0                         0
      1209                         0                         0
      1210                         0                         0
      1211                         0                         0
      1212                         0                         0
      1213                         0                         0
      1214                         0                         0
      1215                         0                         0
      1216                         0                         0
      1217                         0                         0
      1218                         0                         0
      1219                         0                         0
      1220                         0                         0
      1221                         0                         0
      1222                         0                         0
      1223                         0                         0
      1224                         0                         0
      1225                         0                         0
      1226                         0                         0
      1227                         0                         0
      1228                         0                         0
      1229                         0                         0
      1230                         0                         0
      1231                         0                         0
      1232                         0                         0
      1233                         0                         0
      1234                         0                         0
      1235                         0                         0
      1236                         0                         0
      1237                         0                         0
      1238                         0                         0
      1239                         0                         0
      1240                         0                         0
      1241                         0                         0
      1242                         0                         0
      1243                         0                         0
      1244                         0                         0
      1245                         0                         0
      1246                         0                         0
      1247                         0                         0
      1248                         0                         0
      1249                         0                         0
      1250                         0                         0
      1251                         0                         0
      1252                         0                         0
      1253                         0                         0
      1254                         0                         0
      1255                         0                         0
      1256                         0                         0
      1257                         0                         0
      1258                         0                         0
      1259                         0                         0
      1260                         0                         0
      1261                         0                         0
      1262                         0                         0
      1263                         0                         0
      1264                         0                         0
      1265                         0                         0
      1266                         0                         0
      1267                         0                         0
      1268                         0                         0
      1269                         0                         0
      1270                         0                         0
      1271                         0                         0
      1272                         0                         0
      1273                         0                         0
      1274                         0                         0
      1275                         0                         0
      1276                         0                         0
      1277                         0                         0
      1278                         0                         0
      1279                         0                         0
      1280                         0                         0
      1281                         0                         0
      1282                         0                         0
      1283                         0                         0
      1284                         0                         0
      1285                         0                         0
      1286                         0                         0
      1287                         0                         0
      1288                         0                         0
      1289                         0                         0
      1290                         0                         0
      1291                         0                         0
      1292                         0                         0
      1293                         0                         0
      1294                         0                         0
      1295                         0                         0
      1296                         0                         0
      1297                         0                         0
      1298                         0                         0
      1299                         0                         0
      1300                         0                         0
      1301                         0                         0
      1302                         0                         0
      1303                         0                         0
      1304                         0                         0
      1305                         0                         0
      1306                         0                         0
      1307                         0                         0
      1308                         0                         0
      1309                         0                         0
      1310                         0                         0
      1311                         0                         0
      1312                         0                         0
      1313                         0                         0
      1314                         0                         0
      1315                         0                         0
      1316                         0                         0
      1317                         0                         0
      1318                         0                         0
      1319                         0                         0
      1320                         0                         0
      1321                         0                         0
      1322                         0                         0
      1323                         0                         0
      1324                         0                         0
      1325                         0                         0
      1326                         0                         0
      1327                         0                         0
      1328                         0                         0
      1329                         0                         0
      1330                         0                         0
      1331                         0                         0
      1332                         0                         0
      1333                         0                         0
      1334                         0                         0
      1335                         0                         0
      1336                         0                         0
      1337                         0                         0
      1338                         0                         0
      1339                         0                         0
      1340                         0                         0
      1341                         0                         0
      1342                         0                         0
      1343                         0                         0
      1344                         0                         0
      1345                         0                         0
      1346                         0                         0
      1347                         0                         0
      1348                         0                         0
      1349                         0                         0
      1350                         0                         0
      1351                         0                         0
      1352                         0                         0
      1353                         0                         0
      1354                         0                         0
      1355                         0                         0
      1356                         0                         0
      1357                         0                         0
      1358                         0                         0
      1359                         0                         0
      1360                         0                         0
      1361                         0                         0
      1362                         0                         0
      1363                         0                         0
      1364                         0                         0
      1365                         0                         0
      1366                         0                         0
      1367                         0                         0
      1368                         0                         0
      1369                         0                         0
      1370                         0                         0
      1371                         0                         0
      1372                         0                         0
      1373                         0                         0
      1374                         0                         0
      1375                         0                         0
      1376                         0                         0
      1377                         0                         0
      1378                         0                         0
      1379                         0                         0
      1380                         0                         0
      1381                         0                         0
      1382                         0                         0
      1383                         0                         0
      1384                         0                         0
      1385                         0                         0
      1386                         0                         0
      1387                         0                         0
      1388                         0                         0
      1389                         0                         0
      1390                         0                         0
      1391                         0                         0
      1392                         0                         0
      1393                         0                         0
      1394                         0                         0
      1395                         0                         0
      1396                         0                         0
      1397                         0                         0
      1398                         0                         0
      1399                         0                         0
      1400                         0                         0
      1401                         0                         0
      1402                         0                         0
      1403                         0                         0
      1404                         0                         0
      1405                         0                         0
      1406                         0                         0
      1407                         0                         0
      1408                         0                         0
      1409                         0                         0
      1410                         0                         0
      1411                         0                         0
      1412                         0                         0
      1413                         0                         0
      1414                         0                         0
      1415                         0                         0
      1416                         0                         0
      1417                         0                         0
      1418                         0                         0
      1419                         0                         0
      1420                         0                         0
      1421                         0                         0
      1422                         0                         0
      1423                         0                         0
      1424                         0                         0
      1425                         0                         0
      1426                         0                         0
      1427                         0                         0
      1428                         0                         0
      1429                         0                         0
      1430                         0                         0
      1431                         0                         0
      1432                         0                         0
      1433                         0                         0
      1434                         0                         0
      1435                         0                         0
      1436                         0                         0
      1437                         0                         0
      1438                         0                         0
      1439                         0                         0
      1440                         0                         0
      1441                         0                         0
      1442                         0                         0
      1443                         0                         0
      1444                         0                         0
      1445                         0                         0
      1446                         0                         0
      1447                         0                         0
      1448                         0                         0
      1449                         0                         0
      1450                         0                         0
      1451                         0                         0
      1452                         0                         0
      1453                         0                         0
      1454                         0                         0
      1455                         0                         0
      1456                         0                         0
      1457                         0                         0
      1458                         0                         0
      1459                         0                         0
      1460                         0                         0
      1461                         0                         0
      1462                         0                         0
      1463                         0                         0
      1464                         0                         0
      1465                         0                         0
      1466                         0                         0
      1467                         0                         0
      1468                         0                         0
      1469                         0                         0
      1470                         0                         0
      1471                         0                         0
      1472                         0                         0
      1473                         0                         0
      1474                         0                         0
      1475                         0                         0
      1476                         0                         0
      1477                         0                         0
      1478                         0                         0
      1479                         0                         0
      1480                         0                         0
      1481                         0                         0
      1482                         0                         0
      1483                         0                         0
      1484                         0                         0
      1485                         0                         0
      1486                         0                         0
      1487                         0                         0
      1488                         0                         0
      1489                         0                         0
      1490                         0                         0
      1491                         0                         0
      1492                         0                         0
      1493                         0                         0
      1494                         0                         0
      1495                         0                         0
      1496                         0                         0
      1497                         0                         0
      1498                         0                         0
      1499                         0                         0
      1500                         0                         0
      1501                         0                         0
      1502                         0                         0
      1503                         0                         0
      1504                         0                         0
      1505                         0                         0
      1506                         0                         0
      1507                         0                         0
      1508                         0                         0
      1509                         0                         0
      1510                         0                         0
      1511                         0                         0
      1512                         0                         0
      1513                         0                         0
      1514                         0                         0
      1515                         0                         0
      1516                         0                         0
      1517                         0                         0
      1518                         0                         0
      1519                         0                         0
      1520                         0                         0
      1521                         0                         0
      1522                         0                         0
      1523                         0                         0
      1524                         0                         0
      1525                         0                         0
      1526                         0                         0
      1527                         0                         0
      1528                         0                         0
      1529                         0                         0
      1530                         0                         0
      1531                         0                         0
      1532                         0                         0
      1533                         0                         0
      1534                         0                         0
      1535                         0                         0
      1536                         0                         0
      1537                         0                         0
      1538                         0                         0
      1539                         0                         0
      1540                         0                         0
      1541                         0                         0
      1542                         0                         0
      1543                         0                         0
      1544                         0                         0
      1545                         0                         0
      1546                         0                         0
      1547                         0                         0
      1548                         0                         0
      1549                         0                         0
      1550                         0                         0
      1551                         0                         0
      1552                         0                         0
      1553                         0                         0
      1554                         0                         0
      1555                         0                         0
      1556                         0                         0
      1557                         0                         0
      1558                         0                         0
      1559                         0                         0
      1560                         0                         0
      1561                         0                         0
      1562                         0                         0
      1563                         0                         0
      1564                         0                         0
      1565                         0                         0
      1566                         0                         0
      1567                         0                         0
      1568                         0                         0
      1569                         0                         0
      1570                         0                         0
      1571                         0                         0
      1572                         0                         0
      1573                         0                         0
      1574                         0                         0
      1575                         0                         0
      1576                         0                         0
      1577                         0                         0
      1578                         0                         0
      1579                         0                         0
      1580                         0                         0
      1581                         0                         0
      1582                         0                         0
      1583                         0                         0
      1584                         0                         0
      1585                         0                         0
      1586                         0                         0
      1587                         0                         0
      1588                         0                         0
      1589                         0                         0
      1590                         0                         0
      1591                         0                         0
      1592                         0                         0
      1593                         0                         0
      1594                         0                         0
      1595                         0                         0
      1596                         0                         0
      1597                         0                         0
      1598                         0                         0
      1599                         0                         0
      1600                         0                         0
      1601                         0                         0
      1602                         0                         0
      1603                         0                         0
      1604                         0                         0
      1605                         0                         0
      1606                         0                         0
      1607                         0                         0
      1608                         0                         0
      1609                         0                         0
      1610                         0                         0
      1611                         0                         0
      1612                         0                         0
      1613                         0                         0
      1614                         0                         0
      1615                         0                         0
      1616                         0                         0
      1617                         0                         0
      1618                         0                         0
      1619                         0                         0
      1620                         0                         0
      1621                         0                         0
      1622                         0                         0
      1623                         0                         0
      1624                         0                         0
      1625                         0                         0
      1626                         0                         0
      1627                         0                         0
      1628                         0                         0
      1629                         0                         0
      1630                         0                         0
      1631                         0                         0
      1632                         0                         0
      1633                         0                         0
      1634                         0                         0
                          TIMESTAMP TAG_NUM TAG_TYPE
      1    2013-09-05 16:00:00 AKDT    1234 SuperTag
      2    2013-09-05 16:15:00 AKDT    1234 SuperTag
      3    2013-09-05 16:30:00 AKDT    1234 SuperTag
      4    2013-09-05 16:45:00 AKDT    1234 SuperTag
      5    2013-09-05 17:00:00 AKDT    1234 SuperTag
      6    2013-09-05 17:15:00 AKDT    1234 SuperTag
      7    2013-09-05 17:30:00 AKDT    1234 SuperTag
      8    2013-09-05 17:45:00 AKDT    1234 SuperTag
      9    2013-09-05 18:00:00 AKDT    1234 SuperTag
      10   2013-09-05 18:15:00 AKDT    1234 SuperTag
      11   2013-09-05 18:30:00 AKDT    1234 SuperTag
      12   2013-09-05 18:45:00 AKDT    1234 SuperTag
      13   2013-09-05 19:00:00 AKDT    1234 SuperTag
      14   2013-09-05 19:15:00 AKDT    1234 SuperTag
      15   2013-09-05 19:30:00 AKDT    1234 SuperTag
      16   2013-09-05 19:45:00 AKDT    1234 SuperTag
      17   2013-09-05 20:00:00 AKDT    1234 SuperTag
      18   2013-09-05 20:15:00 AKDT    1234 SuperTag
      19   2013-09-05 20:30:00 AKDT    1234 SuperTag
      20   2013-09-05 20:45:00 AKDT    1234 SuperTag
      21   2013-09-05 21:00:00 AKDT    1234 SuperTag
      22   2013-09-05 21:15:00 AKDT    1234 SuperTag
      23   2013-09-05 21:30:00 AKDT    1234 SuperTag
      24   2013-09-05 21:45:00 AKDT    1234 SuperTag
      25   2013-09-05 22:00:00 AKDT    1234 SuperTag
      26   2013-09-05 22:15:00 AKDT    1234 SuperTag
      27   2013-09-05 22:30:00 AKDT    1234 SuperTag
      28   2013-09-05 22:45:00 AKDT    1234 SuperTag
      29   2013-09-05 23:00:00 AKDT    1234 SuperTag
      30   2013-09-05 23:15:00 AKDT    1234 SuperTag
      31   2013-09-05 23:30:00 AKDT    1234 SuperTag
      32   2013-09-05 23:45:00 AKDT    1234 SuperTag
      33   2013-09-06 00:00:00 AKDT    1234 SuperTag
      34   2013-09-06 00:15:00 AKDT    1234 SuperTag
      35   2013-09-06 00:30:00 AKDT    1234 SuperTag
      36   2013-09-06 00:45:00 AKDT    1234 SuperTag
      37   2013-09-06 01:00:00 AKDT    1234 SuperTag
      38   2013-09-06 01:15:00 AKDT    1234 SuperTag
      39   2013-09-06 01:30:00 AKDT    1234 SuperTag
      40   2013-09-06 01:45:00 AKDT    1234 SuperTag
      41   2013-09-06 02:00:00 AKDT    1234 SuperTag
      42   2013-09-06 02:15:00 AKDT    1234 SuperTag
      43   2013-09-06 02:30:00 AKDT    1234 SuperTag
      44   2013-09-06 02:45:00 AKDT    1234 SuperTag
      45   2013-09-06 03:00:00 AKDT    1234 SuperTag
      46   2013-09-06 03:15:00 AKDT    1234 SuperTag
      47   2013-09-06 03:30:00 AKDT    1234 SuperTag
      48   2013-09-06 03:45:00 AKDT    1234 SuperTag
      49   2013-09-06 04:00:00 AKDT    1234 SuperTag
      50   2013-09-06 04:15:00 AKDT    1234 SuperTag
      51   2013-09-06 04:30:00 AKDT    1234 SuperTag
      52   2013-09-06 04:45:00 AKDT    1234 SuperTag
      53   2013-09-06 05:00:00 AKDT    1234 SuperTag
      54   2013-09-06 05:15:00 AKDT    1234 SuperTag
      55   2013-09-06 05:30:00 AKDT    1234 SuperTag
      56   2013-09-06 05:45:00 AKDT    1234 SuperTag
      57   2013-09-06 06:00:00 AKDT    1234 SuperTag
      58   2013-09-06 06:15:00 AKDT    1234 SuperTag
      59   2013-09-06 06:30:00 AKDT    1234 SuperTag
      60   2013-09-06 06:45:00 AKDT    1234 SuperTag
      61   2013-09-06 07:00:00 AKDT    1234 SuperTag
      62   2013-09-06 07:15:00 AKDT    1234 SuperTag
      63   2013-09-06 07:30:00 AKDT    1234 SuperTag
      64   2013-09-06 07:45:00 AKDT    1234 SuperTag
      65   2013-09-06 08:00:00 AKDT    1234 SuperTag
      66   2013-09-06 08:15:00 AKDT    1234 SuperTag
      67   2013-09-06 08:30:00 AKDT    1234 SuperTag
      68   2013-09-06 08:45:00 AKDT    1234 SuperTag
      69   2013-09-06 09:00:00 AKDT    1234 SuperTag
      70   2013-09-06 09:15:00 AKDT    1234 SuperTag
      71   2013-09-06 09:30:00 AKDT    1234 SuperTag
      72   2013-09-06 09:45:00 AKDT    1234 SuperTag
      73   2013-09-06 10:00:00 AKDT    1234 SuperTag
      74   2013-09-06 10:15:00 AKDT    1234 SuperTag
      75   2013-09-06 10:30:00 AKDT    1234 SuperTag
      76   2013-09-06 10:45:00 AKDT    1234 SuperTag
      77   2013-09-06 11:00:00 AKDT    1234 SuperTag
      78   2013-09-06 11:15:00 AKDT    1234 SuperTag
      79   2013-09-06 11:30:00 AKDT    1234 SuperTag
      80   2013-09-06 11:45:00 AKDT    1234 SuperTag
      81   2013-09-06 12:00:00 AKDT    1234 SuperTag
      82   2013-09-06 12:15:00 AKDT    1234 SuperTag
      83   2013-09-06 12:30:00 AKDT    1234 SuperTag
      84   2013-09-06 12:45:00 AKDT    1234 SuperTag
      85   2013-09-06 13:00:00 AKDT    1234 SuperTag
      86   2013-09-06 13:15:00 AKDT    1234 SuperTag
      87   2013-09-06 13:30:00 AKDT    1234 SuperTag
      88   2013-09-06 13:45:00 AKDT    1234 SuperTag
      89   2013-09-06 14:00:00 AKDT    1234 SuperTag
      90   2013-09-06 14:15:00 AKDT    1234 SuperTag
      91   2013-09-06 14:30:00 AKDT    1234 SuperTag
      92   2013-09-06 14:45:00 AKDT    1234 SuperTag
      93   2013-09-06 15:00:00 AKDT    1234 SuperTag
      94   2013-09-06 15:15:00 AKDT    1234 SuperTag
      95   2013-09-06 15:30:00 AKDT    1234 SuperTag
      96   2013-09-06 15:45:00 AKDT    1234 SuperTag
      97   2013-09-06 16:00:00 AKDT    1234 SuperTag
      98   2013-09-06 16:15:00 AKDT    1234 SuperTag
      99   2013-09-06 16:45:00 AKDT    1234 SuperTag
      100  2013-09-06 17:00:00 AKDT    1234 SuperTag
      101  2013-09-06 17:15:00 AKDT    1234 SuperTag
      102  2013-09-06 17:45:00 AKDT    1234 SuperTag
      103  2013-09-06 18:00:00 AKDT    1234 SuperTag
      104  2013-09-06 18:15:00 AKDT    1234 SuperTag
      105  2013-09-06 18:45:00 AKDT    1234 SuperTag
      106  2013-09-06 19:00:00 AKDT    1234 SuperTag
      107  2013-09-06 19:15:00 AKDT    1234 SuperTag
      108  2013-09-06 19:45:00 AKDT    1234 SuperTag
      109  2013-09-06 20:00:00 AKDT    1234 SuperTag
      110  2013-09-06 20:15:00 AKDT    1234 SuperTag
      111  2013-09-06 20:45:00 AKDT    1234 SuperTag
      112  2013-09-06 21:00:00 AKDT    1234 SuperTag
      113  2013-09-06 21:15:00 AKDT    1234 SuperTag
      114  2013-09-06 21:45:00 AKDT    1234 SuperTag
      115  2013-09-06 22:00:00 AKDT    1234 SuperTag
      116  2013-09-06 22:15:00 AKDT    1234 SuperTag
      117  2013-09-06 22:45:00 AKDT    1234 SuperTag
      118  2013-09-06 23:00:00 AKDT    1234 SuperTag
      119  2013-09-06 23:15:00 AKDT    1234 SuperTag
      120  2013-09-06 23:45:00 AKDT    1234 SuperTag
      121  2013-09-07 00:00:00 AKDT    1234 SuperTag
      122  2013-09-07 00:15:00 AKDT    1234 SuperTag
      123  2013-09-07 00:45:00 AKDT    1234 SuperTag
      124  2013-09-07 01:00:00 AKDT    1234 SuperTag
      125  2013-09-07 01:15:00 AKDT    1234 SuperTag
      126  2013-09-07 01:45:00 AKDT    1234 SuperTag
      127  2013-09-07 02:00:00 AKDT    1234 SuperTag
      128  2013-09-07 02:15:00 AKDT    1234 SuperTag
      129  2013-09-07 02:45:00 AKDT    1234 SuperTag
      130  2013-09-07 03:00:00 AKDT    1234 SuperTag
      131  2013-09-07 03:15:00 AKDT    1234 SuperTag
      132  2013-09-07 03:45:00 AKDT    1234 SuperTag
      133  2013-09-07 04:00:00 AKDT    1234 SuperTag
      134  2013-09-07 04:15:00 AKDT    1234 SuperTag
      135  2013-09-07 04:45:00 AKDT    1234 SuperTag
      136  2013-09-07 05:00:00 AKDT    1234 SuperTag
      137  2013-09-07 05:15:00 AKDT    1234 SuperTag
      138  2013-09-07 05:45:00 AKDT    1234 SuperTag
      139  2013-09-07 06:00:00 AKDT    1234 SuperTag
      140  2013-09-07 06:15:00 AKDT    1234 SuperTag
      141  2013-09-07 06:45:00 AKDT    1234 SuperTag
      142  2013-09-07 07:00:00 AKDT    1234 SuperTag
      143  2013-09-07 07:15:00 AKDT    1234 SuperTag
      144  2013-09-07 07:45:00 AKDT    1234 SuperTag
      145  2013-09-07 08:00:00 AKDT    1234 SuperTag
      146  2013-09-07 08:15:00 AKDT    1234 SuperTag
      147  2013-09-07 08:45:00 AKDT    1234 SuperTag
      148  2013-09-07 09:00:00 AKDT    1234 SuperTag
      149  2013-09-07 09:15:00 AKDT    1234 SuperTag
      150  2013-09-07 09:45:00 AKDT    1234 SuperTag
      151  2013-09-07 10:00:00 AKDT    1234 SuperTag
      152  2013-09-07 10:15:00 AKDT    1234 SuperTag
      153  2013-09-07 10:45:00 AKDT    1234 SuperTag
      154  2013-09-07 11:00:00 AKDT    1234 SuperTag
      155  2013-09-07 11:15:00 AKDT    1234 SuperTag
      156  2013-09-07 11:45:00 AKDT    1234 SuperTag
      157  2013-09-07 12:00:00 AKDT    1234 SuperTag
      158  2013-09-07 12:15:00 AKDT    1234 SuperTag
      159  2013-09-07 12:45:00 AKDT    1234 SuperTag
      160  2013-09-07 13:00:00 AKDT    1234 SuperTag
      161  2013-09-07 13:15:00 AKDT    1234 SuperTag
      162  2013-09-07 13:45:00 AKDT    1234 SuperTag
      163  2013-09-07 14:00:00 AKDT    1234 SuperTag
      164  2013-09-07 14:15:00 AKDT    1234 SuperTag
      165  2013-09-07 14:45:00 AKDT    1234 SuperTag
      166  2013-09-07 15:00:00 AKDT    1234 SuperTag
      167  2013-09-07 15:15:00 AKDT    1234 SuperTag
      168  2013-09-07 15:45:00 AKDT    1234 SuperTag
      169  2013-09-07 16:00:00 AKDT    1234 SuperTag
      170  2013-09-07 16:15:00 AKDT    1234 SuperTag
      171  2013-09-07 16:30:00 AKDT    1234 SuperTag
      172  2013-09-07 17:00:00 AKDT    1234 SuperTag
      173  2013-09-07 17:15:00 AKDT    1234 SuperTag
      174  2013-09-07 17:30:00 AKDT    1234 SuperTag
      175  2013-09-07 18:00:00 AKDT    1234 SuperTag
      176  2013-09-07 18:15:00 AKDT    1234 SuperTag
      177  2013-09-07 18:30:00 AKDT    1234 SuperTag
      178  2013-09-07 19:00:00 AKDT    1234 SuperTag
      179  2013-09-07 19:15:00 AKDT    1234 SuperTag
      180  2013-09-07 19:30:00 AKDT    1234 SuperTag
      181  2013-09-07 20:00:00 AKDT    1234 SuperTag
      182  2013-09-07 20:15:00 AKDT    1234 SuperTag
      183  2013-09-07 20:30:00 AKDT    1234 SuperTag
      184  2013-09-07 21:00:00 AKDT    1234 SuperTag
      185  2013-09-07 21:15:00 AKDT    1234 SuperTag
      186  2013-09-07 21:30:00 AKDT    1234 SuperTag
      187  2013-09-07 22:00:00 AKDT    1234 SuperTag
      188  2013-09-07 22:15:00 AKDT    1234 SuperTag
      189  2013-09-07 22:30:00 AKDT    1234 SuperTag
      190  2013-09-07 23:00:00 AKDT    1234 SuperTag
      191  2013-09-07 23:15:00 AKDT    1234 SuperTag
      192  2013-09-07 23:30:00 AKDT    1234 SuperTag
      193  2013-09-08 00:00:00 AKDT    1234 SuperTag
      194  2013-09-08 00:15:00 AKDT    1234 SuperTag
      195  2013-09-08 00:30:00 AKDT    1234 SuperTag
      196  2013-09-08 01:00:00 AKDT    1234 SuperTag
      197  2013-09-08 01:15:00 AKDT    1234 SuperTag
      198  2013-09-08 01:30:00 AKDT    1234 SuperTag
      199  2013-09-08 02:00:00 AKDT    1234 SuperTag
      200  2013-09-08 02:15:00 AKDT    1234 SuperTag
      201  2013-09-08 02:30:00 AKDT    1234 SuperTag
      202  2013-09-08 03:00:00 AKDT    1234 SuperTag
      203  2013-09-08 03:15:00 AKDT    1234 SuperTag
      204  2013-09-08 03:30:00 AKDT    1234 SuperTag
      205  2013-09-08 04:00:00 AKDT    1234 SuperTag
      206  2013-09-08 04:15:00 AKDT    1234 SuperTag
      207  2013-09-08 04:30:00 AKDT    1234 SuperTag
      208  2013-09-08 05:00:00 AKDT    1234 SuperTag
      209  2013-09-08 05:15:00 AKDT    1234 SuperTag
      210  2013-09-08 05:30:00 AKDT    1234 SuperTag
      211  2013-09-08 06:00:00 AKDT    1234 SuperTag
      212  2013-09-08 06:15:00 AKDT    1234 SuperTag
      213  2013-09-08 06:30:00 AKDT    1234 SuperTag
      214  2013-09-08 07:00:00 AKDT    1234 SuperTag
      215  2013-09-08 07:15:00 AKDT    1234 SuperTag
      216  2013-09-08 07:30:00 AKDT    1234 SuperTag
      217  2013-09-08 08:00:00 AKDT    1234 SuperTag
      218  2013-09-08 08:15:00 AKDT    1234 SuperTag
      219  2013-09-08 08:30:00 AKDT    1234 SuperTag
      220  2013-09-08 09:00:00 AKDT    1234 SuperTag
      221  2013-09-08 09:15:00 AKDT    1234 SuperTag
      222  2013-09-08 09:30:00 AKDT    1234 SuperTag
      223  2013-09-08 10:00:00 AKDT    1234 SuperTag
      224  2013-09-08 10:15:00 AKDT    1234 SuperTag
      225  2013-09-08 10:30:00 AKDT    1234 SuperTag
      226  2013-09-08 11:00:00 AKDT    1234 SuperTag
      227  2013-09-08 11:15:00 AKDT    1234 SuperTag
      228  2013-09-08 11:30:00 AKDT    1234 SuperTag
      229  2013-09-08 12:00:00 AKDT    1234 SuperTag
      230  2013-09-08 12:15:00 AKDT    1234 SuperTag
      231  2013-09-08 12:30:00 AKDT    1234 SuperTag
      232  2013-09-08 13:00:00 AKDT    1234 SuperTag
      233  2013-09-08 13:15:00 AKDT    1234 SuperTag
      234  2013-09-08 13:30:00 AKDT    1234 SuperTag
      235  2013-09-08 14:00:00 AKDT    1234 SuperTag
      236  2013-09-08 14:15:00 AKDT    1234 SuperTag
      237  2013-09-08 14:30:00 AKDT    1234 SuperTag
      238  2013-09-08 15:00:00 AKDT    1234 SuperTag
      239  2013-09-08 15:15:00 AKDT    1234 SuperTag
      240  2013-09-08 15:30:00 AKDT    1234 SuperTag
      241  2013-09-08 16:15:00 AKDT    1234 SuperTag
      242  2013-09-08 16:45:00 AKDT    1234 SuperTag
      243  2013-09-08 17:15:00 AKDT    1234 SuperTag
      244  2013-09-08 17:45:00 AKDT    1234 SuperTag
      245  2013-09-08 18:15:00 AKDT    1234 SuperTag
      246  2013-09-08 18:45:00 AKDT    1234 SuperTag
      247  2013-09-08 19:15:00 AKDT    1234 SuperTag
      248  2013-09-08 19:45:00 AKDT    1234 SuperTag
      249  2013-09-08 20:15:00 AKDT    1234 SuperTag
      250  2013-09-08 20:45:00 AKDT    1234 SuperTag
      251  2013-09-08 21:15:00 AKDT    1234 SuperTag
      252  2013-09-08 21:45:00 AKDT    1234 SuperTag
      253  2013-09-08 22:15:00 AKDT    1234 SuperTag
      254  2013-09-08 22:45:00 AKDT    1234 SuperTag
      255  2013-09-08 23:15:00 AKDT    1234 SuperTag
      256  2013-09-08 23:45:00 AKDT    1234 SuperTag
      257  2013-09-09 00:15:00 AKDT    1234 SuperTag
      258  2013-09-09 00:45:00 AKDT    1234 SuperTag
      259  2013-09-09 01:15:00 AKDT    1234 SuperTag
      260  2013-09-09 01:45:00 AKDT    1234 SuperTag
      261  2013-09-09 02:15:00 AKDT    1234 SuperTag
      262  2013-09-09 02:45:00 AKDT    1234 SuperTag
      263  2013-09-09 03:15:00 AKDT    1234 SuperTag
      264  2013-09-09 03:45:00 AKDT    1234 SuperTag
      265  2013-09-09 04:15:00 AKDT    1234 SuperTag
      266  2013-09-09 04:45:00 AKDT    1234 SuperTag
      267  2013-09-09 05:15:00 AKDT    1234 SuperTag
      268  2013-09-09 05:45:00 AKDT    1234 SuperTag
      269  2013-09-09 06:15:00 AKDT    1234 SuperTag
      270  2013-09-09 06:45:00 AKDT    1234 SuperTag
      271  2013-09-09 07:15:00 AKDT    1234 SuperTag
      272  2013-09-09 07:45:00 AKDT    1234 SuperTag
      273  2013-09-09 08:15:00 AKDT    1234 SuperTag
      274  2013-09-09 08:45:00 AKDT    1234 SuperTag
      275  2013-09-09 09:15:00 AKDT    1234 SuperTag
      276  2013-09-09 09:45:00 AKDT    1234 SuperTag
      277  2013-09-09 10:15:00 AKDT    1234 SuperTag
      278  2013-09-09 10:45:00 AKDT    1234 SuperTag
      279  2013-09-09 11:15:00 AKDT    1234 SuperTag
      280  2013-09-09 11:45:00 AKDT    1234 SuperTag
      281  2013-09-09 12:15:00 AKDT    1234 SuperTag
      282  2013-09-09 12:45:00 AKDT    1234 SuperTag
      283  2013-09-09 13:15:00 AKDT    1234 SuperTag
      284  2013-09-09 13:45:00 AKDT    1234 SuperTag
      285  2013-09-09 14:15:00 AKDT    1234 SuperTag
      286  2013-09-09 14:45:00 AKDT    1234 SuperTag
      287  2013-09-09 15:15:00 AKDT    1234 SuperTag
      288  2013-09-09 15:45:00 AKDT    1234 SuperTag
      289  2013-09-09 16:00:00 AKDT    1234 SuperTag
      290  2013-09-09 16:15:00 AKDT    1234 SuperTag
      291  2013-09-09 16:30:00 AKDT    1234 SuperTag
      292  2013-09-09 17:00:00 AKDT    1234 SuperTag
      293  2013-09-09 17:15:00 AKDT    1234 SuperTag
      294  2013-09-09 17:30:00 AKDT    1234 SuperTag
      295  2013-09-09 18:00:00 AKDT    1234 SuperTag
      296  2013-09-09 18:15:00 AKDT    1234 SuperTag
      297  2013-09-09 18:30:00 AKDT    1234 SuperTag
      298  2013-09-09 19:00:00 AKDT    1234 SuperTag
      299  2013-09-09 19:15:00 AKDT    1234 SuperTag
      300  2013-09-09 19:30:00 AKDT    1234 SuperTag
      301  2013-09-09 20:00:00 AKDT    1234 SuperTag
      302  2013-09-09 20:15:00 AKDT    1234 SuperTag
      303  2013-09-09 20:30:00 AKDT    1234 SuperTag
      304  2013-09-09 21:00:00 AKDT    1234 SuperTag
      305  2013-09-09 21:15:00 AKDT    1234 SuperTag
      306  2013-09-09 21:30:00 AKDT    1234 SuperTag
      307  2013-09-09 22:00:00 AKDT    1234 SuperTag
      308  2013-09-09 22:15:00 AKDT    1234 SuperTag
      309  2013-09-09 22:30:00 AKDT    1234 SuperTag
      310  2013-09-09 23:00:00 AKDT    1234 SuperTag
      311  2013-09-09 23:15:00 AKDT    1234 SuperTag
      312  2013-09-09 23:30:00 AKDT    1234 SuperTag
      313  2013-09-10 00:00:00 AKDT    1234 SuperTag
      314  2013-09-10 00:15:00 AKDT    1234 SuperTag
      315  2013-09-10 00:30:00 AKDT    1234 SuperTag
      316  2013-09-10 01:00:00 AKDT    1234 SuperTag
      317  2013-09-10 01:15:00 AKDT    1234 SuperTag
      318  2013-09-10 01:30:00 AKDT    1234 SuperTag
      319  2013-09-10 02:00:00 AKDT    1234 SuperTag
      320  2013-09-10 02:15:00 AKDT    1234 SuperTag
      321  2013-09-10 02:30:00 AKDT    1234 SuperTag
      322  2013-09-10 03:00:00 AKDT    1234 SuperTag
      323  2013-09-10 03:15:00 AKDT    1234 SuperTag
      324  2013-09-10 03:30:00 AKDT    1234 SuperTag
      325  2013-09-10 04:00:00 AKDT    1234 SuperTag
      326  2013-09-10 04:15:00 AKDT    1234 SuperTag
      327  2013-09-10 04:30:00 AKDT    1234 SuperTag
      328  2013-09-10 05:00:00 AKDT    1234 SuperTag
      329  2013-09-10 05:15:00 AKDT    1234 SuperTag
      330  2013-09-10 05:30:00 AKDT    1234 SuperTag
      331  2013-09-10 06:00:00 AKDT    1234 SuperTag
      332  2013-09-10 06:15:00 AKDT    1234 SuperTag
      333  2013-09-10 06:30:00 AKDT    1234 SuperTag
      334  2013-09-10 07:00:00 AKDT    1234 SuperTag
      335  2013-09-10 07:15:00 AKDT    1234 SuperTag
      336  2013-09-10 07:30:00 AKDT    1234 SuperTag
      337  2013-09-10 08:00:00 AKDT    1234 SuperTag
      338  2013-09-10 08:15:00 AKDT    1234 SuperTag
      339  2013-09-10 08:30:00 AKDT    1234 SuperTag
      340  2013-09-10 09:00:00 AKDT    1234 SuperTag
      341  2013-09-10 09:15:00 AKDT    1234 SuperTag
      342  2013-09-10 09:30:00 AKDT    1234 SuperTag
      343  2013-09-10 10:00:00 AKDT    1234 SuperTag
      344  2013-09-10 10:15:00 AKDT    1234 SuperTag
      345  2013-09-10 10:30:00 AKDT    1234 SuperTag
      346  2013-09-10 11:00:00 AKDT    1234 SuperTag
      347  2013-09-10 11:15:00 AKDT    1234 SuperTag
      348  2013-09-10 11:30:00 AKDT    1234 SuperTag
      349  2013-09-10 12:00:00 AKDT    1234 SuperTag
      350  2013-09-10 12:15:00 AKDT    1234 SuperTag
      351  2013-09-10 12:30:00 AKDT    1234 SuperTag
      352  2013-09-10 13:00:00 AKDT    1234 SuperTag
      353  2013-09-10 13:15:00 AKDT    1234 SuperTag
      354  2013-09-10 13:30:00 AKDT    1234 SuperTag
      355  2013-09-10 14:00:00 AKDT    1234 SuperTag
      356  2013-09-10 14:15:00 AKDT    1234 SuperTag
      357  2013-09-10 14:30:00 AKDT    1234 SuperTag
      358  2013-09-10 15:00:00 AKDT    1234 SuperTag
      359  2013-09-10 15:15:00 AKDT    1234 SuperTag
      360  2013-09-10 15:30:00 AKDT    1234 SuperTag
      361  2013-09-10 16:00:00 AKDT    1234 SuperTag
      362  2013-09-10 16:15:00 AKDT    1234 SuperTag
      363  2013-09-10 16:30:00 AKDT    1234 SuperTag
      364  2013-09-10 17:00:00 AKDT    1234 SuperTag
      365  2013-09-10 17:15:00 AKDT    1234 SuperTag
      366  2013-09-10 17:30:00 AKDT    1234 SuperTag
      367  2013-09-10 18:00:00 AKDT    1234 SuperTag
      368  2013-09-10 18:15:00 AKDT    1234 SuperTag
      369  2013-09-10 18:30:00 AKDT    1234 SuperTag
      370  2013-09-10 19:00:00 AKDT    1234 SuperTag
      371  2013-09-10 19:15:00 AKDT    1234 SuperTag
      372  2013-09-10 19:30:00 AKDT    1234 SuperTag
      373  2013-09-10 20:00:00 AKDT    1234 SuperTag
      374  2013-09-10 20:15:00 AKDT    1234 SuperTag
      375  2013-09-10 20:30:00 AKDT    1234 SuperTag
      376  2013-09-10 21:00:00 AKDT    1234 SuperTag
      377  2013-09-10 21:15:00 AKDT    1234 SuperTag
      378  2013-09-10 21:30:00 AKDT    1234 SuperTag
      379  2013-09-10 22:00:00 AKDT    1234 SuperTag
      380  2013-09-10 22:15:00 AKDT    1234 SuperTag
      381  2013-09-10 22:30:00 AKDT    1234 SuperTag
      382  2013-09-10 23:00:00 AKDT    1234 SuperTag
      383  2013-09-10 23:15:00 AKDT    1234 SuperTag
      384  2013-09-10 23:30:00 AKDT    1234 SuperTag
      385  2013-09-11 00:00:00 AKDT    1234 SuperTag
      386  2013-09-11 00:15:00 AKDT    1234 SuperTag
      387  2013-09-11 00:30:00 AKDT    1234 SuperTag
      388  2013-09-11 01:00:00 AKDT    1234 SuperTag
      389  2013-09-11 01:15:00 AKDT    1234 SuperTag
      390  2013-09-11 01:30:00 AKDT    1234 SuperTag
      391  2013-09-11 02:00:00 AKDT    1234 SuperTag
      392  2013-09-11 02:15:00 AKDT    1234 SuperTag
      393  2013-09-11 02:30:00 AKDT    1234 SuperTag
      394  2013-09-11 03:00:00 AKDT    1234 SuperTag
      395  2013-09-11 03:15:00 AKDT    1234 SuperTag
      396  2013-09-11 03:30:00 AKDT    1234 SuperTag
      397  2013-09-11 04:00:00 AKDT    1234 SuperTag
      398  2013-09-11 04:15:00 AKDT    1234 SuperTag
      399  2013-09-11 04:30:00 AKDT    1234 SuperTag
      400  2013-09-11 05:00:00 AKDT    1234 SuperTag
      401  2013-09-11 05:15:00 AKDT    1234 SuperTag
      402  2013-09-11 05:30:00 AKDT    1234 SuperTag
      403  2013-09-11 06:00:00 AKDT    1234 SuperTag
      404  2013-09-11 06:15:00 AKDT    1234 SuperTag
      405  2013-09-11 06:30:00 AKDT    1234 SuperTag
      406  2013-09-11 07:00:00 AKDT    1234 SuperTag
      407  2013-09-11 07:15:00 AKDT    1234 SuperTag
      408  2013-09-11 07:30:00 AKDT    1234 SuperTag
      409  2013-09-11 08:00:00 AKDT    1234 SuperTag
      410  2013-09-11 08:15:00 AKDT    1234 SuperTag
      411  2013-09-11 08:30:00 AKDT    1234 SuperTag
      412  2013-09-11 09:00:00 AKDT    1234 SuperTag
      413  2013-09-11 09:15:00 AKDT    1234 SuperTag
      414  2013-09-11 09:30:00 AKDT    1234 SuperTag
      415  2013-09-11 10:00:00 AKDT    1234 SuperTag
      416  2013-09-11 10:15:00 AKDT    1234 SuperTag
      417  2013-09-11 10:30:00 AKDT    1234 SuperTag
      418  2013-09-11 11:00:00 AKDT    1234 SuperTag
      419  2013-09-11 11:15:00 AKDT    1234 SuperTag
      420  2013-09-11 11:30:00 AKDT    1234 SuperTag
      421  2013-09-11 12:00:00 AKDT    1234 SuperTag
      422  2013-09-11 12:15:00 AKDT    1234 SuperTag
      423  2013-09-11 12:30:00 AKDT    1234 SuperTag
      424  2013-09-11 13:00:00 AKDT    1234 SuperTag
      425  2013-09-11 13:15:00 AKDT    1234 SuperTag
      426  2013-09-11 13:30:00 AKDT    1234 SuperTag
      427  2013-09-11 14:00:00 AKDT    1234 SuperTag
      428  2013-09-11 14:15:00 AKDT    1234 SuperTag
      429  2013-09-11 14:30:00 AKDT    1234 SuperTag
      430  2013-09-11 15:00:00 AKDT    1234 SuperTag
      431  2013-09-11 15:15:00 AKDT    1234 SuperTag
      432  2013-09-11 15:30:00 AKDT    1234 SuperTag
      433  2013-09-12 16:15:00 AKDT    1234 SuperTag
      434  2013-09-12 16:45:00 AKDT    1234 SuperTag
      435  2013-09-12 17:15:00 AKDT    1234 SuperTag
      436  2013-09-12 17:45:00 AKDT    1234 SuperTag
      437  2013-09-12 18:15:00 AKDT    1234 SuperTag
      438  2013-09-12 18:45:00 AKDT    1234 SuperTag
      439  2013-09-12 19:15:00 AKDT    1234 SuperTag
      440  2013-09-12 19:45:00 AKDT    1234 SuperTag
      441  2013-09-12 20:15:00 AKDT    1234 SuperTag
      442  2013-09-12 20:45:00 AKDT    1234 SuperTag
      443  2013-09-12 21:15:00 AKDT    1234 SuperTag
      444  2013-09-12 21:45:00 AKDT    1234 SuperTag
      445  2013-09-12 22:15:00 AKDT    1234 SuperTag
      446  2013-09-12 22:45:00 AKDT    1234 SuperTag
      447  2013-09-12 23:15:00 AKDT    1234 SuperTag
      448  2013-09-12 23:45:00 AKDT    1234 SuperTag
      449  2013-09-13 00:15:00 AKDT    1234 SuperTag
      450  2013-09-13 00:45:00 AKDT    1234 SuperTag
      451  2013-09-13 01:15:00 AKDT    1234 SuperTag
      452  2013-09-13 01:45:00 AKDT    1234 SuperTag
      453  2013-09-13 02:15:00 AKDT    1234 SuperTag
      454  2013-09-13 02:45:00 AKDT    1234 SuperTag
      455  2013-09-13 03:15:00 AKDT    1234 SuperTag
      456  2013-09-13 03:45:00 AKDT    1234 SuperTag
      457  2013-09-13 04:15:00 AKDT    1234 SuperTag
      458  2013-09-13 04:45:00 AKDT    1234 SuperTag
      459  2013-09-13 05:15:00 AKDT    1234 SuperTag
      460  2013-09-13 05:45:00 AKDT    1234 SuperTag
      461  2013-09-13 06:15:00 AKDT    1234 SuperTag
      462  2013-09-13 06:45:00 AKDT    1234 SuperTag
      463  2013-09-13 07:15:00 AKDT    1234 SuperTag
      464  2013-09-13 07:45:00 AKDT    1234 SuperTag
      465  2013-09-13 08:15:00 AKDT    1234 SuperTag
      466  2013-09-13 08:45:00 AKDT    1234 SuperTag
      467  2013-09-13 09:15:00 AKDT    1234 SuperTag
      468  2013-09-13 09:45:00 AKDT    1234 SuperTag
      469  2013-09-13 10:15:00 AKDT    1234 SuperTag
      470  2013-09-13 10:45:00 AKDT    1234 SuperTag
      471  2013-09-13 11:15:00 AKDT    1234 SuperTag
      472  2013-09-13 11:45:00 AKDT    1234 SuperTag
      473  2013-09-13 12:15:00 AKDT    1234 SuperTag
      474  2013-09-13 12:45:00 AKDT    1234 SuperTag
      475  2013-09-13 13:15:00 AKDT    1234 SuperTag
      476  2013-09-13 13:45:00 AKDT    1234 SuperTag
      477  2013-09-13 14:15:00 AKDT    1234 SuperTag
      478  2013-09-13 14:45:00 AKDT    1234 SuperTag
      479  2013-09-13 15:15:00 AKDT    1234 SuperTag
      480  2013-09-13 15:45:00 AKDT    1234 SuperTag
      481  2013-09-13 16:15:00 AKDT    1234 SuperTag
      482  2013-09-13 17:15:00 AKDT    1234 SuperTag
      483  2013-09-13 18:15:00 AKDT    1234 SuperTag
      484  2013-09-13 19:15:00 AKDT    1234 SuperTag
      485  2013-09-13 20:15:00 AKDT    1234 SuperTag
      486  2013-09-13 21:15:00 AKDT    1234 SuperTag
      487  2013-09-13 22:15:00 AKDT    1234 SuperTag
      488  2013-09-13 23:15:00 AKDT    1234 SuperTag
      489  2013-09-14 00:15:00 AKDT    1234 SuperTag
      490  2013-09-14 01:15:00 AKDT    1234 SuperTag
      491  2013-09-14 02:15:00 AKDT    1234 SuperTag
      492  2013-09-14 03:15:00 AKDT    1234 SuperTag
      493  2013-09-14 04:15:00 AKDT    1234 SuperTag
      494  2013-09-14 05:15:00 AKDT    1234 SuperTag
      495  2013-09-14 06:15:00 AKDT    1234 SuperTag
      496  2013-09-14 07:15:00 AKDT    1234 SuperTag
      497  2013-09-14 08:15:00 AKDT    1234 SuperTag
      498  2013-09-14 09:15:00 AKDT    1234 SuperTag
      499  2013-09-14 10:15:00 AKDT    1234 SuperTag
      500  2013-09-14 11:15:00 AKDT    1234 SuperTag
      501  2013-09-14 12:15:00 AKDT    1234 SuperTag
      502  2013-09-14 13:15:00 AKDT    1234 SuperTag
      503  2013-09-14 14:15:00 AKDT    1234 SuperTag
      504  2013-09-14 15:15:00 AKDT    1234 SuperTag
      505  2013-09-14 16:00:00 AKDT    1234 SuperTag
      506  2013-09-14 16:45:00 AKDT    1234 SuperTag
      507  2013-09-14 17:00:00 AKDT    1234 SuperTag
      508  2013-09-14 17:45:00 AKDT    1234 SuperTag
      509  2013-09-14 18:00:00 AKDT    1234 SuperTag
      510  2013-09-14 18:45:00 AKDT    1234 SuperTag
      511  2013-09-14 19:00:00 AKDT    1234 SuperTag
      512  2013-09-14 19:45:00 AKDT    1234 SuperTag
      513  2013-09-14 20:00:00 AKDT    1234 SuperTag
      514  2013-09-14 20:45:00 AKDT    1234 SuperTag
      515  2013-09-14 21:00:00 AKDT    1234 SuperTag
      516  2013-09-14 21:45:00 AKDT    1234 SuperTag
      517  2013-09-14 22:00:00 AKDT    1234 SuperTag
      518  2013-09-14 22:45:00 AKDT    1234 SuperTag
      519  2013-09-14 23:00:00 AKDT    1234 SuperTag
      520  2013-09-14 23:45:00 AKDT    1234 SuperTag
      521  2013-09-15 00:00:00 AKDT    1234 SuperTag
      522  2013-09-15 00:45:00 AKDT    1234 SuperTag
      523  2013-09-15 01:00:00 AKDT    1234 SuperTag
      524  2013-09-15 01:45:00 AKDT    1234 SuperTag
      525  2013-09-15 02:00:00 AKDT    1234 SuperTag
      526  2013-09-15 02:45:00 AKDT    1234 SuperTag
      527  2013-09-15 03:00:00 AKDT    1234 SuperTag
      528  2013-09-15 03:45:00 AKDT    1234 SuperTag
      529  2013-09-15 04:00:00 AKDT    1234 SuperTag
      530  2013-09-15 04:45:00 AKDT    1234 SuperTag
      531  2013-09-15 05:00:00 AKDT    1234 SuperTag
      532  2013-09-15 05:45:00 AKDT    1234 SuperTag
      533  2013-09-15 06:00:00 AKDT    1234 SuperTag
      534  2013-09-15 06:45:00 AKDT    1234 SuperTag
      535  2013-09-15 07:00:00 AKDT    1234 SuperTag
      536  2013-09-15 07:45:00 AKDT    1234 SuperTag
      537  2013-09-15 08:00:00 AKDT    1234 SuperTag
      538  2013-09-15 08:45:00 AKDT    1234 SuperTag
      539  2013-09-15 09:00:00 AKDT    1234 SuperTag
      540  2013-09-15 09:45:00 AKDT    1234 SuperTag
      541  2013-09-15 10:00:00 AKDT    1234 SuperTag
      542  2013-09-15 10:45:00 AKDT    1234 SuperTag
      543  2013-09-15 11:00:00 AKDT    1234 SuperTag
      544  2013-09-15 11:45:00 AKDT    1234 SuperTag
      545  2013-09-15 12:00:00 AKDT    1234 SuperTag
      546  2013-09-15 12:45:00 AKDT    1234 SuperTag
      547  2013-09-15 13:00:00 AKDT    1234 SuperTag
      548  2013-09-15 13:45:00 AKDT    1234 SuperTag
      549  2013-09-15 14:00:00 AKDT    1234 SuperTag
      550  2013-09-15 14:45:00 AKDT    1234 SuperTag
      551  2013-09-15 15:00:00 AKDT    1234 SuperTag
      552  2013-09-15 15:45:00 AKDT    1234 SuperTag
      553  2013-09-15 16:15:00 AKDT    1234 SuperTag
      554  2013-09-15 16:45:00 AKDT    1234 SuperTag
      555  2013-09-15 17:15:00 AKDT    1234 SuperTag
      556  2013-09-15 17:45:00 AKDT    1234 SuperTag
      557  2013-09-15 18:15:00 AKDT    1234 SuperTag
      558  2013-09-15 18:45:00 AKDT    1234 SuperTag
      559  2013-09-15 19:15:00 AKDT    1234 SuperTag
      560  2013-09-15 19:45:00 AKDT    1234 SuperTag
      561  2013-09-15 20:15:00 AKDT    1234 SuperTag
      562  2013-09-15 20:45:00 AKDT    1234 SuperTag
      563  2013-09-15 21:15:00 AKDT    1234 SuperTag
      564  2013-09-15 21:45:00 AKDT    1234 SuperTag
      565  2013-09-15 22:15:00 AKDT    1234 SuperTag
      566  2013-09-15 22:45:00 AKDT    1234 SuperTag
      567  2013-09-15 23:15:00 AKDT    1234 SuperTag
      568  2013-09-15 23:45:00 AKDT    1234 SuperTag
      569  2013-09-16 00:15:00 AKDT    1234 SuperTag
      570  2013-09-16 00:45:00 AKDT    1234 SuperTag
      571  2013-09-16 01:15:00 AKDT    1234 SuperTag
      572  2013-09-16 01:45:00 AKDT    1234 SuperTag
      573  2013-09-16 02:15:00 AKDT    1234 SuperTag
      574  2013-09-16 02:45:00 AKDT    1234 SuperTag
      575  2013-09-16 03:15:00 AKDT    1234 SuperTag
      576  2013-09-16 03:45:00 AKDT    1234 SuperTag
      577  2013-09-16 04:15:00 AKDT    1234 SuperTag
      578  2013-09-16 04:45:00 AKDT    1234 SuperTag
      579  2013-09-16 05:15:00 AKDT    1234 SuperTag
      580  2013-09-16 05:45:00 AKDT    1234 SuperTag
      581  2013-09-16 06:15:00 AKDT    1234 SuperTag
      582  2013-09-16 06:45:00 AKDT    1234 SuperTag
      583  2013-09-16 07:15:00 AKDT    1234 SuperTag
      584  2013-09-16 07:45:00 AKDT    1234 SuperTag
      585  2013-09-16 08:15:00 AKDT    1234 SuperTag
      586  2013-09-16 08:45:00 AKDT    1234 SuperTag
      587  2013-09-16 09:15:00 AKDT    1234 SuperTag
      588  2013-09-16 09:45:00 AKDT    1234 SuperTag
      589  2013-09-16 10:15:00 AKDT    1234 SuperTag
      590  2013-09-16 10:45:00 AKDT    1234 SuperTag
      591  2013-09-16 11:15:00 AKDT    1234 SuperTag
      592  2013-09-16 11:45:00 AKDT    1234 SuperTag
      593  2013-09-16 12:15:00 AKDT    1234 SuperTag
      594  2013-09-16 12:45:00 AKDT    1234 SuperTag
      595  2013-09-16 13:15:00 AKDT    1234 SuperTag
      596  2013-09-16 13:45:00 AKDT    1234 SuperTag
      597  2013-09-16 14:15:00 AKDT    1234 SuperTag
      598  2013-09-16 14:45:00 AKDT    1234 SuperTag
      599  2013-09-16 15:15:00 AKDT    1234 SuperTag
      600  2013-09-16 15:45:00 AKDT    1234 SuperTag
      601  2013-09-16 16:00:00 AKDT    1234 SuperTag
      602  2013-09-16 16:30:00 AKDT    1234 SuperTag
      603  2013-09-16 16:45:00 AKDT    1234 SuperTag
      604  2013-09-16 17:00:00 AKDT    1234 SuperTag
      605  2013-09-16 17:30:00 AKDT    1234 SuperTag
      606  2013-09-16 17:45:00 AKDT    1234 SuperTag
      607  2013-09-16 18:00:00 AKDT    1234 SuperTag
      608  2013-09-16 18:30:00 AKDT    1234 SuperTag
      609  2013-09-16 18:45:00 AKDT    1234 SuperTag
      610  2013-09-16 19:00:00 AKDT    1234 SuperTag
      611  2013-09-16 19:30:00 AKDT    1234 SuperTag
      612  2013-09-16 19:45:00 AKDT    1234 SuperTag
      613  2013-09-16 20:00:00 AKDT    1234 SuperTag
      614  2013-09-16 20:30:00 AKDT    1234 SuperTag
      615  2013-09-16 20:45:00 AKDT    1234 SuperTag
      616  2013-09-16 21:00:00 AKDT    1234 SuperTag
      617  2013-09-16 21:30:00 AKDT    1234 SuperTag
      618  2013-09-16 21:45:00 AKDT    1234 SuperTag
      619  2013-09-16 22:00:00 AKDT    1234 SuperTag
      620  2013-09-16 22:30:00 AKDT    1234 SuperTag
      621  2013-09-16 22:45:00 AKDT    1234 SuperTag
      622  2013-09-16 23:00:00 AKDT    1234 SuperTag
      623  2013-09-16 23:30:00 AKDT    1234 SuperTag
      624  2013-09-16 23:45:00 AKDT    1234 SuperTag
      625  2013-09-17 00:00:00 AKDT    1234 SuperTag
      626  2013-09-17 00:30:00 AKDT    1234 SuperTag
      627  2013-09-17 00:45:00 AKDT    1234 SuperTag
      628  2013-09-17 01:00:00 AKDT    1234 SuperTag
      629  2013-09-17 01:30:00 AKDT    1234 SuperTag
      630  2013-09-17 01:45:00 AKDT    1234 SuperTag
      631  2013-09-17 02:00:00 AKDT    1234 SuperTag
      632  2013-09-17 02:30:00 AKDT    1234 SuperTag
      633  2013-09-17 02:45:00 AKDT    1234 SuperTag
      634  2013-09-17 03:00:00 AKDT    1234 SuperTag
      635  2013-09-17 03:30:00 AKDT    1234 SuperTag
      636  2013-09-17 03:45:00 AKDT    1234 SuperTag
      637  2013-09-17 04:00:00 AKDT    1234 SuperTag
      638  2013-09-17 04:30:00 AKDT    1234 SuperTag
      639  2013-09-17 04:45:00 AKDT    1234 SuperTag
      640  2013-09-17 05:00:00 AKDT    1234 SuperTag
      641  2013-09-17 05:30:00 AKDT    1234 SuperTag
      642  2013-09-17 05:45:00 AKDT    1234 SuperTag
      643  2013-09-17 06:00:00 AKDT    1234 SuperTag
      644  2013-09-17 06:30:00 AKDT    1234 SuperTag
      645  2013-09-17 06:45:00 AKDT    1234 SuperTag
      646  2013-09-17 07:00:00 AKDT    1234 SuperTag
      647  2013-09-17 07:30:00 AKDT    1234 SuperTag
      648  2013-09-17 07:45:00 AKDT    1234 SuperTag
      649  2013-09-17 08:00:00 AKDT    1234 SuperTag
      650  2013-09-17 08:30:00 AKDT    1234 SuperTag
      651  2013-09-17 08:45:00 AKDT    1234 SuperTag
      652  2013-09-17 09:00:00 AKDT    1234 SuperTag
      653  2013-09-17 09:30:00 AKDT    1234 SuperTag
      654  2013-09-17 09:45:00 AKDT    1234 SuperTag
      655  2013-09-17 10:00:00 AKDT    1234 SuperTag
      656  2013-09-17 10:30:00 AKDT    1234 SuperTag
      657  2013-09-17 10:45:00 AKDT    1234 SuperTag
      658  2013-09-17 11:00:00 AKDT    1234 SuperTag
      659  2013-09-17 11:30:00 AKDT    1234 SuperTag
      660  2013-09-17 11:45:00 AKDT    1234 SuperTag
      661  2013-09-17 12:00:00 AKDT    1234 SuperTag
      662  2013-09-17 12:30:00 AKDT    1234 SuperTag
      663  2013-09-17 12:45:00 AKDT    1234 SuperTag
      664  2013-09-17 13:00:00 AKDT    1234 SuperTag
      665  2013-09-17 13:30:00 AKDT    1234 SuperTag
      666  2013-09-17 13:45:00 AKDT    1234 SuperTag
      667  2013-09-17 14:00:00 AKDT    1234 SuperTag
      668  2013-09-17 14:30:00 AKDT    1234 SuperTag
      669  2013-09-17 14:45:00 AKDT    1234 SuperTag
      670  2013-09-17 15:00:00 AKDT    1234 SuperTag
      671  2013-09-17 15:30:00 AKDT    1234 SuperTag
      672  2013-09-17 15:45:00 AKDT    1234 SuperTag
      673  2013-09-17 16:00:00 AKDT    1234 SuperTag
      674  2013-09-17 16:15:00 AKDT    1234 SuperTag
      675  2013-09-17 16:30:00 AKDT    1234 SuperTag
      676  2013-09-17 17:00:00 AKDT    1234 SuperTag
      677  2013-09-17 17:15:00 AKDT    1234 SuperTag
      678  2013-09-17 17:30:00 AKDT    1234 SuperTag
      679  2013-09-17 18:00:00 AKDT    1234 SuperTag
      680  2013-09-17 18:15:00 AKDT    1234 SuperTag
      681  2013-09-17 18:30:00 AKDT    1234 SuperTag
      682  2013-09-17 19:00:00 AKDT    1234 SuperTag
      683  2013-09-17 19:15:00 AKDT    1234 SuperTag
      684  2013-09-17 19:30:00 AKDT    1234 SuperTag
      685  2013-09-17 20:00:00 AKDT    1234 SuperTag
      686  2013-09-17 20:15:00 AKDT    1234 SuperTag
      687  2013-09-17 20:30:00 AKDT    1234 SuperTag
      688  2013-09-17 21:00:00 AKDT    1234 SuperTag
      689  2013-09-17 21:15:00 AKDT    1234 SuperTag
      690  2013-09-17 21:30:00 AKDT    1234 SuperTag
      691  2013-09-17 22:00:00 AKDT    1234 SuperTag
      692  2013-09-17 22:15:00 AKDT    1234 SuperTag
      693  2013-09-17 22:30:00 AKDT    1234 SuperTag
      694  2013-09-17 23:00:00 AKDT    1234 SuperTag
      695  2013-09-17 23:15:00 AKDT    1234 SuperTag
      696  2013-09-17 23:30:00 AKDT    1234 SuperTag
      697  2013-09-18 00:00:00 AKDT    1234 SuperTag
      698  2013-09-18 00:15:00 AKDT    1234 SuperTag
      699  2013-09-18 00:30:00 AKDT    1234 SuperTag
      700  2013-09-18 01:00:00 AKDT    1234 SuperTag
      701  2013-09-18 01:15:00 AKDT    1234 SuperTag
      702  2013-09-18 01:30:00 AKDT    1234 SuperTag
      703  2013-09-18 02:00:00 AKDT    1234 SuperTag
      704  2013-09-18 02:15:00 AKDT    1234 SuperTag
      705  2013-09-18 02:30:00 AKDT    1234 SuperTag
      706  2013-09-18 03:00:00 AKDT    1234 SuperTag
      707  2013-09-18 03:15:00 AKDT    1234 SuperTag
      708  2013-09-18 03:30:00 AKDT    1234 SuperTag
      709  2013-09-18 04:00:00 AKDT    1234 SuperTag
      710  2013-09-18 04:15:00 AKDT    1234 SuperTag
      711  2013-09-18 04:30:00 AKDT    1234 SuperTag
      712  2013-09-18 05:00:00 AKDT    1234 SuperTag
      713  2013-09-18 05:15:00 AKDT    1234 SuperTag
      714  2013-09-18 05:30:00 AKDT    1234 SuperTag
      715  2013-09-18 06:00:00 AKDT    1234 SuperTag
      716  2013-09-18 06:15:00 AKDT    1234 SuperTag
      717  2013-09-18 06:30:00 AKDT    1234 SuperTag
      718  2013-09-18 07:00:00 AKDT    1234 SuperTag
      719  2013-09-18 07:15:00 AKDT    1234 SuperTag
      720  2013-09-18 07:30:00 AKDT    1234 SuperTag
      721  2013-09-18 08:00:00 AKDT    1234 SuperTag
      722  2013-09-18 08:15:00 AKDT    1234 SuperTag
      723  2013-09-18 08:30:00 AKDT    1234 SuperTag
      724  2013-09-18 09:00:00 AKDT    1234 SuperTag
      725  2013-09-18 09:15:00 AKDT    1234 SuperTag
      726  2013-09-18 09:30:00 AKDT    1234 SuperTag
      727  2013-09-18 10:00:00 AKDT    1234 SuperTag
      728  2013-09-18 10:15:00 AKDT    1234 SuperTag
      729  2013-09-18 10:30:00 AKDT    1234 SuperTag
      730  2013-09-18 11:00:00 AKDT    1234 SuperTag
      731  2013-09-18 11:15:00 AKDT    1234 SuperTag
      732  2013-09-18 11:30:00 AKDT    1234 SuperTag
      733  2013-09-18 12:00:00 AKDT    1234 SuperTag
      734  2013-09-18 12:15:00 AKDT    1234 SuperTag
      735  2013-09-18 12:30:00 AKDT    1234 SuperTag
      736  2013-09-18 13:00:00 AKDT    1234 SuperTag
      737  2013-09-18 13:15:00 AKDT    1234 SuperTag
      738  2013-09-18 13:30:00 AKDT    1234 SuperTag
      739  2013-09-18 14:00:00 AKDT    1234 SuperTag
      740  2013-09-18 14:15:00 AKDT    1234 SuperTag
      741  2013-09-18 14:30:00 AKDT    1234 SuperTag
      742  2013-09-18 15:00:00 AKDT    1234 SuperTag
      743  2013-09-18 15:15:00 AKDT    1234 SuperTag
      744  2013-09-18 15:30:00 AKDT    1234 SuperTag
      745  2013-09-18 16:00:00 AKDT    1234 SuperTag
      746  2013-09-18 16:15:00 AKDT    1234 SuperTag
      747  2013-09-18 16:30:00 AKDT    1234 SuperTag
      748  2013-09-18 17:00:00 AKDT    1234 SuperTag
      749  2013-09-18 17:15:00 AKDT    1234 SuperTag
      750  2013-09-18 17:30:00 AKDT    1234 SuperTag
      751  2013-09-18 18:00:00 AKDT    1234 SuperTag
      752  2013-09-18 18:15:00 AKDT    1234 SuperTag
      753  2013-09-18 18:30:00 AKDT    1234 SuperTag
      754  2013-09-18 19:00:00 AKDT    1234 SuperTag
      755  2013-09-18 19:15:00 AKDT    1234 SuperTag
      756  2013-09-18 19:30:00 AKDT    1234 SuperTag
      757  2013-09-18 20:00:00 AKDT    1234 SuperTag
      758  2013-09-18 20:15:00 AKDT    1234 SuperTag
      759  2013-09-18 20:30:00 AKDT    1234 SuperTag
      760  2013-09-18 21:00:00 AKDT    1234 SuperTag
      761  2013-09-18 21:15:00 AKDT    1234 SuperTag
      762  2013-09-18 21:30:00 AKDT    1234 SuperTag
      763  2013-09-18 22:00:00 AKDT    1234 SuperTag
      764  2013-09-18 22:15:00 AKDT    1234 SuperTag
      765  2013-09-18 22:30:00 AKDT    1234 SuperTag
      766  2013-09-18 23:00:00 AKDT    1234 SuperTag
      767  2013-09-18 23:15:00 AKDT    1234 SuperTag
      768  2013-09-18 23:30:00 AKDT    1234 SuperTag
      769  2013-09-19 00:00:00 AKDT    1234 SuperTag
      770  2013-09-19 00:15:00 AKDT    1234 SuperTag
      771  2013-09-19 00:30:00 AKDT    1234 SuperTag
      772  2013-09-19 01:00:00 AKDT    1234 SuperTag
      773  2013-09-19 01:15:00 AKDT    1234 SuperTag
      774  2013-09-19 01:30:00 AKDT    1234 SuperTag
      775  2013-09-19 02:00:00 AKDT    1234 SuperTag
      776  2013-09-19 02:15:00 AKDT    1234 SuperTag
      777  2013-09-19 02:30:00 AKDT    1234 SuperTag
      778  2013-09-19 03:00:00 AKDT    1234 SuperTag
      779  2013-09-19 03:15:00 AKDT    1234 SuperTag
      780  2013-09-19 03:30:00 AKDT    1234 SuperTag
      781  2013-09-19 04:00:00 AKDT    1234 SuperTag
      782  2013-09-19 04:15:00 AKDT    1234 SuperTag
      783  2013-09-19 04:30:00 AKDT    1234 SuperTag
      784  2013-09-19 05:00:00 AKDT    1234 SuperTag
      785  2013-09-19 05:15:00 AKDT    1234 SuperTag
      786  2013-09-19 05:30:00 AKDT    1234 SuperTag
      787  2013-09-19 06:00:00 AKDT    1234 SuperTag
      788  2013-09-19 06:15:00 AKDT    1234 SuperTag
      789  2013-09-19 06:30:00 AKDT    1234 SuperTag
      790  2013-09-19 07:00:00 AKDT    1234 SuperTag
      791  2013-09-19 07:15:00 AKDT    1234 SuperTag
      792  2013-09-19 07:30:00 AKDT    1234 SuperTag
      793  2013-09-19 08:00:00 AKDT    1234 SuperTag
      794  2013-09-19 08:15:00 AKDT    1234 SuperTag
      795  2013-09-19 08:30:00 AKDT    1234 SuperTag
      796  2013-09-19 09:00:00 AKDT    1234 SuperTag
      797  2013-09-19 09:15:00 AKDT    1234 SuperTag
      798  2013-09-19 09:30:00 AKDT    1234 SuperTag
      799  2013-09-19 10:00:00 AKDT    1234 SuperTag
      800  2013-09-19 10:15:00 AKDT    1234 SuperTag
      801  2013-09-19 10:30:00 AKDT    1234 SuperTag
      802  2013-09-19 11:00:00 AKDT    1234 SuperTag
      803  2013-09-19 11:15:00 AKDT    1234 SuperTag
      804  2013-09-19 11:30:00 AKDT    1234 SuperTag
      805  2013-09-19 12:00:00 AKDT    1234 SuperTag
      806  2013-09-19 12:15:00 AKDT    1234 SuperTag
      807  2013-09-19 12:30:00 AKDT    1234 SuperTag
      808  2013-09-19 13:00:00 AKDT    1234 SuperTag
      809  2013-09-19 13:15:00 AKDT    1234 SuperTag
      810  2013-09-19 13:30:00 AKDT    1234 SuperTag
      811  2013-09-19 14:00:00 AKDT    1234 SuperTag
      812  2013-09-19 14:15:00 AKDT    1234 SuperTag
      813  2013-09-19 14:30:00 AKDT    1234 SuperTag
      814  2013-09-19 15:00:00 AKDT    1234 SuperTag
      815  2013-09-19 15:15:00 AKDT    1234 SuperTag
      816  2013-09-19 15:30:00 AKDT    1234 SuperTag
      817  2013-09-19 16:30:00 AKDT    1234 SuperTag
      818  2013-09-19 16:45:00 AKDT    1234 SuperTag
      819  2013-09-19 17:30:00 AKDT    1234 SuperTag
      820  2013-09-19 17:45:00 AKDT    1234 SuperTag
      821  2013-09-19 18:30:00 AKDT    1234 SuperTag
      822  2013-09-19 18:45:00 AKDT    1234 SuperTag
      823  2013-09-19 19:30:00 AKDT    1234 SuperTag
      824  2013-09-19 19:45:00 AKDT    1234 SuperTag
      825  2013-09-19 20:30:00 AKDT    1234 SuperTag
      826  2013-09-19 20:45:00 AKDT    1234 SuperTag
      827  2013-09-19 21:30:00 AKDT    1234 SuperTag
      828  2013-09-19 21:45:00 AKDT    1234 SuperTag
      829  2013-09-19 22:30:00 AKDT    1234 SuperTag
      830  2013-09-19 22:45:00 AKDT    1234 SuperTag
      831  2013-09-19 23:30:00 AKDT    1234 SuperTag
      832  2013-09-19 23:45:00 AKDT    1234 SuperTag
      833  2013-09-20 00:30:00 AKDT    1234 SuperTag
      834  2013-09-20 00:45:00 AKDT    1234 SuperTag
      835  2013-09-20 01:30:00 AKDT    1234 SuperTag
      836  2013-09-20 01:45:00 AKDT    1234 SuperTag
      837  2013-09-20 02:30:00 AKDT    1234 SuperTag
      838  2013-09-20 02:45:00 AKDT    1234 SuperTag
      839  2013-09-20 03:30:00 AKDT    1234 SuperTag
      840  2013-09-20 03:45:00 AKDT    1234 SuperTag
      841  2013-09-20 04:30:00 AKDT    1234 SuperTag
      842  2013-09-20 04:45:00 AKDT    1234 SuperTag
      843  2013-09-20 05:30:00 AKDT    1234 SuperTag
      844  2013-09-20 05:45:00 AKDT    1234 SuperTag
      845  2013-09-20 06:30:00 AKDT    1234 SuperTag
      846  2013-09-20 06:45:00 AKDT    1234 SuperTag
      847  2013-09-20 07:30:00 AKDT    1234 SuperTag
      848  2013-09-20 07:45:00 AKDT    1234 SuperTag
      849  2013-09-20 08:30:00 AKDT    1234 SuperTag
      850  2013-09-20 08:45:00 AKDT    1234 SuperTag
      851  2013-09-20 09:30:00 AKDT    1234 SuperTag
      852  2013-09-20 09:45:00 AKDT    1234 SuperTag
      853  2013-09-20 10:30:00 AKDT    1234 SuperTag
      854  2013-09-20 10:45:00 AKDT    1234 SuperTag
      855  2013-09-20 11:30:00 AKDT    1234 SuperTag
      856  2013-09-20 11:45:00 AKDT    1234 SuperTag
      857  2013-09-20 12:30:00 AKDT    1234 SuperTag
      858  2013-09-20 12:45:00 AKDT    1234 SuperTag
      859  2013-09-20 13:30:00 AKDT    1234 SuperTag
      860  2013-09-20 13:45:00 AKDT    1234 SuperTag
      861  2013-09-20 14:30:00 AKDT    1234 SuperTag
      862  2013-09-20 14:45:00 AKDT    1234 SuperTag
      863  2013-09-20 15:30:00 AKDT    1234 SuperTag
      864  2013-09-20 15:45:00 AKDT    1234 SuperTag
      865  2013-09-20 16:00:00 AKDT    1234 SuperTag
      866  2013-09-20 16:15:00 AKDT    1234 SuperTag
      867  2013-09-20 16:30:00 AKDT    1234 SuperTag
      868  2013-09-20 17:00:00 AKDT    1234 SuperTag
      869  2013-09-20 17:15:00 AKDT    1234 SuperTag
      870  2013-09-20 17:30:00 AKDT    1234 SuperTag
      871  2013-09-20 18:00:00 AKDT    1234 SuperTag
      872  2013-09-20 18:15:00 AKDT    1234 SuperTag
      873  2013-09-20 18:30:00 AKDT    1234 SuperTag
      874  2013-09-20 19:00:00 AKDT    1234 SuperTag
      875  2013-09-20 19:15:00 AKDT    1234 SuperTag
      876  2013-09-20 19:30:00 AKDT    1234 SuperTag
      877  2013-09-20 20:00:00 AKDT    1234 SuperTag
      878  2013-09-20 20:15:00 AKDT    1234 SuperTag
      879  2013-09-20 20:30:00 AKDT    1234 SuperTag
      880  2013-09-20 21:00:00 AKDT    1234 SuperTag
      881  2013-09-20 21:15:00 AKDT    1234 SuperTag
      882  2013-09-20 21:30:00 AKDT    1234 SuperTag
      883  2013-09-20 22:00:00 AKDT    1234 SuperTag
      884  2013-09-20 22:15:00 AKDT    1234 SuperTag
      885  2013-09-20 22:30:00 AKDT    1234 SuperTag
      886  2013-09-20 23:00:00 AKDT    1234 SuperTag
      887  2013-09-20 23:15:00 AKDT    1234 SuperTag
      888  2013-09-20 23:30:00 AKDT    1234 SuperTag
      889  2013-09-21 00:00:00 AKDT    1234 SuperTag
      890  2013-09-21 00:15:00 AKDT    1234 SuperTag
      891  2013-09-21 00:30:00 AKDT    1234 SuperTag
      892  2013-09-21 01:00:00 AKDT    1234 SuperTag
      893  2013-09-21 01:15:00 AKDT    1234 SuperTag
      894  2013-09-21 01:30:00 AKDT    1234 SuperTag
      895  2013-09-21 02:00:00 AKDT    1234 SuperTag
      896  2013-09-21 02:15:00 AKDT    1234 SuperTag
      897  2013-09-21 02:30:00 AKDT    1234 SuperTag
      898  2013-09-21 03:00:00 AKDT    1234 SuperTag
      899  2013-09-21 03:15:00 AKDT    1234 SuperTag
      900  2013-09-21 03:30:00 AKDT    1234 SuperTag
      901  2013-09-21 04:00:00 AKDT    1234 SuperTag
      902  2013-09-21 04:15:00 AKDT    1234 SuperTag
      903  2013-09-21 04:30:00 AKDT    1234 SuperTag
      904  2013-09-21 05:00:00 AKDT    1234 SuperTag
      905  2013-09-21 05:15:00 AKDT    1234 SuperTag
      906  2013-09-21 05:30:00 AKDT    1234 SuperTag
      907  2013-09-21 06:00:00 AKDT    1234 SuperTag
      908  2013-09-21 06:15:00 AKDT    1234 SuperTag
      909  2013-09-21 06:30:00 AKDT    1234 SuperTag
      910  2013-09-21 07:00:00 AKDT    1234 SuperTag
      911  2013-09-21 07:15:00 AKDT    1234 SuperTag
      912  2013-09-21 07:30:00 AKDT    1234 SuperTag
      913  2013-09-21 08:00:00 AKDT    1234 SuperTag
      914  2013-09-21 08:15:00 AKDT    1234 SuperTag
      915  2013-09-21 08:30:00 AKDT    1234 SuperTag
      916  2013-09-21 09:00:00 AKDT    1234 SuperTag
      917  2013-09-21 09:15:00 AKDT    1234 SuperTag
      918  2013-09-21 09:30:00 AKDT    1234 SuperTag
      919  2013-09-21 10:00:00 AKDT    1234 SuperTag
      920  2013-09-21 10:15:00 AKDT    1234 SuperTag
      921  2013-09-21 10:30:00 AKDT    1234 SuperTag
      922  2013-09-21 11:00:00 AKDT    1234 SuperTag
      923  2013-09-21 11:15:00 AKDT    1234 SuperTag
      924  2013-09-21 11:30:00 AKDT    1234 SuperTag
      925  2013-09-21 12:00:00 AKDT    1234 SuperTag
      926  2013-09-21 12:15:00 AKDT    1234 SuperTag
      927  2013-09-21 12:30:00 AKDT    1234 SuperTag
      928  2013-09-21 13:00:00 AKDT    1234 SuperTag
      929  2013-09-21 13:15:00 AKDT    1234 SuperTag
      930  2013-09-21 13:30:00 AKDT    1234 SuperTag
      931  2013-09-21 14:00:00 AKDT    1234 SuperTag
      932  2013-09-21 14:15:00 AKDT    1234 SuperTag
      933  2013-09-21 14:30:00 AKDT    1234 SuperTag
      934  2013-09-21 15:00:00 AKDT    1234 SuperTag
      935  2013-09-21 15:15:00 AKDT    1234 SuperTag
      936  2013-09-21 15:30:00 AKDT    1234 SuperTag
      937  2013-09-21 16:00:00 AKDT    1234 SuperTag
      938  2013-09-21 17:00:00 AKDT    1234 SuperTag
      939  2013-09-21 18:00:00 AKDT    1234 SuperTag
      940  2013-09-21 19:00:00 AKDT    1234 SuperTag
      941  2013-09-21 20:00:00 AKDT    1234 SuperTag
      942  2013-09-21 21:00:00 AKDT    1234 SuperTag
      943  2013-09-21 22:00:00 AKDT    1234 SuperTag
      944  2013-09-21 23:00:00 AKDT    1234 SuperTag
      945  2013-09-22 00:00:00 AKDT    1234 SuperTag
      946  2013-09-22 01:00:00 AKDT    1234 SuperTag
      947  2013-09-22 02:00:00 AKDT    1234 SuperTag
      948  2013-09-22 03:00:00 AKDT    1234 SuperTag
      949  2013-09-22 04:00:00 AKDT    1234 SuperTag
      950  2013-09-22 05:00:00 AKDT    1234 SuperTag
      951  2013-09-22 06:00:00 AKDT    1234 SuperTag
      952  2013-09-22 07:00:00 AKDT    1234 SuperTag
      953  2013-09-22 08:00:00 AKDT    1234 SuperTag
      954  2013-09-22 09:00:00 AKDT    1234 SuperTag
      955  2013-09-22 10:00:00 AKDT    1234 SuperTag
      956  2013-09-22 11:00:00 AKDT    1234 SuperTag
      957  2013-09-22 12:00:00 AKDT    1234 SuperTag
      958  2013-09-22 13:00:00 AKDT    1234 SuperTag
      959  2013-09-22 14:00:00 AKDT    1234 SuperTag
      960  2013-09-22 15:00:00 AKDT    1234 SuperTag
      961  2013-09-22 16:30:00 AKDT    1234 SuperTag
      962  2013-09-22 16:45:00 AKDT    1234 SuperTag
      963  2013-09-22 17:30:00 AKDT    1234 SuperTag
      964  2013-09-22 17:45:00 AKDT    1234 SuperTag
      965  2013-09-22 18:30:00 AKDT    1234 SuperTag
      966  2013-09-22 18:45:00 AKDT    1234 SuperTag
      967  2013-09-22 19:30:00 AKDT    1234 SuperTag
      968  2013-09-22 19:45:00 AKDT    1234 SuperTag
      969  2013-09-22 20:30:00 AKDT    1234 SuperTag
      970  2013-09-22 20:45:00 AKDT    1234 SuperTag
      971  2013-09-22 21:30:00 AKDT    1234 SuperTag
      972  2013-09-22 21:45:00 AKDT    1234 SuperTag
      973  2013-09-22 22:30:00 AKDT    1234 SuperTag
      974  2013-09-22 22:45:00 AKDT    1234 SuperTag
      975  2013-09-22 23:30:00 AKDT    1234 SuperTag
      976  2013-09-22 23:45:00 AKDT    1234 SuperTag
      977  2013-09-23 00:30:00 AKDT    1234 SuperTag
      978  2013-09-23 00:45:00 AKDT    1234 SuperTag
      979  2013-09-23 01:30:00 AKDT    1234 SuperTag
      980  2013-09-23 01:45:00 AKDT    1234 SuperTag
      981  2013-09-23 02:30:00 AKDT    1234 SuperTag
      982  2013-09-23 02:45:00 AKDT    1234 SuperTag
      983  2013-09-23 03:30:00 AKDT    1234 SuperTag
      984  2013-09-23 03:45:00 AKDT    1234 SuperTag
      985  2013-09-23 04:30:00 AKDT    1234 SuperTag
      986  2013-09-23 04:45:00 AKDT    1234 SuperTag
      987  2013-09-23 05:30:00 AKDT    1234 SuperTag
      988  2013-09-23 05:45:00 AKDT    1234 SuperTag
      989  2013-09-23 06:30:00 AKDT    1234 SuperTag
      990  2013-09-23 06:45:00 AKDT    1234 SuperTag
      991  2013-09-23 07:30:00 AKDT    1234 SuperTag
      992  2013-09-23 07:45:00 AKDT    1234 SuperTag
      993  2013-09-23 08:30:00 AKDT    1234 SuperTag
      994  2013-09-23 08:45:00 AKDT    1234 SuperTag
      995  2013-09-23 09:30:00 AKDT    1234 SuperTag
      996  2013-09-23 09:45:00 AKDT    1234 SuperTag
      997  2013-09-23 10:30:00 AKDT    1234 SuperTag
      998  2013-09-23 10:45:00 AKDT    1234 SuperTag
      999  2013-09-23 11:30:00 AKDT    1234 SuperTag
      1000 2013-09-23 11:45:00 AKDT    1234 SuperTag
      1001 2013-09-23 12:30:00 AKDT    1234 SuperTag
      1002 2013-09-23 12:45:00 AKDT    1234 SuperTag
      1003 2013-09-23 13:30:00 AKDT    1234 SuperTag
      1004 2013-09-23 13:45:00 AKDT    1234 SuperTag
      1005 2013-09-23 14:30:00 AKDT    1234 SuperTag
      1006 2013-09-23 14:45:00 AKDT    1234 SuperTag
      1007 2013-09-23 15:30:00 AKDT    1234 SuperTag
      1008 2013-09-23 15:45:00 AKDT    1234 SuperTag
      1009 2013-09-23 16:00:00 AKDT    1234 SuperTag
      1010 2013-09-23 16:45:00 AKDT    1234 SuperTag
      1011 2013-09-23 17:00:00 AKDT    1234 SuperTag
      1012 2013-09-23 17:45:00 AKDT    1234 SuperTag
      1013 2013-09-23 18:00:00 AKDT    1234 SuperTag
      1014 2013-09-23 18:45:00 AKDT    1234 SuperTag
      1015 2013-09-23 19:00:00 AKDT    1234 SuperTag
      1016 2013-09-23 19:45:00 AKDT    1234 SuperTag
      1017 2013-09-23 20:00:00 AKDT    1234 SuperTag
      1018 2013-09-23 20:45:00 AKDT    1234 SuperTag
      1019 2013-09-23 21:00:00 AKDT    1234 SuperTag
      1020 2013-09-23 21:45:00 AKDT    1234 SuperTag
      1021 2013-09-23 22:00:00 AKDT    1234 SuperTag
      1022 2013-09-23 22:45:00 AKDT    1234 SuperTag
      1023 2013-09-23 23:00:00 AKDT    1234 SuperTag
      1024 2013-09-23 23:45:00 AKDT    1234 SuperTag
      1025 2013-09-24 00:00:00 AKDT    1234 SuperTag
      1026 2013-09-24 00:45:00 AKDT    1234 SuperTag
      1027 2013-09-24 01:00:00 AKDT    1234 SuperTag
      1028 2013-09-24 01:45:00 AKDT    1234 SuperTag
      1029 2013-09-24 02:00:00 AKDT    1234 SuperTag
      1030 2013-09-24 02:45:00 AKDT    1234 SuperTag
      1031 2013-09-24 03:00:00 AKDT    1234 SuperTag
      1032 2013-09-24 03:45:00 AKDT    1234 SuperTag
      1033 2013-09-24 04:00:00 AKDT    1234 SuperTag
      1034 2013-09-24 04:45:00 AKDT    1234 SuperTag
      1035 2013-09-24 05:00:00 AKDT    1234 SuperTag
      1036 2013-09-24 05:45:00 AKDT    1234 SuperTag
      1037 2013-09-24 06:00:00 AKDT    1234 SuperTag
      1038 2013-09-24 06:45:00 AKDT    1234 SuperTag
      1039 2013-09-24 07:00:00 AKDT    1234 SuperTag
      1040 2013-09-24 07:45:00 AKDT    1234 SuperTag
      1041 2013-09-24 08:00:00 AKDT    1234 SuperTag
      1042 2013-09-24 08:45:00 AKDT    1234 SuperTag
      1043 2013-09-24 09:00:00 AKDT    1234 SuperTag
      1044 2013-09-24 09:45:00 AKDT    1234 SuperTag
      1045 2013-09-24 10:00:00 AKDT    1234 SuperTag
      1046 2013-09-24 10:35:16 AKDT    1234 SuperTag
      1047 2013-09-24 10:45:00 AKDT    1234 SuperTag
      1048 2013-09-24 11:00:00 AKDT    1234 SuperTag
      1049 2013-09-24 11:45:00 AKDT    1234 SuperTag
      1050 2013-09-24 12:00:00 AKDT    1234 SuperTag
      1051 2013-09-24 12:45:00 AKDT    1234 SuperTag
      1052 2013-09-24 13:00:00 AKDT    1234 SuperTag
      1053 2013-09-24 13:45:00 AKDT    1234 SuperTag
      1054 2013-09-24 14:00:00 AKDT    1234 SuperTag
      1055 2013-09-24 14:45:00 AKDT    1234 SuperTag
      1056 2013-09-24 15:00:00 AKDT    1234 SuperTag
      1057 2013-09-24 15:45:00 AKDT    1234 SuperTag
      1058 2013-09-24 16:45:00 AKDT    1234 SuperTag
      1059 2013-09-24 17:06:46 AKDT    1234 SuperTag
      1060 2013-09-24 17:45:00 AKDT    1234 SuperTag
      1061 2013-09-24 18:45:00 AKDT    1234 SuperTag
      1062 2013-09-24 19:45:00 AKDT    1234 SuperTag
      1063 2013-09-24 20:45:00 AKDT    1234 SuperTag
      1064 2013-09-24 21:45:00 AKDT    1234 SuperTag
      1065 2013-09-24 22:45:00 AKDT    1234 SuperTag
      1066 2013-09-24 23:45:00 AKDT    1234 SuperTag
      1067 2013-09-25 00:45:00 AKDT    1234 SuperTag
      1068 2013-09-25 01:45:00 AKDT    1234 SuperTag
      1069 2013-09-25 02:45:00 AKDT    1234 SuperTag
      1070 2013-09-25 03:31:12 AKDT    1234 SuperTag
      1071 2013-09-25 03:45:00 AKDT    1234 SuperTag
      1072 2013-09-25 04:45:00 AKDT    1234 SuperTag
      1073 2013-09-25 05:45:00 AKDT    1234 SuperTag
      1074 2013-09-25 05:53:36 AKDT    1234 SuperTag
      1075 2013-09-25 06:14:09 AKDT    1234 SuperTag
      1076 2013-09-25 06:45:00 AKDT    1234 SuperTag
      1077 2013-09-25 06:52:18 AKDT    1234 SuperTag
      1078 2013-09-25 07:45:00 AKDT    1234 SuperTag
      1079 2013-09-25 08:45:00 AKDT    1234 SuperTag
      1080 2013-09-25 09:45:00 AKDT    1234 SuperTag
      1081 2013-09-25 10:45:00 AKDT    1234 SuperTag
      1082 2013-09-25 11:45:00 AKDT    1234 SuperTag
      1083 2013-09-25 12:45:00 AKDT    1234 SuperTag
      1084 2013-09-25 13:45:00 AKDT    1234 SuperTag
      1085 2013-09-25 14:45:00 AKDT    1234 SuperTag
      1086 2013-09-25 15:45:00 AKDT    1234 SuperTag
      1087 2013-09-25 16:00:00 AKDT    1234 SuperTag
      1088 2013-09-25 16:42:00 AKDT    1234 SuperTag
      1089 2013-09-25 17:00:00 AKDT    1234 SuperTag
      1090 2013-09-25 18:00:00 AKDT    1234 SuperTag
      1091 2013-09-25 19:00:00 AKDT    1234 SuperTag
      1092 2013-09-25 20:00:00 AKDT    1234 SuperTag
      1093 2013-09-25 21:00:00 AKDT    1234 SuperTag
      1094 2013-09-25 21:59:11 AKDT    1234 SuperTag
      1095 2013-09-25 21:59:11 AKDT    1234 SuperTag
      1096 2013-09-25 22:00:00 AKDT    1234 SuperTag
      1097 2013-09-25 23:00:00 AKDT    1234 SuperTag
      1098 2013-09-26 00:00:00 AKDT    1234 SuperTag
      1099 2013-09-26 01:00:00 AKDT    1234 SuperTag
      1100 2013-09-26 02:00:00 AKDT    1234 SuperTag
      1101 2013-09-26 03:00:00 AKDT    1234 SuperTag
      1102 2013-09-26 04:00:00 AKDT    1234 SuperTag
      1103 2013-09-26 05:00:00 AKDT    1234 SuperTag
      1104 2013-09-26 05:44:02 AKDT    1234 SuperTag
      1105 2013-09-26 06:00:00 AKDT    1234 SuperTag
      1106 2013-09-26 07:00:00 AKDT    1234 SuperTag
      1107 2013-09-26 08:00:00 AKDT    1234 SuperTag
      1108 2013-09-26 09:00:00 AKDT    1234 SuperTag
      1109 2013-09-26 10:00:00 AKDT    1234 SuperTag
      1110 2013-09-26 11:00:00 AKDT    1234 SuperTag
      1111 2013-09-26 12:00:00 AKDT    1234 SuperTag
      1112 2013-09-26 13:00:00 AKDT    1234 SuperTag
      1113 2013-09-26 14:00:00 AKDT    1234 SuperTag
      1114 2013-09-26 15:00:00 AKDT    1234 SuperTag
      1115 2013-09-26 16:00:00 AKDT    1234 SuperTag
      1116 2013-09-26 16:45:00 AKDT    1234 SuperTag
      1117 2013-09-26 17:00:00 AKDT    1234 SuperTag
      1118 2013-09-26 17:45:00 AKDT    1234 SuperTag
      1119 2013-09-26 18:00:00 AKDT    1234 SuperTag
      1120 2013-09-26 18:45:00 AKDT    1234 SuperTag
      1121 2013-09-26 19:00:00 AKDT    1234 SuperTag
      1122 2013-09-26 19:45:00 AKDT    1234 SuperTag
      1123 2013-09-26 20:00:00 AKDT    1234 SuperTag
      1124 2013-09-26 20:45:00 AKDT    1234 SuperTag
      1125 2013-09-26 21:00:00 AKDT    1234 SuperTag
      1126 2013-09-26 21:45:00 AKDT    1234 SuperTag
      1127 2013-09-26 22:00:00 AKDT    1234 SuperTag
      1128 2013-09-26 22:45:00 AKDT    1234 SuperTag
      1129 2013-09-26 23:00:00 AKDT    1234 SuperTag
      1130 2013-09-26 23:45:00 AKDT    1234 SuperTag
      1131 2013-09-27 00:00:00 AKDT    1234 SuperTag
      1132 2013-09-27 00:45:00 AKDT    1234 SuperTag
      1133 2013-09-27 01:00:00 AKDT    1234 SuperTag
      1134 2013-09-27 01:45:00 AKDT    1234 SuperTag
      1135 2013-09-27 02:00:00 AKDT    1234 SuperTag
      1136 2013-09-27 02:45:00 AKDT    1234 SuperTag
      1137 2013-09-27 03:00:00 AKDT    1234 SuperTag
      1138 2013-09-27 03:45:00 AKDT    1234 SuperTag
      1139 2013-09-27 04:00:00 AKDT    1234 SuperTag
      1140 2013-09-27 04:45:00 AKDT    1234 SuperTag
      1141 2013-09-27 05:00:00 AKDT    1234 SuperTag
      1142 2013-09-27 05:45:00 AKDT    1234 SuperTag
      1143 2013-09-27 06:00:00 AKDT    1234 SuperTag
      1144 2013-09-27 06:45:00 AKDT    1234 SuperTag
      1145 2013-09-27 07:00:00 AKDT    1234 SuperTag
      1146 2013-09-27 07:45:00 AKDT    1234 SuperTag
      1147 2013-09-27 08:00:00 AKDT    1234 SuperTag
      1148 2013-09-27 08:45:00 AKDT    1234 SuperTag
      1149 2013-09-27 09:00:00 AKDT    1234 SuperTag
      1150 2013-09-27 09:45:00 AKDT    1234 SuperTag
      1151 2013-09-27 10:00:00 AKDT    1234 SuperTag
      1152 2013-09-27 10:45:00 AKDT    1234 SuperTag
      1153 2013-09-27 11:00:00 AKDT    1234 SuperTag
      1154 2013-09-27 11:27:14 AKDT    1234 SuperTag
      1155 2013-09-27 11:45:00 AKDT    1234 SuperTag
      1156 2013-09-27 12:00:00 AKDT    1234 SuperTag
      1157 2013-09-27 12:45:00 AKDT    1234 SuperTag
      1158 2013-09-27 13:00:00 AKDT    1234 SuperTag
      1159 2013-09-27 13:45:00 AKDT    1234 SuperTag
      1160 2013-09-27 14:00:00 AKDT    1234 SuperTag
      1161 2013-09-27 14:45:00 AKDT    1234 SuperTag
      1162 2013-09-27 15:00:00 AKDT    1234 SuperTag
      1163 2013-09-27 15:45:00 AKDT    1234 SuperTag
      1164 2013-09-27 16:00:00 AKDT    1234 SuperTag
      1165 2013-09-27 16:30:00 AKDT    1234 SuperTag
      1166 2013-09-27 16:45:00 AKDT    1234 SuperTag
      1167 2013-09-27 17:00:00 AKDT    1234 SuperTag
      1168 2013-09-27 17:30:00 AKDT    1234 SuperTag
      1169 2013-09-27 17:33:03 AKDT    1234 SuperTag
      1170 2013-09-27 17:45:00 AKDT    1234 SuperTag
      1171 2013-09-27 18:00:00 AKDT    1234 SuperTag
      1172 2013-09-27 18:30:00 AKDT    1234 SuperTag
      1173 2013-09-27 18:45:00 AKDT    1234 SuperTag
      1174 2013-09-27 19:00:00 AKDT    1234 SuperTag
      1175 2013-09-27 19:30:00 AKDT    1234 SuperTag
      1176 2013-09-27 19:45:00 AKDT    1234 SuperTag
      1177 2013-09-27 20:00:00 AKDT    1234 SuperTag
      1178 2013-09-27 20:30:00 AKDT    1234 SuperTag
      1179 2013-09-27 20:45:00 AKDT    1234 SuperTag
      1180 2013-09-27 21:00:00 AKDT    1234 SuperTag
      1181 2013-09-27 21:17:28 AKDT    1234 SuperTag
      1182 2013-09-27 21:30:00 AKDT    1234 SuperTag
      1183 2013-09-27 21:45:00 AKDT    1234 SuperTag
      1184 2013-09-27 22:00:00 AKDT    1234 SuperTag
      1185 2013-09-27 22:30:00 AKDT    1234 SuperTag
      1186 2013-09-27 22:45:00 AKDT    1234 SuperTag
      1187 2013-09-27 23:00:00 AKDT    1234 SuperTag
      1188 2013-09-27 23:30:00 AKDT    1234 SuperTag
      1189 2013-09-27 23:45:00 AKDT    1234 SuperTag
      1190 2013-09-28 00:00:00 AKDT    1234 SuperTag
      1191 2013-09-28 00:30:00 AKDT    1234 SuperTag
      1192 2013-09-28 00:45:00 AKDT    1234 SuperTag
      1193 2013-09-28 01:00:00 AKDT    1234 SuperTag
      1194 2013-09-28 01:30:00 AKDT    1234 SuperTag
      1195 2013-09-28 01:45:00 AKDT    1234 SuperTag
      1196 2013-09-28 02:00:00 AKDT    1234 SuperTag
      1197 2013-09-28 02:30:00 AKDT    1234 SuperTag
      1198 2013-09-28 02:45:00 AKDT    1234 SuperTag
      1199 2013-09-28 03:00:00 AKDT    1234 SuperTag
      1200 2013-09-28 03:30:00 AKDT    1234 SuperTag
      1201 2013-09-28 03:45:00 AKDT    1234 SuperTag
      1202 2013-09-28 04:00:00 AKDT    1234 SuperTag
      1203 2013-09-28 04:30:00 AKDT    1234 SuperTag
      1204 2013-09-28 04:45:00 AKDT    1234 SuperTag
      1205 2013-09-28 05:00:00 AKDT    1234 SuperTag
      1206 2013-09-28 05:21:40 AKDT    1234 SuperTag
      1207 2013-09-28 05:30:00 AKDT    1234 SuperTag
      1208 2013-09-28 05:45:00 AKDT    1234 SuperTag
      1209 2013-09-28 06:00:00 AKDT    1234 SuperTag
      1210 2013-09-28 06:20:49 AKDT    1234 SuperTag
      1211 2013-09-28 06:30:00 AKDT    1234 SuperTag
      1212 2013-09-28 06:45:00 AKDT    1234 SuperTag
      1213 2013-09-28 07:00:00 AKDT    1234 SuperTag
      1214 2013-09-28 07:30:00 AKDT    1234 SuperTag
      1215 2013-09-28 07:45:00 AKDT    1234 SuperTag
      1216 2013-09-28 08:00:00 AKDT    1234 SuperTag
      1217 2013-09-28 08:30:00 AKDT    1234 SuperTag
      1218 2013-09-28 08:45:00 AKDT    1234 SuperTag
      1219 2013-09-28 09:00:00 AKDT    1234 SuperTag
      1220 2013-09-28 09:30:00 AKDT    1234 SuperTag
      1221 2013-09-28 09:45:00 AKDT    1234 SuperTag
      1222 2013-09-28 10:00:00 AKDT    1234 SuperTag
      1223 2013-09-28 10:30:00 AKDT    1234 SuperTag
      1224 2013-09-28 10:45:00 AKDT    1234 SuperTag
      1225 2013-09-28 11:00:00 AKDT    1234 SuperTag
      1226 2013-09-28 11:06:22 AKDT    1234 SuperTag
      1227 2013-09-28 11:30:00 AKDT    1234 SuperTag
      1228 2013-09-28 11:45:00 AKDT    1234 SuperTag
      1229 2013-09-28 12:00:00 AKDT    1234 SuperTag
      1230 2013-09-28 12:30:00 AKDT    1234 SuperTag
      1231 2013-09-28 12:45:00 AKDT    1234 SuperTag
      1232 2013-09-28 13:00:00 AKDT    1234 SuperTag
      1233 2013-09-28 13:30:00 AKDT    1234 SuperTag
      1234 2013-09-28 13:45:00 AKDT    1234 SuperTag
      1235 2013-09-28 14:00:00 AKDT    1234 SuperTag
      1236 2013-09-28 14:30:00 AKDT    1234 SuperTag
      1237 2013-09-28 14:45:00 AKDT    1234 SuperTag
      1238 2013-09-28 15:00:00 AKDT    1234 SuperTag
      1239 2013-09-28 15:15:19 AKDT    1234 SuperTag
      1240 2013-09-28 15:30:00 AKDT    1234 SuperTag
      1241 2013-09-28 15:45:00 AKDT    1234 SuperTag
      1242 2013-09-28 16:00:00 AKDT    1234 SuperTag
      1243 2013-09-28 16:15:00 AKDT    1234 SuperTag
      1244 2013-09-28 17:00:00 AKDT    1234 SuperTag
      1245 2013-09-28 17:07:56 AKDT    1234 SuperTag
      1246 2013-09-28 17:15:00 AKDT    1234 SuperTag
      1247 2013-09-28 18:00:00 AKDT    1234 SuperTag
      1248 2013-09-28 18:15:00 AKDT    1234 SuperTag
      1249 2013-09-28 19:00:00 AKDT    1234 SuperTag
      1250 2013-09-28 19:15:00 AKDT    1234 SuperTag
      1251 2013-09-28 20:00:00 AKDT    1234 SuperTag
      1252 2013-09-28 20:15:00 AKDT    1234 SuperTag
      1253 2013-09-28 21:00:00 AKDT    1234 SuperTag
      1254 2013-09-28 21:15:00 AKDT    1234 SuperTag
      1255 2013-09-28 21:21:55 AKDT    1234 SuperTag
      1256 2013-09-28 22:00:00 AKDT    1234 SuperTag
      1257 2013-09-28 22:15:00 AKDT    1234 SuperTag
      1258 2013-09-28 23:00:00 AKDT    1234 SuperTag
      1259 2013-09-28 23:15:00 AKDT    1234 SuperTag
      1260 2013-09-29 00:00:00 AKDT    1234 SuperTag
      1261 2013-09-29 00:15:00 AKDT    1234 SuperTag
      1262 2013-09-29 01:00:00 AKDT    1234 SuperTag
      1263 2013-09-29 01:15:00 AKDT    1234 SuperTag
      1264 2013-09-29 02:00:00 AKDT    1234 SuperTag
      1265 2013-09-29 02:15:00 AKDT    1234 SuperTag
      1266 2013-09-29 03:00:00 AKDT    1234 SuperTag
      1267 2013-09-29 03:15:00 AKDT    1234 SuperTag
      1268 2013-09-29 04:00:00 AKDT    1234 SuperTag
      1269 2013-09-29 04:15:00 AKDT    1234 SuperTag
      1270 2013-09-29 05:00:00 AKDT    1234 SuperTag
      1271 2013-09-29 05:10:39 AKDT    1234 SuperTag
      1272 2013-09-29 05:15:00 AKDT    1234 SuperTag
      1273 2013-09-29 05:48:49 AKDT    1234 SuperTag
      1274 2013-09-29 06:00:00 AKDT    1234 SuperTag
      1275 2013-09-29 06:15:00 AKDT    1234 SuperTag
      1276 2013-09-29 06:55:01 AKDT    1234 SuperTag
      1277 2013-09-29 07:00:00 AKDT    1234 SuperTag
      1278 2013-09-29 07:15:00 AKDT    1234 SuperTag
      1279 2013-09-29 08:00:00 AKDT    1234 SuperTag
      1280 2013-09-29 08:15:00 AKDT    1234 SuperTag
      1281 2013-09-29 09:00:00 AKDT    1234 SuperTag
      1282 2013-09-29 09:15:00 AKDT    1234 SuperTag
      1283 2013-09-29 10:00:00 AKDT    1234 SuperTag
      1284 2013-09-29 10:15:00 AKDT    1234 SuperTag
      1285 2013-09-29 10:45:27 AKDT    1234 SuperTag
      1286 2013-09-29 11:00:00 AKDT    1234 SuperTag
      1287 2013-09-29 11:15:00 AKDT    1234 SuperTag
      1288 2013-09-29 11:16:03 AKDT    1234 SuperTag
      1289 2013-09-29 12:00:00 AKDT    1234 SuperTag
      1290 2013-09-29 12:15:00 AKDT    1234 SuperTag
      1291 2013-09-29 13:00:00 AKDT    1234 SuperTag
      1292 2013-09-29 13:15:00 AKDT    1234 SuperTag
      1293 2013-09-29 14:00:00 AKDT    1234 SuperTag
      1294 2013-09-29 14:15:00 AKDT    1234 SuperTag
      1295 2013-09-29 14:22:56 AKDT    1234 SuperTag
      1296 2013-09-29 15:00:00 AKDT    1234 SuperTag
      1297 2013-09-29 15:05:31 AKDT    1234 SuperTag
      1298 2013-09-29 15:15:00 AKDT    1234 SuperTag
      1299 2013-09-29 16:00:00 AKDT    1234 SuperTag
      1300 2013-09-29 16:15:00 AKDT    1234 SuperTag
      1301 2013-09-29 16:44:08 AKDT    1234 SuperTag
      1302 2013-09-29 17:00:00 AKDT    1234 SuperTag
      1303 2013-09-29 17:15:00 AKDT    1234 SuperTag
      1304 2013-09-29 18:00:00 AKDT    1234 SuperTag
      1305 2013-09-29 18:15:00 AKDT    1234 SuperTag
      1306 2013-09-29 19:00:00 AKDT    1234 SuperTag
      1307 2013-09-29 19:15:00 AKDT    1234 SuperTag
      1308 2013-09-29 20:00:00 AKDT    1234 SuperTag
      1309 2013-09-29 20:15:00 AKDT    1234 SuperTag
      1310 2013-09-29 21:00:00 AKDT    1234 SuperTag
      1311 2013-09-29 21:09:41 AKDT    1234 SuperTag
      1312 2013-09-29 21:15:00 AKDT    1234 SuperTag
      1313 2013-09-29 22:00:00 AKDT    1234 SuperTag
      1314 2013-09-29 22:15:00 AKDT    1234 SuperTag
      1315 2013-09-29 23:00:00 AKDT    1234 SuperTag
      1316 2013-09-29 23:15:00 AKDT    1234 SuperTag
      1317 2013-09-30 00:00:00 AKDT    1234 SuperTag
      1318 2013-09-30 00:15:00 AKDT    1234 SuperTag
      1319 2013-09-30 01:00:00 AKDT    1234 SuperTag
      1320 2013-09-30 01:15:00 AKDT    1234 SuperTag
      1321 2013-09-30 02:00:00 AKDT    1234 SuperTag
      1322 2013-09-30 02:15:00 AKDT    1234 SuperTag
      1323 2013-09-30 03:00:00 AKDT    1234 SuperTag
      1324 2013-09-30 03:15:00 AKDT    1234 SuperTag
      1325 2013-09-30 04:00:00 AKDT    1234 SuperTag
      1326 2013-09-30 04:15:00 AKDT    1234 SuperTag
      1327 2013-09-30 05:00:00 AKDT    1234 SuperTag
      1328 2013-09-30 05:15:00 AKDT    1234 SuperTag
      1329 2013-09-30 06:00:00 AKDT    1234 SuperTag
      1330 2013-09-30 06:15:00 AKDT    1234 SuperTag
      1331 2013-09-30 06:30:44 AKDT    1234 SuperTag
      1332 2013-09-30 07:00:00 AKDT    1234 SuperTag
      1333 2013-09-30 07:15:00 AKDT    1234 SuperTag
      1334 2013-09-30 08:00:00 AKDT    1234 SuperTag
      1335 2013-09-30 08:15:00 AKDT    1234 SuperTag
      1336 2013-09-30 09:00:00 AKDT    1234 SuperTag
      1337 2013-09-30 09:15:00 AKDT    1234 SuperTag
      1338 2013-09-30 10:00:00 AKDT    1234 SuperTag
      1339 2013-09-30 10:15:00 AKDT    1234 SuperTag
      1340 2013-09-30 11:00:00 AKDT    1234 SuperTag
      1341 2013-09-30 11:03:14 AKDT    1234 SuperTag
      1342 2013-09-30 11:15:00 AKDT    1234 SuperTag
      1343 2013-09-30 12:00:00 AKDT    1234 SuperTag
      1344 2013-09-30 12:15:00 AKDT    1234 SuperTag
      1345 2013-09-30 13:00:00 AKDT    1234 SuperTag
      1346 2013-09-30 13:15:00 AKDT    1234 SuperTag
      1347 2013-09-30 14:00:00 AKDT    1234 SuperTag
      1348 2013-09-30 14:13:08 AKDT    1234 SuperTag
      1349 2013-09-30 14:15:00 AKDT    1234 SuperTag
      1350 2013-09-30 15:00:00 AKDT    1234 SuperTag
      1351 2013-09-30 15:15:00 AKDT    1234 SuperTag
      1352 2013-09-30 16:00:00 AKDT    1234 SuperTag
      1353 2013-09-30 16:15:00 AKDT    1234 SuperTag
      1354 2013-09-30 17:00:00 AKDT    1234 SuperTag
      1355 2013-09-30 17:15:00 AKDT    1234 SuperTag
      1356 2013-09-30 18:00:00 AKDT    1234 SuperTag
      1357 2013-09-30 18:15:00 AKDT    1234 SuperTag
      1358 2013-09-30 19:00:00 AKDT    1234 SuperTag
      1359 2013-09-30 19:15:00 AKDT    1234 SuperTag
      1360 2013-09-30 20:00:00 AKDT    1234 SuperTag
      1361 2013-09-30 20:15:00 AKDT    1234 SuperTag
      1362 2013-09-30 21:00:00 AKDT    1234 SuperTag
      1363 2013-09-30 21:15:00 AKDT    1234 SuperTag
      1364 2013-09-30 21:57:13 AKDT    1234 SuperTag
      1365 2013-09-30 22:00:00 AKDT    1234 SuperTag
      1366 2013-09-30 22:15:00 AKDT    1234 SuperTag
      1367 2013-09-30 23:00:00 AKDT    1234 SuperTag
      1368 2013-09-30 23:15:00 AKDT    1234 SuperTag
      1369 2013-10-01 00:00:00 AKDT    1234 SuperTag
      1370 2013-10-01 00:15:00 AKDT    1234 SuperTag
      1371 2013-10-01 01:00:00 AKDT    1234 SuperTag
      1372 2013-10-01 01:15:00 AKDT    1234 SuperTag
      1373 2013-10-01 02:00:00 AKDT    1234 SuperTag
      1374 2013-10-01 02:15:00 AKDT    1234 SuperTag
      1375 2013-10-01 03:00:00 AKDT    1234 SuperTag
      1376 2013-10-01 03:15:00 AKDT    1234 SuperTag
      1377 2013-10-01 04:00:00 AKDT    1234 SuperTag
      1378 2013-10-01 04:15:00 AKDT    1234 SuperTag
      1379 2013-10-01 05:00:00 AKDT    1234 SuperTag
      1380 2013-10-01 05:15:00 AKDT    1234 SuperTag
      1381 2013-10-01 06:00:00 AKDT    1234 SuperTag
      1382 2013-10-01 06:15:00 AKDT    1234 SuperTag
      1383 2013-10-01 06:25:52 AKDT    1234 SuperTag
      1384 2013-10-01 07:00:00 AKDT    1234 SuperTag
      1385 2013-10-01 07:15:00 AKDT    1234 SuperTag
      1386 2013-10-01 08:00:00 AKDT    1234 SuperTag
      1387 2013-10-01 08:15:00 AKDT    1234 SuperTag
      1388 2013-10-01 09:00:00 AKDT    1234 SuperTag
      1389 2013-10-01 09:15:00 AKDT    1234 SuperTag
      1390 2013-10-01 10:00:00 AKDT    1234 SuperTag
      1391 2013-10-01 10:15:00 AKDT    1234 SuperTag
      1392 2013-10-01 11:00:00 AKDT    1234 SuperTag
      1393 2013-10-01 11:15:00 AKDT    1234 SuperTag
      1394 2013-10-01 12:00:00 AKDT    1234 SuperTag
      1395 2013-10-01 12:15:00 AKDT    1234 SuperTag
      1396 2013-10-01 13:00:00 AKDT    1234 SuperTag
      1397 2013-10-01 13:15:00 AKDT    1234 SuperTag
      1398 2013-10-01 14:00:00 AKDT    1234 SuperTag
      1399 2013-10-01 14:15:00 AKDT    1234 SuperTag
      1400 2013-10-01 15:00:00 AKDT    1234 SuperTag
      1401 2013-10-01 15:15:00 AKDT    1234 SuperTag
      1402 2013-10-01 16:00:00 AKDT    1234 SuperTag
      1403 2013-10-01 16:45:00 AKDT    1234 SuperTag
      1404 2013-10-01 17:00:00 AKDT    1234 SuperTag
      1405 2013-10-01 17:45:00 AKDT    1234 SuperTag
      1406 2013-10-01 18:00:00 AKDT    1234 SuperTag
      1407 2013-10-01 18:45:00 AKDT    1234 SuperTag
      1408 2013-10-01 19:00:00 AKDT    1234 SuperTag
      1409 2013-10-01 19:45:00 AKDT    1234 SuperTag
      1410 2013-10-01 20:00:00 AKDT    1234 SuperTag
      1411 2013-10-01 20:45:00 AKDT    1234 SuperTag
      1412 2013-10-01 21:00:00 AKDT    1234 SuperTag
      1413 2013-10-01 21:45:00 AKDT    1234 SuperTag
      1414 2013-10-01 22:00:00 AKDT    1234 SuperTag
      1415 2013-10-01 22:45:00 AKDT    1234 SuperTag
      1416 2013-10-01 23:00:00 AKDT    1234 SuperTag
      1417 2013-10-01 23:45:00 AKDT    1234 SuperTag
      1418 2013-10-02 00:00:00 AKDT    1234 SuperTag
      1419 2013-10-02 00:45:00 AKDT    1234 SuperTag
      1420 2013-10-02 01:00:00 AKDT    1234 SuperTag
      1421 2013-10-02 01:45:00 AKDT    1234 SuperTag
      1422 2013-10-02 02:00:00 AKDT    1234 SuperTag
      1423 2013-10-02 02:45:00 AKDT    1234 SuperTag
      1424 2013-10-02 03:00:00 AKDT    1234 SuperTag
      1425 2013-10-02 03:45:00 AKDT    1234 SuperTag
      1426 2013-10-02 04:00:00 AKDT    1234 SuperTag
      1427 2013-10-02 04:45:00 AKDT    1234 SuperTag
      1428 2013-10-02 05:00:00 AKDT    1234 SuperTag
      1429 2013-10-02 05:45:00 AKDT    1234 SuperTag
      1430 2013-10-02 05:54:42 AKDT    1234 SuperTag
      1431 2013-10-02 06:00:00 AKDT    1234 SuperTag
      1432 2013-10-02 06:16:47 AKDT    1234 SuperTag
      1433 2013-10-02 06:45:00 AKDT    1234 SuperTag
      1434 2013-10-02 07:00:00 AKDT    1234 SuperTag
      1435 2013-10-02 07:45:00 AKDT    1234 SuperTag
      1436 2013-10-02 08:00:00 AKDT    1234 SuperTag
      1437 2013-10-02 08:45:00 AKDT    1234 SuperTag
      1438 2013-10-02 09:00:00 AKDT    1234 SuperTag
      1439 2013-10-02 09:45:00 AKDT    1234 SuperTag
      1440 2013-10-02 10:00:00 AKDT    1234 SuperTag
      1441 2013-10-02 10:45:00 AKDT    1234 SuperTag
      1442 2013-10-02 11:00:00 AKDT    1234 SuperTag
      1443 2013-10-02 11:45:00 AKDT    1234 SuperTag
      1444 2013-10-02 12:00:00 AKDT    1234 SuperTag
      1445 2013-10-02 12:45:00 AKDT    1234 SuperTag
      1446 2013-10-02 13:00:00 AKDT    1234 SuperTag
      1447 2013-10-02 13:45:00 AKDT    1234 SuperTag
      1448 2013-10-02 13:50:41 AKDT    1234 SuperTag
      1449 2013-10-02 14:00:00 AKDT    1234 SuperTag
      1450 2013-10-02 14:45:00 AKDT    1234 SuperTag
      1451 2013-10-02 15:00:00 AKDT    1234 SuperTag
      1452 2013-10-02 15:45:00 AKDT    1234 SuperTag
      1453 2013-10-02 16:00:00 AKDT    1234 SuperTag
      1454 2013-10-02 16:15:00 AKDT    1234 SuperTag
      1455 2013-10-02 17:00:00 AKDT    1234 SuperTag
      1456 2013-10-02 17:10:01 AKDT    1234 SuperTag
      1457 2013-10-02 17:15:00 AKDT    1234 SuperTag
      1458 2013-10-02 18:00:00 AKDT    1234 SuperTag
      1459 2013-10-02 18:15:00 AKDT    1234 SuperTag
      1460 2013-10-02 19:00:00 AKDT    1234 SuperTag
      1461 2013-10-02 19:15:00 AKDT    1234 SuperTag
      1462 2013-10-02 20:00:00 AKDT    1234 SuperTag
      1463 2013-10-02 20:15:00 AKDT    1234 SuperTag
      1464 2013-10-02 21:00:00 AKDT    1234 SuperTag
      1465 2013-10-02 21:14:00 AKDT    1234 SuperTag
      1466 2013-10-02 21:15:00 AKDT    1234 SuperTag
      1467 2013-10-02 22:00:00 AKDT    1234 SuperTag
      1468 2013-10-02 22:15:00 AKDT    1234 SuperTag
      1469 2013-10-02 23:00:00 AKDT    1234 SuperTag
      1470 2013-10-02 23:15:00 AKDT    1234 SuperTag
      1471 2013-10-03 00:00:00 AKDT    1234 SuperTag
      1472 2013-10-03 00:15:00 AKDT    1234 SuperTag
      1473 2013-10-03 01:00:00 AKDT    1234 SuperTag
      1474 2013-10-03 01:15:00 AKDT    1234 SuperTag
      1475 2013-10-03 02:00:00 AKDT    1234 SuperTag
      1476 2013-10-03 02:15:00 AKDT    1234 SuperTag
      1477 2013-10-03 03:00:00 AKDT    1234 SuperTag
      1478 2013-10-03 03:15:00 AKDT    1234 SuperTag
      1479 2013-10-03 04:00:00 AKDT    1234 SuperTag
      1480 2013-10-03 04:15:00 AKDT    1234 SuperTag
      1481 2013-10-03 05:00:00 AKDT    1234 SuperTag
      1482 2013-10-03 05:15:00 AKDT    1234 SuperTag
      1483 2013-10-03 06:00:00 AKDT    1234 SuperTag
      1484 2013-10-03 06:05:57 AKDT    1234 SuperTag
      1485 2013-10-03 06:15:00 AKDT    1234 SuperTag
      1486 2013-10-03 06:57:37 AKDT    1234 SuperTag
      1487 2013-10-03 07:00:00 AKDT    1234 SuperTag
      1488 2013-10-03 07:15:00 AKDT    1234 SuperTag
      1489 2013-10-03 08:00:00 AKDT    1234 SuperTag
      1490 2013-10-03 08:15:00 AKDT    1234 SuperTag
      1491 2013-10-03 09:00:00 AKDT    1234 SuperTag
      1492 2013-10-03 09:15:00 AKDT    1234 SuperTag
      1493 2013-10-03 10:00:00 AKDT    1234 SuperTag
      1494 2013-10-03 10:15:00 AKDT    1234 SuperTag
      1495 2013-10-03 11:00:00 AKDT    1234 SuperTag
      1496 2013-10-03 11:15:00 AKDT    1234 SuperTag
      1497 2013-10-03 12:00:00 AKDT    1234 SuperTag
      1498 2013-10-03 12:15:00 AKDT    1234 SuperTag
      1499 2013-10-03 13:00:00 AKDT    1234 SuperTag
      1500 2013-10-03 13:15:00 AKDT    1234 SuperTag
      1501 2013-10-03 14:00:00 AKDT    1234 SuperTag
      1502 2013-10-03 14:15:00 AKDT    1234 SuperTag
      1503 2013-10-03 15:00:00 AKDT    1234 SuperTag
      1504 2013-10-03 15:15:00 AKDT    1234 SuperTag
      1505 2013-10-03 16:15:00 AKDT    1234 SuperTag
      1506 2013-10-03 16:30:00 AKDT    1234 SuperTag
      1507 2013-10-03 16:46:49 AKDT    1234 SuperTag
      1508 2013-10-03 17:15:00 AKDT    1234 SuperTag
      1509 2013-10-03 17:30:00 AKDT    1234 SuperTag
      1510 2013-10-03 18:15:00 AKDT    1234 SuperTag
      1511 2013-10-03 18:30:00 AKDT    1234 SuperTag
      1512 2013-10-03 19:15:00 AKDT    1234 SuperTag
      1513 2013-10-03 19:30:00 AKDT    1234 SuperTag
      1514 2013-10-03 20:15:00 AKDT    1234 SuperTag
      1515 2013-10-03 20:30:00 AKDT    1234 SuperTag
      1516 2013-10-03 21:15:00 AKDT    1234 SuperTag
      1517 2013-10-03 21:30:00 AKDT    1234 SuperTag
      1518 2013-10-03 22:15:00 AKDT    1234 SuperTag
      1519 2013-10-03 22:30:00 AKDT    1234 SuperTag
      1520 2013-10-03 23:15:00 AKDT    1234 SuperTag
      1521 2013-10-03 23:30:00 AKDT    1234 SuperTag
      1522 2013-10-04 00:15:00 AKDT    1234 SuperTag
      1523 2013-10-04 00:30:00 AKDT    1234 SuperTag
      1524 2013-10-04 01:15:00 AKDT    1234 SuperTag
      1525 2013-10-04 01:30:00 AKDT    1234 SuperTag
      1526 2013-10-04 02:15:00 AKDT    1234 SuperTag
      1527 2013-10-04 02:30:00 AKDT    1234 SuperTag
      1528 2013-10-04 03:15:00 AKDT    1234 SuperTag
      1529 2013-10-04 03:30:00 AKDT    1234 SuperTag
      1530 2013-10-04 04:15:00 AKDT    1234 SuperTag
      1531 2013-10-04 04:30:00 AKDT    1234 SuperTag
      1532 2013-10-04 05:15:00 AKDT    1234 SuperTag
      1533 2013-10-04 05:30:00 AKDT    1234 SuperTag
      1534 2013-10-04 06:15:00 AKDT    1234 SuperTag
      1535 2013-10-04 06:30:00 AKDT    1234 SuperTag
      1536 2013-10-04 07:15:00 AKDT    1234 SuperTag
      1537 2013-10-04 07:30:00 AKDT    1234 SuperTag
      1538 2013-10-04 08:15:00 AKDT    1234 SuperTag
      1539 2013-10-04 08:30:00 AKDT    1234 SuperTag
      1540 2013-10-04 09:15:00 AKDT    1234 SuperTag
      1541 2013-10-04 09:30:00 AKDT    1234 SuperTag
      1542 2013-10-04 10:15:00 AKDT    1234 SuperTag
      1543 2013-10-04 10:30:00 AKDT    1234 SuperTag
      1544 2013-10-04 11:15:00 AKDT    1234 SuperTag
      1545 2013-10-04 11:30:00 AKDT    1234 SuperTag
      1546 2013-10-04 12:15:00 AKDT    1234 SuperTag
      1547 2013-10-04 12:30:00 AKDT    1234 SuperTag
      1548 2013-10-04 13:15:00 AKDT    1234 SuperTag
      1549 2013-10-04 13:30:00 AKDT    1234 SuperTag
      1550 2013-10-04 14:15:00 AKDT    1234 SuperTag
      1551 2013-10-04 14:30:00 AKDT    1234 SuperTag
      1552 2013-10-04 15:15:00 AKDT    1234 SuperTag
      1553 2013-10-04 15:30:00 AKDT    1234 SuperTag
      1554 2013-10-04 16:15:00 AKDT    1234 SuperTag
      1555 2013-10-04 16:45:00 AKDT    1234 SuperTag
      1556 2013-10-04 17:15:00 AKDT    1234 SuperTag
      1557 2013-10-04 17:45:00 AKDT    1234 SuperTag
      1558 2013-10-04 18:15:00 AKDT    1234 SuperTag
      1559 2013-10-04 18:45:00 AKDT    1234 SuperTag
      1560 2013-10-04 19:15:00 AKDT    1234 SuperTag
      1561 2013-10-04 19:45:00 AKDT    1234 SuperTag
      1562 2013-10-04 20:15:00 AKDT    1234 SuperTag
      1563 2013-10-04 20:45:00 AKDT    1234 SuperTag
      1564 2013-10-04 21:15:00 AKDT    1234 SuperTag
      1565 2013-10-04 21:45:00 AKDT    1234 SuperTag
      1566 2013-10-04 22:15:00 AKDT    1234 SuperTag
      1567 2013-10-04 22:45:00 AKDT    1234 SuperTag
      1568 2013-10-04 23:15:00 AKDT    1234 SuperTag
      1569 2013-10-04 23:45:00 AKDT    1234 SuperTag
      1570 2013-10-05 00:15:00 AKDT    1234 SuperTag
      1571 2013-10-05 00:45:00 AKDT    1234 SuperTag
      1572 2013-10-05 01:15:00 AKDT    1234 SuperTag
      1573 2013-10-05 01:45:00 AKDT    1234 SuperTag
      1574 2013-10-05 02:15:00 AKDT    1234 SuperTag
      1575 2013-10-05 02:45:00 AKDT    1234 SuperTag
      1576 2013-10-05 03:15:00 AKDT    1234 SuperTag
      1577 2013-10-05 03:24:33 AKDT    1234 SuperTag
      1578 2013-10-05 03:45:00 AKDT    1234 SuperTag
      1579 2013-10-05 04:15:00 AKDT    1234 SuperTag
      1580 2013-10-05 04:45:00 AKDT    1234 SuperTag
      1581 2013-10-05 05:15:00 AKDT    1234 SuperTag
      1582 2013-10-05 05:44:28 AKDT    1234 SuperTag
      1583 2013-10-05 05:45:00 AKDT    1234 SuperTag
      1584 2013-10-05 06:00:03 AKDT    1234 SuperTag
      1585 2013-10-05 06:15:00 AKDT    1234 SuperTag
      1586 2013-10-05 06:45:00 AKDT    1234 SuperTag
      1587 2013-10-05 07:15:00 AKDT    1234 SuperTag
      1588 2013-10-05 07:45:00 AKDT    1234 SuperTag
      1589 2013-10-05 08:15:00 AKDT    1234 SuperTag
      1590 2013-10-05 08:45:00 AKDT    1234 SuperTag
      1591 2013-10-05 09:15:00 AKDT    1234 SuperTag
      1592 2013-10-05 09:45:00 AKDT    1234 SuperTag
      1593 2013-10-05 10:15:00 AKDT    1234 SuperTag
      1594 2013-10-05 10:45:00 AKDT    1234 SuperTag
      1595 2013-10-05 11:15:00 AKDT    1234 SuperTag
      1596 2013-10-05 11:45:00 AKDT    1234 SuperTag
      1597 2013-10-05 12:15:00 AKDT    1234 SuperTag
      1598 2013-10-05 12:45:00 AKDT    1234 SuperTag
      1599 2013-10-05 13:15:00 AKDT    1234 SuperTag
      1600 2013-10-05 13:45:00 AKDT    1234 SuperTag
      1601 2013-10-05 14:15:00 AKDT    1234 SuperTag
      1602 2013-10-05 14:45:00 AKDT    1234 SuperTag
      1603 2013-10-05 15:15:00 AKDT    1234 SuperTag
      1604 2013-10-05 15:45:00 AKDT    1234 SuperTag
      1605 2013-10-05 16:15:00 AKDT    1234 SuperTag
      1606 2013-10-05 17:15:00 AKDT    1234 SuperTag
      1607 2013-10-05 18:15:00 AKDT    1234 SuperTag
      1608 2013-10-05 19:15:00 AKDT    1234 SuperTag
      1609 2013-10-05 20:15:00 AKDT    1234 SuperTag
      1610 2013-10-05 21:15:00 AKDT    1234 SuperTag
      1611 2013-10-05 21:36:35 AKDT    1234 SuperTag
      1612 2013-10-05 21:51:37 AKDT    1234 SuperTag
      1613 2013-10-05 22:15:00 AKDT    1234 SuperTag
      1614 2013-10-05 23:15:00 AKDT    1234 SuperTag
      1615 2013-10-06 00:15:00 AKDT    1234 SuperTag
      1616 2013-10-06 01:15:00 AKDT    1234 SuperTag
      1617 2013-10-06 02:15:00 AKDT    1234 SuperTag
      1618 2013-10-06 03:15:00 AKDT    1234 SuperTag
      1619 2013-10-06 04:15:00 AKDT    1234 SuperTag
      1620 2013-10-06 05:15:00 AKDT    1234 SuperTag
      1621 2013-10-06 06:15:00 AKDT    1234 SuperTag
      1622 2013-10-06 07:15:00 AKDT    1234 SuperTag
      1623 2013-10-06 08:15:00 AKDT    1234 SuperTag
      1624 2013-10-06 09:15:00 AKDT    1234 SuperTag
      1625 2013-10-06 10:15:00 AKDT    1234 SuperTag
      1626 2013-10-06 11:15:00 AKDT    1234 SuperTag
      1627 2013-10-06 12:15:00 AKDT    1234 SuperTag
      1628 2013-10-06 13:15:00 AKDT    1234 SuperTag
      1629 2013-10-06 14:15:00 AKDT    1234 SuperTag
      1630 2013-10-06 15:15:00 AKDT    1234 SuperTag
      1631 2013-10-06 17:12:43 AKDT    1234 SuperTag
      1632 2013-10-06 21:30:40 AKDT    1234 SuperTag
      1633 2013-10-07 05:22:45 AKDT    1234 SuperTag
      1634 2013-10-10 21:48:00 AKDT    1234 SuperTag

---

    Code
      decode_op[["summary"]]
    Output
      # A tibble: 20 x 9
         START_TIME_POSIXct END_TIME_POSIXct LATITUDE LONGITUDE LOCATION_TYPE         
                      <dbl>            <dbl>    <dbl>     <dbl> <chr>                 
       1         1379462400       1379548799     66.5      135. LIGHT_BASED_GEOLOCATI~
       2         1379548800       1379635199     42.5      139. LIGHT_BASED_GEOLOCATI~
       3         1379635200       1379721599     59.0      135. LIGHT_BASED_GEOLOCATI~
       4         1379721600       1379807999     56.8      135. LIGHT_BASED_GEOLOCATI~
       5         1379808000       1379894399     10.5      133. LIGHT_BASED_GEOLOCATI~
       6         1379894400       1379980799     58.0      136. LIGHT_BASED_GEOLOCATI~
       7         1379980800       1380067199     66.8      135. LIGHT_BASED_GEOLOCATI~
       8         1380067200       1380153599     68.4      134. LIGHT_BASED_GEOLOCATI~
       9         1380153600       1380239999     18.9      136. LIGHT_BASED_GEOLOCATI~
      10         1380240000       1380326399     64.8      134. LIGHT_BASED_GEOLOCATI~
      11         1380326400       1380412799     36.8      134. LIGHT_BASED_GEOLOCATI~
      12         1380412800       1380499199     75.5      135. LIGHT_BASED_GEOLOCATI~
      13         1380499200       1380585599     75.7      133. LIGHT_BASED_GEOLOCATI~
      14         1380585600       1380671999     13.0      135. LIGHT_BASED_GEOLOCATI~
      15         1380672000       1380758399     19.1      135. LIGHT_BASED_GEOLOCATI~
      16         1380758400       1380844799     54.8      137. LIGHT_BASED_GEOLOCATI~
      17         1380844800       1380931199     57.0      134. LIGHT_BASED_GEOLOCATI~
      18         1380931200       1381017599     51.5      133. LIGHT_BASED_GEOLOCATI~
      19         1381017600       1381103999     50.5      136. LIGHT_BASED_GEOLOCATI~
      20         1381276800       1381363199     53.3      134. LIGHT_BASED_GEOLOCATI~
      # i 4 more variables: START_TIME <chr>, END_TIME <chr>, TAG_NUM <chr>,
      #   TAG_TYPE <chr>

