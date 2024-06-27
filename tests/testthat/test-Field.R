test_that(
  "Field",
  {
    # Test the default values of the parameters
    f_ = Field(name = "Test Field")

    expect_equal(f_$alternate_names, list())
    # Default function should simply pass through the data with no transformation
    expect_equal(f_$trans_fn("no_change"), "no_change")
    expect_equal(f_$independent, F)

    # Test altering default attributes
    f_ =
      Field(
        name = "Test Field",
        alternate_names = list("Test Field 2", "Test Field 3"),
        trans_fn = function(v, ...) {v * 2},
        independent = T
      )

    expect_equal(f_$alternate_names, list("Test Field 2", "Test Field 3"))
    expect_equal(f_$trans_fn(2), 4)
    expect_equal(f_$independent, T)

  }
)
