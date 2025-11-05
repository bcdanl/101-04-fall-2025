library(tidyverse)
mpg <- ggplot2::mpg

# What does 
# the relationship between engine size and 
# fuel efficiency look like?


ggplot(
  data = mpg,
  mapping = aes(x = displ,
                y = hwy)
) +
  geom_point()
