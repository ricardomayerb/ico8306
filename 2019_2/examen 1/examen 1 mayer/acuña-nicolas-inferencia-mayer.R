#intervalo para poblacion
rnorm20<-rnorm(n=20, mean=10, sd=2)
meanrnorm20<- mean(rnorm20)
nnorm20<- c(20)
zalfamedios<-c(0.025)
sd_rnorm20<- c(2)
val_critic1 <- qnorm(zalfamedios)
val_critic1
val_critic1_abs<- abs(val_critic1)
val_critic1_abs
valor_superior<-meanrnorm20 + val_critic1_abs *(sd_rnorm20/(sqrt(nnorm20)))
valor_superior
valor_inferior<-meanrnorm20 - val_critic1_abs *(sd_rnorm20/(sqrt(nnorm20)))
valor_inferior
#intervalo para varianza
rnorm20gl<-c(19)
varrnorm20<-c(4)
alfamedios1<- c(0.005)
alfamedios2<- c(0.995)
chialfamedios1<- qchisq(alfamedios1, df = rnorm20gl)
chialfamedios1
valor_superior_var<-(rnorm20gl*varrnorm20)/chialfamedios1
valor_superior_var
chialfamedios2<- qchisq(alfamedios2, df = rnorm20gl)
chialfamedios2
valor_inferior_var<-(rnorm20gl*varrnorm20)/chialfamedios2
valor_inferior_var

#test de hip
n33<- c(33)
mh0 <-c(17)
desv_st_muestra33<- c(3.8)
meann33<-c(18)
alfa1<-c(0.1)
est_media<-(meann33 - mh0)/(desv_st_muestra33/(sqrt(n33)))
est_media_nega<- -abs(est_media)
p_vals33<- pt(est_media_nega, df=32)
p_vals33

n_rechazo_p_vals33<-p_vals33 < alfa1
n_rechazo_p_vals33

Rechazo H0
