emd <- read.csv("empregados-mb.csv", sep = ";", header = TRUE)

# a)
tab.cont <- table(emd[c("Grau.de.instrução", "Procedência")])

tab.prop <- prop.table(tab.cont)

# b)
sum(tab.prop[2,])

# c)
tab.prop[2,2]

# d)
tab.prop.funcInte <- prop.table(tab.cont, margin = 2)
sum(tab.prop.funcInte[2,2])


