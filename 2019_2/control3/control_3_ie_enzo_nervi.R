library(readxl)
library(ggplot2)
library(dplyr)            #tome los primeros 10 alumnos del estudio (por tiempo)
                          #disculpe el error profe


# 1) Use la funcion read_excel para importar la base de datos "nombres60.xlsx" 
#    guarde el tibble resultante un objeto de nombre "notas"
notas <- read_excel(    )notas <- read_excel("nombres60.xlsx")


# 2) Cree un diagrama de dispersión, con las notas de la prueba
# solemne en el eje horizontal y las del examen en el eje vertical
# Puede usar los grafico de base o los de ggplot2 
ggplot(data=notas)+ geom_point(aes(x=solemne, y= examen))

# 3) Cree dos diagramas boxplot: uno para las notas de la solemne
# y otro para las notas del examen
# Puede usar los grafico de base o los de ggplot2 
boxplot(solemne)
boxplot(examen)


# 4) Compute la media de las notas de la  prueba solemne y 
# la desviacion estándar de las notas de examen 

mean(solemne) #la media de solemnes es igual a 4.87


sd(examen)  # la desviacion estandar de los examenes es 1.391881


# 5) Compute los quantiles 0.25 y 0.75 de las notas del examen
quantile(examen)
  #Q 0.25= 3.05  Q 0.75= 5.3


# 6) Cree una nueva tibble que contenga unicamente las observaciones
# de las personas que obtuvieron un 4 o más en el examen
# azul en el examen opcion 1
tibble(examen> 3.9)

# 7) Compute la proporcion de gente que obtuvo un azul en el examen
# azul en el examen opcion 2
azul_examen <- c(4 , 5.5 , 5 , 6 , 5.4 , 4.3)
rojo_examen <- c(3 , 2 , 3.2 , 2.4)
x_total_examen = 10
y_azul_examen = 6
y_azul_examen / x_total_examen #proporcion entre azules y notas examen es 0.6 o sea 60%

# 8) Suponga que tiene una población de 10000 observaciones provemientes
# de una distribución exponencial con valor esperado igual a 1. Suponga que 
# de exta poblacion extraemos muestras de tamaño igual a 25 observaciones. 
# Cree un histograma de las medias muestrales y calcule la desviación 
# estándar de las medias muestrales. Utilice 500 muestras para el histograma y
# eñ  cálculo de la desviación estándar de la media muestral.

# 9) Repita el ejercicio anterior, pero esta vez tome muestras de tamaño igual 250.
# Es ahora la desviación estándar de la media muestral  mayor o menor 
# a la del ejercicio anterior?
