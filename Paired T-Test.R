#Paired t-test ---Comparing one group Before and after
#creating a random data

time1 <- rnorm(50, mean = 52,sd=6)

time1

diftime <- rnorm(50,mean=6,sd=12)
time2 <- time1+diftime
hist(time1)
hist(time2)
hist(diftime)
boxplot(time1,time2)
#lets save variables in dataframe and plz use "MASS" package
#for creating parallel coordinate plot
pairs <- data.frame(time1,time2)
install.packages("MASS")
library(MASS)
require(MASS)
parcoord(pairs,var.label = T)
#paired t test by defualt
t.test(time2,time1,paired = T)

