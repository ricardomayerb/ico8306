#1
#para la media

m20 <- rnorm(n=20, mean=10, sd=2)
m20
parte1_intervalo <- 10-(1.96*(2/sqrt(20)))
parte1_intervalo

parte2_intervalo <- 10+(1.96*(2/sqrt(20)))
parte2_intervalo

#por lo tanto el intervalo es el de (9.123461;10.87654)

#para la varianza


#2
u0 <- 17
n <- 33
s <- 3.8
x <- 18

valor_z <- ((x-u0)/(s/sqrt(n)))
valor_z

pvals_valor_z <- pt(valor_z,df=32)
1-pvals_valor_z

#como el valor p es menor al alpha=0.1 se rechaza la nula 

