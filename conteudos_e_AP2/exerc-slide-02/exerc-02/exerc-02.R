rmo <- read.csv("rotatividade-mao-de-obra.csv", sep = ";", header = T)

# a)
rmo$XClass = rep(NA, length(rmo$X))
rmo$YClass = rep(NA, length(rmo$Y))

selx = rmo$X < median(rmo$X)
sely = rmo$Y < median(rmo$Y)

rmo$XClass[selx] = "baixo"
rmo$XClass[!selx] = "alto"
rmo$YClass[sely] = "baixo"
rmo$YClass[!sely] = "alto"

tab <- table(rmo[c("XClass", "YClass")])

# b)
tab.prop <- prop.table(tab)
tab.prop["baixo", "baixo"]

# c)
sum(tab.prop[, "baixo"])

# d)
tab.prop.rotativ <- prop.table(tab, margin = 1)
tab.prop.rotativ["baixo", "baixo"]

# e)
# Mudou sim, representando que todos que tem baixa rotatividade, tendem a ter salários mais altos
# enquanto quem tem salários mais baixos tendem a ter mais rotatividade