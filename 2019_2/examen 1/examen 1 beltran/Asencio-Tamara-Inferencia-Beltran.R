
#Preguntas
#1)

valores<-rnorm(20,10,2)

#Intervalo de confianza al 95%
t.test(valores)$conf

#Intervalo de confianza al 99%
IC.varianza<-c(9*var(valores)/qchisq(0.975,9),9*var(valores)/qchisq(0.025,9))

#2)
#Datos
#s.d muestral=3.8  promedio=18
n=33

(18-17)/((3.8)/sqrt(10))

#Se acepta la hipotesis


