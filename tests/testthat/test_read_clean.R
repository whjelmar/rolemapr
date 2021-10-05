test_that("read_clean - process read_clean.csv correctly", {
  test_data <- read_clean("read_clean.csv")

  expected <- tibble::tribble(
    ~key, ~full_col,
    1, "a",
    2, "c",
    3, "d",
    4, "e"
  )

  expect_equal(test_data, expected)
})
