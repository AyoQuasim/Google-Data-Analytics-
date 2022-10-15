library(ggplot2)

hotel_bookings <- read.csv("hotel_bookings.csv")

head(hotel_bookings)


colnames(hotel_bookings)

#scatterplot to explore the relationship between booking 
#lead time and guests traveling with children
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))

#To create a bar chart showing each hotel type and market segment.
#You use different colors to represent each market segment: 

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel, fill = market_segment))

#to create a separate plot for each market segment
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel)) +
  facet_wrap(~market_segment)

library(tidyverse)

#filtering a dataset to just city hotels that are online TA
onlineta_city_hotels <- filter(hotel_bookings, 
                               (hotel=="City_Hotel" & 
                                  hotel_bookings$market_segment=="online_TA"))

#to view the dataset
View(onlineta_city_hotels)

#filtering a dataset to just city hotels that are online TA using pipe
onlineta_city_hotels_v2 <- hotel_bookings %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")

#to view the dataset
View(onlineta_city_hotels_v2)

#To create scatter plot using onlineta_city_hotels_v2 dataset
ggplot(data = onlineta_city_hotels_v2) +
  geom_point(mapping = aes(x = lead_time, y = children))