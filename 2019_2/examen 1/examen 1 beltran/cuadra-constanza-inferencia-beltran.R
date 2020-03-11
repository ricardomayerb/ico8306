#PREGUNTA1 
x=10 var=4 n=20 al 95% de confianza 

 valores <-rnorm(20,10,2)
 t.test(valores)$conf 
 9.052416 10.825978
attr(, "conf.level")
  0.95
 IC.varianza <-c(9*var(valores)/qchisq(0.975,9)*var(valores)/qchisq(0.025,9))
 IC.varianza
 1.698568 11.965486

# AHORA CON 99% DE CONFIANZA
#1 x=10 var=4
valores <-rnorm(20,10,2)
t.test(valores)$conf 
9.052416 10.825978
attr(, "conf.level")
 0.99
IC.varianza <-c(9*var(valores)/qchisq(0.995,9)*var(valores)/qchisq(0.005,9))
IC.varianza
 1.698568 11.965486

# PREGUNTA 2
#N=33 S=38 X=18 P-VALUE 90% CONFIANZA
 
 n1<-33;xraya1<-18;S1<-3.8
 alfa<-0.05
 region.critica<-c(qnorm(1-alfa))
 pvalor<-1-pnorm(6,18,3.8)
 
 