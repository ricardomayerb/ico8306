#Pregunta 1
rnorm(mean=10,sd=2,n=20)
t.test(rnorm(mean=10,sd=2,n=20),conf.level=0.95)
round(c(19*var(rnorm(mean=10,sd=2,n=20))/qchisq(0.005,19),19*var(rnorm(mean=10,sd=2,n=20))/qchisq(0.001,19)),4)
                    

                    
                    