#generar una variable de 20 valores, población normal de media 10 y varianza 4
#calcular ic al 95% confianza para la media
#calcular ic al 99% confianza para la varianza

var1<-rnorm(20,10,2)

mean(var1)
#la media es 9.916891
mean<-mean(var1)
sd(var1)
svar1<-sd(var1)
length(var1)
nvar1<-length(var1)
#el tamaño muestral es 20 y la desviacion estandar es 2.24702
#el valor tala es 1.7291

lim.inf<-mean-qt(0.95,19)*svar1/nvar1^0.5
lim.sup<-mean+qt(0.95,19)*svar1/nvar1^0.5

#el intervalo para la media a un 95% de confianza es [9.048;10.785]

#calculamos ahora el IC para la varianza al 99% de confianza

qchisq(0.005,19)
L1<-qchisq(0.005,19)
L2<-qchisq(0.995,19)

Limitesup<-(nvar1-1)*svar1^2/L1
Limiteinf<-(nvar1-1)*svar1^2/L2

#el intervalo de cofianza para la varianza a un 99% de confianza es [2.486;14.017]