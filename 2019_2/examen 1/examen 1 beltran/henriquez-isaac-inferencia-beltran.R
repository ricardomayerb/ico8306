#ejercicio 1 
valores<- rnorm(20,10,2)
#intervalo de confianza al 95% para la media de la poblacion:
t.test(valores)$conf
#el intervalo de confianza de la media al 95% es el comando anterior. (no lo pongo porque van cambiando)
#ahora para sacar el intervalo al 99% de confianza para la varianza es:
IC.varianza<-c(9*var(valores)/qchisq(0.975,9),9*var(valores)/qchisq(0.025,9))
IC.varianza
#el valor del intervalo al 99% de confianza de la varianza de la poblacion es el comando anterior.