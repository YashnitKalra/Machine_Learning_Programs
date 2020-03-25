# install.packages("MASS");
library(MASS);

# 70% split
size=nrow(Boston)
split_index=floor(size*0.7)
size1=split_index
size2=size-split_index

# splitting
training_data=Boston[1:split_index,]
testing_data=Boston[split_index+1:size,]
rownames(testing_data)=NULL # to start indexing from 1 else it starts from split_index+1
testing_data=testing_data[1:size2,]

# creating model
y=training_data$medv;
x=training_data$lstat;
myModel=lm(y~x);

# predicting
data=data.frame(x=testing_data$lstat);
result=predict(myModel,data)

# plotting
par(mfrow=c(1,2));
plot(testing_data$medv,result);
plot(testing_data$lstat,testing_data$medv)