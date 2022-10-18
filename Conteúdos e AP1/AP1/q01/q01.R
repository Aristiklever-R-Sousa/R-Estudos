arr <- -5:5

y <- 5 * arr^2 + arr^3

plot(
  arr,
  y,
  type = "l",
  main = "5x^2 + x^3",
  xlab = "x",
  ylab = "y",
  col = "blue",
  lty = 2,
  lwd = 2
)
