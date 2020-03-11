getProbability=function(outlook,temperature,humidity,wind,playTennis){
  df=read.csv('Q9.csv')
  total=nrow(df)
  totalYes=length(df$PlayTennis[df$PlayTennis==playTennis])
  p=1
  p=p*length(df$Day[df$Outlook==outlook & df$PlayTennis==playTennis])/totalYes
  p=p*length(df$Day[df$Temperature==temperature & df$PlayTennis==playTennis])/totalYes
  p=p*length(df$Day[df$Humidity==humidity & df$PlayTennis==playTennis])/totalYes
  p=p*length(df$Day[df$Wind==wind & df$PlayTennis==playTennis])/totalYes
  p=p*totalYes/total
  return(p)
}
getProbability("Rain","Mild","High","Weak","Yes")