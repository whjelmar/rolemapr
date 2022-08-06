test_that("test switches", {
  config <- configure_report(
    add_introduce = TRUE
  )
  expect_setequal(names(config), c("introduce"))
})

test_that("test global settings", {
  config <- configure_report(
    global_ggtheme = quote(theme_light(base_size = 10)),
    global_theme_config = list("legend.position" = "bottom", "axis.text.x" = element_text(angle = 90))
  )
  for (x in c("introduce")) {
    expect_identical(config[[x]], list())
  }
})

test_that("test local theme overwrite", {
  config <- configure_report(
    global_ggtheme = quote(theme_light())
  )
})
