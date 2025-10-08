library(tidyverse)
library(nycflights13)

flights <- flights

# cw6-pt1-q2 ------------------------------------------------------------------
# How many flights have a missing dep_time?

# is.na( c(1,NA,3) )

q2 <- flights |> 
  filter( is.na(dep_time) )
  
nrow(q2) # 8255


# cw6-pt1-q3 ------------------------------------------------------------------
# Sort flights to find the most delayed flights.

?flights

q3 <- flights |> 
  arrange( desc(dep_delay) )


# cw6-pt1-q4 ------------------------------------------------------------------
# Was there a flight on every day of 2013?

# flights |> 
#   arrange(-year, -month, -day)

q4_start <- flights |> 
  select(year, month, day)

# flights |> 
#   distinct(year)
# flights |> 
#   distinct(month)
# flights |> 
#   distinct(day)

q4_start <- q4_start |> 
  distinct()


q4 <- flights |> 
  select(year,month,day) |> 
  distinct()

q4 <- flights |> 
  distinct(year, month, day)

nrow(q4) # 365




# cw6-pt2-q1 ------------------------------------------------------------------
nyc_payroll_new <- read_csv("https://bcdanl.github.io/data/nyc_payroll_2024.csv")

# Create a new data.frame, df that keeps only the following 
# five variables—
# Fiscal_Year, Agency_Name, First_Name, Last_Name, Base_Salary—
# from the data.frame nyc_payroll_new.


df <- nyc_payroll_new |> 
  select(Fiscal_Year, Agency_Name, 
         First_Name, Last_Name, Base_Salary)




# cw6-pt2-q2 ------------------------------------------------------------------
# Given the data.frame df with a variable named Agency_Name, 
# how would you rename it to Agency?


# df <- df |> 
  # rename(NEW_NAME = CURRENT_NAME)

df <- df |> 
  rename(Agency = Agency_Name)


# cw6-pt2-q3 ------------------------------------------------------------------
# How would you remove the Fiscal_Year variable using select()?

df <- df |> 
  select(-Fiscal_Year)





# hw2-q1 ------------------------------------------------------------------
# How can you filter the data.frame nyc_payroll_new to calculate 
# descriptive statistics (mean and standard deviation) of 
# Base_Salary for workers in the Work_Location_Borough “MANHATTAN”? 
# Similarly, how can you filter the data.frame nyc_payroll_new to calculate 
# these statistics for workers in the Work_Location_Borough “QUEENS”?
  

nyc_payroll_new |> 
  distinct(Work_Location_Borough)


library(skimr)

q1_MANHATTAN <- nyc_payroll_new |> 
  filter(Work_Location_Borough == "MANHATTAN")

skim(q1_MANHATTAN) # mean 42532; sd 44957
skim(q1_MANHATTAN$Base_Salary)

class(q1_MANHATTAN$Base_Salary) # numeric vector

mean(q1_MANHATTAN$Base_Salary)
sd(q1_MANHATTAN$Base_Salary)



q1_QUEENS <- nyc_payroll_new |> 
  filter(Work_Location_Borough == "QUEENS")

skim(q1_QUEENS) # mean 55289; sd 41187
skim(q1_QUEENS$Base_Salary)

class(q1_QUEENS$Base_Salary) # numeric vector

mean(q1_QUEENS$Base_Salary) # since n_missing == 0, we can use this
sd(q1_QUEENS$Base_Salary)



# hw2-q2 ------------------------------------------------------------------

# How can you filter the data.frame nyc_payroll_new to show only the records 
# where the Base_Salary is greater than or equal to $100,000?


q2 <- nyc_payroll_new |> 
  filter(Base_Salary >= 100000)



# hw2-q3 ------------------------------------------------------------------

# How can you select only distinct combinations of 
# Agency_Name and 
# Title_Description?
  
  
q3 <- nyc_payroll_new |> 
  distinct(Agency_Name, Title_Description) |> 
  arrange(Agency_Name, Title_Description)


# hw2-q4 ------------------------------------------------------------------

# How would you arrange the data by Regular_Gross_Paid 
# in descending order, 
# showing the highest paid employees first?

q4 <- nyc_payroll_new |> 
  arrange( -Regular_Gross_Paid ) # b/c Regular_Gross_Paid is numeric

q4 <- nyc_payroll_new |> 
  arrange( desc(Regular_Gross_Paid) )

# hw2-q5 ------------------------------------------------------------------

# How can you select and rename 
# the Title_Description variable to Title?
  
q5 <- nyc_payroll_new |> 
  rename(Title = Title_Description)



# hw2-q6 ------------------------------------------------------------------

# How can you filter the data to show only records for 
# the “POLICE DEPARTMENT” Agency_Name and 
# arrange it by Total_OT_Paid in ascending order?
  
  
q6 <- nyc_payroll_new |> 
  filter(Agency_Name == "POLICE DEPARTMENT") |> 
  arrange(Total_OT_Paid)


# hw2-q7 ------------------------------------------------------------------

# How can you filter the data to include only those records 
# where the Pay_Basis is “per Annum” and then select only 
# the First_Name, Last_Name, and Base_Salary variables?
  
q7 <- nyc_payroll_new |> 
  filter(Pay_Basis == "per Annum") |> 
  select(First_Name, Last_Name, Base_Salary)


# hw2-q8 ------------------------------------------------------------------

# How would you arrange the data.frame by Work_Location_Borough 
# in ascending order and Base_Salary in descending order?
  
q8 <- nyc_payroll_new |> 
  arrange(Work_Location_Borough, -Base_Salary)


# hw2-q9 ------------------------------------------------------------------

# How can you filter the nyc_payroll_new data.frame 
# to remove observations where the Base_Salary variable has NA values? 
# After filtering, how would you calculate 
# the total number of remaining observations?
  
  
q9 <- nyc_payroll_new |> 
  filter( !is.na(Base_Salary) )

nrow(q9)
