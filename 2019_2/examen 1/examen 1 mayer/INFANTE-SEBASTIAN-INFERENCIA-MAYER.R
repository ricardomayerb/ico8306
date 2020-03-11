#1
n<-20
varianza<-4
media<- 10
alpha<- 0.05
cuantil<- qnorm(1 - alpha/2)

lim_inf<- media - cuantil * sqrt(varianza) / sqrt(n)
lim_inf

lim_sup<- media + cuantil * sqrt(varianza) / sqrt(n)
lim_sup

alphe<- 0.01
cuantil<- qnorm(1 - alphe/2)
lim_inf<-media - cuantil * sqrt(varianza) / sqrt(n)
lim_inf


lim_sup<- media + cuantil * sqrt(varianza) / sqrt(n)
lim_sup

#2
 a <- 17
 n <- 33
 xbar <- 18
 z <- (xbar-a)/(s/sqrt(n))
 z

 2*pnorm(-abs(z))
