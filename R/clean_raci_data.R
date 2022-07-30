clean_raci_data <- function(data) {
  data %>%
    janitor::clean_names() %>%
    select(-x14,-r_responsible_perform_a_approve_accountable_c_consult_i_inform) %>%
    tidyr::fill(process) %>%
    dplyr::filter(!is.na(data_management_life_cycle_phase)) %>%
    dplyr::mutate(process = stringr::str_replace_all(process,  '\r\n', ''))
}
