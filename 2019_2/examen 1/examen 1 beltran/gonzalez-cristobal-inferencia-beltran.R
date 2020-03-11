#Pregunta 1
set.seed(468)
muestra <- rnorm(20,10,2)
muestra
n <- 20
xbarra <- 10
sd <-2
vrianz <- 4
#intervalo de confianza al 95% para la media
t.test(muestra)$conf
#intervalo de confianza al 99% para la varianza
alfa <- 0.01#nivel de confianza 0.99
g.libertad <- n-1
Chi1 <- qchisq(1-(alfa/2),g.libertad)
Chi1
Chi2 <- qchisq(alfa/2,g.libertad)
Chi2
limite.superior <- (((n-1)*vrianz/Chi1)
limite.superior
limite.inferior <- (((n-1)*vrianz/Chi2)
limite.inferior
#entonces, el intervalo de la varianza de la población es
#[0.0324 , 1.9698]

#Pregunta 2
#Datos
n <- 33
sd <- 3.8
xbarra <- 18
hipnula <- 17
n.conf <- 0.9
alfa <- 0.1
z <- (xbarra - hipnula)/(sd/sqrt(n)
z
pnorm(z)
#debido a que el valor p de la hipotesis nula es mayor al 
#valor p, se concluye que la hipotesis nula no se rechaza