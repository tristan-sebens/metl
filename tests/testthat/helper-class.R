DataMap_TestStub =
  setRefClass(
    "DataMap_TestStub",
    contains = "DataMap",
    fields =
      list(
        extract_return = "data.frame"
      ),
    methods =
      list(
        extract =
          function(d) {return(extract_return)}
      )
  )
