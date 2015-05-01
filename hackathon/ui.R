
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Old Faithful Geyser Data"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      checkboxGroupInput("Variables", 
                         label = h3("Variables"), 
                         choices = list("Population Density" = 1, 
                                        "Poverty" = 2, 
                                        "Purchasing Power" = 3,
                                        "Secondary Enrollment Rate" = 4,
                                        "Urban Growth Rate" = 5,
                                        "GDP" = 6,
                                        "Mobile Subscriptions" = 7,
                                        "Internet Users" = 8,
                                        "Aid Funding" = 9,
                                        "Homicide Rate" = 10,
                                        "Fragility Index" = 11,
                                        "Effectiveness Index" = 12,
                                        "Legitimacy Index" = 13,
                                        "US Deportation" = 14,
                                        "US Criminal Deportation" = 15,
                                        "Net Migration" = 16),
                           
                                        
                         selected = c(2,4,10,12,16))
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
