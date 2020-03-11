robs<-20
normal_10_4<-rnorm(robs,10,4)
m_robs=mean(robs)
s_robs=sd(robs)
n_nf=length(robs)
intervalo<-matrix(nrow = 4,ncol = 2)
colnames(intervalo)<-c("inferior","superior")
#intervalo confianza 95% para media poblacional
intervalo[1,1]<-m_robs-qt(0.975,1-n_nf)*s_robs/(n_nf^0.5)
intervalo[1,2]<-m_robs+qt(0.975,1-n_nf)*s_robs/(n_nf^0.5)
