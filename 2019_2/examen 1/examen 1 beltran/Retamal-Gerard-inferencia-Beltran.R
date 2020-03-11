#Preguntas 
#Genere aleatoriamente una lista de 20 valores provenientes de una poblacion normal de 
#media 10 y varianza 4. Utilizando estos datos, calcule un intervalo de confianza al 95%
#para la media y otro para la varianza de poblacion
#Solucion para la media con un intervalo de 95%:
xraya<- 10
S=2
n<- 20
alpha_medio<- 0.05 
var<-4

#intervalo de confianza de la media con un 95%
ICal95<-c(xraya-qt(0.05,19,lower.tail = F)*S/sqrt(20), xraya+qt(0.05,19,lower.tail = F)*S/sqrt(20))
ICal95

#Intervalo de confianza de la media con 99%
round(c(19*var/qchisq(0.995,19),19*var/qchisq(0.005,19)),4)

# Imagine que tiene una muestra que contiene 33 observaciones. No conoce el valor de la
#desviacion estandar poblacional, pero ha calculado que en su muestra el valor de la desviacion
# estandar corresponde a: s=3.8 y el promedio es igual a 18. RESPONDA usando el metodo de 
#P-value (Con 90% de confianza), si rechazamos o no la nula en el siguientes test:
n=33
xraya<- mean(18)
sd=3.8
#Solucion:
t.test(mean=18,sd=3.8, mu=17,n=33, conf.level = 0.9)
