# nombre del archivo a mandar por correo:
# nombre_apellido_inferencia_profesor.R
# ejemplo:
# juan_perez_estadistica_mayer.R

# No olvide ejecutar las líneas 6 y 11 antes de empezar el resto del trabajo
library(readxl)


# 1. Use la función read_excel para cargar los datos que se encuentran en el archivo excel datos_ie.xlsx
misdatos <- read_excel("datos_ie.xlsx")





# 2. Para la variable "velocidad_viento", que es una de las columnas de los datos 
# que acaba de cargar, encuentre lo siguiente usando la función quantile:
# 2.1 el cuantil 0.025 (2 pto)
# 2.2 la mediana (2 pto)
# 2.3 el cuantil 0.975 (2 pto)
# Nota la función quantile es la que calcula cuantiles de un vector. Por ejemplo si el vector se llama x y
# queremos calcular el cuantil 37 escribiremos en R quantile(x, 0.37)
#Solucion:
#2) 
velocidad_viento<- misdatos$velocidad_viento
#2.1) el cuantil 0.025 de la variable velocidad_viento es 0
quantile( velocidad_viento, 0.025)
#2.2) la mediana de esta variable es de 9.20624
median(velocidad_viento)
#2.3) el cuantil 0.975 de esta variable es de 23.0156
quantile( velocidad_viento, 0.975)




# 3. Para la variable "temperatura" compute lo siguiente
# 3.1 la media (2 pto)
# 3.2 la desviación estandar    (2 pto)
# 3.3 la cantidad de observaciones (n)   (2 pto)
# 3.4 la desviación estandar, dividida por la raíz de n  (2 pto)
#Solucion:
tempuratura<- misdatos$temperatura
#3.1)
mean(tempuratura)
# asi la media de la variable tempuratura es de 55.45093
#3.2) 
sd(tempuratura)
#asi la desviacion estandar de la variable tempuratura es 17.88357
#3.4)
sd(tempuratura)/ sqrt( length(tempuratura)) 
#asi la desviacion estandar dividida por la raiz de n es igual a 0.4399192




# 4. Grafique los histogramas de estas cuatro variables: temperatura, humedad,
# punto_rocio y velocidad_viento. Puede usar cualquier función y paquete de R (4 pts)
#Solucion:
humedad<- misdatos$humedad
punto_rocio<- misdatos$punto_rocio
#Histograma de la varibale temperatura
hist(tempuratura)
#histograma de la variable de humedad
hist(humedad)
#histograma de la variable de punto_rocio
hist(punto_rocio)
#histograma de la variable velocidad_viento
hist(velocidad_viento)




# 5. Use el comando pnorm, para encontrar la probabilidad de que una variable aleatoria normal
# estándard esté entre -1 y 1.2, es decir, encontrar P(-1 <= z <= 1.2)
# Nota, el comando pnorm asume por defecto que nuestra normal es estándar. (2 pto)
#Solucion: 
pnorm(1.2)-pnorm(-1)
#asi la probabilidad quue la variable aleatoria estandar este entre -1 y 1.2 es de 0.7262751


