normal_10.20
media <- mean(normal_10.20)
ds <- sd(normal_10.20)
n <- length(normal_10.20)
error <- qnorm(0.95)*ds/sqrt(n)
izq <- media-error
der <- media+error