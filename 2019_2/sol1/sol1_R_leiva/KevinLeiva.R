# nombre del archivo a mandar por correo: Kevin Valenzuela  
# nombre_apellido_inferencia_profesor: Francisco Leiva


# No olvide ejecutar las líneas 6 y 11 antes de empezar el resto del trabajo
library(readxl)


# 1. Use la función read_excel para cargar los datos que se encuentran en el archivo excel datos_ie.xlsx
misdatos <- read_excel("datos_ie.xlsx")

e <-c(misdatos$velocidad_viento)
l <-c(misdatos$temperatura)

# 2. Para la variable "velocidad_viento", que es una de las columnas de los datos 
# que acaba de cargar, encuentre lo siguiente usando la función quantile:
# 2.1 el cuantil 0.025 (2 pto)= 2.5%
quantile(e, 0.025)
quantile(e, 0.975)
# 2.2 la mediana (2 pto)= 9.20624 
median(e)
# 2.3 el cuantil 0.975 (2 pto)= 97.5%
# Nota la función quantile es la que calcula cuantiles de un vector. Por ejemplo si el vector se llama x y
# queremos calcular el cuantil 37 escribiremos en R quantile(x, 0.37)

8

# 3. Para la variable "temperatura" compute lo siguiente
# 3.1 la media (2 pto) = 55.45093
mean(l)
# 3.2 la desviación estandar= 17.88357(2 pto)
sd(l)
# 3.3 la cantidad de observaciones= 2612 (n) (2 pto)
length(l)
# 3.4 la desviación estandar, dividida por la raíz de n = (2 pto)

sd(l/sqrt(2612))


# 4. Grafique los histogramas de estas cuatro variables: temperatura, humedad,
# punto_rocio y velocidad_viento. Puede usar cualquier función y paquete de R (4 pts)

hist(l)
hist(e)
hist(h)
hist(p)
p <-c(misdatos$punto_rocio)
h <-c(misdatos$humedad)



# 5. Use el comando pnorm, para encontrar la probabilidad de que una variable aleatoria normal
# estándard esté entre -1 y 1.2, es decir, encontrar P(-1 <= z <= 1.2)
# Nota, el comando pnorm asume por defecto que nuestra normal es estándar. (2 pto)


pnorm(1.2,mean = 0, sd = 1)- pnorm(-1, mean = 0, sd=1)
