#1)Datos
Datos<-rnorm(20,10,2)
mDatos<-mean(Datos)
sdDatos<-sd(Datos)
lDatos<-length(Datos)

#IC media
mDatos+qt(0.975,lDatos-1)*sdDatos/(lDatos)^0.5
mDatos-qt(0.975,lDatos-1)*sdDatos/(lDatos)^0.5

#IC sigma^2
(lDatos-1)*sdDatos^2/qchisq(0.95,lDatos-1)
(lDatos-1)*sdDatos^2/qchisq(0.05,lDatos-1)

#2)
Estadístico<-(18-17)/(3.8/((33)^(1/2)))
Pvalue<-1-pnorm(Estadístico)
#Pvalue<nivel de significancia. Existe evidencia suficiente para rechazar la hipotesis nula.
