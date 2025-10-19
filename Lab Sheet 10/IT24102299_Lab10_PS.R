setwd("C:\\Users\\admin\\Desktop\\IT24102299_Lab09_PS")

# Exercise
# Part 01
# Null hypothesis: Customers choose the four snack types with equal probability (p = 0.25 for each)
# Alternative hypothesis: At least one snack type has a probability different from 0.25

# Part 2
observed <- c(120, 95, 85, 100)
prob <- c(0.25, 0.25, 0.25, 0.25)

chisq.test(x = observed, p = prob)

# Part 3 

# Consider 5% level of significance for the test.
# Rejection Region: If the p value for the test is less than 0.05,
# reject the null hypothesis at 5% level of significance.
# P value for the test got as 0.08966.
# Conclusion: Since the p value (0.08966) is greater than 0.05, do not reject null hypothesis at 5%
# level of significance. Therefore we can conclude that customers choose the four snack types 
# with equal probability.