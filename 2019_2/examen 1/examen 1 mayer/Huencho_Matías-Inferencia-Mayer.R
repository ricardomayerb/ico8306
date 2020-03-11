1-
Lista20v<-rnorm(n=20,mean=10,sd=2)
MeanLista<-mean(Lista20v)
n<-20
Alfamedi1<-qnorm(0.05)
s<-2
ExtrmInf<-10-(Alfamedi*(2/sqrt(20)))
ExtremSup<-10+(Alfamedi*(2/sqrt(20)))
#[ExtrmInf,ExtremSup] #Este es el intervalo de confianza al 90%
ExtremoInfe<-((n-1)*s*s)/qchisq(p=0.995,df=n-1)
ExtremoSupe<-((n-1)*s*s)/qchisq(p=0.005,df=n-1)
#[ExtrmoInfe,ExtremoSupe] #Este es el intervalo de confianza al 99%


