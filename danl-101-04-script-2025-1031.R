library(tidyverse)
x <- data.frame(
  key = c(1, 2, 3),
  val_x = c('x1', 'x2', 'x3')
)

y <- data.frame(
  key = c(1, 2, 4),
  val_y = c('y1', 'y2', 'y3')
)

df_xy <- x |> 
  left_join(y)



y2 <- data.frame(
  key_y = c(1, 2, 4),
  val_y = c('y1', 'y2', 'y3')
)


# error b/c they have different key names
df_xy2 <- x |> 
  left_join(y2)


y2 <- y2 |> 
  rename(key = key_y)

df_xy2 <- x |> 
  left_join(y2)


# cw9-q1 ------------------------------------------------------------------

# part A
# Write an R code to create a data frame named 
# df_joined that combines the three datasets — 
# df_survey, df_platform, and df_card — 
# using the left_join() function.

df_platform <- 
  read_csv("https://bcdanl.github.io/data/platform_reference.csv")

df_card <- 
  read_csv("https://bcdanl.github.io/data/card_suit_rules.csv")

df_survey <- 
  read_csv("https://bcdanl.github.io/data/danl-101-survey-social-media-fall-2025.csv")



# Answer
df_joined <- df_survey |> 
  left_join(df_platform) |> 
  left_join(df_card)
  



# count() -----------------------------------------------------------------

library(nycflights13)

flights <- flights

flights |> 
  count(origin) # data.frame

# part B
# Find out which platforms DANL 101 students use.

platforms <- df_survey |> 
  count(platform)


# Part C
# Count how many students use each platform, and 
# determine which platform is the most popular 
# based on the number of users.

platforms_sorted <- df_survey |> 
  count(platform) |> 
  arrange(-n)


# Part D
# Calculate descriptive statistics 
# (e.g., mean, standard deviation, and quartiles) 
# of daily_time_min for each platform 
# by using the skimr::skim() function.

# Let's focus on TikTok and Instagram
# Start with filter()

df_tiktok <- df_survey |> 
  filter(platform == "TikTok")
df_instagram <- df_survey |> 
  filter(platform == "Instagram")

# install.packages("skimr")
library(skimr)

sum_tiktok <- skim(df_tiktok)
sum_instagram <- skim(df_instagram)

sum_tiktok_min <- skim(df_tiktok$daily_time_min)
sum_instagram_min <- skim(df_instagram$daily_time_min)













