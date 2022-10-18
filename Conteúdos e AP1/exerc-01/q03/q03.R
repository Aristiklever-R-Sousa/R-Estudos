pesquisa <- read.csv(
  "exerc-01/q03/pesquisa-opiniao.csv",
  header = TRUE,
  sep = ','
)

locais <- names(table(pesquisa$Local))

freqAbsol <- names(table(table(pesquisa$Local)))

freqRela <- names(table(freqAbsol * 100 / sum(freqAbsol)))

tableFreq <- data.frame(Local = locais, FrequenciaAbsoluta = freqAbsol, FrequenciaRelativa = freqRela)


barplot(
  table(pesquisa$Local),
  xlab = "Locais",
  ylab = "Frequência Absoluta",
  ylim = c(0, 100)
)

pie(
  table(pesquisa$Local),
  col = c("green", "brown", "black")
)
