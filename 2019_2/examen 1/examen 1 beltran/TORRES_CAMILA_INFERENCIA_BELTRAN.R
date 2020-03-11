#preguntas 
#pregunta numero 1 
#1 x=10 var=4 n=20 al 95% de confianza 

>valores <-rnorm(20,10,2)
>t.test(valores)$conf 
[1] 9.052416 10.825978
attr(, "conf.level")
[1] 0.95
>IC.varianza <-c(9*var(valores)/qchisq(0.975,9)*var(valores)/qchisq(0.025,9))
> IC.varianza
[1] 1.698568 11.965486

#  CON 99% DE CONFIANZA
#1 x=10 var=4
valores <-rnorm(20,10,2)
t.test(valores)$conf 
9.052416 10.825978
#CON ESTE CODIGO SE GENERA INTERVALO DE COBFIANZA 
attr(, "conf.level")
0.99
IC.varianza <-c(9*var(valores)/qchisq(0.995,9)*var(valores)/qchisq(0.005,9))
IC.varianza
#CON ESTE CODIGO EL INTERVALO DE CONFIANZA


#pregunta numero 2

n1<-33;xraya1<-18;S1<-3.8
alfa<-0.05
region.critica<-c(qnorm(1-alfa))
pvalor<-1-pnorm(6,18,3.8)





















































