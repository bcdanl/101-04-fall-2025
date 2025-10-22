library(tidyverse)


tab_project <- read_csv("https://bcdanl.github.io/data/rdb-project_table.csv")
tab_department <- read_csv("https://bcdanl.github.io/data/rdb-department_table.csv")
tab_manager <- read_csv("https://bcdanl.github.io/data/rdb-manager_table.csv")


x <- data.frame(
  key = c(1, 2, 3),
  val_x = c('x1', 'x2', 'x3')
)

y <- data.frame(
  key = c(1, 2, 4),
  val_y = c('y1', 'y2', 'y3')
)


yy <- data.frame(
  k = c(1, 2, 4),
  val_y = c('y1', 'y2', 'y3')
)




xy <- x |> 
  left_join(y)


# we do not know what the key variable is so.
xyy <- x |> 
  left_join(yy)

# We can rename one key variable, so they have the same name for the key





