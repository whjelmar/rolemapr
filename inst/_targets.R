## Load your packages, e.g. library(targets).
source("./packages.R")

## Load your R files
lapply(list.files("./R", full.names = TRUE), source)

tar_plan(
  tar_target(get_excel_data, "data/sample_target_operating_model.xlsx", format = "file"),
  tar_target(data, read_clean(raw_data_file)),
  tar_target(fit, fit_model(data)),
  tar_target(hist, create_plot(data))
)
