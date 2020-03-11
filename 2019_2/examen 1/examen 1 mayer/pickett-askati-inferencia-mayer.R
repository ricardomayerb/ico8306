#1 si la varianza es 4, la desviación estandar es igual a 2.
# alpha/2 es 0.25; por lo que Z de alpha/2 es 1.96
rnorm(n=20, mean =10,sd=2 )

error.est <- 2/sqrt(20)
margen.error <- 1.96*error.est
lim.inferior <- 20 - margen.error
lim.inferior

lim.superior <- 20 + margen.error
lim.superior









#2
#alpha medios es 0.05
qt(0.05,32)
t <- 1.694
n <- 33
media <- 18
desv <- 3.8
error.est2 <- desv/sqrt(n)
margen.error2 <- t * error.est
 lim.inf <- media-margen.error2
lim.inf 

lim.sup <- media+margen.error2
lim.sup
