library(tidyverse)
library(skimr)
library(ggthemes)
library(gapminder)

titanic <- read_csv("https://bcdanl.github.io/data/titanic_cleaned.csv")


# q11 ---------------------------------------------------------------------


titanic_class_survival <- 
  titanic |> 
  count(class, survived)


# q12 ---------------------------------------------------------------------


ggplot(data = titanic,
       mapping = aes(x = gender,
                     y = age,
                     fill = gender)) +
  geom_boxplot(show.legend = F) +
  facet_wrap(~class) +
  scale_fill_tableau()



# q14 ---------------------------------------------------------------------

ggplot(data = titanic,
       mapping = aes(y = class,
                     fill = survived)) +
  geom_bar() +
  facet_wrap(~gender) +
  scale_fill_tableau()




# q15 ---------------------------------------------------------------------

ggplot(data = titanic,
       mapping = aes(y = class,
                     fill = survived)) +
  geom_bar(position = "fill") +
  facet_wrap(~gender) +
  labs(x = "Proportion") +
  scale_fill_tableau()



# q16 ---------------------------------------------------------------------

ggplot(data = titanic,
       mapping = aes(y = class,
                     fill = survived)) +
  geom_bar(position = "dodge") +
  facet_wrap(~gender) +
  scale_fill_tableau()




# q18 ---------------------------------------------------------------------

nyc_dogs <- read_csv("https://bcdanl.github.io/data/nyc_dogs_cleaned.csv")


nyc_dogs_breeds <- nyc_dogs |> 
  count(breed) |> 
  filter(!is.na(breed) ) |> 
  filter(n >= 2000) |> 
  arrange(-n)



# q19 ---------------------------------------------------------------------

ggplot(data = nyc_dogs_breeds,
       mapping = aes(x = n,
                     y = breed)) +
  geom_col()



# q20 ---------------------------------------------------------------------

ggplot(data = nyc_dogs_breeds,
       mapping = aes(x = n,
                     y = fct_reorder(breed, n))) +
  geom_col() +
  labs(y = "Breed")
