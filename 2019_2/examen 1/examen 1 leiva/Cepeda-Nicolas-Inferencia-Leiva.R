#1
var1<-20
normal<-rnorm(var1,10,4)
error.est<- 4/sqrt(20)
margen.error<-1.96*error.est
lim.inf<-20 - margen.error
lim.sup<-20 + margen.error
#con una confianza de 95% podemos decir que la media poblacional estará entre 18.247 y 21.753

#2
obs<-33
mu0 = 33
Xbar = 18
s = 3.8
Estadistico = (Xbar - mu0 ) / (s/sqrt(33))
pvalor = 1 - pnorm( Estadistico )
