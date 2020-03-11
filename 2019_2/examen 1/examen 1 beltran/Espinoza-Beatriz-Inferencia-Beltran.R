#1)Genere aleatoriamente una lista de 20 valores provenientes de una poblacion de media 10 y varianza 4.Utilizando estos datos, calcule un intervalo de confianza al 95% para la media de la poblacion y otro al 99% para la varianza de la poblacion
valores<-rnorm(20,10,2)
t.test(valores)$conf
IC.varianza<-c(9*var(valores)/qchisq(0.975,9),9*var(valores)/(qchisq(0.025,9)))
IC.varianza

#2)Imagine que tiene una muestra que contiene 33 observaciones. No conoce el valor de la desviacion estandar poblacional, pero ha calculado que en su muestra el valor de la desviacion estandar corresponde a s=3.8 y el promedio es igual a 18, responda usando el metodo de p-value(con un 90% de confianza) si rechazamos o no la nula en el siguiente test
# H0 : u<17
# H1 : u> 17 
n1<-33;xraya1<-18;S1<-3.8
alfa<-0.05
region.critica<-c(qnorm(1-alfa))
pvalor<-1-pnorm(6,18,3.8)
pvalor
