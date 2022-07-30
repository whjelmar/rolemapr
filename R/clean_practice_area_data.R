clean_practice_area_data <- function(data) {
  data %>%
    janitor::clean_names() %>%
    dplyr::mutate(pract = stringr::str_replace_all(pract,  '\r\n', '<br>'))
}
