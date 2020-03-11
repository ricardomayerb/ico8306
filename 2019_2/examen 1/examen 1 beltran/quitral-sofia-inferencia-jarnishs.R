#Parte R exámen inferencia estadística
#Numero 1
c<-rnorm(n=20, mean= 10, sd=4)
t.test(c, conf.level = 0.95)$conf
t.test(c, conf.level = 0.99)$conf
# Número 2
n<-33
var<-3.8
x<-18
mH0<-17
p.valor<-(x-mH0)/(var/sqrt(n))
#Con un 90% de confianza tenemos alpha=10%
#alpha=0.1
#p.valor>alpha
#No se puede rechazar H0