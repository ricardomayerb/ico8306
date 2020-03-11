#respuesta pregunta 1:
muestra<-rnorm(20, mean = 10, sd = 2)
media <- mean(muestra)
s2 <- sd(muestra)^2
s <- sd(muestra)
s2
nmuestra<-length(muestra)
intervalo<-matrix(nrow=1,ncol=2)
colnames(intervalo)<-c("inferior","superior")
rownames(intervalo)<-c("media pob. al 95% c.")
z<-qnorm(0.975)
intervalo[1,1]<-(media)-z*(s/(nmuestra^0.5))
intervalo[1,2]<-(media)+z*(s/(nmuestra^0.5))
intervalo
intervalo_var<-matrix(nrow=1,ncol=2)
colnames(intervalo_var)<-c("inferior","superior")
rownames(intervalo_var)<-c("var pob. al 99% c.")
intervalo_var[1,1]<-19*s2/qchisq((0.95),19)
intervalo_var[1,2]<-19*s2/qchisq((0.05),19)
intervalo
intervalo_var
#respuesta pregunta 2:
#respuesta pregunta 1:
print("asumimos que la muestra se distribuye normal")
muestra2<-rnorm(33, mean = 18 , sd = 3.8)
med <- mean(muestra2)
varianza <- sd(muestra2)^2
desv <- sd(muestra2)
nmuestra2<-length(muestra2)
nmuestra2<-length(muestra2)
est<-(med-17)/(varianza/(nmuestra2^0.5))
est

print("el pvalor es mayor a 0,25, por lo que es menor a 0,99. No podemos rechazar la hipótesis nula)


