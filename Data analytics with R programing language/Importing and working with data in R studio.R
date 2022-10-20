#importing data to R studio
#Firstly load library
library(tidyverse)
#To load hotel bookings file into R studio
bookings_df <- read_csv("hotel_bookings.csv")
#to preview the data which returns the columns and first several rows of data
head(bookings_df)
# summaries of each column in the data arranged horizontally
str(bookings_df)
#To see column names of the data
colnames(bookings_df)
#to create new data frame called new_df
new_df <- select(bookings_df, `adr`, adults)
#to view the data frame
view(new_df)
#To add new collomn in the new data frame (new_df)
mutate(new_df, total = `adr` / adults)
#To import and save the file in the same folder as this R Markdown document manually. 
#To do this, go to the Files tab in the lower-right console. 
#Then, click the Upload button next to the + New Folder button. 
#This will open a popup to let you browse your computer for a file. 
#Select any .csv file, then click Open. 
#Now, write code in the chunk below to read that data into `R`: