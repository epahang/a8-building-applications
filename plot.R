#library(dplyr)
#library(plotly)
# File to use to test if graph works alone

# Plot function for iris data
create_Plot <- function(df, species_type) {
  title_plot <- paste0("Petal Length vs. Sepal Length (and Sepal Width) for ", species_type, " Flowers")
  dataframe <- filter(df, Species == species_type)
  p <- plot_ly(data = dataframe, x = Sepal.Length, y = Petal.Length, mode = "markers", 
               color = Sepal.Width, size = Petal.Width) %>%
       layout(title = title_plot)
  
  return(p)
}