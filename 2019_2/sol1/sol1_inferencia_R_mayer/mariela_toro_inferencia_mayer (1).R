# nombre del archivo a mandar por correo:
# nombre_apellido_inferencia_profesor.R
# ejemplo:
# juan_perez_estadistica_mayer.R

# No olvide ejecutar las líneas 6 y 11 antes de empezar el resto del trabajo
library(readxl)


# 1. Use la función read_excel para cargar los datos que se encuentran en el archivo excel datos_ie.xlsx
misdatos <- read_excel("datos_ie.xlsx")
View(misdatos)
class(misdatos)


# 2. Para la variable "velocidad_viento", que es una de las columnas de los datos 
# que acaba de cargar, encuentre lo siguiente usando la función quantile:
# 2.1 el cuantil 0.025 (2 pto)
# 2.2 la mediana (2 pto)
# 2.3 el cuantil 0.975 (2 pto)
# Nota la función quantile es la que calcula cuantiles de un vector. Por ejemplo si el vector se llama x y
# queremos calcular el cuantil 37 escribiremos en R quantile(x, 0.37)
velocidad_viento <- c(misdatos$velocidad_viento)
quantile(velocidad_viento, 0.025)
#mediana es el 50% es decir el 0.5
quantile(velocidad_viento, 0.5)
quantile(velocidad_viento, 0.975)


# 3. Para la variable "temperatura" compute lo siguiente
# 3.1 la media (2 pto)
# 3.2 la desviación estandar    (2 pto)
# 3.3 la cantidad de observaciones (n)   (2 pto)
# 3.4 la desviación estandar, dividida por la raíz de n  (2 pto)
temperatura <- c(misdatos$temperatura)
mean(temperatura)
sd(temperatura)
length(temperatura)
sd(temperatura)/sqrt(2612)

# 4. Grafique los histogramas de estas cuatro variables: temperatura, humedad,
# punto_rocio y velocidad_viento. Puede usar cualquier función y paquete de R (4 pts)
punto_rocio <- c(misdatos$punto_rocio)
humedad <- c(misdatos$humedad)

hist(humedad)
hist(temperatura)
hist(punto_rocio)
hist(velocidad_viento)

# 5. Use el comando pnorm, para encontrar la probabilidad de que una variable aleatoria normal
# estándard esté entre -1 y 1.2, es decir, encontrar P(-1 <= z <= 1.2)
# Nota, el comando pnorm asume por defecto que nuestra normal es estándar. (2 pto)
pnorm(1.2, 0, 1, TRUE)
(pnorm(-1, 0, 1, TRUE))
pnorm(1.2, 0, 1, TRUE)-(pnorm(-1, 0, 1, TRUE))


