
#to import the data from the .csv file
flavors_df  <-read.csv("flavors_of_cacao.csv")

#review the structure of the data frame
str(flavors_df)


library(tidyverse)
library(ggplot2)
library(dplyr)

#To rename a column
flavors_df %>%
  rename(Brand = Company...Maker.if.known.)
str(flavors_df)

# select() function to create a new data frame with only these three variables
#which are Rating, Cocoa.Percent, and Bean.Type.
trimmed_flavors_df <- flavors_df %>% select(Company...Maker.if.known., Rating, Cocoa.Percent, Bean.Type )
trimmed_flavors_df

#You want to use the summarize() and sd() functions 
#to find the standard deviation rating for your data
trimmed_flavors_df %>% summarize(sd(Rating))

#You want to use the summarize() and max() functions to
#find the maximum rating for your data
trimmed_flavors_df %>% summarize(mean(Rating))

#You want to apply the filter() function to the variables Cocoa
best_trimmed_flavors_df <- trimmed_flavors_df %>% filter(Cocoa.Percent >= 80, Rating >= 3.75)
best_trimmed_flavors_df

#You want to use the geom_bar() function to create a bar chart
ggplot(data = best_trimmed_flavors_df) + 
  geom_bar(mapping = aes(x = Rating))



# to highlight each bar. 
ggplot(data = best_trimmed_flavors_df) + 
  geom_bar(mapping = aes(x = Company.Location, fill = Rating))

#to create wrap around facets of the variable Cocoa.Percent
ggplot(data = best_trimmed_flavors_df) +
  geom_bar(mapping = aes(x = Cocoa.Percent)) + 
  facet_wrap(~Cocoa.Percent)

#to add the title Best Chocolates to your plot
ggplot(data = trimmed_flavors_df) +
  geom_point(mapping = aes(x = Cocoa.Percent, y = Rating)) + 
  labs(title = “Best Chocolates”)