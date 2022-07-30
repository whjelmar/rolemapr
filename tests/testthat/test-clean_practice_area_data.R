test_that("count_fields gives an appropriate set of groups", {
  data <- get_excel_data(test_path("testdata", "sample_target_operating_model.xlsx"), "Practices Areas") %>%
    janitor::clean_names()

  clean_data <- clean_practice_area_data(data)

  expect_false(grepl('\r\n', clean_data$pract))
  expect_true(grepl('<br>', clean_data$pract))
})
