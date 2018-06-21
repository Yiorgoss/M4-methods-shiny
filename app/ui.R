source("data/Futures.Rdata")

ui <- fluidPage(
                sliderInput(
                            inputId="num"
                            ,min=10
                            ,max=1000
                            ,value=25
                            ,label="agjkals"
                            )
                ,plotOutput("hist")
                )
server <- function( input, output){
    
    output$hist <- renderPlot({
        title <- "title"
        hist(rnorm(input$num), main=title)
    })

}
