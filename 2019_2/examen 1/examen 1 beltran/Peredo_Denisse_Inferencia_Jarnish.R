



1. 
Valores <- rnorm(20, 10, 2)

t.test(Valores)$conf
attr("conf.level")
0.95

IC.Varianza <- c(9*var(Valores)/qchisq(0.975, 9), 9*var(Valores)/qchisq(0.025, 9))
IC.Varianza 


  
  
  
  
  
  
  
  
  
