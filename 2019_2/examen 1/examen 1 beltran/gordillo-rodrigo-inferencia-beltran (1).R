# Pregunta 1
valores <- rnorm(20,10,2)
Iconf95 <- t.test(valores,conf.level=0.95)$conf
Iconf95

#Intervalo de confianza al 99% para la varianza

IC.varianza <-c(9*var(valores)/qchisq(0.975,9),9*var(valores)/qchisq(0.025,9))
IC.varianza

#2 
n<-33
xraya1<-18
S<-3.8
alfa<-0.05

region.critica<-c(qnorm(1-alfa))
pvalor<-1-pnorm(6,18,3.8)
pvalor
