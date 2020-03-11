#PREGUNTA 1
#generar la lista que tiene una distribucion normal con media 10
#y varianza 4 
a <- rnorm (20,mean= 10, sd = 2)
# calculo del invervalo e confianza

qt(0.05,9)

n <- 20   
media <- 10  
nivelconfianza = 0.99
desv <- sqrt(2)

error.est <- desv/sqrt(n) 
error.est

margen.error <- 1.644854 * error.est # nivel de confianza de 90% 
lim.inf <- media - margen.error # Límite inferior del intervalo
lim.inf
## 
lim.sup <- media + margen.error # Límite superior del intervalo
lim.sup


#PREGUNTA 2
M <- rnorm (33, mean= 18, sd = 3.8)

H0 = 17
n = 33
media2 = 18
s = 3.8
(Estadistico = (media2 - H0) / (s / sqrt(n)))
#[1] 1.511727

(pValor = 1 - pnorm(Estadistico))
#0.06530166
ns = 0.95
(alfa = 1- ns)
(zAlfa = qnorm(1- alfa))
#[1] 1.644854

# no rechaza la hipotesis nula, entonces  la media poblacional es 
#mayor a 17 con un nivel de confianza del 90%
