#Pregunta 1
n<-20  #tamaño muestra
xraya<-10  #promedio muestra
var<-4  #varianza muestra
sd<-2  #desviacion muestra
muestra<-rnorm(20,10,2)

#Al 95% de confianza
t.test(muestra)$conf

#Al 99% de confianza
t.test(muestra,conf.level=0.99)$conf

#Pregunta 2
xraya=17,alfa=0.1,n=33,sigma=3.8
