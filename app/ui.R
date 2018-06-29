library(shiny)
library(googleVis)

ui <- fluidPage(
    
    titlePanel("ShinyProj")
    ,sidebarLayout( mainPanel(

                              textOutput("abc")
                              ,htmlOutput("g1")
                              ,tableOutput("t1")
                              )
                   ,sidebarPanel(
                                 selectInput("futureInput"
                                             ,label="Future:"
                                             ,choices=colnames(futures_data)
                                             )
                                 ,sliderInput("dateInput"
                                              ,label="Dates: "
                                              ,min=as.Date("2001-01-02", "%Y-%m-%d")
                                              ,max=as.Date("2015-09-24", "%Y-%m-%d")
                                              ,value=c(as.Date("2001-01-03"), as.Date("2015-09-24"))
                                              ,timeFormat="%Y-%m-%d"
                                              )

                                )
        
    )
)


