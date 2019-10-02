library(readxl)
library(ggplot2)
library(dplyr)


# 1) Use la funcion read_excel para importar la base de datos "nombres60.xlsx" 
#    guarde el tibble resultante un objeto de nombre "notas"
notas <- read_excel("nombres60.xlsx")


# 2) Cree un diagrama de dispersión, con las notas de la prueba
# solemne en el eje horizontal y las del examen en el eje vertical
# Puede usar los grafico de base o los de ggplot2 
ggplot(data = notas)+geom_point(aes(x=solemne,y=examen))

# 3) Cree dos diagramas boxplot: uno para las notas de la solemne
# y otro para las notas del examen
# Puede usar los grafico de base o los de ggplot2 
boxplot(notas$solemnes)
boxplot(notas$examen)
# 4) Compute la media de las notas de la  prueba solemne y 
# la desviacion estándar de las notas de examen 
mean(notas$solemne) 
sd(notas$examen) 
# 5) Compute los quantiles 0.25 y 0.75 de las notas del examen
quantile(notas$examen, 0.25) 
quantile(notas$examen, 0.75) 
# 6) Cree una nueva tibble que contenga unicamente las observaciones
# de las personas que obtuvieron un 4 o más en el examen
A <- filter(notas, examen >=4)

# 7) Compute la proporcion de gente que obtuvo un azul en el examen

#El total de las personas es 60 de los cuales 40 tuvieron azul en el examen
#Por lo tanto la proporcion de azules es de 40/60, o mas simplificado, dos 
#tercios del total.


# 8) Suponga que tiene una población de 10000 observaciones provemientes
# de una distribución exponencial con valor esperado igual a 1. Suponga que 
# de esta poblacion extraemos muestras de tamaño igual a 25 observaciones. 
# Cree un histograma de las medias muestrales y calcule la desviación 
# estándar de las medias muestrales. Utilice 500 muestras para el histograma y
# el  cálculo de la desviación estándar de la media muestral.
 
n <- 10000
muestra <- 25
set.seed(12345)
poblacion <- rexp(10000, rate = 1)
vector_con_medias <- vector(mode = "numeric", length = muestra)
for (i in 1:muestra){
  esta_muestra <- sample(poblacion, size = n)
  media_muestral <- mean(esta_muestra)
  
  vector_con_medias[i] <- media_muestral
}

# 9) Repita el ejercicio anterior, pero esta vez tome muestras de tamaño igual 250.
# Es ahora la desviación estándar de la media muestral  mayor o menor 
# a la del ejercicio anterior?

n2 <- 250
muestra2 <- 25
set.seed(12345)
poblacion <- rexp(10000, rate = 1)
vector_con_medias2 <- vector(mode = "numeric", length = muestra)
for (i in 1:muestra){
  esta_muestra2 <- sample(poblacion, size = n2)
  media_muestral2 <- mean(esta_muestra)
  
  vector_con_medias[i] <- media_muestral
}