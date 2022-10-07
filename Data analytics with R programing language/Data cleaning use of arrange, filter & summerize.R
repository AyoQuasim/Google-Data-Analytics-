#To carry out data cleaning process, tidyverse needed to installed and load
#Then pipe ( %>% ) is placed btw the dataset name and the cleaning 
install.packages(tidyverse)
library(tidyverse)
#then load arrange through pipe
penguins2 %>% arrange(bill_length_mm)
#To arrange in descending order
penguins2 %>% arrange(-bill_length_mm)
#To save as dataframe
penguins3 <- penguins2 %>% arrange(-bill_length_mm)
#To viewe our dataframe
view(penguins3)
#To group by without NAs a certain column, summarize and mean of a column
penguins2 %>% group_by(island) %>% drop_na() %>% 
  summarise(mean_bill_length_mm = mean(bill_length_mm))
#Let check another example
penguins2 %>% group_by(island) %>% drop_na() %>% 
  summarise(max_bill_length_mm = max(bill_length_mm))
#Grouping with 2 different columns
penguins2 %>% group_by(species, island) %>% drop_na() %>% 
  summarise(max_bl = max(bill_length_mm), mean_bl = mean(bill_length_mm))
#To filter using one data from the dataset, e.g using Adelie from specie column
#To extract the information of only a specific data from a dataset
penguins2 %>% filter(species == "Adelie")