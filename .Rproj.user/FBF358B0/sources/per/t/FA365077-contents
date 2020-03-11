df=read.csv("Q8.csv")

train=function(x,y){
  ones<-rep(1,nrow(x))
  x<-cbind(ones,x)
  xt<-t(x)
  p=xt%*%x
  q=xt%*%y
  theta=solve(p)%*%q
  theta
}

theta=train(as.matrix(df[3:4]),as.matrix(df[5]))
theta
plot(df[3:4])
s=c(1,2.23,6)
s%*%theta
