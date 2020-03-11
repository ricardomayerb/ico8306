#Desarrollo 

#Pregunta 1
rnorm(n = 20, mean = 10, sd = 2)
valores_1 <- rnorm(n = 20, mean = 10, sd = 2)

#Confianza al 95% 
nivel_confianza <- 0.95
mean(valores_1)
media_muestral <- mean(valores_1)
intervalo_media_95 <- c(media_muestral - (1.96)*(2/(sqrt(20))),(media_muestral + (1.96)*(2/(sqrt(20)))))
intervalo_media_95


#Confianza al 99%
nivel_confianza_2 <- 0.99
mean(valores_1)
media_muestral <- mean(valores_1)
intervalo_media_99 <- c(media_muestral - (2.58)*(2/(sqrt(20))),(media_muestral + (2.58)*(2/(sqrt(20)))))
intervalo_media_99

#Pregunta 2
n <- 33
d_muestral <- 3.8
media_muestral_2 <- 18
confianza <- 0.9
significancia <- 1 - confianza
H0 <- 17

estandarizado <- ((media_muestral_2 - H0)/(d_muestral/(sqrt(33))) )
estandarizado

prob_estandarizado <- pnorm(estandarizado)
prob_estandarizado

#comparación para rechazar 
significancia<prob_estandarizado

#se cumple la desigualdad, por lo tanto la hipotesis nula es rechazada.
