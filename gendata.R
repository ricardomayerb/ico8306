library(datos)
library(tidyverse)
library(openxlsx)
library(readxl)

cli10 <- sample_frac(clima, size = 0.1)

sum(cli10$temperatura %>% is.na())
sum(cli10$punto_rocio %>% is.na())
sum(cli10$humedad %>% is.na())

nona_t <- !is.na(cli10$temperatura)
nona_pr <- !is.na(cli10$punto_rocio)
nona_h <- !is.na(cli10$humedad)

sum(nona_t & nona_pr & nona_h)
length(nona_h)

cli10htpr <- cli10[nona_t & nona_pr & nona_h, ]


pa <- paises %>% filter(anio == 2007)
summary(pa)

write.xlsx(cli10htpr, "datos_ie.xlsx")

write.xlsx(pa, "datos_e.xlsx")
