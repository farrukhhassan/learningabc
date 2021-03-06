ui <- fluidPage(
  radioButtons("rb", "Choose one:",
               choiceNames = list(
                 icon("calendar"),
                 HTML("<p style='color:red;'>Red Text</p>"),
                 "Normal text"
               ),
               choiceValues = list(
                 "icon", "html", "text"
               )),
  textOutput("txt")
)
server <- function(input, output) {
  output$txt <- renderText({
    paste("You chose", input$rb)
  })
}
shinyApp(ui = ui, server = server)
