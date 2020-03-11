valores<-rnorm(20,10,2)
t.test(valores)$conf
IC.varianza<-c(9*var(valores)/qchisq(0.975,9),9*var(valores)/qchisq(0.025,9))
IC.varianza
