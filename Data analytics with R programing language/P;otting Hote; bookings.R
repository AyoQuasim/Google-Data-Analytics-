hotel_bookings <- read.csv("hotel_bookings.csv")
View(hotel_bookings)
library(ggplot2)
ggplot(data = hotel_bookings) + geom_point(mapping = aes(x = lead_time, y = children))
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = stays_in_weekend_nights, y = children))