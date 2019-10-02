library(readxl)
library(ggplot2)
library(dplyr)


# 1) Use la funcion read_excel para importar la base de datos "nombres60.xlsx" 
#    guarde el tibble resultante un objeto de nombre "notas"
notas <- read_excel("nombres60.xlsx")


# 2) Cree un diagrama de dispersión, con las notas de la prueba
# solemne en el eje horizontal y las del examen en el eje vertical
# Puede usar los grafico de base o los de ggplot2 

ggplot(data=notas)+geom_point(aes(x = solemne, y=examen))

# 3) Cree dos diagramas boxplot: uno para las notas de la solemne
# y otro para las notas del examen
# Puede usar los grafico de base o los de ggplot2 

ggplot(data=notas)+geom_boxplot(aes(y=solemne))

ggplot(data=notas)+geom_boxplot(aes(y=examen))

# 4) Compute la media de las notas de la  prueba solemne y 
# la desviacion estándar de las notas de examen 

mean(notas$solemne)
mean(notas$examen)

sd(notas$solemne)
sd(notas$examen)

# 5) Compute los quantiles 0.25 y 0.75 de las notas del examen

quantile(notas$examen,0.25)
quantile(notas$examen,0.75)

# 6) Cree una nueva tibble que contenga unicamente las observaciones
# de las personas que obtuvieron un 4 o más en el examen
# azul en el examen opcion 1

tibble(notas[notas$examen>=4, ])


# 7) Compute la proporcion de gente que obtuvo un azul en el examen
# azul en el examen opcion 2

proporcion_examen_azul <- 40/60

proporcion_examen_azul

# 8) Suponga que tiene una población de 10000 observaciones provemientes
# de una distribución exponencial con valor esperado igual a 1. Suponga que 
# de exta poblacion extraemos muestras de tamaño igual a 25 observaciones. 
# Cree un histograma de las medias muestrales y calcule la desviación 
# estándar de las medias muestrales. Utilice 500 muestras para el histograma y
# eñ  cálculo de la desviación estándar de la media muestral.

n <- 10000
poblacion <- poblacion <- rexp(10000, rate = 1)
muestras <- 25

for (i in 1:muestras) {
  esta_muestra <- sample(poblacion, 25)
  media_muestral <- mean(esta_muestra)
  print(media_muestral)
}

muestras <- 500
n <- 25
poblacion <- rexp(n=10000,rate = 1)
vector <- vector(mode = "numeric", length = muestras)

for(i in 1:muestras){
  muestra <- sample(poblacion, size = n)
  esta_muestra <- mean(muestra)
  vector[i] <- esta_muestra
}
mean(vector)
sd(vector)
hist(vector, col = "green", freq = F)

# 9) Repita el ejercicio anterior, pero esta vez tome muestras de tamaño igual 250.
# Es ahora la desviación estándar de la media muestral  mayor o menor 
# a la del ejercicio anterior?

n <- 10000
poblacion <- poblacion <- rexp(10000, rate = 1)
muestras <- 250

for (i in 1:muestras) {
  esta_muestra <- sample(poblacion, 250)
  media_muestral <- mean(esta_muestra)
  print(media_muestral)
}

muestras <- 500
n <- 250
poblacion <- rexp(n=10000,rate = 1)
vector <- vector(mode = "numeric", length = muestras)

for(i in 1:muestras){
  muestra <- sample(poblacion, size = n)
  esta_muestra <- mean(muestra)
  vector[i] <- esta_muestra
}
mean(vector)
sd(vector)
hist(vector, col = "green", freq = F)
