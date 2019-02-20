#Lab2

rm(list=ls()) #way to remove all variables
ctrl + L #clear everything
#edit>clear console clear everything

#1
library(faraway)
#2
data(stat500)
#3 Simple linear regression
mod <- lm(final ~ midterm, data=stat500)
summary(mod)

coef(mod)
predict(mod)
predict(mod, interval = "confidence")
predict(mod, interval = "confidence", level=.90)
residuals(mod)
rstandard(mod)

ls(mod)
mod$coefficients
#4 Plot regression
attach(stat500)
#plot1
plot(midterm, final)
abline(coef(mod))
#plot2
my.pred <- predict(mod, interval = "confidence")
plot(midterm, final) #scatter plot
lines(midterm, my.pred[,1]) #add line of predicted y~x
lines(midterm, my.pred[,2], col="blue", lty=2) #creates lower bound
lines(midterm, my.pred[,3], col="blue", lty=2) #creates upper bound
#plot3
plot(final ~ midterm)
reorder.index <- order(midterm)#reorder x from small to large
lines(midterm[reorder.index], my.pred[reorder.index, 1])
lines(midterm[reorder.index], my.pred[reorder.index, 2], col="blue", lty=2)
lines(midterm[reorder.index], my.pred[reorder.index, 3], col="blue", lty=2)
#5 Diagonostics plots
plot(mod)
par(mfrow=c(2,2))
plot(mod)
par(mfrow=c(1,1))
plot(predict(mod), residuals(mod))
#6 Checking the normality assumption
r <- residuals(mod)
qqnorm(r)
qqline(r)
shapiro.test(r)
#7 Non-constant error and transformation
rm(list=ls())

data(airquality)
head(airquality)
attach(airquality)
mod <- lm(Ozone ~ Solar.R + Wind + Temp, na.action = na.exclude)
summary(mod)
plot(predict(mod), residuals(mod))

Ozone.transformed <- log(Ozone)
logmod <- lm(Ozone.transformed ~ Solar.R + Wind + Temp, na.action = na.exclude)
plot(predict(logmod), residuals(logmod))
