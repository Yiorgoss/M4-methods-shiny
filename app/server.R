server <- function( input, output){
    
    output$hist <- renderPlot({
        title <- "title"
        hist(rnorm(input$num), main=title)
    })
}
