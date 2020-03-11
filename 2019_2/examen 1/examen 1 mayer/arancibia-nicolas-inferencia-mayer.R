#pregunta 2 

expmean <- 18
exprate <- 1/expmean
m <- rexp(n = 33, rate = exprate)
media <- mean(m)
sd_media <- sd(m)/sqrt(3.8) 
mh0 <- 17
est_media <- (media - mh0)/sd_media
est_media
est_media <- -abs(est_media)
est_media
pvals <- pt(est_media, df = 32)
n20_rechazo <- pvals < c(0.10)
n20_rechazo
#se rechaza la hipotesis nula 

#PREGUNTA 1

N <- 20
MEDIA <- 10
SD <- 2

