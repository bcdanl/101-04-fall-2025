library(tidyverse)


# Classwork 11


# Q1 ----------------------------------------------------------------------


df <- read_csv("http://bcdanl.github.io/data/icecream-shark-df.csv")


ggplot(data = df,
       mapping = aes(x = IceCreamSales,
                     y = SharkAttacks)) +
  geom_point() +
  geom_smooth()

# Q2 ----------------------------------------------------------------------


nbc_show <- read_csv("https://bcdanl.github.io/data/nbc_show.csv")

ggplot(data = nbc_show,
       mapping = aes(x = GRP,
                     y = PE)) +
  geom_point() +
  geom_smooth()



ggplot(data = nbc_show,
       mapping = aes(x = GRP,
                     y = PE)) +
  geom_point() +
  geom_smooth(method = "lm")

# Q3 ----------------------------------------------------------------------
# install.packages("gapminder")
library(gapminder)
??gapminder

df_gapminder <- gapminder::gapminder



