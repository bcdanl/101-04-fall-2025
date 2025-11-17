library(tidyverse)
# install.packages("ggthemes")
library(ggthemes)

ggplot( data = mpg,
        mapping = 
          aes(x = displ,
              y = hwy, 
              color = class) ) + 
  geom_point(size = 3) +
  scale_color_colorblind()

ggplot( data = mpg,
        mapping = 
          aes(x = displ,
              y = hwy, 
              color = class) ) + 
  geom_point(size = 3) +
  scale_color_tableau()



# boxplot -----------------------------------------------------------------

ggplot(data = mpg,
       mapping = 
         aes(x = class,
             y = hwy)) + 
  geom_boxplot() 

ggplot(data = mpg,
       mapping = 
         aes(y = class,
             x = hwy)) + 
  geom_boxplot() 


ggplot(data = mpg,
       mapping = 
         aes(y = class,
             x = hwy,
             fill = class)) + 
  geom_boxplot() +
  scale_fill_tableau()

ggplot(data = mpg,
       mapping = 
         aes(y = class,
             x = hwy,
             fill = class)) + 
  geom_boxplot(show.legend = FALSE) +
  scale_fill_tableau()

ggplot(data = mpg,
       mapping = 
         aes(y = class,
             x = hwy,
             fill = class)) + 
  geom_boxplot(show.legend = FALSE) +
  scale_fill_colorblind()



# bar charts --------------------------------------------------------------

diamonds <- ggplot2::diamonds

ggplot(data = diamonds,
       mapping = aes(x = cut)) +
  geom_bar()

ggplot(data = diamonds,
       mapping = aes(y = cut)) +
  geom_bar()


diamonds |> 
  count(cut)


# colorful bars -----------------------------------------------------------


ggplot(data = diamonds,
       mapping = 
         aes(x = cut, 
             color = cut)) + 
  geom_bar() 

ggplot(data = diamonds,
       mapping = 
         aes(x = cut, 
             fill = cut)) + 
  geom_bar() 

ggplot(data = diamonds,
       mapping = 
         aes(x = cut, 
             fill = cut)) + 
  geom_bar(show.legend = FALSE)

ggplot(data = diamonds,
       mapping = 
         aes(x = cut, 
             fill = cut)) + 
  geom_bar(show.legend = FALSE) +
  scale_fill_tableau()


# count() -----------------------------------------------------------------

n_cut <- diamonds |> 
  count(cut)

n_cut_clarity <- diamonds |> 
  count(cut, clarity)


ggplot(data = diamonds,
       mapping = 
         aes(x = cut, 
             fill = cut)) + 
  geom_bar()



ggplot(data = diamonds,
       mapping = 
         aes(x = cut, 
             fill = clarity)) + 
  geom_bar()

ggplot(data = diamonds,
       mapping = 
         aes(x = cut, 
             fill = clarity)) + 
  geom_bar(position = "fill") +
  labs(y = "Proportion")


ggplot(data = diamonds,
       mapping = 
         aes(x = cut, 
             fill = clarity)) + 
  geom_bar(position = "dodge")


ggplot(data = diamonds,
       mapping = 
         aes(x = cut, 
             fill = clarity)) + 
  geom_bar(position = "stack")
ggplot(data = diamonds,
       mapping = 
         aes(x = cut, 
             fill = clarity)) + 
  geom_bar()




# prop bar ----------------------------------------------------------------


ggplot(data = diamonds,
       mapping = 
         aes(x = cut,
             y = after_stat(prop))) + 
  geom_bar()


ggplot(data = diamonds,
       mapping = 
         aes(x = cut,
             y = after_stat(prop),
             group = 1)) + 
  geom_bar()




# geom_col ----------------------------------------------------------------

df <- diamonds |> 
  count(cut)

ggplot(data = df,
       mapping = aes(x = cut,
                     y = n)) +
  geom_col()


df_class <- mpg |> 
  count(class)

ggplot(data = df_class,
       mapping = 
         aes(x = n, 
             y = class)) + 
  geom_col()


# sorted bar --------------------------------------------------------------


df_class <- mpg |> 
  count(class)

ggplot(data = df_class,
       mapping = 
         aes(x = n, 
             y = fct_reorder(class, n))) + 
  geom_col()


