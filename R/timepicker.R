#' <Add Title>
#'
#' <Add Description>
#'
#' @importFrom shiny restoreInput
#' @importFrom reactR createReactShinyInput
#' @importFrom htmltools htmlDependency tags
#'
#' @export
timepickerInput <- function(inputId,
                            default = format(lubridate::now(), "%H:%M")) {
  reactR::createReactShinyInput(
    inputId,
    "timepicker form-control shiny-timepicker-input",
    htmltools::htmlDependency(
      name = "timepicker-input",
      version = "1.0.0",
      src = "www/timepickerInput/timepicker",
      package = "timepickerInput",
      script = "timepicker.js",
      stylesheet = "custom.css"
    ),
    default,
    list(disableClock = TRUE,
         format = "HH:mm",
         hourPlaceholder = "HH",
         minutePlaceholder = "MM"),
    htmltools::tags$div
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
