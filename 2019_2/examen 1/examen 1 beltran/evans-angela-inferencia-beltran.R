#Pregunta 1
media <- 10
varianza <- 4
valores <-rnorm(20,10,2)
t.test(valores)$conf 
IC.varianza <-c(9*var(valores)/qchisq(0.975,9)*var(valores)/qchisq(0.025,9))
#a)
t.test(valores)$conf  #95%
#b)
t.test(valores,conf.level=0.99)$conf #99%
#Pregunta 2
n <- 33
s <- 3.8 
promedio <- 18

n1 <- 33;xraya1<-18;s<-3.8
region.critica<-c(qnorm(1-promedio)
pvalor<-1-pnorm(6,18,3.8)
pvalor
