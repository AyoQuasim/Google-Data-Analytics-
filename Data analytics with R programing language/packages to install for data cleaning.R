#To install here package in R studio
install.packages("here")
#to load the installed package
library("here")
install.packages("skimr")
library("skimr")
install.packages("janitor")
library("janitor")
install.packages("dplyr")
library("dplyr")
install.packages("palmerpenguins")
library("palmerpenguins")
#To get comprehensive summary of a dataset
skimr::skim_without_charts(penguins)
#To get idea of what in the dataset(summary of the data)
glimpse(penguins)
#To get first few rows of the data set
head(penguins)
#To select a specific column (specie) from the data set,
#we can use pipe " %>% " ctrl+shift+m
#selecting specie column 
penguins %>% 
  select(species)
#To select all column except a particular on, you add (-) to the column we exempt
#now we are selecting all column except species
penguins %>% 
  select(-species)
#To rename a column, e.g renaming island to island new
penguins %>% 
  rename(island_new=island)
#To make column names of data set (penguins) uppercase
rename_with(penguins, toupper)
#To make column names of data set (penguins) lowercase
rename_with(penguins, tolower)
#To clean name
penguins %>%
clean_names(penguins)
