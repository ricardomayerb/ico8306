robs<-20
normal_10_2<-rnorm(robs,10,2)

t.test(normal_10_2)
t.test(normal_10_2,conf.level = 0.95)
t.test(normal_10_2,conf.level = 0.99)

