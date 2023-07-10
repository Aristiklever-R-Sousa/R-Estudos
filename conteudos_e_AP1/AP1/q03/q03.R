cartoes <- read.csv(
  "q02/campeonato-brasileiro-cartoes.csv",
  header = TRUE,
  sep = ','
)

cVermelhos <- table(cartoes[cartoes$cartao == 'Vermelho', 'clube'])

print(c("Clube com maior: ", names(cVermelhos[cVermelhos == max(cVermelhos)])))
print(c("Clube com menor: ", names(cVermelhos[cVermelhos == min(cVermelhos)])))
