#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
library(tidyr)
source("functions.R")

# Define UI for application that draws a histogram
ui <- fluidPage(
   
   # Application title
   titlePanel("Best Econ App Everrrr"),
   
   # Create a new Row in the UI for inputs
   fluidRow(
     column(4,
            sliderInput("amount",
                        "Initial Amount",
                        0,
                        100000,
                        1000,
                        500,
                        pre="$")
     ),
     column(4,
            sliderInput("rate",
                        "Return Rate (in %)",
                        0,
                        20,
                        5,
                        .1)
     ),
     column(4,
            sliderInput("num_years",
                        "Years",
                        0,
                        50,
                        20,
                        1)
     )
   ), 
   # Create a new Row in the UI for inputs
   fluidRow(
     column(4,
            sliderInput("contrib",
                        "Annual Contribution",
                        0,
                        50000,
                        2000,
                        500,
                        pre="$")
     ),
     column(4,
            sliderInput("growth",
                        "Growth Rate (in %)",
                        0,
                        20,
                        2,
                        .1)
     ),
     column(4,
            selectInput("facet",
                        "Facet?",
                        c("No", "Yes"))
     )
   ),
   hr(),
   #plot graph
   tags$h3("Timelines"),
   fluidRow(
     column(12, plotOutput("plot"))
   ),
   
   #show table
   tags$h3("Balances"),
   fluidRow(
    column(12, tableOutput("tbl"))
   )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
   
   output$plot <- renderPlot({
     
      # create table using functions from Warmup 06
      balances = make_table(input$amount, 
                           input$contrib, 
                           input$rate, 
                           input$growth,
                           input$num_years)
     
      # gather balance columns so ggplot can plot it easily
      gbalances = gather(balances, "modality", "balance", -year)
      
      # draw plot with ggplot
      gg = ggplot(data=gbalances, aes(x=year, y=balance, col=modality, fill=modality)) +
        geom_line() +
        geom_point() +
        ggtitle("Three modes of investing")
      
      if (input$facet == "Yes") {
        gg = gg + facet_grid(.~ modality) +geom_area(alpha=.5)
      }
      
      gg
   })
   
   output$tbl = renderTable(make_table(input$amount, 
                                       input$contrib, 
                                       input$rate, 
                                       input$growth,
                                       input$num_years))
}

# Run the application 
shinyApp(ui = ui, server = server)

