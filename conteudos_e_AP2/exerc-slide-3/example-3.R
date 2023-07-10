x <- 2
lambda <- 2.3

# a)
dpois(x, lambda)

# b)
erros <- 0:10

poisson <- dpois(erros, lambda) * 100

plot(erros, poisson,
     xlab = "Nr Erros/mm", ylab = "Probabilidades (%)",
     main = "Distribuição de Poisson",
     ylim = c(0, 30))
lines(erros, poisson)