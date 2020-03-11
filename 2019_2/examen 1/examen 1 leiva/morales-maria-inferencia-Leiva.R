#Pregunta 1
Variable<-rnorm(20,10,2)
mvariable<-mean(Variable)
svariable<-sd(Variable)
nvariable<-length(Variable)
mediainferior<-mvariable-qt(0.975,nvariable-1)*svariable/(nvariable)^0.5
mediasuperior<-mvariable+qt(0.975,nvariable-1)*svariable/(nvariable)^0.5
varianzainferior<-(nvariable-1)*svariable^2/qchisq(0.995,nvariable-1)
varianzasuperior<-(nvariable-1)*svariable^2/qchisq(0.005,nvariable-1)

#Pregunta 2

x<-rnorm(33,18,3.8)            
t.test(x,conf.level = 0.99)
