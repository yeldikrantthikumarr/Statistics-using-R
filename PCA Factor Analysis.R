#Performing Principal Component Analysis / Factor Analysis
#Lets understand key difference between two.
# The primary empirical difference between components Vs factor model is the treatement of
#of variances for each item.
#dataset "Psych"

data(mtcars)
mtcars[1:5,]
mtcars1 <- mtcars[,c(1:4,6:7,9:11)]
mtcars1[1:5,]
?prcomp()
??prcomp()
pc <- prcomp(mtcars1)
pc
?princomp()
summary(pc)
plot(pc)
#boxplot(pc)
pc
predict(pc)
biplot(pc)
factanal() # stats package
prcomp()# stats package
var(mtcars1)
