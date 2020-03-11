# 1)
#Generar un vector de 20 valores provenientes de una población normal de media 10 y varian
x <- rnorm(20, mean=10, (4*(20-1)/20))
print(x)           
#Identificamos el estadistico Z, a un 95% de significancia
z<- 2.0930
#Identificamos la cantidad de la muestra
length(x)
n <- length(x)
#Calculamos la desviacion estandar
sd(x)
DS<- sd(x)
#Calculamos el error muestral
errorst<- DS/sqrt(n)
#Calculamos limite inferior y superior
lim_inf <- mean(x) - (z*errorst)
lim_inf
lim_sup <- media + (z*errorst)
lim_sup
Intervalo_x <- data.frame(n,media,DS,errorst,z,lim_inf,lim_sup)
Intervalo_x