#Another approach for of finding "association between two quantitative variables
#is through Bivariate regression.
# Lets compute bivariate regression using dataset called "TREES"
#this dataset talks about BlackCheery Trees
install.packages("ggplot2")
data(trees)
trees[1:5,]
#Lets check graphical data analysis as part of EDA
dim(trees)
summary(trees)
str(trees)
#X11()   using this function helps to see graphs in new window.
X11
hist(trees$Height)
hist(trees$Girth)
plot(trees$Height,trees$Girth)
#lets add a straiht line to the plot, of linear model for above variables
abline(lm(trees$Height ~ trees$Girth))
#Checkout Linear Regression Model
tree_reg<- lm(Height ~ Girth,data = trees)
#Remember: Correlation is used to describe strength of the association
#Regression: it give an equation, where we can predict values of one variable by another.

#Here, lets use Girth vairalble to predict Height of the tree
tree_reg
summary(tree_reg)
#Since, intercept cant be zero, our focus should be more on SLOPE and its pvalue.
#Pvalue standard value is 0.05 and the given pvalues is less than standard
#this shows that the GIRTH is statistical significant to the model & predicting the GROWTH of tree
#In simpler terms, i.e GIRTH is good predictor of HEIGHT
#The given, R-Square can be understood as, its related to correlation of coeff.
#i.e the girth of tree can account for (predict) 27% of variance of variable HEIGHT

confint(tree_reg)
#gives confidence interval for coefficients
#This tells us there is substantial association among two
#Lets predict values based on regression equation
predict(tree_reg)
predict(tree_reg,interval = "prediction")
#Class Interval for predicting Height

#Regression Diagnostics
lm.influence(tree_reg)
#Howmuch influence of variable on another
influence.measures(tree_reg)
#Finding influence of variables on case by case basis.
