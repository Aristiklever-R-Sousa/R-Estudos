pea <- matrix(c(50, 65, 105, 120,
                150, 185, 195, 180), ncol = 4, byrow = TRUE)

colnames(pea) <- c("São Paulo", "Campinas", "Rib. Preto", "Santos")
rownames(pea) <- c("Sim", "Não")

pea.tab <- as.table(pea)

pea.prop <- prop.table(pea.tab)

# Com certeza, há alterações nas respostas de cidade para cidade.


