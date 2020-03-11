#Pregunta 1
var1<-rnorm(20,10,4)
t.test(var1, conf.level=0.95)
n<-length(var1)
Intervaloinferior<-((n-1)*var1/qchisq(0.995, n-1))
Intervalosuperior<-((n-1)*var1/qchisq(0.005, n-1))

#Pregunta 2
var2<-rnorm(33,18,3.8)