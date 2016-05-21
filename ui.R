#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("SLM period Calculator"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("period",
                   "Period on SLM [pixels]:",
                   min = 6,
                   max = 12,
                   value = 6.09,
                   step =0.01),
       
       radioButtons("ReferenceWavelength", 
                          label = h3("Reference wavelength"), 
                          choices = list("405 nm" = 405, 
                                         "488 nm" = 488,
                                         "525 nm" = 525,
                                         "560 nm" = 560,
                                         "610 nm" = 610,
                                         "640 nm" = 640,
                                         "920 nm" = 920),
                          selected = 488)
       
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       h4(textOutput("info")),
       h4(textOutput("text1")),
       h3("Outputs:"),
       h4(textOutput("text2")),
       h4(textOutput("text3")),
       h4(textOutput("text4")),
       h4(textOutput("text5")),
       h4(textOutput("text6")),
       h4(textOutput("text7")),
       h4(textOutput("text8"))
    )
  )
))
