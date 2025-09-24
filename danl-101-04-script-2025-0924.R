library(tidyverse)

# The function `str_c()`, provided by `tidyverse`, concatenates characters.
str_c("Data", "Analytics")
str_c("Data", "Analytics", sep = "!")

str_c("Data", "Analytics", sep = "")

# stringi::str_c('data', '!')

stringr::str_c('data', '!')

# Access an object directly from a package
ggplot2::mpg   # PACKAGE_NAME::DATA_FRAME_NAME

# Call a function directly from a package
ggplot2::ggplot()   # PACKAGE_NAME::FUNCTION_NAME




5 + 3
5 - 3
5 * 3
5 / 3
5^3

( 3 + 4 )^2
3 + 4^2
3 + 2 * 4^2
3 + 2 * 4 + 2
(3 + 2) * (4 + 2)

5 * abs(-3)
sqrt(17) / 2
exp(3)
log(3)

log(exp(3))

exp(log(3))



# vectorized operations ---------------------------------------------------

a <- c(1, 2, 3, 4, 5)
b <- c(5, 4, 3, 2, 1)

a
a + 5

a - 5
a * 5
a / 5


a + 5

1 + 5
2 + 5
3 + 5
4 + 5
5 + 5

a
b
a + b
a - b
a * b
a / b

sqrt(a)



# classwork 4 -------------------------------------------------------------

# q1
# In R, the object state.name is available 
# without loading any additional packages.
# Write R code to assign state.name to a new variable called US_states.

# state.name
# length(state.name)

US_states <- state.name

# R is case-sensitive
us_states <- state.name



# q2
# Write an R code to create a numeric vector named numbers 
# containing the integers from 10 to 50.

# colon operator
# 1:5

numbers <- 10:50  # integer vector
numbers <- as.numeric(numbers)  # numeric vector



# q3
temp_F <- c(35, 88, 42, 84, 81, 30)
temp_C <- ( 5 / 9 ) * (temp_F - 32)

temp_C



# q4
# Write an R code to assign the string “Hello, World!” to 
# a variable named greeting and display its value on the Console.

# "" “”
greeting <- "Hello, World!"
greeting




# q5
# Write an R code to convert the character vector 
# char_vec <- c("1", "2", "3", "4") into a numeric vector named num_vec.


char_vec <- c("1", "2", "3", "4")
num_vec <- as.numeric(char_vec)
num_vec



# q6
first_names <- c("John", "Jane")
last_names <- c("Doe", "Smith")

str_c(first_names, last_names)

full_names <- str_c(first_names, last_names,
                    sep = ' ')
full_names




# desc stat ---------------------------------------------------------------
x <- c(1, 2, 3, 4, 5)

sum(x)

sum(x) / length(x)

mean(x)


