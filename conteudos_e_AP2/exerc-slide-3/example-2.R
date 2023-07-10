p <- 0.5
n <- 6

obs <- 0:6

dbinom(obs, n, p)

# a)
dist.binom <- data.frame(Observacoes = obs, Probabilidades = dbinom(obs, n, p))

# b)
plot(obs, dist.binom$Probabilidades * 100,
     xlab = "Peças Perfeitas", ylab = "Probabilidades (%)",
     type = 'h', main = "Distribuição Binomial")
