#Pregunta 2.1
normal_20_10_4<-rnorm(20,10,2)
#var=4; ds=2; n=20; u=10; 
media<-mean(normal_20_10_4)
ds<-sd(normal_20_10_4)
#conf.level=95%
z0<-qnorm(0.025,media,ds)
inf0<-media-(z0*(ds/(20)^2))
sup0<-media+(z0*(ds/(20)^2))
#conf.level=99%
z1<-qnorm(0.005,10,2)
inf1<-media-(z1*(ds/(20)^2))
sup1<-media+(z1*(ds/(20)^2))
#Pregunta 2.2
x<-33
t.test(x,mu=17,alternative = "less", conf.level = 0.9)
