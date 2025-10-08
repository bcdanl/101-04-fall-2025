library(tidyverse)
library(nycflights13)

flights <- flights

flights_times <- flights |> 
  select(year, month, day)

flights |> 
  distinct(year)


flights_2013 <- flights |> 
  select(-year)


# rename() ----------------------------------------------------------------

flights_w_newname <- flights |> 
  rename(tail_num = tailnum)


# classwork 6 - data tarnsformation with dplyr  ---------------------------

library(tidyverse)
library(nycflights13)
flights <- flights
?flights


# cw6-pt1-q1 ------------------------------------------------------------------
# Find all flights that had an arrival delay of two or more hours.

# dep_delay, arr_delay
# Departure and arrival delays, in minutes. 
# Negative times represent early departures/arrivals.

# q1_1 <- flights |> filter(LOGICAL_CONDITION)

q1_1 <- flights |> filter(arr_delay >= 120)
  


# Find all flights that flew to Houston (IAH or HOU).
# origin, dest
# Origin and destination. 
# See airports for additional metadata.

# q1_2 <- flights |> filter(LOGICAL_CONDITION)
q1_2 <- flights |> filter(dest == "IAH" | dest == "HOU")

# verifying the result
q1_2 |> 
  distinct(dest)


# Find all flights that departed in summer 
  # (July, August, and September).

# q1_3 <- flights |> filter(LOGICAL_CONDITION)

q1_3 <- flights |> 
  filter(month == 7 | month == 8 | month == 9)


# verifying the result
q1_3 |> 
  distinct(month)


# Find all flights that arrived more than two hours late, 
  # but did not leave late.

# q1_4 <- flights |> filter(LOGICAL_CONDITION)

# ... arrived more than two hours late ...
  # arr_delay > 120

# ... but did not leave late.
  #  dep_deay
  # Negative times represent early departures
  # dep_deay <= 0
# early departure or on-time departure



q1_4 <- flights |> 
  filter(arr_delay > 120 & dep_delay <= 0)




