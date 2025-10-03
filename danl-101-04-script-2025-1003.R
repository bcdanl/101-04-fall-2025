library(tidyverse)

df <- data.frame(
  num = c(8, 9, 10, 11),
  chr = c("A", "C", "B", "A")
)

library(nycflights13)
jan1 <- flights |> 
  filter(month == 1 & day == 1)



jan_or_day1 <- flights |> 
  filter(month == 1 | day == 1)




# missing values ----------------------------------------------------------

NA > 5

10 == NA

NA + 10

NA / 2

(1 + NA + 3) / 3

mean( c(1, NA, 3) )

sd( c(1, NA, 3) )


v1 <- NA
v2 <- NA
v1 == v2


num_missing <- NA
is.na(num_missing)  # is num_missing NA?

text_missing <- "missing"
is.na(text_missing) # is text_missing NA?

text_NA <- "NA"
is.na(text_NA) # is text_NA NA?


V1 <- c(1, NA, 3)
is.na(V1)  # is V1 NA?

!TRUE
!FALSE

V1
!is.na(V1)  # is V1 not NA?

df <- data.frame(
  v1 = c(1, NA, 3),
  v2 = c(1, 2, 3)
)


df |> 
  filter( is.na(v1) )



df |> 
  filter( !is.na(v1) )


# arrange -----------------------------------------------------------------

flights <- flights

# Sort observations 
# by dep_delay (ascending)
flights |> 
  arrange(dep_delay)

flights_sorted <- flights |> 
  arrange(dep_delay, sched_dep_time)


# Sort observations 
# by dep_delay (ascending)
flights |> 
  arrange( desc(dep_delay) )

flights |> 
  arrange( -dep_delay ) # - is only for numeric variable

flights |> 
  arrange( -carrier ) # error

# Remove duplicate observations 
# from the flights data.frame
flights_distinct <- flights |> distinct()

nrow(flights_distinct) == nrow(flights)

od_pairs <- flights |> 
  distinct(origin, dest) |> 
  arrange(origin, dest)


# select() ----------------------------------------------------------------

df <- flights |> 
  select(year, month, day)


flights |> 
  select(-year)

