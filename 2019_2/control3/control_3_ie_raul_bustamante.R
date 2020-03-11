library(readxl)
library(ggplot2)
library(dplyr)


# 1) Use la funcion read_excel para importar la base de datos "nombres60.xlsx" 
#    guarde el tibble resultante un objeto de nombre "notas"
notas <- read_excel("nombres60.xlsx")
notas_tbl <- notas
print(notas_tbl)


# 2) Cree un diagrama de dispersión, con las notas de la prueba
# solemne en el eje horizontal y las del examen en el eje vertical
# Puede usar los grafico de base o los de ggplot2 
ggplot(data = notas_tbl) +
  geom_point(aes(x = solemne, y = examen))

# 3) Cree dos diagramas boxplot: uno para las notas de la solemne
# y otro para las notas del examen
# Puede usar los grafico de base o los de ggplot2 
select(notas_tbl,solemne)
solemne_box <- select(notas_tbl,solemne)
boxplot(solemne_box)
select(notas_tbl,examen)
examen_box <- select(notas_tbl,examen)
boxplot(examen_box)


# 4) Compute la media de las notas de la  prueba solemne y 
# la desviacion estándar de las notas de examen 
notas_tbl %>%
summarise(n_solemne_box = n (), 
          media_final = mean(solemne))
notas_tbl %>%
  summarise(n_examen_box = n (), 
            desv_est_final = sd(examen))


# 5) Compute los quantiles 0.25 y 0.75 de las notas del examen
summary(examen_box)

# 6) Cree una nueva tibble que contenga unicamente las observaciones
# de las personas que obtuvieron un 4 o más en el examen
# azul en el examen opcion 1
notas_tbl %>%
  filter(examen >= 4) %>%
  select(c("apellido", "examen"))

# 7) Compute la proporcion de gente que obtuvo un azul en el examen
# azul en el examen opcion 2
n <- 60
azul <- 40
azules_totales <- function(variables) {azul/n}
print(azules_totales()) 

# 8) Suponga que tiene una población de 10000 observaciones provemientes
# de una distribución exponencial con valor esperado igual a 1. Suponga que 
# de exta poblacion extraemos muestras de tamaño igual a 25 observaciones. 
# Cree un histograma de las medias muestrales y calcule la desviación 
# estándar de las medias muestrales. Utilice 500 muestras para el histograma y
# eñ  cálculo de la desviación estándar de la media muestral.

muestras_1 <- 25
n_2 <- 10000
set.seed(12345)
poblacion_1 <- rexp(10000, rate = 1)
vector_con_medias <- vector(mode = "numeric", length = muestras_1)
for (i in 1:muestras_1) {
  esta_muestra_1 <- sample(poblacion_1, size = n_2)
  media_muestral_1 <- mean(esta_muestra_1)
  vector_con_medias[i] <- media_muestral_1
}
print(vector_con_medias)


muestras_2 <- 500
n_2 <- 10000
set.seed(12345)
poblacion_1 <- rexp(10000, rate = 1)
vector_con_medias_2 <- vector(mode = "numeric", length = muestras_2)
for (i in 1:muestras_2) {
  esta_muestra_2 <- sample(poblacion_1, size = n_2)
  media_muestral_2 <- mean(esta_muestra_2)
  vector_con_medias_2[i] <- media_muestral_2
}
print(vector_con_medias_2)
hist(vector_con_medias[i],vector_con_medias_2[i], breaks = 21)

# 9) Repita el ejercicio anterior, pero esta vez tome muestras de tamaño igual 250.
# Es ahora la desviación estándar de la media muestral  mayor o menor 
# a la del ejercicio anterior?

muestras_3 <- 250
n_3 <- 10000
set.seed(12345)
poblacion_1 <- rexp(10000, rate = 1)
vector_con_medias_3 <- vector(mode = "numeric", length = muestras_3)
for (i in 1:muestras_3) {
  esta_muestra_3 <- sample(poblacion_1, size = n_3)
  media_muestral_3 <- mean(esta_muestra_3)
  vector_con_medias_3[i] <- media_muestral_3
}
print(vector_con_medias_3)
