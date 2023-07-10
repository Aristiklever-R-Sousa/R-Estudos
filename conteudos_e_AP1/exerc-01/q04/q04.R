espessuras <- read.csv(
  "exerc-01/q04/espessuras-partes-demetal.csv",
  col.names = c("Espessuras"),
  header = FALSE,
  sep = ''
)

classesNumber <- function(arr) {
  return(round(sqrt(length(arr))))
}

hist(
  espessuras$Espessuras,
  main = "Histograma de Espessuras",
  xlab = "Classes de Espessuras",
  ylab = "Frequência",
  nclass = classesNumber(espessuras$Espessuras)
)
