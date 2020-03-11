pregunta 1

n=20
mean=10
var=4
s.d=2
#95% conf
#99%
listaN=rnorm(20,10,2)
t.test(listaN)$conf
#[1]  9.091358 10.971314

round(c(19*var(listaN)/qchisq(0.995,9),19*var(listaN)/qchisq(0.005,9)),4)
#[1]  3.2490 44.1761
pregunta 2 

n2=33
s.d2=3.8
mean2=18
alfa=0.1
conf.level=0.90
#90% conf.
mu=17
1-(mean2-mu)/(3.8/sqrt(33))
#-0.511727
#por lo tanto se rechaza ya que p-valor es 
#menor que el alfa

