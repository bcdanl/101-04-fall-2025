x <- c(60, 70, 80, 90, 100)
median(x)
mean(x)

max(x)
min(x)
range <- max(x) - min(x)
var(x)
sd(x)

quantile(x, 0)    # the minimum
quantile(x, 0.25) # the 1st quartile (Q1)
quantile(x, 0.5)  # the 2nd quartile (Q2, median)
quantile(x, 0.75) # the 3rd quartile (Q3)
quantile(x, 1)    # the maximum



xx <- c(60, 70, 80, 90, 1000)

median(xx)
mean(xx)




# vector indexing ---------------------------------------------------------

my_vector <- c(10, 20, 30, 40, 50, 60)

my_vector[2]
my_vector[4]
my_vector[6]
my_vector[ c(2,3,4) ]
my_vector[ 2:5 ]
2:5


# Filter elements greater than 10
is_greater_than_10 <- my_vector > 10  # Creates logical vector
is_greater_than_10

my_vector[ is_greater_than_10 ] 

# my_vector[logical_condition]



# classwork 5 -------------------------------------------------------------


# q1
x <- 1:25

diff <- x - mean(x)
diff

diff_sq <- diff^2
diff_sq

sum_diff_sq <- sum(diff_sq)

var_x <- sum_diff_sq / (length(x) - 1)


# var_x <- sum( (x - mean(x))^2 ) / (length(x) - 1)
var(x)

sd_x <- sqrt(var_x)
sd(x)
sd_x


# q2
temp <- c(22, 28, 31, 25, 29)

temp_r <- max(temp) - min(temp)



# q3
my_vec <- c(-10, -20, 30, 10, 50, 40, -100)


# Write an R code to filter only the positive values in my_vec.


is_my_vec_pos <- my_vec > 0
is_my_vec_pos

my_vec[ is_my_vec_pos ]


# Write an R code to access the beers 
# that are in positions 2, 4, and 6 using indexing.

beers <- c("BUD LIGHT", "BUSCH LIGHT", "COORS LIGHT", 
           "GENESEE LIGHT", "MILLER LITE", "NATURAL LIGHT")

beers[c(2,4,6)]




# q4
# Create a logical vector logical_vec that 
# checks whether the elements of the vector 
# ages <- c(15, 22, 18, 24, 30) are greater than or equal to 20.

ages <- c(15, 22, 18, 24, 30)
logical_vec <- ages >= 20  # greater than or equal to: Not => but >=




