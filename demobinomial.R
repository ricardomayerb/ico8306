cualquiera <- rbinom(n = 1000000, size = 5, prob = 0.3) 

# cualquiera

es_igual_a_dos <-   cualquiera == 0
mean(es_igual_a_dos)
dbinom(x = 0, size = 5, prob = 0.3)


es_igual_a_dos <-   cualquiera == 1
mean(es_igual_a_dos)
dbinom(x = 1, size = 5, prob = 0.3)


es_igual_a_dos <-   cualquiera == 2
mean(es_igual_a_dos)
dbinom(x = 2, size = 5, prob = 0.3)


es_igual_a_dos <-   cualquiera == 3
mean(es_igual_a_dos)

es_igual_a_dos <-   cualquiera == 4
mean(es_igual_a_dos)

es_igual_a_dos <-   cualquiera == 5
mean(es_igual_a_dos)


dbinom(x = 2, size = 5, prob = 0.3)

purrr::map_dbl(c(10, 100, 1000, 10000), ~ mean(rbinom(., 1, 0.2)))


