m1 <- rexp(20, rate = 1/9)
m2 <- rexp(200, rate = 1/9)
m3 <- rexp(2000, rate = 1/9)

e1 <- mean(m1)
e2 <- mean(m2)
e3 <- mean(m3)

s1 <- sd(m1)
s2 <- sd(m2)
s3 <- sd(m3)

ee1 <- (e1-8)/(s1/sqrt(20))
ee2 <- (e2-8)/(s2/sqrt(200))
ee3 <- (e3-8)/(s2/sqrt(2000))

medio_valor_p_1 <- 1 - pt(ee1, df = 20-1) 
valor_p_1 <- 2*medio_valor_p_1 

medio_valor_p_2 <- 1 - pt(ee2, df = 200-1) 
valor_p_2 <- 2*medio_valor_p_2 

medio_valor_p_3 <- 1 - pt(ee3, df = 2000-1) 
valor_p_3 <- 2*medio_valor_p_3 
