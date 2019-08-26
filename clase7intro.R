library(tidyverse)

xn <- rnorm(100, mean = 0, sd = 1)
xp <- rpois(100, lambda = 1.5)
xln <- rlnorm(100, mean = 0, sd = 1.1)


sd(xn)
sd(xp)
min(xn)
max(xn)

quantile(xln, 0.66)
myfn <- ecdf(xln)
myfn(1.379433 )
myfn(1)
myfn(1.4)
myfn(1.4) - myfn(0.9)



c(min(xp), max(xp), sd(xp))
c(min(xn), max(xn), sd(xn))

summary(xn)
summary(xp)
summary(xln)

hist(xn)
hist(xp)
hist(xln)

boxplot(xn)
boxplot(xp)
boxplot(xln)

dfn <- data.frame(valor = xn, tipo = "A")
dfp <- data.frame(valor = xp, tipo = "B")
dfln <- data.frame(valor = xln, tipo = "C")

df <- rbind(dfn, dfp, dfln)

df %>% ggplot(aes(y=valor, color = tipo)) + geom_boxplot()

# introduction to pipes:
4 %>% rnorm(mean = 0, sd = 1)
6 %>% rnorm(mean = 0, sd = 1)