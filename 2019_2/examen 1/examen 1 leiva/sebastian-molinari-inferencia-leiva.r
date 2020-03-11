normal<- rnorm(20,10,2)
mean(normal)
sd(normal)
z1<-(-1.96)
z2<-(1.96)
error.est <- 2/sqrt(20)
margen.error <- 1.96 * error.est
lim.inf <- 10 - margen.error
lim.inf
lim.sup <- 10 + margen.error
lim.sup
h0<-17
hipotesisnorm<-rnorm(33,18,3.8)
arriba<- 1
my_sqrt <- sqrt(10)
my_sqrt
abajo<- 3.8/ my_sqrt
abajo
estadistico<- arriba / abajo
estadistico
lim.inf.hipo<- (-1.645)
lim.sup.hipo<- 1.645
