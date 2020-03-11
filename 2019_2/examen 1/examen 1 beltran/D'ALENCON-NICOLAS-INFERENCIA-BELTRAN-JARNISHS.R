1) n=20
   var=4
   mean=10
   s.d=2
   #95% confianza
   #99% para la varianza poblacional
lista <-rnorm(20,10,2)
 t.test(lista,conf.level=0.95)$conf
 # 0.95
 
 round(c(19*var(lista)/qchisq(0.995,9),19*var(lista)/qchisq(0.005,9)),4)
 
 # [3.6088;49.0671]
   
 2)N=33
   S=3.8
   MEAN=18
   ALFA=0.1
   #90% CONFIANZA
   
   conf.level=0.90
   
   (xraya-ab)/(3.8/sqrt(33)) 
   #1.511727  el p-valor
   #como resultado es -0.511727<ALFA(0.1)
   