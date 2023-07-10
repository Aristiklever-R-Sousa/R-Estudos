csm <- matrix(c(10, 10, 10, 15, 15, 15, 15, 20, 20, 20,
                5, 10, 10, 5, 10, 10, 15, 10, 10, 15),
              nrow = 2,
              byrow = TRUE)
colnames(csm) <- 1:10
rownames(csm) <- c("Homem", "Mulher")

csm.bycol <- data.frame(
                Homem = c(10, 10, 10, 15, 15, 15, 15, 20, 20, 20) ,
                Mulher = c(5, 10, 10, 5, 10, 10, 15, 10, 10, 15)
            )

# a)
mean(csm.bycol$Homem)
sd(csm.bycol$Homem)

# b)
mean(csm.bycol$Mulher)
sd(csm.bycol$Mulher)

# c)
plot(csm.bycol$Homem, csm.bycol$Mulher,
     xlab = "Salários de Homens",
     ylab = "Salários de Mulheres",
     pch = 10,
     col = "#FF7F00")

# d)
sum(length(csm.bycol[, c("Homem", "Mulher")]))
