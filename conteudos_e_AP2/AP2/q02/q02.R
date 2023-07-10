cc <- read.csv("contas_celular.csv")

# a)
amostra <- sample(cc$Conta, size = 100)

# b)
mean(amostra)

sdCC <- sd(cc$Conta)
sdAmostra <- sdCC/sqrt(length(amostra))

# c)
hist(amostra, probability = TRUE, col = 3)
