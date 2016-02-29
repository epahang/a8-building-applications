# Assignment 8 - Building Applications

# Set working directory
# setwd("~/Documents/INFO498F/a8-building-applications")

# Load packages
library(shiny)
library(plotly)


shinyUI(fluidPage(
  # Title
  titlePanel("Iris Data Visualization"),
  
  # Create sidebar layout
  sidebarLayout(
    
    # Side panel for controls
    sidebarPanel(
      
      # Widget 1: Create a select box for plot
      selectInput("flower_species", label = h3("Choose flower species"), 
                  choices = list("Choose a species..." = 'Choose a species...', "Setosa" = 'setosa', "Versicolor" = 'versicolor', "Virginica" = 'virginica'), 
                  selected = 'Choose a species...'),
      
      # Widget 2: Create an action button
      actionButton("render", "Generate plot")
    ),
    
    mainPanel(
      plotlyOutput('plot')
    )
  )
))