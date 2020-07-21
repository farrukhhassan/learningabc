library(shiny)
ui <- fluidPage(
  checkboxInput("somevalue", "Some value", FALSE),
  verbatimTextOutput("value")
)

server <- function(input, output) {
  output$value <- renderText({ input$somevalue })
}

shinyApp(ui = ui, server = server)
