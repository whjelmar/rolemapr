## Load your packages, e.g. library(targets).
source("./packages.R")

## Load your R files
lapply(list.files("./R", full.names = TRUE), source)

tar_plan(
  tar_target(raw_data_file, "raw_data.csv", format = "file"),
  tar_target(data, read_clean(raw_data_file)),
  tar_target(fit, fit_model(data)),
  tar_target(hist, create_plot(data))
)
