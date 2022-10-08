#To do statistical calculation, you need to install Tmisc
install.packages("Tmisc")
#Then load Tmisc
library(Tmisc)

#run quartet
data("quartet")
#view quartet
view(quartet)

#To run a statistical calculations, pipe is needed
quartet %>% 
  group_by(set) %>% 
  summarise(mean(x),sd(x),mean(y),sd(y),cor(x,y) )

#To plot the 4 quartet
ggplot(quartet,aes(x,y)) + geom_point() +
  geom_smooth(method=1m,se=FALSE)
+ facet_wrap(-set)


install.packages("datasauRus")
library("datasauRus")

ggplot(datasaurus_dozen,aes(x=x,,y=y, colour=dataset))+geom_point()+
  theme_void()+theme(legend.position = "none")+facet_wrap(~)