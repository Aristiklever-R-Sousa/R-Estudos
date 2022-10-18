iris <- read.csv("exerc-01/q02/iris.csv", header = TRUE, sep = ',')

classesNumber <- function(arr) {
  return(round(sqrt(length(arr))))
}

selectCollumn <- function(dataSet, collumn) {
  return(dataSet[dataSet$Species == 'setosa', collumn])
}

sepalLength <- selectCollumn(iris, "Sepal.Length")

hist(
  sepalLength,
  nclass = classesNumber(sepalLength),
  col = "blue",
  main = "Sepal.Length"
)


sepalWidth <- selectCollumn(iris, "Sepal.Width")

hist(
  sepalWidth,
  nclass = classesNumber(sepalWidth),
  col = "red",
  main = "Sepal.Width"
)


petalLength <- selectCollumn(iris, "Petal.Length")

hist(
  petalLength,
  nclass = classesNumber(petalLength),
  col = "brown",
  main = "Petal.Length"
)


petalWidth <- selectCollumn(iris, "Petal.Width")

hist(
  petalWidth,
  nclass = classesNumber(petalWidth),
  col = "pink",
  main = "Petal.Width"
)
