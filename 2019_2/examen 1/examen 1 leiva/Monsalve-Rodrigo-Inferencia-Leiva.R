#Genere aleatoriamente una lista de 20 valores provenientes de una población normal
#de media 10 y varianza 4. Utilizando estos datos, calcule un intervalo de confianza
#al 95% para la media de la población y otro al 99% para la varianza de la población

#1) Realizamos el intervalo de confianza para la media con un 95% de confianza
nMuestra<-20
Muestra.normal<-rnorm(nMuestra, 10, 2)
Promedio.Muestral<-mean(Muestra.normal)
Intervalo.Inf.Med<-Promedio.Muestral-2.093*2/(20)^0.5
Intervalo.Sup.Med<-Promedio.Muestral+2.093*2/(20)^0.5

#2) Realizamos el intervalo de confianza para la varianza a un 99%
Intervalo.Inf.Var<-((nMuestra-1)*4)/38.582
Intervalo.Sup.Var<-((nMuestra-1)*4)/6.844

#Imagine que tiene una muestra que contiene 33 observaciones. No conoce el valor de la
#desviación estándar poblacional, pero ha calculado que en su muestra el valor de la
#desviación estándar corresponde a: s=3,8 y el promedio es igual a x=18. Responda
#usando el método de p-value (con un 90% de confianza), si rechazamos o no la nula
#en el siguiente test: Ho: u menor o igual a 17; H1: u mayor a 17

#1) Usamos el test para la media con varianza desconocida
T<-(18-17)/(3.8/(33)^0.5)
