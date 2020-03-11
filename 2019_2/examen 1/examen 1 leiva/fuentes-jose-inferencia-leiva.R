#pregunta 1)
normal<-rnorm(20,10,2)
media<-mean(normal)
sd<-sd(normal)
n<-length(normal)

#intervalos para la media al 95% de confianza
Ainferior_media<-media-qt(0.975,n-1)*sd/(n)^0.5
Asuperior_media<-media+qt(0.975,n-1)*sd/(n)^0.5

#intervalos para la varianza AL 99% de confianza
Binferior_varianza<-(n-1)*(sd^2)/qchisq(0.995,n-1)
Bsuperior_varianza<-(n-1)*(sd^2)/qchisq(0.005,n-1)