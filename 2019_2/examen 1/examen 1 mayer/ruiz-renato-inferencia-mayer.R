Lista20 <- rnorm(20, mean = 10, sd = 2)
IC_U_95 <- c(0.025, 0.95, 0.975)
ValoresU <- qnorm(IC_U_95)
print(ValoresU <- qnorm(IC_U_95))
IC_V_99 <- c(0.005, 0.99, 0.995)



#2 
n <- 33
s <- 3.8
MediaMuestra <- 18
u <- 17

Estadistico <- (MediaMuestra - u)/(s/sqrt(n))
ValorP <- pnorm(Estadistico)


# Como es un test de cola derecha al 90% de confianza: al calcular el Valor P 
# del estadistico obtenemos que es 0.93 o 93%. Este valor es superior al 90% 
# que aceptamos por lo tanto rechazamos la nula.
