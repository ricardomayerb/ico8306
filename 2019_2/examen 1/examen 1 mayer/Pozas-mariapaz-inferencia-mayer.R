# 1. 
muestra <- rnorm(n = 20, mean = 10, sd = 4)
muestra

media <- 10
desv.est <- 4
n <- muestra
nivconf <- 0.05
  
t <- qt(1-((1-(nivconf/100))/2),n-1)
Int_Conf_Superior <- media+t*sqrt(desv.est^2/n)
Int_Conf_Inferior <- media-t*sqrt(desv.est^2/n)
Int_Conf_Superior
Int_Conf_Inferior


# que verguenza :(


