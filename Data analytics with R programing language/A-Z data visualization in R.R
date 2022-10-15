#To Import data
hotel_bookings <- read.csv("hotel_bookings.csv")

#look at data
head(hotel_bookings)

#look at column names
colnames(hotel_bookings)

#Install and load the 'ggplot2' and 'tidyverse' packages
#loading and installing ggplot2
install.packages('ggplot2')
library(ggplot2)

#install and download tidyverse
install.packages('tidyverse')
library(tidyverse)

#Plotting the chart
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment))

#faceting a plot
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel)

#faceting a plot with a title
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  labs(title="Hotel bookings showing market segment")

#to add another detail about what time period this data covers
#earliest year
min(hotel_bookings$arrival_date_year)
#latest year
max(hotel_bookings$arrival_date_year)

#to save them as variables
mindate <- min(hotel_bookings$arrival_date_year)
maxdate <- max(hotel_bookings$arrival_date_year)

#Adding Titles and subtitle
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       subtitle=paste0("Data from: ", mindate, " to ", maxdate))

#Adding Titles and caption
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       caption=paste0("Data from: ", mindate, " to ", maxdate))

#to  x and y axis labels have been changed from 'market_segment' 
#and 'count' to 'Market Segment' and 'Number of Bookings' 
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       caption=paste0("Data from: ", mindate, " to ", maxdate),
       x="Market Segment",
       y="Number of Bookings")

#Saving your chart
ggsave('hotel_booking_chart.png')
#Saving chart with a given dimension
ggsave('hotel_booking_chart with given dimension.png',
       width=16,
       height=8)

