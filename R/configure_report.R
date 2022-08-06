#' Configure report template
#'
#' This function configures the content of the to-be-generated data profiling report.
#' @param add_introduce add \link{introduce}? Default is \code{TRUE}.
#' @param introduce_args arguments to be passed to \link{introduce}. Default is \code{list()}.
#' @param global_ggtheme global setting for theme.Default is \code{quote(theme_gray())}.
#' @param global_theme_config global setting for theme. Default is \code{list()}.
#' @keywords configure_report
#' @note Individual settings will overwrite global settings. For example: if \code{intro_args} has \code{ggtheme} set to \code{theme_light()} while \code{global_ggtheme} is set to \code{theme_gray()}, \code{theme_light()} will be used.
#' @note When setting global themes using \code{global_ggtheme}, please pass an unevaluated call to the theme function, e.g., \code{quote(theme_light())}.
#' @export
#' @seealso \link{create_report}
#' @examples
#' ## Get default configuration
#' configure_report()
#'
#' ## Set global theme
#' configure_report(global_ggtheme = quote(theme_light(base_size = 20L)))
#'
configure_report <- function(add_introduce = TRUE,
                             introduce_args = list(),
                             global_ggtheme = quote(theme_gray()),
                             global_theme_config = list()) {
  ## Parse formal arguments
  input_args <- as.list(match.call())
  self_name <- input_args[[1]]
  formal_args <- formals(match.fun(self_name))
  switches <- grep("add_", names(formal_args), value = TRUE, fixed = TRUE)
  global_settings <- grep("global_", names(formal_args), value = TRUE, fixed = TRUE)
  global_exceptions <- c("add_introduce", "add_plot_str")
  ## Set config data based on arguments
  config <- lapply(setNames(switches, switches), function(s) {
    if ((!is.null(input_args[[s]]) && eval(input_args[[s]])) || (is.null(input_args[[s]]) && formal_args[[s]])) {
      key_args <- paste0(gsub("add_", "", s, fixed = TRUE), "_args")
      input_values <- eval(input_args[[key_args]])
      formal_values <- eval(formal_args[[key_args]])
      value <- NULL
      if (!(s %in% global_exceptions)) {
        if ("ggtheme" %in% names(input_values)) {
          value <- list(ggtheme = input_values[["ggtheme"]])
          input_values[["ggtheme"]] <- NULL
        } else {
          value <- list(ggtheme = global_ggtheme)
        }
        if ("theme_config" %in% names(input_values)) {
          value <- c(value, list(theme_config = input_values[["theme_config"]]))
          input_values[["theme_config"]] <- NULL
        } else {
          value <- c(value, list(theme_config = global_theme_config))
        }
      }
      if (!is.null(input_values)) {
        value <- c(value, input_values)
      } else {
        value <- c(value, formal_values)
      }
    }
  })
  names(config) <- gsub("add_", "", names(config), fixed = TRUE)
  Filter(Negate(is.null), config)
}
