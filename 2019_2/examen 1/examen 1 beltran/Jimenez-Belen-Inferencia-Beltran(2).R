#Pregunta 1 
#genere una lista aleatoria de 20 valores provenientes de una poblacion normal
#de media 10 y varianza 4, con un 95% de confianza para la media y otro 99% de 
#confianza para la varianza

valores<- rnorm(20,10,2)
t.test(valores)$conf

#nivel de confianza para la media a u 95% de confianza
#(9.310256;11.130718)

IC.variaza<- c(9*var(valores)/qchisq(0.975,9),9*var(valores)/qchisq(0.025,9))
IC.variaza
#nivel de confianza para la varianza al 99%
#(1.789589;12.606677)

#Pregunta 2
#muestra de 33 observacioes, sigma poblacional desconocido 

n=33; s=3.8; media=18; u=17
h0= u<17
h1= u>17
t= 1.3086
