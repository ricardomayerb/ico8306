library(tidyverse)

lambda401 <-  6
dpois(10,lambda401)
dpois(6,lambda401) 
d0 <- dpois(0,lambda401)
d1 <- dpois(1,lambda401)
d2 <- dpois(2,lambda401)
ppois(2,lambda401)
d0+d1+d2
1-ppois(2,lambda401)
qpois(0.5,lambda401)
qpois(0.9,lambda401)
dexp(3,rate = 1/5)
qexp(0.3,rate = 1/5)
qexp(0.5,rate = 1/5)
pexp(3,rate = 1/5)
pexp(1,rate = 1/5)
pexp(8,rate = 1/5)
1-pexp(8,rate = 1/5)
