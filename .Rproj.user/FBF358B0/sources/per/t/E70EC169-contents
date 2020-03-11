# Question 1
largest=function(seq){
  m=seq[1]
  for(val in seq){
    if(m<val) m=val
  }
  return (m)
}
largest(c(1,-1,2,56,1))

# Question 2
sumEven=function(seq){
  s=0
  for(val in seq){
    if (val%%2==0) s=s+val
  }
  return(s)
}
sumEven(c(1,2,3,4,5,6))

# Question 3
search=function(seq,num){
  for(i in range(1,length(seq))){
    if(seq[i]==num) return(i)
  }
  return (-1)
}
search(c(1,2,3,5),6)
search(c(1,2,3,4),4)

# Question 4
factorial=function(n){
  if(n==0 || n==1) return (1)
  return (n*factorial(n-1))
}
factorial(5)

# Question 6
isPrime=function(n){
  till=as.integer(n**0.5)
  if(till>=2){
    for(i in seq(2,as.integer(n**0.5))){
      if (n%%i==0){
        return (FALSE)
      }
    }
  }
  return(TRUE)
}
isPrime(13)

# Question 5
getMean=function(v){
  s=0
  for(val in v){
    s=s+val
  }
  return(s/length(v))
}
getMean(c(1,2,3,4,5,5,6,6,10,2))

standardDeviation=function(v){
  m=getMean(v)
  s=0
  for(val in v){
    s=s+(val-m)**2
  }
  s=s/length(v)
  return(s**0.5)
}
standardDeviation(c(9, 2, 5, 4, 12, 7, 8, 11, 9, 3, 7, 4, 12, 5, 4, 10, 9, 6, 9, 4))

# Question 7
sumOfDigits=function(n){
  s=0
  while (n>0) {
    s=s+n%%10
    n=as.integer(n/10)
  }
  return(s)
}
sumOfDigits(178)