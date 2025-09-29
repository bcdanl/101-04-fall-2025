library(tidyverse)

custdata <- read_csv("data/custdata_rev.csv")
class(custdata)
view(custdata)

# custdata_abs <- read_csv("/cloud/project/data/custdata_rev.csv")

# Read the CSV file directly from the web (GitHub repo)
custdata_web <- read_csv(
  'https://bcdanl.github.io/data/custdata_rev.csv')




# getting to know dataframe -----------------------------------------------

class(custdata)
custdata$age

class(custdata$age)

dim(custdata)
nrow(custdata)
ncol(custdata)

summary(custdata)


table1

# Install once
# install.packages("skimr")  
library(skimr)
skim(custdata)


filter(custdata, age < 25)
custdata |> filter(age < 25)

# the output is also a data.frame
custdata_25 <- custdata |> filter(age < 25)

custdata_25_inc <- custdata |> filter(age < 25) |> arrange(income)




# filter() ----------------------------------------------------------------

# install.packages("nycflights13")  # Install once
library(nycflights13)
library(tidyverse)

# flights <- flights
flights <- nycflights13::flights

flights$month == 1  # A logical test returns TRUE or FALSE
class(flights$month == 12)  




