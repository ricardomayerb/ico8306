z025 <- qnorm(0.025)
z005 <- qnorm(0.005)
z050 <- qnorm(0.05)

za025 <- 1.96
za005 <- 2.576
za050 <- 1.645

# precios de arriendo 

pd <- c(2500, 2600, 2700, 2850, 3200, 3300, 2300, 3000, 2800, 2500, 2600, 2400, 3100, 3000,
  2700, 2900, 2200, 3000, 2660, 2700, 2500, 2680, 2700, 2400, 2480, 2300, 3200, 2900,
  2900, 2800, 2700, 3000, 2800, 2600, 2700, 2900, 2900, 3000, 2850, 2690, 2700, 2700)

n <- length(pd)
xbar <- mean(pd)
s <- sd(pd)

mu <- 2800
sigma <- 250

e_sigma_99 <- za005*sigma/sqrt(n)
e_sigma_95 <- za025*sigma/sqrt(n)
e_sigma_90 <- za050*sigma/sqrt(n)

ic_sigma_99 <- c(xbar - e_sigma_99, xbar + e_sigma_99)
ic_sigma_95 <- c(xbar - e_sigma_95, xbar + e_sigma_95)
ic_sigma_90 <- c(xbar - e_sigma_90, xbar + e_sigma_90)

t41_005 <- qt(0.005, df = n-1)
t41_025 <- qt(0.025, df = n-1)
t41_050 <- qt(0.05, df = n-1)

e_s_99 <- -t41_005 *s/sqrt(n)
e_s_95 <- -t41_025 *s/sqrt(n)
e_s_90 <- -t41_050 *s/sqrt(n)

ic_s_99 <- c(xbar - e_s_99, xbar + e_s_99)
ic_s_95 <- c(xbar - e_s_95, xbar + e_s_95)
ic_s_90 <- c(xbar - e_s_90, xbar + e_s_90)

# Fórmulas relevantes (ver Anderson y Sweene, cap 8, página 326)

## estimación por intervalo de una media poblacional: $\sigma$ conocida
## $$\bar{x} \pm zeta_{\alpha/2} \frac{sigma}{\sqrt{n}}  $$

## estimación por intervalo de una media poblacional: $\sigma$ desconocida
## $$\bar{x} \pm t_{n-1, \alpha/2} \frac{s}{\sqrt{n}}  $$


## tamaño de la muestra para una estimación de la media poblacional## 
## $$n =   \frac{(zeta_{\alpha/2})^2 sigma^2 }{E^2}  $$


## Estimación por intervalo de una proporción poblacional
## $$\bar{p} \pm zeta_{\alpha/2} \frac{s}{\sqrt{n}}  $$


## Tamaño de la muestra para una estimación de la proporción poblacional


# Ejercicios

# estimador de la media con desviación estándar conocida


