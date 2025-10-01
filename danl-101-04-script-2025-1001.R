library(tidyverse)

custdata <- read_csv(
  'https://bcdanl.github.io/data/custdata_rev.csv')



# filter() ----------------------------------------------------------------

# install.packages("nycflights13")  # Install once
library(nycflights13)
library(tidyverse)

flights <- nycflights13::flights

month_vec <- flights$month
class(month_vec)

flights$month == 1  # A logical test returns TRUE or FALSE

is_month_12 <- flights$month == 12
class(is_month_12)

class(flights$month == 12)  

jan <- flights |> 
  filter(month == 1)

dec <- flights |> 
  filter(month == 12)

nrow(dec)

# Flights on January 1st or December 25th
jan1 <- flights |> 
  filter(month == 1, day == 1)

dec25 <- flights |> 
  filter(month == 12, day == 25)



non_jan <- flights |> 
  filter(month != 1)

nrow(flights) == nrow(non_jan) + nrow(jan)



df <- data.frame(
  num = c(8, 9, 10, 11),
  chr = c("A", "C", "B", "A")
)




