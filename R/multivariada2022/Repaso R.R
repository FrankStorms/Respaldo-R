###Estadistica multivariada###

##Recordando R

## 1. Citas 
#Citar R
citation()
#Citar cualquier otro paquete
citation (package = "#name#")

## 2.Ayuda

#Signo de interrrogación y luego lo que se quiere
?aov

#
help (lm)

help.search("aov")

find ()

example(lm)

##Instalar y cargar librerías
#install.packages("vegan") ##Para instalar

#installed.packages("") #A de ser 

library()

## 4. Objetos

saludo <-  "hola"

saludo
# 4a. vectores
colores <- c("rojo","verde","morado","azul")
numero <- c (1:10)
numeros

#lenght
lenght (colores)
class(colores)
class(numeros)

#coercing
coercing
colores <-  as.factor(colores)
numeros <- as.factor(numeros)
as.character()
as.numeric()
as.matrix()

## 5. dataframes
#names
names(iris)
#head - encabezado

#dim
dim (iris) #da las dimensiones del objeto

summary(iris)

#Base de datos mtcars iris

mtcars
iris

library(ggplot2)
library(GGally)
ggpairs(iris, columns = 1:4, ggplot2::aes(colour=Species))
