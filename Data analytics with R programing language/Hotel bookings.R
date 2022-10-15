#install and load `tidyverse`, `skimr`, and `janitor`
#if already install, just load
library(tidyverse)
library(skimr)
library(janitor)

#To upload csv data needed for cleaning
hotel_bookings <- read.csv("hotel_bookings.csv")
view(hotel_bookings)

#To view summary of the file uploaded
head(hotel_bookings)
str(hotel_bookings)
#shows no of rows, columns, data type of each column
glimpse(hotel_bookings)
#to show column names of the dataset
colnames(hotel_bookings)

#Manipulating your data by arranging by most lead time column in ascending order
arrange(hotel_bookings, lead_time)
#Manipulating your data by arranging by most lead time column in descending order
arrange(hotel_bookings, desc(lead_time))
#or
arrange(hotel_bookings, (-lead_time))
#making it a dataframe with the name hotel_bookings_v2
hotel_bookings_v2 <-
  arrange(hotel_bookings, desc(lead_time))
#summary of the new dataframe (1st few rows)
head(hotel_bookings_v2)


#find out the maximum and minimum lead times
#without sorting the whole data set using the `arrange()` function
#$ sign is used between the DF & the column name
max(hotel_bookings$lead_time)
min(hotel_bookings$lead_time)
mean(hotel_bookings$lead_time)
mean(hotel_bookings_v2$lead_time)

#to extract information on city hotel only
hotel_bookings_city <- 
  filter(hotel_bookings, hotel_bookings$hotel=="City Hotel")
#To view table in the console
print(hotel_bookings_city)
#To view sumary in the console
head(hotel_bookings_city)
mean(hotel_bookings_city$lead_time)

#Finding mean,min and max without writing codes differently
hotel_summary <- 
  hotel_bookings %>%
  group_by(hotel) %>%
  summarise(average_lead_time=mean(lead_time),
            min_lead_time=min(lead_time),
            max_lead_time=max(lead_time))
head(hotel_summary)
view(hotel_summary)
