#Pregunta 1
p9599 <- c(0.95,0.99)
p510 <- c(0.05,0.1)
lista <- rnorm(20,10,2)
val_crit <- qchisq(p510,19)





val_criticos_7 <- qchisq(p510, df = 29)
val_criticos_7







#Pregunta 2

meanlista <- mean(lista)
sdlista <- sd(lista)/sqrt(33)
mho <- 17

est_media_lista <- (meanlista - mho)/sdlista
est_media_lista
est_media_neg <- -abs(est_media_lista)

pval_lista <- 2*pt(est_media_neg,32)


pval_lista*100
n33lista_10 <- pval_lista < 0.1
n33lista_10
#Por lo tanto si se rechaza con confianza al 90%
