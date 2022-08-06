#' Describe basic information
#'
#' Describe basic information for input data.
#' @param data input data
#' @keywords introduce
#' @return Describe basic information in input data class:
#' \itemize{
#'   \item{rows: number of rows}
#'   \item{columns: number of columns}
#'   \item{discrete_columns: number of discrete columns}
#'   \item{continuous_columns: number of continuous columns}
#'   \item{all_missing_columns: number of columns with everything missing}
#'   \item{total_missing_values: number of missing observations}
#'   \item{complete_rows: number of rows without missing values. See \link{complete.cases}.}
#'   \item{total_observations: total number of observations}
#'   \item{memory_usage: estimated memory allocation in bytes. See \link{object.size}.}
#' }
#' @import tibble
#' @importFrom stats complete.cases
#' @importFrom utils object.size
#' @export introduce

introduce <- function(data) {
  ## Check and set to tibble
  is_tibble <- is_tibble(data)
  data_class <- class(data)
  if (!is_tibble(data)) data <- tibble(data)

  split_data <- split_columns(data)

  output <- tibble(
    "rows" = nrow(data),
    "columns" = ncol(data),
    "discrete_columns" = split_data[["num_discrete"]],
    "continuous_columns" = split_data[["num_continuous"]],
    "all_missing_columns" = split_data[["num_all_missing"]],
    "total_missing_values" = sum(is.na(data)),
    "complete_rows" = sum(complete.cases(data)),
    "total_observations" = nrow(data) * ncol(data),
    "memory_usage" = as.numeric(object.size(data))
  )

  ## Set data class back to original
  if (!is_tibble) class(output) <- data_class
  output
}
