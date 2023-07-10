soma <- function(a, b) { return(a + b) }
subt <- function(a, b) { return(a - b) }

raiz <- function(b, a, delta, operacao) {
  if(delta < 0)
    return('-')
  return((operacao(-b, sqrt(delta)))/2*a)
}

bhaskara <- function(a, b, c) {
  delta <- b^2 - 4*a*c
  x1 <- raiz(b, a, delta, soma)
  x2 <- raiz(b, a, delta, subt)
  xv <- (-b)/2*a
  yv <- -delta/4*a
  
  print(c("Delta: ", delta))
  print(c("X1: ", x1))
  print(c("X2: ", x2))
  print(c("Xv: ", xv))
  print(c("Yv: ", yv))
}

bhaskara(1, -5, 6)
