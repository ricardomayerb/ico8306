#desarrollo ejercicio 1

valores<-rnorm(20,10,2)
t.test(valores)$conf
IC.varianza<-c(9*var(valores)/qchisq(0.975,9),9*var(valores)/qchisq(0.025,9))
IC.varianza 

#desarrollo ejercicio 2

n<-[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33]
t.test(n,mu=18)


