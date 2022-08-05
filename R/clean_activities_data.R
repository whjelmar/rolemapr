clean_activities_data <- function(data) {
  data %>%
    janitor::clean_names() %>%
    dplyr::mutate(
      inputs = stringr::str_replace_all(inputs, "\r\n", "<br>"),
      outputs = stringr::str_replace_all(outputs, "\r\n", "<br>"),
      templates = stringr::str_replace_all(templates, "\r\n", "<br>"),
      training = stringr::str_replace_all(training, "\r\n", "<br>"),
      informed = stringr::str_replace_all(informed, "\r\n", "<br>"),
      consulted = stringr::str_replace_all(consulted, "\r\n", "<br>"),
      operational_controls = stringr::str_replace_all(operational_controls, "\r\n", "<br>"),
      initiatives_to_close_gaps = stringr::str_replace_all(initiatives_to_close_gaps, "\r\n", "<br>"),
      core_techniques = stringr::str_replace_all(core_techniques, "\r\n", "<br>"),
      additional_techniques = stringr::str_replace_all(additional_techniques, "\r\n", "<br>"),
    )
}
