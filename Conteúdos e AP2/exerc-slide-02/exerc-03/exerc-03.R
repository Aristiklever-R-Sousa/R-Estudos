po <- read.csv("pesquisa-opiniao.csv", sep = ',', header = TRUE)

po.tab <- table(po)

# a)
po.tab.prop = prop.table(po.tab, margin = 2)

# b)
# Não, é aparente a depêndencia que há entre os dois, e.g. enquanto dentre as opiniões afavor
# de quem mora em locais rurais é altíssima, nas demais regiçoes vemos uma tendência decrescente
# O mesmo ocorre com opiniões "contra", que apresentam uma tendência crescente.
