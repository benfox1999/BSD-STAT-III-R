library(ISLR)
library(ggplot2)


data(Auto)
colnames(Auto)

fit = lm(Auto$acceleration ~ Auto$weight + Auto$horsepower)
summary(fit)


plot(Auto$weight, Auto$acceleration)

fit2 = lm(Auto$acceleration ~ Auto$weight)
summary(fit2)
cor(Auto$weight, Auto$acceleration)
fit2$coefficients

ggplot(Auto, aes(x=weight, y=acceleration, col=horsepower))+geom_point()+
  scale_color_gradientn(colors=rainbow(5))

ind = which(Auto$horsepower>= 40 & Auto$horsepower<=60)
plot(Auto$weight[ind], Auto$acceleration[ind])

