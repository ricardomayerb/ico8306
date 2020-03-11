#crear varible aleatoria normal
robs<-10000  #numero de datos 
varnormal_75_15<-rnorm(robs,75,15) #v normal de la base de datos robs
                                    # con media 75 y sd 15 
# calcularemos la media y desviacion estanadar
mean(varnormal_75_15)
sd(varnormal_75_15)
# calcularemos la mediana 
median(varnormal_75_15)
#haremos un resumen de la variable
summary(varnormal_75_15)
# realizaremos un histograma
hist(varnormal_75_15)
 #haremos un grafico de densidad
plot(density(varnormal_75_15))
#operaciones para la v nomal
dnorm(varnormal_75_15, 74.76, 15.04) #calculo d f(X) densidad
 pnorm(1000, 74.76, 15.04)
pnorm(10000, 74.76, 15.04)
pnorm(500, 74.76, 15,04)
qnorm(1,74.76, 15.04)



