mariela <- rbinom(n = 5, size = 1, prob = 0.7)
jd <- rbinom(n = 5, size = 1, prob = 0.3)
mj <- 
mj

coincidencias <- replicate(10000, sum(rbinom(n = 20, size = 1, prob = 0.7)
                 + rbinom(n = 20, size = 1, prob = 0.3) == 2))

hist(coincidencias)
median(coincidencias)
quantile(coincidencias, c(0.25, 0.75))
quantile(coincidencias)
