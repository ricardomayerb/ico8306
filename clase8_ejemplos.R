library(tidyverse)

# generemos observaciones desde distintas distribuciones
nobs <- 10000

## N(0,1)
normales_01 <- rnorm(nobs)

## N(0,2)
normales_02 <- rnorm(nobs, sd = sqrt(2))

## N(1, 4)
normales_14_direct <- rnorm(nobs, mean = 1, sd = 2)
normales_14_indirect <- 2*rnorm(nobs) + 1

## Poisson(5)
lambda_5 <- 5  
poi_5 <- rpois(nobs, lambda = lambda_5) 


## exponential(rate = 1/7)
rate_7 <- 1/7  
exp_7 <- rexp(nobs, rate = rate_7) 

## binomial B(5, 0.7)
bin_507 <- rbinom(nobs, size = 5, prob = 0.7)

## binomial B(5, 0.3)
bin_503 <- rbinom(nobs, size = 5, prob = 0.2)

## doble coincidencia de binomiales (TRUE si exito al mismo tiempo, en 20 días)
replicate(10, sum(rbinom(20, size = 1, prob = 0.2) + 
                    rbinom(20, size = 1, prob = 0.7)    == 2))

dcb <- replicate(nobs, sum(rbinom(20, size = 1, prob = 0.2) + 
                             rbinom(20, size = 1, prob = 0.7)    == 2))

## Solo uno viene
usv <- replicate(nobs, sum(rbinom(20, size = 1, prob = 0.2) + 
                             rbinom(20, size = 1, prob = 0.7)    == 1))

## ninguno viene
nv <- replicate(nobs, sum(rbinom(20, size = 1, prob = 0.3) + 
                            rbinom(20, size = 1, prob = 0.7)    == 0))

hist(dcb)
hist(usv)
hist(nv)


# quantiles de una muestra (se extrae de los datos)
## quantiles 0.05, 0.5 y 0.77 de la muestra exp_7
mis_q <- c(0.05, 0.5, 0.77)
q_exp_7 <- quantile(exp_7, mis_q)
q_exp_7

# > q_exp_7
# 5%        50%        77% 
# 0.3443279  4.7905161 10.1814194 
# 
# > q_exp_7
# 5%        50%        77% 
# 0.3662938  4.9517374 10.4884830 

# teoq_exp_7 
# [1]  0.3590531  4.8520303 10.2877318

# quantiles de una distribución (es una función conocida de la distribución)
## quantiles teóricos 0.05, 0.5 y 0.77 de la exponencial con rate = 1/7
teoq_exp_7 <- qexp(mis_q, rate = rate_7)
teoq_exp_7 


# probabilidad acumulada exacta en ciertos valores
valores_x_para_acumulada <- c(1, 7, 10)
teoprac_exp_7 <- pexp(valores_x_para_acumulada, rate = rate_7)
teoprac_exp_7

# probabilidad acumulada empirica en ciertos valores
valores_x_para_acumulada <- c(1, 7, 10)

fn_ecf <- ecdf(exp_7)
prac_exp_7 <- fn_ecf(valores_x_para_acumulada)
prac_exp_7

teopr_exp_7 <- pexp(valores_x_para_acumulada, rate = rate_7)
teopr_exp_7


# probabilidad de 5 <= x <= 10, usando los datos
pr_5_a_7 <- fn_ecf(10) - fn_ecf(5) 
pr_5_a_7

# probabilidad de 5 <= x <= 10, usando la función
teopr_5_a_7 <- pexp(10, rate = rate_7) - pexp(5, rate = rate_7) 
teopr_5_a_7



# densidad estimada de los datos
d_exp_7 <- density(exp_7)
plot(d_exp_7)

d_exp_7$x # los valores de x en que se evaluó esa densidad

# densidad teórica de una función conocida
teod_exp_7 <- dexp(d_exp_7$x, rate = rate_7)
plot(d_exp_7$x, teod_exp_7, type = "l")




df_empir <- data.frame(valor_x = d_exp_7$x, densidad = d_exp_7$y, tipo = "estimada")
df_exacta <- data.frame(valor_x = d_exp_7$x, densidad = teod_exp_7, tipo = "exacta")
df_densidad_exp_7 <- rbind(df_empir, df_exacta)

### crear el grafico de ambas densidades
plot_dens_exp <- ggplot(df_densidad_exp_7, aes(x=valor_x, y=densidad, color=tipo)) + 
  geom_line()

### mostrar el grafico de ambas densidades
plot_dens_exp 

