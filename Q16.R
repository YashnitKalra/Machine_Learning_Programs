library(MASS)
library(caTools)

set.seed(5)
split=sample.split(Boston$medv,SplitRatio = 0.5)
training_set = subset(Boston[-7], split == TRUE)
testing_set = subset(Boston[-7], split == FALSE)

myModel=lm(training_set$medv~.,data=training_set)

predictions=predict(myModel,testing_set)

mean((testing_set$medv-predictions)**2)**0.5
