load("C:/Users/allex/OneDrive/Dokumenter/Vaseladefar/HOME2.Rdata")
max(HOME2[,1])
min(HOME2[,2])
order(HOME2[,5])

print(HOME2[order(as.Date(HOME2[,2], format="%d-%m-%Y")),][,2])

print(HOME2[order(as.Date(HOME2[,2], format="%d-%m-%Y")),][1,2])

plot(HOME2[,6],HOME2[,5])

# Multiple Linear Regression Example 
fit = lm(HOME2[,5] ~ HOME2[,6] + HOME2[,8], data=HOME2)
summary(fit) # show results
plot(fit)

# Other useful functions 
coefficients(fit) # model coefficients
confint(fit, level=0.95) # CIs for model parameters 
fitted(fit) # predicted values
residuals(fit) # residuals
anova(fit) # anova table 
vcov(fit) # covariance matrix for model parameters 
influence(fit) # regression diagnostics

# diagnostic plots 
layout(matrix(c(1,2,3,4),2,2)) # optional 4 graphs/page 
plot(fit)

# compare models
fit1 <- lm(HOME2[,5] ~ HOME2[,6] + HOME2[,8], data=HOME1)
fit2 <- lm(HOME2[,5] ~ HOME2[,6] + HOME2[,7] + HOME2[,8], data=HOME1)
anova(fit1, fit2)

# http://www.statmethods.net/stats/regression.html !! 

hist(HOME2[,5])








