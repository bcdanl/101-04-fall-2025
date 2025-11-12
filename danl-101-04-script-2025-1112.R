
# Classwork 11 - Question 3 -----------------------------------------------


library(tidyverse)
# install.packages("gapminder")
library(gapminder)

df_gapminder <- gapminder::gapminder


ggplot(data = df_gapminder,
       mapping = aes(x = gdpPercap,
                     y = lifeExp)) +
  geom_point(alpha = .1) + # Add transparency to reduce overplotting
  geom_smooth(color = "darkorange") +
  geom_smooth(method = "lm")


ggplot(data = df_gapminder,
       mapping = aes(x = log(gdpPercap),
                     y = lifeExp)) +
  geom_point(alpha = .1) + # Add transparency to reduce overplotting
  geom_smooth(color = "darkorange") +
  geom_smooth(method = "lm")



# facets ------------------------------------------------------------------



ggplot(data = gapminder,
       mapping = 
         aes(x = log10(gdpPercap), 
             y =lifeExp)) + 
  geom_point(alpha = .4) + 
  facet_wrap( ~ continent)


ggplot(data = gapminder,
       mapping = 
         aes(x = log10(gdpPercap), 
             y =lifeExp)) + 
  geom_point(alpha = .4) + 
  facet_wrap( ~ continent,
              nrow = 1)

ggplot(data = gapminder,
       mapping = 
         aes(x = log10(gdpPercap), 
             y =lifeExp)) + 
  geom_point(alpha = .4) + 
  facet_wrap( ~ continent,
              nrow = 3)



# time trend plot ---------------------------------------------------------

path <- 
  "https://bcdanl.github.io/data/nvda_2015_2025.csv"
nvda <- read_csv(path)

ggplot( data = nvda,
        mapping = aes(
          x = Date, 
          y = Close) ) + 
  geom_point(size = .5)

ggplot( data = nvda,
        mapping = aes(
          x = Date, 
          y = Close) ) + 
  geom_point(size = .5) +
  geom_line()


ggplot( data = nvda,
        mapping = aes(
          x = Date, 
          y = Close) ) + 
  # geom_point(size = .5) +
  geom_line()



ggplot( data = nvda,
        mapping = aes(
          x = Date, 
          y = Close) ) + 
  geom_point(size = .5) +
  geom_line() +
  geom_smooth()



tech_october <- 
  read_csv(
    "https://bcdanl.github.io/data/tech_stocks_2025_10.csv"
  )

ggplot( data = tech_october,
        mapping = aes(
          x = Date, 
          y = Close) ) + 
  geom_line() 

ggplot( data = tech_october,
        mapping = aes(
          x = Date, 
          y = Close,
          group = Ticker) ) + 
  geom_line() 


ggplot( data = tech_october,
        mapping = aes(
          x = Date, 
          y = Close,
          color = Ticker) ) + 
  geom_line() 

ggplot( data = tech_october,
        mapping = aes(
          x = Date, 
          y = Close,
          linetype = Ticker) ) + 
  geom_line() 

titanic <- 
  read_csv(
    "https://bcdanl.github.io/data/titanic_cleaned.csv")

ggplot(data = titanic,
       mapping = 
         aes(x = age)) + 
  geom_histogram()

# error
ggplot(data = titanic,
       mapping = 
         aes(x = age,
             y = count)) + 
  geom_histogram()



ggplot(data = titanic,
       mapping = 
         aes(x = age)) + 
  geom_histogram(bins = 2)


ggplot(data = titanic,
       mapping = 
         aes(x = age)) + 
  geom_histogram(bins = 10)

ggplot(data = titanic,
       mapping = 
         aes(x = age)) + 
  geom_histogram(bins = 60)


ggplot(data = titanic,
       mapping = 
         aes(x = age)) + 
  geom_histogram(binwidth = 1)


ggplot(data = titanic,
       mapping = 
         aes(x = age)) + 
  geom_histogram(binwidth = 1,
                 bins = 20) # bins = 20 is ignored



