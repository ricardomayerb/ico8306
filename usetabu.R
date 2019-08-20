library(tabulizer)
library(tidyverse)

book <- "./Anderson_Sweeney.pdf"

area1 <- locate_areas(book, pages = 148)


tabla_3_10_listdf <- extract_tables(file = book, pages = 148, area = area1,
                                    output = "data.frame")
tabla_3_10_df <- tabla_3_10_listdf[[1]]
tabla_3_10_df <- tabla_3_10_df[-1,]
colnames(tabla_3_10_df) <- c("notebook", "puntos_func", "puntos_gral")
tabla_3_10_df





area2 <- locate_areas(book, pages = 140)
area2
tabla_3_7_listdf <- extract_tables(file = book, pages = 140, area = area2,
                                output = "data.frame")
tabla_3_7_df <- tabla_3_7_listdf[[1]]
tabla_3_7_df <- tabla_3_7_df[-1,]
colnames(tabla_3_7_df) <- c("semana", "x_n_com", "y_vol_vtas")
tabla_3_7


a <- tibble::tribble(
  ~name, ~foo, ~moo,
    "a",    4,    6,
    "b",    5,    4,
    "c",   33,    5,
    "d",   42,    7,
    "e",    1,    8
  )

a 


