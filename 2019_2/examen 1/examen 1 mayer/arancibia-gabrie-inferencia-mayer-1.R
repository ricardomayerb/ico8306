# Pregunta 2.1)
lista_20 <- rnorm(20, mean = 10, sd = 2)
lista_20
var_ <- var(lista_20)
var_
ic95 <- t.test(lista_20)
ic95
#Para la varianza

round(c(19*var(lista_20)/qchisq(0.995,19),19*var(lista_20)/qchisq(0.005,19)))




      