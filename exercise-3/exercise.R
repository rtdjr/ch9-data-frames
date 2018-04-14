# Exercise 3: working with built-in data sets

# Load R's "USPersonalExpenditure" dataset using the `data()` function
# This will produce a data frame called `USPersonalExpenditure`
data("USPersonalExpenditure")

# The variable `USPersonalExpenditure` is now accessible to you. Unfortunately,
# it's not a data frame (it's actually what is called a matrix)
# Test this using the `is.data.frame()` function
is.data.frame(USPersonalExpenditure)

# Luckily, you can pass the USPersonalExpenditure variable as an argument to the
# `data.frame()` function to convert it a data farm. Do this, storing the
# result in a new variable
expenditures <- data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
colnames(expenditures)

## Consider: why are they so strange? Think about whether you could use a number 
## like 1940 with dollar notation!

# What are the row names of your dataframe?
row.names(USPersonalExpenditure)

# Add a column "category" to your data frame that contains the rownames
expenditures$category <- rownames(expenditures)

# How much money was spent on personal care in 1940?
care_1940 <- expenditures['Food and Tobacco', 'X1960']

# How much money was spent on Food and Tobacco in 1960?


# What was the highest expenditure category in 1960?
highest_1960 <- expenditures$category[expenditures$X1960 == max(expenditures$X1960)]

# Define a function `lowest_category` that takes in a year as a parameter, and
# returns the lowest spending category of that year
lowest_category <- function(year) {
  col <- paste0('X', year)
  expenditures$category[expenditures[, col] == min(expenditures[, col])]
}

# Using your function, determine the lowest spending category of each year
# Hint: use the `sapply()` function to apply your function to a vector of years

