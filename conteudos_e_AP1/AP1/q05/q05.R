campFull <- read.csv(
  "q04/campeonato-brasileiro-full.csv",
  header = TRUE,
  sep = ','
)

fWinner <- campFull[campFull$vencedor == 'Flamengo',]

fWMandGols <- fWinner[fWinner$mandante == 'Flamengo', 'mandante_placar']

hist(
  fWMandGols,
  nclass = 6,
  col = "green",
  main = "Número de Gols",
  ylim = c(0, 120),
  ylab = "Frequência",
  xlab = "Gols"
)
