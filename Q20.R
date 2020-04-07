#20.	Use Boston housing data from MASS library as a dataset. Scale the data by any means 
#before proceeding further. Consider half of its data for training and rest for testing. 
#Learn the model using training data to predict medv from all the other attributes using 
#neural network. Plot the learnt neural network. Predict the medv values for the test dataset.

# Load Data
library(MASS)
data <- Boston


#https://www.rdocumentation.org/packages/base/versions/3.4.3/topics/scale
#Feature scaling
#It is good practice to normalize your data before training a neural network.
#avoiding normalization may lead to useless results 

maxs <- apply(data, 2, max) 
mins <- apply(data, 2, min)
scaled <- as.data.frame(scale(data, center = mins, scale = maxs - mins))

# Split data for training and testing
index <- sample(1:nrow(data),round(0.75*nrow(data)))
train_ <- scaled[index,]
test_ <- scaled[-index,]

# Training ANN with 2 hidden layers with 5 and 3 nodes on hidden layers respectively
# install.packages("neuralnet",dependencies = TRUE)
library(neuralnet)
nn <- neuralnet(medv ~ .,data=train_,act.fct = "logistic",hidden=c(5,3),linear.output=T)
#act.fct: activation function
#linear.output is logical, If act.fct should not be applied to the output neurons set 
#linear output to TRUE, otherwise to FALSE

nn2 <- neuralnet(medv ~ .,data=train_)

plot(nn) # Plotting ANN
plot(nn2)
# Testing NN
pr.nn <- compute(nn,test_[,1:13])
pr.nn_ <- pr.nn$net.result*(max(data$medv)-min(data$medv))+min(data$medv)
test.r <- (test_$medv)*(max(data$medv)-min(data$medv))+min(data$medv)
MSE.nn <- sum((test.r - pr.nn_)^2)/nrow(test_)


#visualizing the performance of the network
plot(test_$medv,pr.nn_,main='Real vs predicted NN')