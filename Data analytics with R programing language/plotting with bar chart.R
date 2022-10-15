
#To add color to the bar
ggplot(data = diamonds) + geom_bar(mapping = aes(x=cut,fill=cut))
#bar chart with fill clarity
ggplot(data = diamonds) + geom_bar(mapping = aes(x=cut,fill=clarity))
#dotplot
ggplot(data = diamonds) + geom_dotplot(mapping = aes(x=cut,fill=cut)) + facet_wrap(~cut) 

#using facet for diamond
ggplot(data = diamonds) + geom_bar(mapping = aes(x=cut,color=cut)) +
  facet_wrap(~cut)

#Adding colour to your facet
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x=color,fill=cut)) + 
  facet_wrap(~cut)

View(diamonds)