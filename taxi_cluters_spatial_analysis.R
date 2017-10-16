#Visualization of Taxi Availability Clusters on a busy Monday morning 
set.seed(2017-10-05)
library(dplyr)
library(leaflet)

taxi_data <- read.csv('taxi_coordinates_2017-10-02T18:00:00_monday.csv')

taxi_data %>%
  leaflet() %>%
  addTiles() %>%
  addMarkers(clusterOptions = markerClusterOptions())

taxi_data %>%
  leaflet() %>%
  addTiles() %>%
  addCircles(radius = 2,color = "blue")
