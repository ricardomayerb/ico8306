#Datos pregunta 1

n= 20
x= 10
var= 4
sd= 2
#Respuesta: 
DatosA = rnorm(20,10,2)
t.test(DatosA,conf.level = 0.95)$conf
round(c(19*var(DatosA)/qchisq(0.995,9),19*var(DatosA)/qchisq(0.005,9)),4)

#Datos pregunta 2

n = 33  
s = 3.8
xraya = 18
mu = 17
conf.level= 0.90
alfa = 0.1
#Respuesta: 
1-(xraya-mu)/(3.8/sqrt(33)) #nos da p-value
#Resultado da -0.511727 < alfa(0.1)
#Por lo tanto, al ser alfa mayor que el valor de Z, podemos decir que la hipotesis nula se rechaza.

