library(shiny)
library(googleVis)

server <- function( input, output){


    futures <- as.data.frame(futures_data)
    
    output$abc <- renderText({})
    output$g1 <- renderGvis({
        future <- subset(futures, as.Date(rownames(futures)) %in% seq(from=input$dateInput[1], to=input$dateInput[2], by="day"), select=input$futureInput)
        future <- cumsum(future)
        cumulative <- cbind.data.frame(future, x=as.Date(rownames(future)))
        gvisLineChart(
                      data=cumulative
                      ,xvar="x"
                      ,yvar=input$futureInput 
        )
    })
    output$t1 <- renderTable({
        head(data.frame(futures_data))
    })
}
