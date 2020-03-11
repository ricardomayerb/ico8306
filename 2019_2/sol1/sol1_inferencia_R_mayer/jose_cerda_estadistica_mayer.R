# nombre del archivo a mandar por correo:
# nombre_apellido_estadistica_profesor.R
# ejemplo:
# juan_perez_estadistica_beltran.R

# No olvide ejecutar las líneas 6 y 11 antes de empezar el resto del trabajo
library(readxl)
library(ggplot2)
library(dplyr)
# 1. Use la función read_excel para cargar los datos que se encuentran en el archivo excel 


# 2. Para las variables "pib_per_capita" y "esperanza_de_vida" compute lo siguiente
# 2.1 la media cada una (4 pts)
# 2.2 la desviación estandar de cada una (4 pts)
# 2.3 la cantidad de observaciones (n) de cada una (4 pts)

mean(misdatos$pib_per_capita)
sd(misdatos$pib_per_capita)
mean(misdatos$esperanza_de_vida)
sd(misdatos$esperanza_de_vida)

# 3. Grafique los histogramas de estas tres variables:
# "pib_per_capita" (2 pto), "esperanza_de_vida" (2 pto) y el logaritmo natural de la variable "población" (4 pts).
# Puede usar cualquier función y paquete de R que grafique histogramas



