test_that("count_fields gives an appropriate set of groups", {
  data <- get_excel_data(test_path("testdata", "sample_target_operating_model.xlsx"), "Practices Areas") %>%
    janitor::clean_names()

  counts_test <- counts_fields(data, "practice_area")

  glimpse(counts_test)

  expect_equal(counts_test$practice_area, "Solution Evaluation")
  expect_equal(counts_test$n, 1)
})
