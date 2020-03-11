#RESPUESTAS EXAMEN INFERENCIA

#1
#SOLUCION
muestra1 <- rnorm(20, 10, 2)

#intervalo media muestra 1 95% confianza
t.test(muestra1)$conf
#La media se encuentra 9.239286 y 11.487911 con un 95% de confianza

IC.varianza <- c(9*var(muestra1)/qchisq(0.975,9),9*var(muestra1)/qchisq(0.025,9))
IC.varianza
#La varianza se encuentra entre 2.730389 y 19.234095 con un 99% de confianza

#2
#SOLUCION
n=33; s=3.8 ;media=18 ; u=17
h0= u<=17
h1= u>17
t=1.3086
estadistico= (media-u)/(s/sqrt(n))
t<estadistico

#Considerando que t es menor al estadistico se rechaza la hipotesis nula ya que
#se encuentra en la region de rechazo