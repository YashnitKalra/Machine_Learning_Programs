df=read.csv("linear_regression_data.csv")
for(learning_rate in c(2,1,0.5,0.25,0.125)){
  print(c("Learning Rate:",as.character(learning_rate)))
  theta_0=3
  theta_1=1
  for(i in seq(1,500)){
    y_predicted=theta_0+theta_1*df[['x']]
    theta_0=theta_0-((learning_rate/nrow(df))*sum(y_predicted-df[['y']]))
    theta_1=theta_1-((learning_rate/nrow(df))*sum((y_predicted-df[['y']])*df[['x']]))
    if(i%%50==0){
      print(c('Iteration',i))
      print(c("Theta_0",theta_0))
      print(c("Theta_1",theta_1))
    }  
  }
}