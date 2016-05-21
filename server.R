#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$text1 <- renderText({ 
    paste("You have selected the reference wavelength", input$ReferenceWavelength, "nm and a period of", input$period, "pixels.")
    })
  output$text2 <- renderText({ 
    paste("405 nm:", format(round(405*as.numeric(input$period)/as.numeric(input$ReferenceWavelength),2), nsmall = 2), "pixels.")
  })
  output$text3 <- renderText({
    paste("488 nm:", format(round(488*as.numeric(input$period)/as.numeric(input$ReferenceWavelength),2), nsmall = 2), "pixels.")
  })
  output$text4 <- renderText({
    paste("525 nm:", format(round(525*as.numeric(input$period)/as.numeric(input$ReferenceWavelength),2), nsmall = 2), "pixels.")
    })
  output$text5 <- renderText({
    paste("560 nm:", format(round(560*as.numeric(input$period)/as.numeric(input$ReferenceWavelength),2), nsmall = 2), "pixels.")
    })
  output$text6 <- renderText({
    paste("610 nm:", format(round(610*as.numeric(input$period)/as.numeric(input$ReferenceWavelength),2), nsmall = 2), "pixels.")
    })
  output$text7 <- renderText({
    paste("640 nm:", format(round(640*as.numeric(input$period)/as.numeric(input$ReferenceWavelength),2), nsmall = 2), "pixels.")
    })
  output$text8 <- renderText({
    paste("920 nm:", format(round(920*as.numeric(input$period)/as.numeric(input$ReferenceWavelength),2), nsmall = 2), "pixels.")
    })
  output$info <- renderText({ 
    paste("A spatial light modulator (SLM) diffracts light at an angle theta when a sinusoidal period is applied to it. The angle theta is wavelength dependent. This calculator provides the required period for the sinusoidal pattern required to maintain theta at different wavelengths. Users need to input a reference period and wavelength.")
  })
  
})
