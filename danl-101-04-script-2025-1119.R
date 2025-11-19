library(tidyverse)

diamonds <- ggplot2::diamonds

ggplot(data = diamonds,
       mapping = aes(x = cut)) + 
  geom_bar()


mpg <- ggplot2::mpg

df <- mpg |> 
  count(class)

ggplot(data = df,
       mapping = 
         aes(x = n, 
             y = class)) + 
  geom_col()


ggplot(data = df,
       mapping = 
         aes(x = n, 
             y = fct_reorder(class, n) )) + 
  geom_col()

ggplot(data = df,
       mapping = 
         aes(x = n, 
             y = fct_reorder(class, n) )) + 
  geom_col()

ggplot(data = df,
       mapping = 
         aes(x = n, 
             y = fct_reorder(class, -n) )) + 
  geom_col()




# classwork 14 ------------------------------------------------------------

# install.packages("ggthemes")
library(ggthemes)
library(tidyverse)

flights <- nycflights13::flights


  # q1 ----------------------------------------------------------------------

# ggplot(data = flights,
#        mapping = aes(x = air_time)) +
#   geom_histogram(bins = 1)

ggplot(data = flights,
       mapping = aes(x = air_time)) +
  geom_histogram(binwidth = 1)


# q2-a ----------------------------------------------------------------------

ggplot(data = flights,
       mapping = aes(x = air_time)) +
  geom_histogram(bins = 50,
                   fill = "lightblue") +
  facet_wrap(~ origin)



# q2-b --------------------------------------------------------------------


ggplot(data = flights,
       mapping = aes(x = air_time,
                     y = origin,
                     fill = origin,
       )) +
  geom_boxplot(show.legend = FALSE) +
  scale_fill_tableau()


# q3 ----------------------------------------------------------------------

top3_n <- flights |> 
  count(carrier) |> 
  arrange( desc(n) ) |> 
  head(3)  # returns the first 3 observations in the given data.frame



# q4 ----------------------------------------------------------------------

# |
# &

top3_carriers <- flights |> 
  filter(carrier == "UA" |
         carrier == "B6" |
         carrier == "EV" ) |> 
  select(month, day, dep_time, 
         carrier, origin, dest)

# just to check...
top3_carriers |> 
  distinct(carrier)

# q5-a ----------------------------------------------------------------------

ggplot(data = top3_carriers,
       mapping = aes(y = carrier,
                     fill = carrier)) +
  geom_bar(show.legend = FALSE) +
  scale_fill_colorblind()



# q5-b --------------------------------------------------------------------

ggplot(data = top3_carriers,
       mapping = aes(y = carrier,
                     x = after_stat(prop),
                     group = 1)) +
  geom_bar()

# ggplot(data = top3_carriers,
#        mapping = aes(y = carrier,
#                      x = after_stat(prop)
#                      )) +
#   geom_bar(show.legend = FALSE)



# q6-a ----------------------------------------------------------------------

ggplot(data = top3_carriers,
       mapping = aes(y = origin,
                     fill = carrier)) +
  geom_bar() +
  scale_fill_colorblind()


# q6-b --------------------------------------------------------------------


ggplot(data = top3_carriers,
       mapping = aes(y = origin,
                     fill = carrier)) +
  geom_bar(position = "fill") +
  scale_fill_colorblind() +
  labs(x = "Proportion") # label x-axis title


# q6-c --------------------------------------------------------------------

ggplot(data = top3_carriers,
       mapping = aes(y = origin,
                     fill = carrier)) +
  geom_bar(position = "dodge") +
  scale_fill_colorblind()


# q6-d --------------------------------------------------------------------


ggplot(data = top3_carriers,
       mapping = aes(y = carrier,
                     fill = carrier)) +
  geom_bar(show.legend = FALSE) +
  facet_wrap(~ origin) +
  scale_fill_tableau()



# q7 ----------------------------------------------------------------------

ggplot(data = top3_n,
       mapping = aes(x = n,
                     y = carrier,
                     fill = carrier)) +
  geom_col(show.legend = FALSE) +
  scale_fill_tableau()


# q8 ----------------------------------------------------------------------


ggplot(data = top3_n,
       mapping = aes(x = n,
                     y = fct_reorder(carrier, n))) +
  geom_col() +
  labs(y = "Carrier")   # label y-axis title



# q9 ----------------------------------------------------------------------

carrier_per_origin <- flights |> 
  count(origin, carrier) |> 
  arrange(origin, -n)





# Blanks ------------------------------------------------------------------



