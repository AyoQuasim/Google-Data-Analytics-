#To upload Csv file into R studio
hotel_bookings <- read.csv("hotel_bookings.csv")

#Summary of the dataset
head(hotel_bookings)

#column names of the dataset
colnames(hotel_bookings)

#load ggplot2 cause it has been installed before
library(ggplot2)

#plotting of bar chart using hotel bookings dataset
ggplot(data = hotel_bookings) + 
  geom_bar(mapping = aes(x=distribution_channel))

#
ggplot(data = hotel_bookings) + 
  geom_bar(mapping = aes(x=distribution_channel,fill=deposit_type))

#using market segment
ggplot(data = hotel_bookings) + 
  geom_bar(mapping = aes(x=distribution_channel,fill=market_segment))

#adding facet to the bar chart
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type)

# adjusting the x-axis label angle to be readable
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))

#facet for market segment
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~market_segment) +
  theme(axis.text.x = element_text(angle = 45))

#using facet grid
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_grid(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))

#plotting two variable in one bar chart
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type~market_segment) +
  theme(axis.text.x = element_text(angle = 45))
