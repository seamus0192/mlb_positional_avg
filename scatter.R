getwd()

library(ggplot2)

dt1<-read.csv("mlb_players_18.csv")
dt2<-data.frame(dt1)


sub.categories = split(dt2,dt2$position)
A = numeric(10)
i = 1
for (category in sub.categories) {
  pos.avg = mean(category$AVG)
  A[i] = pos.avg
  i = i + 1
}


smoothScatter(dt2$AB, dt2$HR, main="Scatterplot Example", 
              xlab="H", ylab="AVG",nrpoints = Inf)

barplot(A,names.arg = c("1B","3B","2B","C","CF","DH","LF","P","SS","RF"))


