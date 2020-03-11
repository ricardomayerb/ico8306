#'1)
n <- 20

datos <- rnorm(n = n,mean = 10,sd = sqrt(4))
datos

alpha <- 0.05
media <- mean(datos)
media
sd <- sd(datos)
sd

#'a)
valor_z <- qnorm(p = 1-alpha/2) 
valor_z
rango <- valor_z*sd/sqrt(n)
rango

intervalo_menor <- media-rango
intervalo_menor
intervalo_mayor <- media+rango
intervalo_mayor

IC <- c(intervalo_menor, intervalo_mayor)
IC

#'b)

alpha_2 <- 0.01
var <- var(datos)
parte_superior <- (n-1)*var
parte_superior

qchi_inferior <- qchisq(df = n-1,p = 1-alpha_2/2)
qchi_inferior

qchi_superior <- qchisq(df = n-1,p = alpha_2/2)
qchi_superior

intervalo_menor_var <- parte_superior/qchi_inferior
intervalo_menor_var

intervalo_mayor_var <- parte_superior/qchi_superior
intervalo_mayor_var

IC_var <- c(intervalo_menor_var, intervalo_mayor_var)
IC_var


#'2)

n <- 33
s <- 3.8
media <- 18
alpha_3 <- 0.1
h0 <- 17

estandarizar <- (media-h0)/(s/sqrt(n))
estandarizar

valor_p_estandarizado <- pt(q = estandarizar,df = n-1)
valor_p_estandarizado


#' se rechaza si:

valor_p_estandarizado>1-alpha_3
