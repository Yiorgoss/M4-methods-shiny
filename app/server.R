server <- function( input, output){
    
    output$ddown <- renderPlot({
        title <- input$meths
        hist(rnorm(100), main=title)
    })
}
