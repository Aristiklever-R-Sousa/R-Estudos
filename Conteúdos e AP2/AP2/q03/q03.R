tt <- read.csv("tempo_transito.csv", header = TRUE, sep = ',')

# a)
amostrasTempo <- sample(tt[tt$Idade > 15 & tt$Idade < 19, "Tempo"], size = 50)

# b)
mediaAmostra <- mean(amostrasTempo)
prob24 <- pnorm(24.7, mediaAmostra, 1.5/sqrt(50))
prob25 <- pnorm(25,5, mediaAmostra, 1.5/sqrt(50))

probTotal <- prob25 - prob24

probTotal

