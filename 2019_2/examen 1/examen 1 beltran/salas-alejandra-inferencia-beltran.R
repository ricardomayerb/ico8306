n<- 20
xraya<- 10
sd<-2
muestra<-rnorm(20,10,2)

#al 95% de confianza
t.test(muestra)$conf

#al 99% de confianza
t.test(muestra,conf.level=0.99)$conf

#pregunta 2
x=17,alfa=0.1,n=33,sigma=3.8

