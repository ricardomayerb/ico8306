library(readxl)
library(ggplot2)
library(dplyr)


# 1) Use la funcion read_excel para importar la base de datos "nombres60.xlsx" 
#    guarde el tibble resultante un objeto de nombre "notas"
notas <- read_excel("nombres60.xlsx")


# 2) Cree un diagrama de dispersión, con las notas de la prueba
# solemne en el eje horizontal y las del examen en el eje vertical
# Puede usar los grafico de base o los de ggplot2 
ggplot(data = notas) + geom_point(aes(x = solemne, y = examen), col = "red")


# 3) Cree dos diagramas boxplot: uno para las notas de la solemne
# y otro para las notas del examen
# Puede usar los grafico de base o los de ggplot2 
boxplot(log(notas$solemne))
boxplot(log(notas$examen))


# 4) Compute la media de las notas de la  prueba solemne y 
# la desviacion estándar de las notas de examen 
mean(notas$solemne)
sd(notas$examen)

# 5) Compute los quantiles 0.25 y 0.75 de las notas del examen
quantile(notas$examen, c(0.25, 0.75))

# 6) Cree una nueva tibble que contenga unicamente las observaciones
# de las personas que obtuvieron un 4 o más en el examen
filter(notas, examen > 4)

# 7) Compute la proporcion de gente que obtuvo un azul en el examen
filter(notas, examen >=4) 
#40 de 60 obtuvo un azul en el examen


# 8) Suponga que tiene una población de 10000 observaciones provemientes
# de una distribución exponencial con valor esperado igual a 1. Suponga que 
# de exta poblacion extraemos muestras de tamaño igual a 25 observaciones. 
# Cree un histograma de las medias muestrales y calcule la desviación 
# estándar de las medias muestrales. Utilice 500 muestras para el histograma y
# eñ  cálculo de la desviación estándar de la media muestral.

muestras <- 500
n <- 25
poblacion <- rexp(10000, rate = 1)
vector_con_medias <- vector(mode = "numeric", length = muestras)

for (i in 1:muestras) {esta_muestra <- sample(poblacion, size = n)
media_muestral <- mean(esta_muestra)
vector_con_medias[i] <- media_muestral
  
}
  
mean(vector_con_medias)
sd(vector_con_medias)
hist(vector_con_medias)



# 9) Repita el ejercicio anterior, pero esta vez tome muestras de tamaño igual 250.
# Es ahora la desviación estándar de la media muestral  mayor o menor 
# a la del ejercicio anterior?

muestras <- 500
n <- 250
poblacion <- rexp(10000, rate = 1)
vector_con_medias <- vector(mode = "numeric", length = muestras)

for (i in 1:muestras) {esta_muestra <- sample(poblacion, size = n)
media_muestral <- mean(esta_muestra)
vector_con_medias[i] <- media_muestral

}

mean(vector_con_medias)
sd(vector_con_medias)
hist(vector_con_medias)

# La sd del ejercicio 9 es menor a la del ejercicio 8

