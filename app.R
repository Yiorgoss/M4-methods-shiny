library(shiny)
library(googleVis)
library(dygraphs)

source("app/global.R")
source("app/ui.R", local=TRUE)
source("app/server.R")

shinyApp( ui=ui, server=server )


