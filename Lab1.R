print("This is Lab1 R code")
#Lab1
#4
1430+8748
24*32
4^2
exp(1)
log(1)
sqrt(225)
10%/%3
10%%3

#5
c(1:3)
c(6:(-4))
c(10,100,0)
c(1:3,9,4:2)
seq(from=1, to=11, by=2)
seq(10,15)
seq(9,-1,-2)

#6
help(seq)
?seq

#7
A = matrix(data = 1:9, nrow = 3, ncol = 3)
rownames(A) = c('r1', 'r2', 'r3')
colnames(A) = c('c1', 'c2', 'c3')
A
A[1,2]
A[2,]
A[1:3,]
A[c(1,3),]
A[-3,]
A[, 'c2']
nrow(A)
ncol(A)
dim(A)
length(A)
z = c(100, 200, 300)
rbind(A,z)
cbind(A,z)
min(z)
sum(z)
mean(z)
sd(z)
var(z)
max(A)
sum(A)
rowSums(A)
colSums(A)
rowMeans(A)
colMeans(A)

#8
1 < 2
1 > 2
1 <= 2
3 >= 3
1 == 1
1 != 1
z = seq(from=1, to=9, by=2)
4 %in% z
z >= 5
which(z>=5)
which(z>=5 & z<9)
which(z>=5 | z<9)
z[which(z>=5)]
z[z>=5]

#9
getwd()
setwd("C:/Users/lhjj1/Documents/STP429")
truck = read.table('TRUCKING.txt')
truck
help(read.table)
truck = read.table('TRUCKING.txt',header=TRUE)
truck
class(truck)

#10
install.packages("faraway")
library(faraway)
data(stat500)

#11
stat500
?stat500
head(stat500)
tail(stat500)
nrow(stat500)
summary(stat500)
stat500[,1]
stat500$midterm
hist(stat500$total)
attach(stat500)
hist(total)
boxplot(total)
boxplot(midterm,final, names=c("midterm", "final"))
total.cut <- cut(total, c(0, 59.4, 100))
total.count <- table(total.cut)
barplot(total.count)
pie(total.count)
pie(total.count, label=c("fail", "pass"))
plot(midterm,final)
plot(midterm, final, xlim = c(10, 35), ylim = c(10, 35))
cor(midterm, final)
cor(stat500)

#12
y = sample(-5:5, 5)
for(i in 1:5)
  if(y[i] > 0){
    if(y[i] > 0){
      cat(sprintf('&d is a positive number.\n', y[i]))
    } else if (y[i] < 0) {
      cat(sprintf('%d is a negative number.\n', y[i]))
    } else {
      cat(sprintf('%d is zero.\n', y[i]))
    }
  }

#13
help(pt)
pt(-1.98,8)
pt(-1.98,8, lower.tail = FALSE)
2*pt(-1.98,8)
qt(p=.95,df=20)

