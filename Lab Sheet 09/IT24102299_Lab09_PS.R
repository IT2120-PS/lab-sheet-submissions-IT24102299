setwd("C:\\Users\\admin\\Desktop\\IT24102299_Lab09_PS")

##Exercise
#Part 1 
baking_time <- rnorm(25,mean=45,sd=2)

#Part 2 
#Hypotheses: H0: μ >= 46 vs H1: μ < 46
#Consider 5% level of significance
test_result <- t.test(baking_time, mu=46, alternative="less")
print(test_result)

#Conclusion: Since the p-value (0.006246) is less than 0.05,
#we reject H0 at the 5% level of significance.
#Therefore, we can conclude that the true average baking time is significantly less than 46 minutes.
