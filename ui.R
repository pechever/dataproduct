library(shiny)
library(cluster)

# Define UI for application that plotting
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Clusters"),
  
  # Sidebar with a slider input for the number of clusters
  sidebarLayout(
    sidebarPanel(
      sliderInput("clusters",
                  "Number of clusters:",
                  min = 1,
                  max = 10,
                  value = 3)
    ),
    
    # Show clusters in a plot
    mainPanel(
      plotOutput("kmeanPlot"),
      plotOutput("cpPlot"),
      verbatimTextOutput("summary")
    )
  )
))
