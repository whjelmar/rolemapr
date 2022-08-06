#' Get data from an Excel file
#'
#' Retrieve the data stored in an Excel file
#'
#' @description
#' A wrapper around the readxl::read_excel function to get data from an Excel
#' file.  It is a convenience function for using targets.  As most of the data
#' cleaning functions that have been moved to the clean_* set of functions, this
#' may not need to exist anymore, but it is left for heritage purposes.
#'
#' @param file The relative path to the Excel data file.
#' @param sheet_name The name of the particular worksheet from which we wish to
#' get data.  The default is Sheet1.
#' @param skip_rows The number of rows in the sheet to skip before processing
#' the file.  The default is 0. This allows the user to deal with files that have
#' rows that contain data that we do not wish to use in our analysis.
#'
#' @importFrom readxl read_excel
#' @export

get_excel_data <- function(file, sheet_name = "Sheet1", skip_rows = 0) {
  readxl::read_excel(file, sheet = {{ sheet_name }}, skip = {{ skip_rows }})
}
