paste('Hello World')

data1 <- read.csv(
              "exerc-01/q01/defeitos-grupos-de6.csv",
              header = FALSE,
              sep = ';'
        )

calcBase <- data1[, 'V1']

# MODA CALC
repetentes <- table(calcBase)
max(repetentes)
moda <- subset(repetentes, repetentes == max(repetentes))

paste("Média: ", mean(calcBase))
paste("Mediana:", median(calcBase))
paste("Moda:", names(moda))

paste("Primeiro Quartil:", quantile(calcBase, 0.25))
paste("Terceiro Quartil:", quantile(calcBase, 0.75))
paste("Mínimo:", min(calcBase))
paste("Máximo:", max(calcBase))

paste('Proporção de defeituosos em relação ao todo:', sum(calcBase) * 100 / 360, '%')

# range(calcBase)
paste("Variância:", var(calcBase))
paste("Desvio Padrão:", sd(calcBase))
paste("Coeficiente de Variação:", sd(calcBase)/mean(calcBase))
paste("Distância inter-quartil:", quantile(calcBase, 0.75) - quantile(calcBase, 0.25))

summary(calcBase)
