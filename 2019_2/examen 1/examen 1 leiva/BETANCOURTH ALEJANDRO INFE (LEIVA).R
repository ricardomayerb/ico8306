

var1<-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
rnorm(var1,10,2)
sd(var1)
mean(var1)
n<-length(var1)
intinferior<-((n-1)*var1/qchisq(0.95, n-1))
intinferior<-((n-1)*var1/mean(0.95, n-1))
intinferior<-((n-1)*var1/sd(0.95, n-1))
intinferior<-((n-1)*var1/sd(0.99, n-1))
intsuperior<-((n-1)*var1/qchisq(0.99, n-1))
intsuperior<-((n-1)*var1/sd(0.99, n-1))


var2<-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33)
rnorm(var2,18,3.8)
mean(var2)
sd(var2)
