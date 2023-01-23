getwd()

library(ggplot2)

dt1<-read.csv("mlb_players_18.csv")
dt2<-data.frame(dt1)


smoothScatter(dt2$H, dt2$AVG, main="Scatterplot Example", 
     xlab="H", ylab="AVG", type = "p",pch=2)


