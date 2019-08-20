library(dplyr)
library(ggplot2)
# library(scales)


# exacta
dbinom(x = 2, size = 10, prob = 0.3)

# simulada
mean(rbinom(n = 10000, size = 10, prob = 0.3) == 2)


data.frame(caras = 0:10, prob = dbinom(x = 0:10, size = 10, prob = 0.3)) %>%
  mutate(caras = ifelse(caras == 2, "2", "other")) %>%
  ggplot(aes(x = factor(caras), y = prob, fill = caras)) +
  geom_col()  +
  labs(title = "probabilidad de X = 2 exitos.",
       subtitle = "b(10, .3)",
       x = "exitos (x)",
       y = "probabilidad") 




# Ejemplo
# Cual es la probabilidad de <=5 caras en 10 lanzamientos de monedas donde probabilidad de caras is 0.3?

# exacta
pbinom(q = 5, size = 10, p = 0.3, lower.tail = TRUE)
mean(rbinom(n = 10000, size = 10, prob = 0.3) >= 3)


data.frame(caras = 0:10, 
           pmf = dbinom(x = 0:10, size = 10, prob = 0.3),
           cdf = pbinom(q = 0:10, size = 10, prob = 0.3, 
                        lower.tail = TRUE)) %>%
  mutate(caras = ifelse(caras <= 5, "<=5", "other")) %>%
  ggplot(aes(x = factor(caras), y = cdf, fill = caras)) +
  geom_col()  +
  labs(title = "probabilidad de X <= 5 exitos.",
       subtitle = "b(10, .3)",
       x = "exitos (x)",
       y = "probabilidad") 


# Ejemplo
# Cual es la probabilidad de >=5 caras en 10 lanzamientos de monedas donde probabilidad de caras is 0.3?

# exacta
pbinom(q = 4, size = 10, p = 0.3, lower.tail  = FALSE)

# simulada
mean(rbinom(n = 10000, size = 10, prob = 0.3) >= 5)

data.frame(caras = 0:10, 
           pmf = dbinom(x = 0:10, size = 10, prob = 0.3),
           cdf = pbinom(q = -1:9, size = 10, prob = 0.3, 
                        lower.tail = FALSE)) %>%
  mutate(caras = ifelse(caras >= 5, ">=5", "other")) %>%
  ggplot(aes(x = factor(caras), y = cdf, fill = caras)) +
  geom_col() +
  labs(title = "probabilidad de X >= 5 exitos.",
       subtitle = "b(10, .3)",
       x = "exitos (x)",
       y = "probabilidad") 

# Ejemplo
# Cual es el valor esperado de caras en 25 lanzamientos de monedas donde probabilidad de caras is 0.3?
  
# exacta
25 * 0.3
mean(rbinom(n = 10000, size = 25, prob = .3))

# Variance
25 * 0.3 * (1 - 0.3)


var(rbinom(n = 10000, size = 25, prob = .3))


data.frame(caras = 0:100, 
           pmf = dbinom(x = 0:100, size = 100, prob = 0.3)) %>%
  ggplot(aes(x = factor(caras), y = pmf)) +
  geom_col() +
  geom_text(
    aes(label = round(pmf,2), y = pmf + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "probabilidad de X = x exitos.",
       subtitle = "b(25, .3)",
       x = "exitos (x)",
       y = "probabilidad") 



# Ejemplo
# Asuma que X es una variable aleatoria b(10, .6)  y Y es una variable aleatoria b(10, .7) , y que ademas X y Y son independientes.
# Cual es la probabilidad de que una de las dos sea <=4?
  
  (x_le4 <- pbinom(q = 4, size = 10, prob = 0.6, lower.tail = TRUE))
## [1] 0.1662386
(y_le4 <- pbinom(q = 4, size = 10, prob = 0.7, lower.tail = TRUE))
## [1] 0.04734899
(x_or_y_le4 <- x_le4 + y_le4 - x_le4 * y_le4)
## [1] 0.2057164

