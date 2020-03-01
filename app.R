library(shiny)
library(timepickerInput)

ui <- fluidPage(
  titlePanel("reactR Input Example"),
  timepickerInput("textInput",
                  configuration = list(disableClock = TRUE,
                                       format = "HH:mm",
                                       hourPlaceholder = "HH",
                                       minutePlaceholder = "MM")),
  textOutput("textOutput")
)

server <- function(input, output, session) {
  output$textOutput <- renderText({
    sprintf("You entered: %s", input$textInput)
  })
}

shinyApp(ui, server)
