data(iris)
install.packages('randomForest')

data <- iris

rfrst <- randomForest(Species ~ ., data = data, importance = TRUE, )

importance(rfrst, type = 2)

?importance

rfrst
