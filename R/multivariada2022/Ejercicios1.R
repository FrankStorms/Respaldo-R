#Francisco Storms

#Estadistica descriptiva data= ChickWeight; y=weight

# Histogramas utilizando hist()
#a) Con color
#b) Separado por dieta
#c) Con un color diferente para cada dieta
View (ChickWeight)

hist(ChickWeight$weight, col = ChickWeight$Diet, border = "pink")

#Histograma con ggplot
library(ggplot2)
qplot(ChickWeight$weight,
      geom = "histogram",
      fill="blue",
      col="red")

#Boxplot defaul
boxplot(weight ~ Diet, data=ChickWeight, col= c("blue","pink","red","green"))

#Boxplot con ggplot
ggplot(ChickWeight, aes(x=Diet, y=weight, color=Diet))+
  geom_boxplot()

ChickWeight$Diet <- as.numeric(ChickWeight$Diet)
dos<-hist(weight~)
hist(ChickWeight$weight, col = c("red","green","orange","pink"))
hist(ChickWeight$weight, col = ChickWeight$Diet, border = "pink")

     