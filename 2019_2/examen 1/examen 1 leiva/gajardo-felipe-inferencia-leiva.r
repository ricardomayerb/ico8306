#1#
#con 95% de confianza#
robbs<-20
normal<-rnorm(robbs,10,2)
mnormal<-mean(normal)
sdnormal<-sd(normal)
nnormal<-length(normal)
cotainferior<-(mnormal-qnorm(0.975)*2/(nnormal)^0.5)
cotasuperior<-(mnormal+qnorm(0.975)*2/(nnormal)^0.5)

#con 99% de confianza#
cotainferior2<-(mnormal-qnorm(0.995)*2/(nnormal)^0.5)
cotasuperior2<-(mnormal+qnorm(0.995)*2/(nnormal)^0.5)
View(normal)

#2#
sd<-3.8
mediamuestral<-18
nmuestral<-33
estadistico<-(mediamuestral-17/sd/(nmuestral)^0.5)
