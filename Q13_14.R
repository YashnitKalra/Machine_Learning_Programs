predictTheta=function(x,y){
  theta_1=cov(x,y)/var(x)
  theta_0=mean(y)-theta_1*mean(x)
  return(c(theta_0,theta_1))
}

speed=cars[[1]]
dist=cars[[2]]
speed_normalized=(speed-mean(speed))/(max(speed)-min(speed))
dist_normalized=(dist-mean(dist))/(max(dist)-min(dist))
# Question 13
speed_normalized
dist_normalized

# Question 14
plot(speed,dist,col="red")
thetas=predictTheta(speed,dist)
d=thetas[1]+15.5*thetas[2]
thetas
predicted_dist=thetas[1]+(speed*thetas[2])
points(speed,predicted_dist,type="o",col="blue")
print(c("Predicted distance for speed 15.5 mph:",d))