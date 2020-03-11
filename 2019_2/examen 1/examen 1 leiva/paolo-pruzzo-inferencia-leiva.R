#pregunta 1

n1<-20
x1<-10
var<-4
sd1<-2

matris_media<-matrix(ncol = 2,nrow = 1)

matris_media[1,1]<-x1-(qt(0.05,n1-1)*(sd1/(n1^0.5)))
matris_media[1,2]<-x1+qt(0.95,n1-1)*(sd1/(n1^0.5))

matris_varianza<-matrix(ncol = 2,nrow = 1)


#pregunta 2

n<-33
desv<-3.8
prom<-18
h0<-17
#calculo del estadistico
estadistico<-(prom-h0)/(desv/(n^(1/2)))
#calculo del alfa
alfa<-qt(0.9,n-1)

alfa
estadistico
#ya que el p value(estadistico)no es menor a alfa no se rechaza la hipotesis nula 