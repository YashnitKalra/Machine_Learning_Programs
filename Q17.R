library(caTools)
library(caret)

df=tail(iris,100)
df$Species=factor(df$Species) # to set level to ("versicolor,"verginica") else ("setosa","versicolor","verginica")
levels(df$Species)=c(0,1)
# versicolor = 0, verginica = 1
df
set.seed(5)
split=sample.split(df$Species,0.5)
training_set=subset(df,split==TRUE)
testing_set=subset(df,split==FALSE)

myModel=glm(Species~.,data=training_set,family = binomial)
summary(myModel)

predictions=predict(myModel,testing_set,type = "response")
predictions
testing_set$Species

cm=confusionMatrix(as.factor(round(predictions,digits = 0)),testing_set$Species)
cm$table
cm$overall[1]
