#crear un IC con un 95% de confianza 
#genero una variable x que contega 20 datos
x<-rnorm(20,10,4)
View(x)
mnx<-mean(x)
desx<-sd(x)
intervalosx<-matrix(nrow = 1,ncol = 2)
intervalosx[1,1]<-mnx-qt(0.99,nnsol-1)*(desvsol)^0.5