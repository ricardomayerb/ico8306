#problema1 

muestra1 <- rnorm(20, 10, 2)

#intervalo, media nivel de confianza del 95%
t.test(muestra1)$conf 
#la media se encuentra entre 8.922971 y 10.635966 con 95% nivel de confianza


IC.varianza <- c(9*var(muestra1)/qchisq(0.975,9),9*var(muestra1)/qchisq(0.025,9))
IC.varianza 
# la varianza se encuentre entre 1.58 y 11.16 con 99% de confianza

# solución ejercicio 2
n=33; s=3.8 ;media=18 ;u=17
h0= u<=17 
h1= u>17
t=1.3086
estadístico= (media-u)/(s/sqrt(n))
t<estadistico
#ya que t es menor que el estadístico se rechaza la hipótesis 
  