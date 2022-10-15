library(ggplot2)
library(palmerpenguins)
View(penguins)
ggplot(data=penguins) + geom_point(mapping=aes(x=flipper_lenght_mm,y=body_mass_g))
#adding colour to our visual using specie column

ggplot(data = penguins) + geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))

#Adding shape to our visuals

ggplot(data = penguins) + geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,shape=species))

#combing the two
ggplot(data = penguins) + geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species,shape=species))

#making it 3
ggplot(data = penguins) + geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species,shape=species,size=species))

#marking Alpha to specie
ggplot(data = penguins) + geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,alpha=species))

#changing color of data points

ggplot(data = penguins) + geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g),color="red")

#ploting with line graph
ggplot(data = penguins) + geom_smooth(mapping = aes(x=flipper_length_mm,y=body_mass_g))

#to plot 2 different visual together trending line and scatter
ggplot(data = penguins) + geom_smooth(mapping = aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g))

#To plot each specie separately
ggplot(data = penguins) + geom_smooth(mapping = aes(x=flipper_length_mm,y=body_mass_g,linetype=species))

#To plot jittering
ggplot(data = penguins) + geom_jitter(mapping = aes(x=flipper_length_mm,y=body_mass_g))
