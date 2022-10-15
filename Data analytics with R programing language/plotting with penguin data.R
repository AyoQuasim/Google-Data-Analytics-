#To plot on R studio “ggplot2” and “palmerpenguins”
install.packages(ggplot2)
install.packages(palmerpenguins)
#then load the two packages
library(ggplot2) 
library(palmerpenguins)
#Load and view the data
data(penguins) 
View(penguins)
# To created a scatter plot to show the relationship between flipper 
#length and body mass in three penguin species
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,color=species))

#Adding Title and subtitle to visuals
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,color=species)) + 
  labs(title = "palmer penguins: Body mass vs Flipper Length", 
       subtitle = "sample of three penguins species", 
       caption = "Data collected by Dr. Kristen Gorman") + 
  annotate("text", x=220,y=3500,label="The Genttos are the largest",
           color="purple",fontface="bold",size=4.5,angle=25)

#To keep your code short, you can assign it to a letter
P <- ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,color=species)) + 
  labs(title = "palmer penguins: Body mass vs Flipper Length", 
       subtitle = "sample of three penguins species", 
       caption = "Data collected by Dr. Kristen Gorman")

#Adding annotation to it
P + annotate("text", x=220,y=3500,label="The Genttos are the largest",
             color="purple",fontface="bold",size=4.5,angle=25)

#To try another way of  ploting
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) +  
  geom_point()

#To save visual using code
ggsave("Penguins Three Specie Visual.png")
