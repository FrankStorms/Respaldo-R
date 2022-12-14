install.packages("Hotelling")
library()
install.
install.packages("corpcor")
install.packages("container")
library(Hotelling)
library(corpcor)
data("container.df")
head(container.df)

head(iris)
attach(iris)
newdata <- cbind(Sepal.Length,Sepal.Width,Petal.Length,Petal.Width)
newdata
detach(iris)

fit <- manova(newdata ~ Species, data=iris)
summary.manova(fit)

summary(manova(as.matrix(iris[,1:4])~as.matrix(iris[,5])))

head(iris)
para_manova <- iris[,1:4]
para_manova
armanova <- as.matrix(para_manova)

we <- manova(armanova ~ Species, iris )
summary.manova(we)

install.packages("rstatix")

library(rstatix)
#Para saber si hay distribución multinormal , si no es valido no se puede hacer un manova
mshapiro_test(iris [, 1:4])

#Es para conocer la homogenidad de las matrices varianza-covarianza. Ho: Hay homogenidad de las varianzas (Las matrices son iguales). la alternativa es que no lo sean
# El segundo supuesto tampoco se cumple porque la p es significativa. 
box_m(iris[, 1:4], iris$Species)

## En un mundo imaginario sí se cumplen los suúestos, rechazamos la Ho
## Por lo tanto ahora es hacer pruebas postHoc, anovas individuales
summary.aov(we)
#Me arroja el lresultado de las 4,los 4 vectores son diferentes, para las 4 variables los grupos son diferentes. 