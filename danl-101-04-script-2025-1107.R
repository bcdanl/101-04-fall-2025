library(ggplot2)

# first ggplot ------------------------------------------------------------

ggplot(data = mpg,
       mapping = aes(
         x = displ,
         y = hwy
       )) +
  geom_point()


# fitted line with geom_smooth() ------------------------------------------

ggplot(data = mpg,
       mapping = aes(
         x = displ,
         y = hwy
       )) +
  geom_smooth()


# two geometric objects in one ggplot -------------------------------------

ggplot(data = mpg,
       mapping = aes(
         x = displ,
         y = hwy
       )) +
  geom_point() +
  geom_smooth()


# adding layers using + ---------------------------------------------------


# error b/c the location of +
ggplot(data = mpg,
       mapping = aes(
         x = displ,
         y = hwy
       )) +
  geom_point()
+ geom_smooth()


# + should be located at the end of each line when changing lines
ggplot(data = mpg,
       mapping = aes(
         x = displ,
         y = hwy
       )) +
  geom_point() +
  geom_smooth()


# geom_smooth(method = "lm") ----------------------------------------------

ggplot(data = mpg,
       mapping = aes(
         x = displ,
         y = hwy
       )) +
  geom_point() +
  geom_smooth(method = "lm")




# transparency with alpha -------------------------------------------------

mpg <- ggplot2::mpg


# alpha can be between 0 and 1
ggplot(data = mpg,
       mapping = aes(
         x = displ,
         y = hwy
       )) +
  geom_point(alpha = 0.33) 

# alpha = 0: full transparency
ggplot(data = mpg,
       mapping = aes(
         x = displ,
         y = hwy
       )) +
  geom_point(alpha = 0) 

# alpha = 1: no transparency
ggplot(data = mpg,
       mapping = aes(
         x = displ,
         y = hwy
       )) +
  geom_point(alpha = 1) # geom_point()


# aesthetic mapping -------------------------------------------------------


# color aesthetic mapping
ggplot(data = mpg,
       mapping = aes(
         x = displ,
         y = hwy,
         color = class  # categorical
       )) +
  geom_point()


# shape aesthetic mapping
ggplot(data = mpg,
       mapping = aes(
         x = displ,
         y = hwy,
         shape = class  # categorical
       )) +
  geom_point()


# alpha aesthetic mapping
ggplot( data = mpg,
        mapping =
          aes(x = displ,
              y = hwy,
              alpha = class) ) +
  geom_point()



# setting color aesthetic, manually
ggplot(data = mpg,
       mapping = 
         aes(x = displ, 
             y = hwy) ) + 
  geom_point(color = "blue")


ggplot(data = mpg,
       mapping = 
         aes(x = displ, 
             y = hwy) ) + 
  geom_point(color = "red")


ggplot(data = mpg,
       mapping = 
         aes(x = displ, 
             y = hwy) ) + 
  geom_point(color = "black")



ggplot(data = mpg,
       mapping = 
         aes(x = displ, 
             y = hwy) ) + 
  geom_point(color = "purple")


ggplot(data = mpg,
       mapping = 
         aes(x = displ, 
             y = hwy) ) + 
  geom_smooth(color = "darkorange") 


# fill mapping in geom_smooth() is for the color of ribbon
ggplot(data = mpg,
       mapping = 
         aes(x = displ, 
             y = hwy) ) + 
  geom_smooth(color = "darkorange",
              fill = "darkorange") 



# each geom_*() function has a different set of aesthetic properties
# e.g., 'fill' aethetics 
#     does not work with geom_point()
ggplot(data = mpg,
       mapping = 
         aes(x = displ, 
             y = hwy) ) + 
  geom_point(fill = "darkorange") 


# setting size aesthetic, manually
ggplot(data = mpg,
       mapping = 
         aes(x = displ, 
             y = hwy) ) + 
  geom_point(size = 3)

ggplot(data = mpg,
       mapping = 
         aes(x = displ, 
             y = hwy) ) + 
  geom_point(size = 1)




ggplot(data = mpg,
       mapping = 
         aes(x = displ, 
             y = hwy) ) + 
  geom_point(size = 0.1)

