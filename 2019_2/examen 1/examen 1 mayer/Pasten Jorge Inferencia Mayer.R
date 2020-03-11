#'Pregunta 1 
muestra <- rnorm(n = 20,mean = 10,sd = 2)
n=20
prom_muestra <- mean(muestra)
des_muestra <- sd(muestra)
#' Al 95%
alpha <- 0.05
intervalo <- qnorm(1-alpha/2)*(des_muestra/sqrt(n))
intervalo
intervalo_der <- prom_muestra+intervalo
intervalo_izq <- prom_muestra-intervalo
intervalo_de_confianza <- c(intervalo_izq,intervalo_der)
intervalo_de_confianza

#'Intervalo de la varianza
alpha <- 0.01
n=20

intervalo_izq_var <- ((n-1)*(des_muestra)*(des_muestra))/qchisq(1-alpha/2,df =n-1 )
intervalo_izq_var

intervalo_der_var <- ((n-1)*(des_muestra)*(des_muestra))/qchisq(alpha/2,df =n-1 )
intervalo_der_var

intervalo_varianza <- c(intervalo_izq_var,intervalo_der_var)
intervalo_varianza


#'Pregunta II
n2 <- 33
s <- 3.8
prom <- 18
u0 <- 17
#'Estandarizo
(18-17)/(3.8/sqrt(33))
valor_p <- pt(1.51,df = 32)
valor_fin <- 1-valor_p
valor_fin>0.1
#'Por lo tanto no rechazo la hipotesis nula 