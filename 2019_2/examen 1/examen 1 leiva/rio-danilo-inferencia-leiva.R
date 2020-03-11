# 1) lista de 20 valores de una población normal con media 10 y varianza 4.
#Calcular interv. de conf al 95% para la media y 99% de conf. para la varianza

varpob<-20
varnorm<-rnorm(varpob,10,2) 

mvar=mean(varnorm)
sdvar=sd(varnorm)
nvar=length(varnorm)


intervalon<-matrix(nrow = 2,ncol = 2)
colnames(intervalon)<-c("inferior","superior")
rownames(intervalon)<-c("media","varianza")

intervalon[1,1]<-mvar-qnorm(0.975,nvar, sdvar)*sdvar/(mvar)^0.5
intervalon[1,2]<-mvar+qnorm(0.975,nvar, sdvar)*sdvar/(mvar)^0.5

intervalon[2,1]<-(nvar-1)*sdvar^2/qchisq(0.99,nvar-1)
intervalon[2,2]<-(nvar-1)*sdvar^2/qchisq(0.01,nvar-1)

intervalon

# muestra con 33 obs. Desv. estándar desconocida. desviación estandar de la muestra:
# s:3.8 y el promedio muestral= 18. Responder con p-value al 90% de conf. si se rechaza
# o se acepta la Hnula u menor o igual a 17.


