library(readxl)


# 1. Use la función read_excel para cargar los datos que se encuentran en el archivo excel
#  datos_ie.xlsx

misdatos <- read_excel("datos_ie.xlsx")


# 2. Para la variable "velocidad_viento", que es una de las columnas de los datos 
# que acaba de cargar, encuentre lo siguiente:
# 2.1 el cuantil 0.025
# 2.2 la mediana
# 2.3 el cuantil 0.975
# Nota la función quantile es la que calcula cuantiles de un vector. Por ejemplo si el vector se llama x y
# queremos calcular el cuantil 37 escribiremos en R quantile(x, 0.37)

vel <- misdatos$velocidad_viento
vq025 <- quantile(vel, 0.025)
vq500 <- quantile(vel, 0.5)
vq975 <- quantile(vel, 0.975)

c(vq025, vq500, vq975)


# 3. Para la variable "temperatura" compute lo siguiente
# 3.1 la media 
# 3.2 la desviación estandar
# 3.3 la cantidad de observaciones (n)
# 3.4 la desviación estandar, dividida por la raíz de n

  

tem <- misdatos$temperatura
tmu <- mean(tem)
tsd <- sd(tem)
n <- length(tem)
tsdn <- tsd/sqrt(n)

c(tmu, tsd, n, tsdn)



# 4. Grafique los histogramas de estas cuatro variables: temperatura, humedad,
# punto_rocio y velocidad_viento. Puede usar cualquier función y paquete de R 
# que grafique histogramas

hist(misdatos$punto_rocio, breaks = 21)
hist(misdatos$temperatura, breaks = 21)
hist(misdatos$humedad, breaks = 21)
hist(misdatos$velocidad_viento, breaks = 21)


# 5. Use el comando pnorm, para encontrar la probabilidad de que una variable aleatoria normal
# estándard esté entre -1 y 1.2, es decir, encontrar P(-1 <= z <= 1.2)
# Nota, el comando pnorm asume por defecto que nuestra normal es estándar.

pnorm(-1)
pnorm(1.2)
pnorm(1.2) - pnorm(-1)


