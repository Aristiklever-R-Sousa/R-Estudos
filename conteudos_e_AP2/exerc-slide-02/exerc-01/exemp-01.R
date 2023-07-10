emd <- read.csv("empregados-mb.csv", sep = ";", header = TRUE)

names(emd)

tab.cont <- table( emd[c("Procedência", "Grau.de.instrução")] )
tab.cont

# PROPORCOES (FREQUENCIAS RELATIVAS)
# tabela de contingência exibida porcentagens
tab.prop <- prop.table(tab.cont)
tab.prop

# tabela de proporções das linhas
tab.prop.lin <- prop.table(tab.cont, margin = 1)
tab.prop.lin

# tabela de proporções das colunas
tab.prop.col <- prop.table(tab.cont, margin = 2)
tab.prop.col

# REPRESENTACOES GRAFICAS
cores <- c("#B3E2CD", "#FDCDAC", "#CBD5E8")

# EM AREA
plot(tab.cont, main = "Frequências", col = cores)

# EM BARRAS
barplot(tab.cont, legend = TRUE, col = cores) # BARRAS LADO A LADO VERTICALMENTE
barplot(tab.cont, legend = TRUE, col = cores, beside = TRUE) # BARRAS LADO A LADO HORIZONTALMENTE


barplot(tab.prop, legend = TRUE, col = cores) # BARRAS LADO A LADO VERTICALMENTE
barplot(tab.prop, legend = TRUE, horiz = TRUE, col = cores) # ORIENTADAS HORIZONTALMENTE

barplot(tab.prop,
        legend = TRUE,
        angle = c(90, 45, 0),
        density = c(30, 25, 20))

