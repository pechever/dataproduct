library(shiny)
library(cluster)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot
  
  output$cpPlot <- renderPlot({
     
    Twitter_Kmean=kmeans(Twitter,input$clusters)
   #iris_fit <- Mclust(iris[,1:4])
   
   clusplot(Twitter, Twitter_Kmean$cluster, color=TRUE, shade=TRUE, labels=2, lines=0)
   
    
  })
  output$kmeanPlot <- renderPlot({
    
    Twitter_Kmean=kmeans(Twitter,input$clusters)
    
    plot(Twitter, col=Twitter_Kmean$cluster)
    
    
  })

  
  output$summary <- renderPrint({
   
    summary(Twitter)
  })
})
