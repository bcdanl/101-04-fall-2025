library(tidyverse)


# classwork 12 ------------------------------------------------------------


# question 1 --------------------------------------------------------------

nbc_show <- read_csv("https://bcdanl.github.io/data/nbc_show.csv")

# color
ggplot(data = nbc_show,
       mapping = aes(x = GRP,
                     y = PE,
                     color = Genre)) +
  geom_point() +
  geom_smooth(method = "lm",
              se = FALSE)   # se = FALSE turns off the ribbon


# facet
ggplot(data = nbc_show,
       mapping = aes(x = GRP,
                     y = PE)) +
  geom_point() +  
  geom_smooth(method = "lm",
              se = FALSE) +  # se = FALSE turns off the ribbon
  facet_wrap( ~ Genre)


# facet with color
ggplot(data = nbc_show,
       mapping = aes(x = GRP,
                     y = PE,
                     color = Genre)) +
  geom_point(show.legend = FALSE) +  # show.legend = FALSE turns of legend
  geom_smooth(method = "lm",
              show.legend = FALSE,   # show.legend = FALSE turns of legend
              se = FALSE) +  # se = FALSE turns off the ribbon
  facet_wrap( ~ Genre)


# legend is redundant
ggplot(data = nbc_show,
       mapping = aes(x = GRP,
                     y = PE,
                     color = Genre)) +
  geom_point() +
  geom_smooth(method = "lm",
              se = FALSE) +  # se = FALSE turns off the ribbon
  facet_wrap( ~ Genre)




# question 2 --------------------------------------------------------------

# install.packages("gapminder")
library(gapminder)
??gapminder

df_gapminder <- gapminder::gapminder


# color
ggplot(data = df_gapminder,
       mapping = aes(x = log(gdpPercap),
                     y = lifeExp,
                     color = continent)) +  # different colors are used to distinguish continents
  geom_point(alpha = .5 )  # Add 50% transparency to reduce overplotting


ggplot(data = df_gapminder,
       mapping = aes(x = log(gdpPercap),
                     y = lifeExp,
                     color = continent)) +  # different colors are used to distinguish continents
  geom_point(alpha = .5 ) + # Add 50% transparency to reduce overplotting
  geom_smooth(method = "lm")


# FACET
ggplot(data = df_gapminder,
       mapping = aes(x = log(gdpPercap),
                     y = lifeExp)) +  # different colors are used to distinguish continents
  geom_point(alpha = .5  # Add 50% transparency to reduce overplotting
             ) + 
  geom_smooth(method = "lm") +
  facet_wrap( ~ continent)



# facet with color
ggplot(data = df_gapminder,
       mapping = aes(x = log(gdpPercap),
                     y = lifeExp,
                     color = continent)) +  # different colors are used to distinguish continents
  geom_point(alpha = .5,  # Add 50% transparency to reduce overplotting
             show.legend = FALSE) + 
  geom_smooth(method = "lm",
              show.legend = FALSE) +
  facet_wrap( ~ continent)



# classwork 13 ------------------------------------------------------------

ggplot(data = df_gapminder,
       mapping = aes(x = year,
                     y = gdpPercap)) +
  geom_point(size = .5) +
  geom_line()


ggplot(data = df_gapminder,
       mapping = aes(x = year,
                     y = gdpPercap,
                     group = country)) +
  geom_point(size = .5) +
  geom_line()


# not ideal
ggplot(data = df_gapminder,
       mapping = aes(x = year,
                     y = gdpPercap,
                     linetype = country)) +
  geom_point(size = .5) +
  geom_line()

ggplot(data = df_gapminder,
       mapping = aes(x = year,
                     y = gdpPercap,
                     linetype = country)) +
  geom_point(size = .5) +
  geom_line(show.legend = FALSE)



ggplot(data = df_gapminder,
       mapping = aes(x = year,
                     y = gdpPercap,
                     color = country)) +
  geom_point(size = .5,
             color = "black") +
  geom_line(show.legend = FALSE)

ggplot(data = df_gapminder,
       mapping = aes(x = year,
                     y = gdpPercap,
                     color = country)) +
  geom_point(size = .5,
             color = "black") +
  geom_line()




# facet
ggplot(data = df_gapminder,
       mapping = aes(x = year,
                     y = gdpPercap,
                     group = country)) +
  geom_point(size = .5,
             color = "black") +
  geom_line() +
  facet_wrap( ~ continent)

ggplot(data = df_gapminder,
       mapping = aes(x = year,
                     y = gdpPercap,
                     group = country)) +
  geom_point(size = .5,
             color = "black") +
  geom_line() +
  facet_wrap( ~ continent,
              nrow = 1)



ggplot(data = df_gapminder,
       mapping = aes(x = year,
                     y = log(gdpPercap))) +
  geom_line(show.legend = FALSE,
                   color = 'grey',
                   mapping = aes(group = country)) + # Advanced ggplot: we can add a specific aes() to a specific geom.
  geom_smooth() +
  facet_wrap(~ continent, 
             nrow = 1)
