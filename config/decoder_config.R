#' Base implementation for all Decoder classes
#'
Decoder_Base =
  #----
  setRefClass(
    "Decoder_Base",
    contains = "Decoder"
  )
#----

#' Base implementation for all Lotek tag Decoders
#'
Decoder_Lotek =
  #----
  setRefClass(
    "Decoder_Lotek",
    contains = "Decoder_Base"
  )
#----

Decoder_Lotek.1000.1100.1250 =
  #----
  setRefClass(
    "Decoder_Lotek.1000.1100.1250",
    contains = "Decoder_Base",
    methods =
      list(
        initialize =
          function(
            ...,
            # Define data maps
            metadata_map =
              DataMap_Lotek.1000.1100.1250_TagMetaData(),
            data_maps =
              list(
                DataMap_Lotek.1000.1100.1250_InstantSensorData()
              )
          ) {
            # Initialize the child class
            callSuper(
              ...,
              data_maps = data_maps,
              metadata_map = metadata_map
            )
          }
      )
  )
#----

Decoder_Lotek.1300 =
  #----
  setRefClass(
    "Decoder_Lotek.1300",
    contains = "Decoder_Lotek",
    methods =
      list(
        initialize =
          function(
            ...,
            metadata_map =
              DataMap_Lotek.1300_TagMetaData(),
            data_maps =
              list(
                DataMap_Lotek.1300_InstantSensorData()
              )
          ) {
            # Initialize the child class
            callSuper(
              ...,
              data_maps = data_maps,
              metadata_map = metadata_map
            )
          }
      )
  )
#----

Decoder_Lotek.1400.1800 =
  #----
  setRefClass(
    "Decoder_Lotek.1400.1800",
    contains = "Decoder_Lotek",
    methods =
      list(
        initialize =
          function(
            ...,
            # Define data maps
            metadata_map =
              DataMap_Lotek.1400.1800_TagMetaData(),
            data_maps =
              list(
                DataMap_Lotek.1400.1800_InstantSensorData()
              )
          ) {
            # Initialize the child class
            callSuper(
              ...,
              data_maps = data_maps,
              metadata_map = metadata_map
            )
          }
      )
  )
#----

#' Base implementation for all Microwave Telemetry tag Decoders
#'
Decoder_MicrowaveTelemetry =
  #----
  setRefClass(
    "Decoder_MicrowaveTelemetry",
    contains = "Decoder_Base",
  )
  #----

Decoder_MicrowaveTelemetry_XTag =
  #----
  setRefClass(
    "Decoder_MicrowaveTelemetry_XTag",
    contains = "Decoder_MicrowaveTelemetry",
    methods =
      list(
        initialize =
          function(
            ...,
            # Define data maps
            metadata_map =
              DataMap_MicrowaveTelemetry_XTag_TagMetaData(),
            data_maps =
              list(
                DataMap_MicrowaveTelemetry_XTag_InstantSensorData()
              )
          ) {
            # Initialize the child class
            callSuper(
              ...,
              data_maps = data_maps,
              metadata_map = metadata_map
            )
          }
      )
  )
#----

Decoder_StarOddi =
  #----
  setRefClass(
    "Decoder_StarOddi",
    contains = "Decoder_Base",
  )
#----

Decoder_StarOddi_DST =
  #----
  setRefClass(
    "Decoder_StarOddi_DST",
    contains = "Decoder_StarOddi",
    methods =
      list(
        initialize =
          function(
            ...,
            # Define data maps
            metadata_map =
              DataMap_StarOddi_DST_TagMetaData(),
            data_maps =
              list(
                DataMap_StarOddi_DST_InstantSensorData()
              )
          ) {
            # Initialize the child class
            callSuper(
              ...,
              data_maps = data_maps,
              metadata_map = metadata_map
            )
          }
      )
  )
#----

Decoder_StarOddi_DSTmagnetic =
  #----
  setRefClass(
    "Decoder_StarOddi_DSTmagnetic",
    contains = "Decoder",
    methods =
      list(
        initialize =
          function(
            ...,
            # Define data maps
            metadata_map =
              DataMap_StarOddi_DSTmagnetic_TagMetaData(),
            data_maps =
              list(
                DataMap_StarOddi_DSTmagnetic_InstantSensorData()
              )
          ) {
            # Initialize the child class
            callSuper(
              ...,
              metadata_map = metadata_map,
              data_maps = data_maps
            )
          }
      )
  )
#----


Decoder_StarOddi_DSTmilliF =
  #----
  setRefClass(
    "Decoder_StarOddi_DSTmilliF",
    # The DST milli F decoder is identical in function to the DST
    contains = "Decoder",
    methods =
      list(
        initialize =
          function(
            ...,
            # Define data maps
            metadata_map =
              DataMap_StarOddi_DSTmilliF_TagMetaData(),
            data_maps =
              list(
                DataMap_StarOddi_DSTmilliF_InstantSensorData()
              )
          ) {
            # Initialize the child class
            callSuper(
              ...,
              metadata_map = metadata_map,
              data_maps = data_maps
            )
          }
      )
  )
#----

Decoder_Wildlife_Computers =
  #----
  setRefClass(
    "Decoder_WildlifeComputers",
    contains = "Decoder_Base",
    methods =
      list(
        initialize =
          function(...) {
            callSuper(...)
            make <<- "Wildlife Computers"
          }
      )
  )
#----

Decoder_WildlifeComputers_MiniPAT =
  #----
  setRefClass(
    "Decoder_WildlifeComputers_MiniPAT",
    # The DST milli F decoder is identical in function to the DST
    contains = "Decoder_WildlifeComputers",
    methods =
      list(
        initialize =
          function(
            ...,
            # Define data maps
            metadata_map = DataMap_WildlifeComputers_MiniPAT_TagMetaData(),
            data_maps =
              list(
                DataMap_WildlifeComputer_MiniPAT_InstantSensorData(),
                DataMap_WildlifeComputer_MiniPAT_SummarySensorData()
              )
          ) {
            # Initialize the child class
            callSuper(
              ...,
              data_maps = data_maps,
              metadata_map = metadata_map
            )
          }
      )
  )
#----

Decoder_WildlifeComputers_BenthicSPAT =
  #----
  setRefClass(
    "Decoder_WildlifeComputers_BenthicSPAT",
    # The DST milli F decoder is identical in function to the DST
    contains = "Decoder_WildlifeComputers",
    methods =
      list(
        initialize =
          function(
            ...,
            # Define data maps
            metadata_map =
              DataMap_WildlifeComputers_BenthicSPAT_TagMetaData(),
            data_maps =
              list(
                DataMap_WildlifeComputer_BenthicSPAT_SummarySensorData()
              )
          ) {
            # Initialize the child class
            callSuper(
              ...,
              metadata_map = metadata_map,
              data_maps = data_maps
            )
          }
      )
  )
#----























