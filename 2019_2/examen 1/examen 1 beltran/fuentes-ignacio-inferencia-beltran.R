# 1.) generar lista de 20 valores de una poblacion normal de media 10 y varianza 4
#calcular intervalo de confianza al 95% para la media de la poblacion y otro 
#al 99% para la varianza de la poblacion

valores<-rnorm(20,10,2)
t.test(valores)$conf
#asi con el codigo anterior se puede crear un intervalo de confianza al 95% para la 
#media poblacional

attr("conf.level")

IC.varianza<-c(9*var(valores)/qchisq(0.975,9),9*var(valores)/qchisq(0.025,9))
IC.varianza

#asi con el codigo anterior se puede crear un intervalo de confianza al 95% para la 
#varianza de la poblacion

#2.) no alcance profe :c felices fiestas ! 

