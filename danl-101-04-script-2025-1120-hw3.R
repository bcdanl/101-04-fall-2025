library(tidyverse)
library(skimr)
library(ggthemes)

oj <- read_csv("https://bcdanl.github.io/data/dominick_oj_na.csv")


# q11 ---------------------------------------------------------------------


oj_tr <- oj |> 
  filter(brand == "tropicana")

oj_mm <- oj |> 
  filter(brand ==  "minute.maid")

oj_do <- oj |> 
  filter(brand ==  "dominicks")

oj_tr_sum <- skim(oj_tr)
oj_mm_sum <- skim(oj_mm)
oj_do_sum <- skim(oj_do)



# q12 ---------------------------------------------------------------------

oj_no_NA <- oj |> 
  filter(!is.na(price) & !is.na(sales))


skim(oj_no_NA)



oj_no_NA_wrong <- oj |> 
  filter(!is.na(price) | !is.na(sales))

skim(oj_no_NA_wrong)



# q13 ---------------------------------------------------------------------


ggplot(data = oj, 
       mapping = aes(x = price,
                     fill = brand)) +
  geom_histogram(show.legend = FALSE,  # `show.legend = FALSE` turns off legend
                 bins = 40) +
  facet_wrap(~ brand, 
             ncol = 1) +
  scale_fill_colorblind()




# q15 ---------------------------------------------------------------------

ggplot(data = oj, 
       mapping = aes(x = log10(sales),
                     y = log10(price),
                     color = brand,
                     fill = brand)) +
         geom_point(alpha = .1) +
         geom_smooth(method = "lm") +
  scale_color_colorblind() +
  scale_fill_colorblind()



# q17 ---------------------------------------------------------------------


ggplot(data = oj, 
       mapping = aes(x = log10(sales),
                     y = log10(price),
                     color = brand,
                     fill = brand)) +
  geom_point(alpha = .1) +
  geom_smooth(method = "lm") +
  scale_color_colorblind() +
  scale_fill_colorblind() +
  facet_wrap( ~ ad_status)



# q19 ---------------------------------------------------------------------

mlb_bat <- read_csv("https://bcdanl.github.io/data/MLB_batting.csv")


ggplot(data = mlb_bat, 
       mapping = aes(x = year, 
                     y = percentage, 
                     color = hit_type,
                     fill = hit_type)) +
  geom_point(size = .5) + 
  geom_line() +
  geom_smooth() +
  labs(title = "Hits by Type in Major League Baseball",
       x = "Major League Baseball Season",
       y = "Percentage",
       fill = "Hit",
       color = "Hit") + # labs() allows for 
# labeling x, y, color, fill, title, etc.
  scale_color_colorblind() +
  scale_fill_colorblind()


# blanks ------------------------------------------------------------------


