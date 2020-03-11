#Desarrollo
#Pregunta 1

Valores<-rnorm(20,10,2)

t.test(Valores)$conf       


IC.VARIANZA<-c(9*var(Valores)/qchisq(0.975,9),9*var(Valores)/qchisq(0.025,9))       
IC.VARIANZA


#Pregunta 2
#Datos #Op=desconocida S=3.8 Promedio=18
n=33

(18-17)/((3.8)/sqrt(10))

#Acepto la hipotesis nula