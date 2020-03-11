#Pregunta 1

n = 20 
xraya = 10
varianza = 4
desv.est = 2
muestra1 <- rnorm(n, mean = xraya, sd = desv.est)#lista alearoria de tamaño 20 media 10 y sd 2
muestra1
IC99=t.test(muestra1, conf.level = 0.99)$conf#intervalo de confianza de muestra1 al 99% de confianza
IC95=t.test(muestra1)$conf#intervalo de confianza de muestra1 al 95% de confianza
IC99
IC95
#################################################################################
#pregunta 2

n = 33
s = 3.8
xraya = 18
alfa = 0.1
1 - alfa#nivel de confianza
#hipotesis nula es mu<= 17 y la alternativa mu > 17
#para sacar la p-value se calcula con el estadistico de contraste((n-1)*s^2)/Ho
est.con = ((n-1)*s^2)/17
est.con
#como el estadistico de contraste da 27.18118 se va a la tabla de chisq para buscar
#un dato mayor a el y ver su area de cola que corresponde al dato 30,3359, cual area
#es 0.5 y dando el p-value = 0.5. Ahora se compara a alfa, y como p > alfa, por lo tanto
#no hay suficiente evidencia para rechazar la hipotesis nula.

