#solucion 1,
#generando muestra
muestra <- rnorm(20, 10, 2)
t.test(muestra)$conf #intervalo de confianza 95% media

#Intervalo confianza para varianza al 99% 
ic_varianza_99 <- c(9*var(muestra)/qchisq(0.975, 9), 9*var(muestra)/qchisq(0.025,9))
ic_varianza_99

#solucion 2
mu <- 17
sigma <- 3.8
alpha <- 0.9
n <- 33
rc <- c(mu+qnorm(alpha,lower.tail=f)*sigma/sqtr(n),inf)

