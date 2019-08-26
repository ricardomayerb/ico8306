library(tidyverse)

m <- 10;
n <- 7;
k <- 8
x <- 0:(k+1)
rbind(phyper(x, m, n, k), dhyper(x, m, n, k))

m <- 5 
n <- 5
k <- 10
x <- c(0:10)
y <- dhyper(x, m, n, k, log = FALSE)
qplot(x, y, color = I("red"), 
      size = I(2), alpha = I(1/2), geom = c("point"))

m <- 1000 
n <- 1000
k <- 10
y <- dhyper(x, m, n, k, log = FALSE)
qplot(x, y, color = I("green"), 
      size = I(2), alpha = I(1/2), geom = c("point"))


m <- 6 ; n <- 6
k <- 10
y <- dhyper(x, m, n, k, log = FALSE)
qplot(x, y, color = I("steelblue"), 
      size = I(2), alpha = I(1/2), geom = c("point"))

m <- 8 ; n <- 8
k <- 10
y <- dhyper(x, m, n, k, log = FALSE)
qplot(x, y, color = I("blue"), 
      size = I(2), alpha = I(1/2), geom = c("point"))

m <- 15 ; n <- 5
k <- 10
y <- dhyper(x, m, n, k, log = FALSE)
qplot(x, y, color = I("red"), 
      size = I(2), alpha = I(1/2), geom = c("point"))

m <- 5 ; n <- 15
k <- 10
y <- dhyper(x, m, n, k, log = FALSE)
qplot(x, y, color = I("magenta"), 
      size = I(2), alpha = I(1/2), geom = c("point"))
