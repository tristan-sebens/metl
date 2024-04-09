DataMap_TestStub =
  setRefClass(
    "DataMap_TestStub",
    contains = "DataMap",
    fields =
      list(
        extract_return = "data.frame",
        get_tag_id_return = "character"
      ),
    methods =
      list(
        extract =
          function(d) {return(extract_return)},
        get_tag_id =
          function(d) {return(get_tag_id_return)}
      )
  )
