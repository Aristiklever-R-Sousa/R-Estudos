x <- 4
lambda <- 3

# a)
dpois(x, lambda)

# b)
acidentes <- 0:15
poisson <- dpois(acidentes, lambda) * 100

plot(acidentes, poisson,
     xlab = "N° de acidentes", ylab = "Probabilidades (%)",
     main = "Probabilidades dos Acidentes")
