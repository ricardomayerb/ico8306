library(readxl)
library(ggplot2)
library(dplyr)

notas <- read_excel("nombres60.xlsx")
notas

# opcion 1: paquete base 
plot(notas$solemne, notas$examen)
boxplot(notas$solemne)
boxplot(notas$examen)

# opcion 2; paquete ggplot2
ggplot(notas) + 
  geom_point(aes(x = solemne, y = examen))

ggplot(notas) + 
  geom_boxplot(aes(y = solemne))

ggplot(notas) + 
  geom_boxplot(aes(y = examen))


# media de la prueba solemne
mean(notas$solemne)


# desviación estandar del examen
sd(notas$examen)

# quantil 0.25 del examen
quantile(notas$examen, 0.25)
quantile(notas$examen, 0.75)


# azul en el examen opcion 1
notas_exazul <- filter(notas, examen >= 4)

# azul en el examen opcion 2
notas_exazul <- notas[notas$examen >= 4, ]


# cuantos azules hubo en el examen?
sum(notas$examen >= 4)

# que proporción de azules hubo en el examen?
mean(notas$examen >= 4)



# Probabilidad
# para un grupo al azar de n personas

mismo_cumple <- function(n){
  cumples <- sample(1:365, n, replace=TRUE)
  any(duplicated(cumples))
}


compute_prob <- function(n, B=10000){
  results <- replicate(B, mismo_cumple(n))
  mean(results)
}

personas <- 1:60

prob <- sapply(personas, compute_prob)

personas[prob >= 1/3]


