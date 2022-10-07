#Arranging data (penguins) with respect to a particular column (bill length)
penguins %>% arrange(bill_length_mm)#it will automatically be in ascending order
#to make it arrange in descending order
penguins %>% arrange(-bill_length_mm)

#To save in data frame
penguins2 <- penguins %>% arrange(-bill_length_mm)
#To view the dataframe
View(penguins2)

#To group dataset Penguins with a particular column (island)
penguins %>% group_by(island)
#To remove NAs
penguins %>% group_by(island) %>% drop_na() %>% summarise(mean_bill_length_mm = mean(bill_length_mm))