# Assignment 8 - Building Applications

# Set working directory
# setwd("~/Documents/INFO498F/a8-building-applications")

# Load packages
library(shiny)
library(dplyr)
library(plotly)

# Load iris data
data("iris")

shinyServer(function(input, output) {
  createPlot <- eventReactive(input$render, {
    
    runif(input$flower_species != "Choose a species...")
    
      
    title_plot <- paste0("Petal Length vs. Sepal Length (and Sepal Width) for ", input$flower_species, " Flowers")
    dataframe <- filter(iris, Species == input$flower_species)
    p <- plot_ly(data = dataframe, x = Sepal.Length, y = Petal.Length, mode = "markers", 
                 color = Sepal.Width, size = Petal.Width) %>%
    layout(title = title_plot, width = 825, height = 525) 
    return (p)
  })
  
  # Create a "plot" variable on output 
  output$plot <- renderPlotly({ 
    createPlot()
  })
})