var1 <- 20
var <- c(12,3,1,24,3,5,6,7,4,3,2,43,45,23,12,23,23,34,56,78)
v <- rnorm(var,10,2)
m <- mean(v)
sd <- sd(v)
n <- length(v)
alpha1 <- 0.05
t1 <- qt(1-alpha1/2,n-1)
t1
intervalo_m <- m-t1*sd/sqrt(n)
intervalo_maa <- m+t1*sd/sqrt(n)
ic <- c(intervalo_m,intervalo_maa)
ic

alpha2 <- 0.01
t2 <- qt(1-alpha2/2,n-1)
t2
intervalo_menor <- m-t2*sd/sqrt(n)
intervalo_mayor <- m+t2*sd/sqrt(n)
ICcon99 <- c(intervalo_menor,intervalo_mayor)
ICcon99
#con un 95% de confianza el intervalo es ic y con un 99% de confianza el intervalo es ICcon99

#2

nn <- 33
ss <- 3.8
mea <- 18
r <- rnorm(nn,mea,ss)
alphaa <- 0.1
t.test(r,mu=17,alternative = "greater",conf.level = 0.90)
t.test(r,mu=17,alternative = "less",conf.level = 0.90)
# como p<alpha, se rechaza la hipotesis nula.