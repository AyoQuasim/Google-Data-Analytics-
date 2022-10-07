#In order to start cleaning your data
#tidyverse,skimr,janitor must be installed and loaded 
install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")
#if it has been instaled before, loading is only needed
library(tidyverse)
library(skimr)
library(janitor)
#load csv file into R studio
bookings_df <- read.csv("hotel_bookings.csv")
#to view the data 
view(bookings_df)
#To preview the dataset
head(bookings_df)
#to preview the summary of the dataset
str(bookings_df)
#to get a better understanding of the data 
glimpse(bookings_df)
#to check the names of the columns in your data set
colnames(bookings_df)
#To use skim without chart, you need to install skimr
skim_without_charts(bookings_df)
#To  select few column from the dataset
bookings_df %>% select(hotel, is_canceled, lead_time)
#Giving it a name i.e making it a data frame
trimmed_df <- bookings_df %>% 
  select(hotel, is_canceled, lead_time)
#Renaming a column from the new Dataset 
trimmed_df %>% 
  select(hotel, is_canceled, lead_time) %>% 
  rename(hotel_type = hotel)
#To combine two columns using the unite() function
example_df <- bookings_df %>%
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"),
        sep = " ")
#Let's say you wanted to create a new column that summed up all the adults,
#,children, and babies on a reservation for the total number of people.
example_df <- bookings_df %>%
  mutate(guests = adults + children + babies)
#To view example_df dataset
view(example_df)
head(example_df)
#Calculate the total number of canceled bookings 
#and the average lead time for booking
example_df_2 <- bookings_df %>%
  summarize(number_canceled = sum(is_canceled),
            average_lead_time = mean(lead_time))
#to view
view(example_df_2)
#to use head
head(example_df_2)