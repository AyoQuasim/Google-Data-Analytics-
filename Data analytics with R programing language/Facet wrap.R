library(ggplot2)
library(palmerpenguins)

#Facet functions let you display smaller groups, or subsets, of your data. 

#Plotting different category of data within one dataset differently
ggplot(data = penguins, aes(x=flipper_length_mm, 
                 y=body_mass_g)) +
  geom_point(aes(color=species)) +
  facet_wrap(~species)

#using diamond data
#using facet for diamond
ggplot(data = diamonds) + geom_bar(mapping = aes(x=cut,color=cut)) +
  facet_wrap(~cut)

#Adding colour to your facet
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x=color,fill=cut)) + 
  facet_wrap(~cut)


#To facet two variables
ggplot(data = penguins) + 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species)) + 
  facet_grid(sex~species)
