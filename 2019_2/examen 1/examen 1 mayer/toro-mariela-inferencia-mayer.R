#RESPUESTAS DEL EXAMEN  

#1.- 
#en la pregunta n=20, media=10, varianza=4 -> desviacion estandar= 2
datos <- rnorm(20, 10, 2)
datos
#I.C al 95% para la media poblacional 
#alfa=0,05 alfa/2=0.025 -> 1,96 en la tabla Z entonces
(4/sqrt(20))
10 + (1.96* 0.8944272)
# Resulatdo 11.75308
10 - (1.96*0.8944272)
#Resultado 8.246923
#intervalo de confianza [8.246923 < mu0 < 11.75308]

#I.C al 99% para la varianza poblacional
#alfa=0.01 alfa/2=0.005 -> 2.57 en la tabla Z entonces


#2
(18-17)/(3.8/sqrt(33))
#REsultado de lo de arriba 1.511727
#Intervalo de 90% alfa= 0.1 y alfa/2= 0.05 donde este en Z es 1.64
#Se rechaza hacia la derecha por lo tanto el Zc (1.511727) es menor que 1.64 
#(queda a la izquierda) en zona de aceptacion por lo tanto se acepta la Ho

