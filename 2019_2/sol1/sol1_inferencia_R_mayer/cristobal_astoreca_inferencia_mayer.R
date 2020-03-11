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
quantile (misdatos$velocidad_viento, 0.025)
median(misdatos$velocidad_viento)
quantile (misdatos$velocidad_viento, 0.975)



# 3. Para la variable "temperatura" compute lo siguiente
# 3.1 la media (2 pto)
# 3.2 la desviación estandar    (2 pto)
# 3.3 la cantidad de observaciones (n)   (2 pto)
# 3.4 la desviación estandar, dividida por la raíz de n  (2 pto)
mean(misdatos$temperatura)
x =sd(misdatos$temperatura)
n = length(misdatos$temperatura)
l = sqrt(n)
((sd(misdatos$temperatura)/sqrt(n)))
x/l


  




# 4. Grafique los histogramas de estas cuatro variables: temperatura, humedad,
# punto_rocio y velocidad_viento. Puede usar cualquier función y paquete de R (4 pts)

hist(misdatos$temperatura)
hist(misdatos$humedad)
hist(misdatos$punto_rocio)
hist(misdatos$velocidad_viento)


# 5. Use el comando pnorm, para encontrar la probabilidad de que una variable aleatoria normal
# estándard esté entre -1 y 1.2, es decir, encontrar P(-1 <= z <= 1.2)
# Nota, el comando pnorm asume por defecto que nuestra normal es estándar. (2 pto
 z = pnorm(-1)
 m = pnorm (1.2)
 prob  = m-z
prob

 