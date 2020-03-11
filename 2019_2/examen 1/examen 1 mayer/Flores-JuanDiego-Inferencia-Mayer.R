2.
promedio_38<-38
> desviacion_estandar_muestral<-3.8
> n<-33
> valor_critico_coladerecha<-c(0.1,0.9)
> media_muestral_noconocida_coladerecha<-qt(valor_critico_coladerecha,df=32)
> desviación_estandar_coladerecha<-sd(media_muestral_noconocida_coladerecha)/sqrt(33)
> mho<-17
> media_estandarizada<-(media_muestral_noconocida_coladerecha-mho)/desviación_estandar_coladerecha
> media_estandarizada_negativa<--abs(media_estandarizada)
> valorp<-pt(media_estandarizada_negativa,df=32)
> valorp*100
[1] 5.172475e-32 6.816712e-30

> 
  
  
  
  
  
  
  
  