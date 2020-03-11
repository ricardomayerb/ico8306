var2<- rnorm (20,10,2)


intervalo<-matrix(nrow=3,ncol=2)
rownames(intervalo)<-c("media de var2 al 95%","varianza de var2 al 99%")
colnames(intervalo)<-c("inferior","superior")

mean(var2)
intervalo[1,1]<-mean(var2)-qt(0.95,length(var2)-1)*sd(var2)/(length(var2)^0.5)
intervalo[1,2]<-mean(var2)+qt(0.95,length(var2)-1)*sd(var2)/(length(var2)^0.5)

intervalo[2,1]<-(length(var2)-1)*sd(var2)^2/qchisq(0.99,length(var2)-1)
intervalo[2,2]<-(length(var2)-1)*sd(var2)^2/qchisq(0.01,length(var2)-1)