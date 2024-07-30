test_all_data_dirs(
  root = test_data_d('ds', 'stm'),
  label = "DataMap_DesertStar_SeaTagMOD_Directory",
  test_fn =
    function(d) {
      test_datamap_directory(
        d = d,
        op_fm = DataMap_DesertStar_SeaTagMOD_InstantSensorData_Directory$input_data_field_map,
        dm = DataMap_DesertStar_SeaTagMOD_InstantSensorData_Directory
      )
    }
)
