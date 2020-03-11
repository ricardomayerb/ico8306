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
ggplot(data = notas_tbl) + geom_point(aes(x = solemne, y = examen))

# 3) Cree dos diagramas boxplot: uno para las notas de la solemne
# y otro para las notas del examen
# Puede usar los grafico de base o los de ggplot2 
select(notas_tbl, solemne)
solemne_diagram <- select(notas_tbl, solemne)
boxplot(solemne_diagram)

select(notas_tbl, examen)
examen_diagram <- select(notas_tbl, examen)
boxplot(examen_diagram)

# 4) Compute la media de las notas de la  prueba solemne y 
# la desviacion estándar de las notas de examen
solemne_diagram %>%
  summarize(n_solemnes = n(),
            media_solemne = mean(solemne))
examen_diagram %>%
  summarize(n_examen = n(),
            desv_est_fina_examen = sd(examen))



# 5) Compute los quantiles 0.25 y 0.75 de las notas del examen
summary(examen_diagram)
# 6) Cree una nueva tibble que contenga unicamente las observaciones
# de las personas que obtuvieron un 4 o más en el examen
# azul en el examen opcion 1
notas_tbl %>%
filter(examen >= 4) %>% 
    select(c("apellido", "examen"))


# 7) Compute la proporcion de gente que obtuvo un azul en el examen
azul <- notas_tbl %>%
  filter(examen >= 4) %>% 
  select(examen)
print(azul)
n <- 60
azules <- 40
azules_totales <- function(variables) {azules/n}
print(azules_totales())




# 8) Suponga que tiene una población de 10000 observaciones provemientes
# de una distribución exponencial con valor esperado igual a 1. Suponga que 
# de esta poblacion extraemos muestras de tamaño igual a 25 observaciones. 
# Cree un histograma de las medias muestrales y calcule la desviación 
# estándar de las medias muestrales. Utilice 500 muestras para el histograma y
# el cálculo de la desviación estándar de la media muestral.

muestras <- 25
n <- 10000
set.seed(12345)
poblacion <- rexp(10000, rate = 1)

vector_con_medias <- vector(mode = "numeric", length = muestras)

for (i in 1:muestras) {
  esta_muestra <- sample(poblacion, size = n)
  media_muestral <- mean(esta_muestra)

  vector_con_medias[i] <- media_muestral
}
hist(vector_con_medias)
mean(vector_con_medias)
sd(vector_con_medias)









# 9) Repita el ejercicio anterior, pero esta vez tome muestras de tamaño igual 250.
# Es ahora la desviación estándar de la media muestral  mayor o menor 
# a la del ejercicio anterior?
