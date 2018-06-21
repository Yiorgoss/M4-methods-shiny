library(shiny)
source("app/ui.R", local=TRUE)
source("app/server.R")

shinyApp( ui=ui, server=server )
