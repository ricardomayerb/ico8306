#1. media 10, varianza 4

rchisq(n=20,df=19)
x<- rchisq(n=20,df=19)
quantile(x,c(0.01, 0.05, 0.1))



rnorm(n=20, mean=10, sd=2)
y <- rnorm(n=20, mean=10, sd=2)
quantile(y,c(0.01, 0.05, 0.1))



#2. 33 observaciones
sd33 <- c(3,8)
media <-c(18)
est_media_33 <- (media33 - mh0)/sd33)
est_media_33_negativo <- -abs(est_media_33)
pvals_n33 <- 1*pt(est_media_33_negativo, df = 32)
