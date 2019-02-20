#HW2
#3.6
x <- c(1, 2, 3, 4, 5, 6)
y <- c(1, 2, 2, 3, 5, 5)
plot(x,y)
abline(lm(y~x))
#3.14
porosity <- c(18.0, 18.3, 16.3, 6.9, 17.1, 20.4)
mean_poreDiameter <- c(12.0, 9.7, 7.3, 5.3, 10.9, 16.8)
fit <- lm(porosity ~ mean_poreDiameter)
fit
summary(fit)