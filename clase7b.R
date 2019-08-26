library(tidyverse)

# What is the probability of selecting x = 14 red marbles
# from a sample of k = 20 taken from an urn containing 
# m = 70 red marbles and n = 30 green marbles?
  
# probability
x = 14
k = 20
m = 70
n = 30
dhyper(x = x, m = m, n = n, k = k)
k * m / (m + n)
k * m / (m + n) * (m + n - k) / (m + n) * n / (m + n - 1)

options(scipen = 999, digits = 2) # sig digits

density = dhyper(x = 1:20, m = m, n = n, k = k)

data.frame(red = 1:20, density) %>%
  mutate(red14 = ifelse(red == 14, "x = 14", "other")) %>%
  ggplot(aes(x = factor(red), y = density, fill = red14)) +
  geom_col() +
  geom_text(
    aes(label = round(density,2), y = density + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "PMF of X = x Red Balls",
       subtitle = "Hypergeometric(k = 20, M = 70, N = 30)",
       x = "Number of red balls (x)",
       y = "Density")



x = 14
m = 7000
n = 3000
k = 20

d_binom <- dbinom(x = 1:20, size = k, prob = m / (m + n))
df_binom <- data.frame(x = 1:20, Binomial = d_binom)
p <- ggplot(df_binom, aes(x = x, y = Binomial)) +
  geom_col()

d_hyper_100 <- dhyper(x = 1:20, m = 70, n = 30, k = k)
d_hyper_250 <- dhyper(x = 1:20, m = 175, n = 75, k = k)
d_hyper_500 <- dhyper(x = 1:20, m = 350, n = 150, k = k)
d_hyper_1000 <- dhyper(x = 1:20, m = 700, n = 300, k = k)
df_hyper = data.frame(x = 1:20, 
                      Hyper_100 = d_hyper_100, 
                      Hyper_250 = d_hyper_250, 
                      Hyper_500 = d_hyper_500, 
                      Hyper_1000 = d_hyper_1000)
df_hyper_tidy <- gather(df_hyper, key = "dist", value = "density", -c(x))
p + 
  geom_line(data = df_hyper_tidy, aes(x = x, y = density, color = dist)) +
  labs(title = "Hypergeometric Distribution Appoximation to Binomial",
       subtitle = "Hypergeometric approaches Binomial as population size increases.",
       x = "Number of successful observations (x)",
       y = "Density")
