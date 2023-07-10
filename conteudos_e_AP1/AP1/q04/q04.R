campFull <- read.csv(
  "q04/campeonato-brasileiro-full.csv",
  header = TRUE,
  sep = ','
)

mand <- campFull[campFull$mandante == 'Criciuma',]

print(paste0('Média Gols Mandante: ', mean(mand$mandante_placar)))
print(paste0('Desvio Padrão Gols Mandante: ', sd(mand$mandante_placar)))

print(paste0('Média Gols Visitante: ', mean(mand$visitante_placar)))
print(paste0('Desvio Padrão Gols Visitante: ', sd(mand$visitante_placar)))
