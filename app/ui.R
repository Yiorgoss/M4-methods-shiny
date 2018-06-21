#source("data/Futures.Rdata")

ui <- fluidPage(

    
    selectInput(
        inputId="meths"
        ,label="Select Method"
        ,choices=c(
                   "a"
                   ,"b"
                   ,"c"
                   )
                 )
    ,plotOutput("ddown")

)
