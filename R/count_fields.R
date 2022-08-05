#' Group_by and count the occurances of a group in a data set
#'
#' Group a dataset by a field and provide the counts of each group
#'
#' @description
#' This takes a tibble and a field name and does a group_by that field and
#' counts the results
#'
#' @param data The tibble to count groups
#' @param field_name The name of the field to group and count
#'
#' @export
#' @importFrom rlang enquo
#'
#' @examples
#' counts_fields(practice_data, practice_area)
#'
counts_fields <- function(data, field_name) {
  f <- enquo(field_name)
  data %>%
    dplyr::group_by(practice_area) %>%
    dplyr::count()
}
