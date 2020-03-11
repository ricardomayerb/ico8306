#EJERCICIO 1
#PARTIREMOS CON EL INTERVALO DE CONFIANZA PARA LA MUESTRA

#Generar una lista de 20 valores.
lista1 <-  rnorm(20, 10, sqrt(4))

n <- 20
media <- 10
Var <- 4
desv.est <- 2
con1 <- 0.95

#creamos el error estandar
error.est0.95 <- (1.96*((desv.est)/(sqrt(n))))

#el intervalo se creará sumando y restando a la media el
#error estandard

limite_inferior_mu <- media - error.est0.95
limite_superior_mu <- media + error.est0.95

IC.MU <- c(limite_inferior_mu, limite_superior_mu)


#INTERVALO DE CONFIAZNA PARA LA VARIANZA

# usaremos la formula de varinza.
# limite inferior = Var - ((n-1)*S^2)/Chi2(df=19, 1 -alfa= 0.01/2)

alfa_V <- 0.01/2
1-alfa_V

limite_inferior_V <- (Var -((n-1)*(desv.est^2)/38.582))

limite_inferior_V

limite_superior_V <- (Var +((n-1)*(desv.est^2)/38.582))                 

limite_superior_V

#Creamos el intervalo de confianza
IC.VAR <- c(limite_inferior_V, limite_superior_V)


#EJERCICIO 2#

n2 <- 33
S <- 3.8
mu <- 18
mu0 <- 17

?rnorm
rnorm(n2, mu, S)

# Calulamos el limite superior

error.est.0.9 <- (1.28*((desv.est)/(sqrt(n2))))

limite_superior_mu_2 <- (mu0 + error.est.0.9)

limite_superior_mu_2

#Mi limite superior es menor que mi mu, por ende hay información suficiente
#para rechazar la hipotesis nula.