cartoes <- read.csv(
  "q02/campeonato-brasileiro-cartoes.csv",
  header = TRUE,
  sep = ','
)

cAmarelos <- length(cartoes[cartoes$cartao == 'Amarelo', 'cartao'])
cVermelhos <- length(cartoes[cartoes$cartao == 'Vermelho', 'cartao'])

cartoesPlot <- c(cAmarelos, cVermelhos)
names(cartoesPlot) <- c('Amarelo', 'Vermelho')


barplot(
  cartoesPlot,
  main = "Cartões",
  xlab = "",
  ylab = "",
  ylim = c(0, 14000),
  col = c('yellow', 'red')
)
