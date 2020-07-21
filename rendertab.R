if (interactive()) {
  # pass a callback function to DataTables using I()
  shinyApp(
    ui = fluidPage(
      fluidRow(
        column(12,
               dataTableOutput('table')
        )
      )
    ),
    server = function(input, output) {
      output$table <- renderDataTable(iris,
                                      options = list(
                                        pageLength = 5,
                                        initComplete = I("function(settings, json) {alert('Done.');}")
                                      )
      )
    }
  )
}
shinyApp(ui = ui, server = server)
