
lista_1 <- rnorm(n=20, mean=10, sd=2)
lista_1

niveldeconfianza= 0.9
error.est <- 2/sqrt(20)
margen.error <- 1.960*error.est
lim.inf <- 10 - margen.error
lim.inf
lim.sup <-10 + margen.error 
lim.sup
