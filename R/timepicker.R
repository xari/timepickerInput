#' <Add Title>
#'
#' <Add Description>
#'
#' @importFrom shiny restoreInput
#' @importFrom reactR createReactShinyInput
#' @importFrom htmltools htmlDependency tags
#'
#' @export
timepickerInput <- function(inputId, default = lubridate::now()) {
  reactR::createReactShinyInput(
    inputId,
    "timepicker",
    htmltools::htmlDependency(
      name = "timepicker-input",
      version = "1.0.0",
      src = "www/timepickerInput/timepicker",
      package = "timepickerInput",
      script = "timepicker.js"
    ),
    default,
    list(),
    htmltools::tags$span
  )
}

#' <Add Title>
#'
#' <Add Description>
#'
#' @export
updateTimepickerInput <- function(session, inputId, value, configuration = NULL) {
  message <- list(value = value)
  if (!is.null(configuration)) message$configuration <- configuration
  session$sendInputMessage(inputId, message);
}
