# PREGUNTA 1

lista_1 <- rnorm(20, mean = 10, sd = 4)
lista_1

# intervalo de confianza al 95% para la media 






# PREGUNTA  2
# 90% confianza, desv estandar poblacional desconocida 
alpha <- 0.1
n_datos <- 33
sd_muestral <- 3.8
mean_muestral <- 18 
mu0 <- 17
resultado_muestral <- (mean_muestral - mu0) / (sd_muestral/sqrt(33))
valor_P <- pnorm(resultado_muestral, mean_muestral, sd_muestral)
