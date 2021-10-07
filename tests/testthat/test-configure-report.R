library(ggplot2)

test_that("test switches", {
  config <- configure_report(
    add_introduction = TRUE,
    add_plot_introduction = FALSE,
    add_summary = TRUE,
    add_plot_summary = FALSE
  )
  expect_setequal(names(config), c("introduction", "summary"))
})

test_that("test global settings", {
  config <- configure_report(
    plot_introduction_args = list(),
    global_ggtheme = quote(theme_light(base_size = 10)),
    global_theme_config = list("legend.position" = "bottom", "axis.text.x" = element_text(angle = 90))
  )
  for (x in c("plot_introduction", "plot_summary")) {
    expect_identical(config[[x]]$ggtheme, quote(theme_light(base_size = 10)))
    expect_identical(config[[x]]$theme_config, list(legend.position = "bottom", axis.text.x = element_text(angle = 90)))
  }
})

test_that("test local theme overwrite", {
  config <- configure_report(
    plot_introduction_args = list(ggtheme = quote(theme_minimal())),
    global_ggtheme = quote(theme_light())
  )
  expect_identical(config$plot_introduction$ggtheme, quote(theme_minimal()))
  for (x in c("plot_summary")) {
    expect_identical(config[[x]]$ggtheme, quote(theme_light()))
  }
})

test_that("test local theme_config", {
  config <- configure_report(
    plot_introduction_args = list(theme_config = quote(theme_dark()))
  )
  expect_identical(config$plot_introduction$theme_config, quote(theme_dark()))
})

