library(shiny)
library(timepickerInput)

ui <- fluidPage(
  titlePanel("reactR Input Example"),
  timepickerInput("textInput"),
  textOutput("textOutput")
)

server <- function(input, output, session) {
  output$textOutput <- renderText({
    sprintf("You entered: %s", input$textInput)
  })
}

shinyApp(ui, server)