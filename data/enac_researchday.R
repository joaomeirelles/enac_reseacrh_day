library(ggplot2)
library(plyr)


options(scipen=10000)



setwd("/home/jm/Dropbox/PhD/events/enac_research_day")
urban_pop <- read.csv(file="./data/un_urbanpopulation.csv", sep=",", stringsAsFactors=FALSE)
head(urban_pop)
year(urban_pop$year)

ggplot(urban_pop)+
  
  geom_line(aes(year, WORLD/1000000), color='black')+
  annotate(geom="text", x=1955, y=6, label="world", colour="black", size=4, family="Courier")+

  
  geom_line(aes(year, More.developed.regions/1000000), color='steelblue')+
  annotate(geom="text", x=1965, y=5, label="More developed regions", colour="steelblue", size=4, family="Courier")+
    
  geom_line(aes(year, Less.developed.regions/1000000), color='brown')+
  annotate(geom="text", x=1965, y=5.5, label="Less developed regions", colour="brown", size=4, family="Courier")+
                                                                
  
  
  labs(x="year", y="", title="urban population [millions]")+
  theme_bw()+
  theme(text=element_text(size=16,  family="Courier"),
        plot.title = element_text(size=16, face="bold", margin = margin(10, 0, 10, 0)),
        panel.border = element_blank(), panel.grid.major = element_blank(),
                     panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))
ggsave("./pics/growth.png", width = 7, height = 4)
ggsave("./pics/growth2.png", width = 7, height = 4)
