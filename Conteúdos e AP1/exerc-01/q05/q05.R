emissoes <- c(4.2, 4.9, 4.1, 5.1, 5.8, 5.4, 5.8, 5.5, 5.9, 5.3, 6.7, 4.6
              ,6.2
              ,5.6
              ,4.8
              ,5.7
              ,5.2
              ,4.9
              ,6.8
              ,5.7
)

#names(emissoes) <- 1:length(emissoes)

plot(
  1:length(emissoes),
  emissoes,
  type = "l",
  main = "Histograma de Toneladas x Dia",
  xlab = "Dias",
  ylab = "Toneladas"
)

