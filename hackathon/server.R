
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(corrplot)

shinyServer(function(input, output) {

  output$distPlot <- renderPlot({
    # generate bins based on input$bins from ui.R
    #Read in data
    rawData<-read.table("HondoTransp.csv", header=TRUE, sep=",")
    rawData<-rawData[1:9,as.numeric(input$Variables)+1]
    #calculate correlations
    x<-cor(rawData)
    #plot correlations
    corrplot(x, method = "ellipse")
    #correlation plot matrix
    #plot(rawData)
    # draw the histogram with the specified number of bins

  })

})
