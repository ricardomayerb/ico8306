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

# [[1]]
# top     left   bottom    right 
# 575.9135 160.5000 788.5096 601.5577 

area2_ok <- list(c(580, 174.7788, 785.3365, 585.6923))

tabla_3_7_listdf_ok <- extract_tables(file = book, pages = 140, area = area2_ok,
                                output = "data.frame", guess = FALSE)

tabla_3_7_listdf <- extract_tables(file = book, pages = 140, area = area2,
                                   output = "data.frame", guess = FALSE)

tabla_3_7_listdf2 <- extract_tables(file = book, pages = 140, area = area2,
                                   output = "data.frame")


tabla_3_7_df <- tabla_3_7_listdf[[1]]
tabla_3_7_df
tabla_3_7_df <- tabla_3_7_df[-1,]

colnames(tabla_3_7_df) <- c("semana", "x_n_com", "y_vol_vtas")
tabla_3_7_df


area3 <- locate_areas(book, pages = 98)
area3
# [[1]]
# top      left    bottom     right 
# 79.32692 150.98077 310.96154 601.55769 
extract_tables(file = book, pages = 98, area = area3,
               output = "data.frame")




