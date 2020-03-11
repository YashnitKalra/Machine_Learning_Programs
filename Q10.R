df=read.csv("linear_regression_data.csv")
result=function(x,y,x_input){
  theta_1=cov(x,y)/var(x)
  theta_0=mean(y)-theta_1*mean(x)
  theta_0+theta_1*x_input
}
plot(df[['x']],df[['y']],col="red",xlab="x",ylab="y")
result(df[['x']],df[['y']],10)
predicted_y=c()
for(x in df[['x']]){
  predicted_y=c(predicted_y,result(df[['x']],df[['y']],x))
}
# for adding data to plot
points(df[['x']],predicted_y,type="o",col="blue")