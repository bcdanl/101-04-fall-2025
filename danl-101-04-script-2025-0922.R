a <- 7

x <- 2
x < - 3


x <- 2
y <- x + 12
z <- y



x <- 5
y <- x + 12


c(1,2,3)
c("red", "blue", "green")

class( c(1,2,3) )

orig_number <- 4.39898498
class(orig_number)

mod_number <- as.integer(orig_number)
class(mod_number)

chr_4L <- "4L"


# Logical values (TRUE/FALSE) 
# can convert to numbers:
# TRUE converts to 1; 
# FALSE does to 0.
as.numeric(TRUE)

as.numeric(FALSE)


myname <- "my_name"
class(myname) # returns the data **type** of an object.

myname_s <- 'my_name'
class(myname_s) # returns the data **type** of an object.

qq <- "'this has '"
class(qq)

qq <- ''this has ''
# class(qq)


""

favorite.integer <- as.integer(2)
class(favorite.integer)

favorite.numeric <- as.numeric(8.8)
class(favorite.numeric)



class(TRUE)
class(FALSE)

favorite.numeric == 8.8

favorite.numeric == 9.9

"abc" == "abc"


"abdc" == "abc"

class(favorite.numeric == 8.8)




a <- 1:10   # create a sequence using the colon operator
class(a)

b <- c("3", 4, 5)   # mixing numbers and text
b
class(b)

c <- c(3, 4, "5")


beers <- c("BUD LIGHT", "BUSCH LIGHT", "COORS LIGHT", 
           "MILLER LITE", "NATURAL LIGHT")
class(beers)

beers_fct <- as.factor(beers)
class(beers_fct)

levels(beers) # NULL is empty
levels(beers_fct)
nlevels(beers_fct)


beers_more <- c("BUD LIGHT", "BUSCH LIGHT", "COORS LIGHT", 
                "MILLER LITE", "NATURAL LIGHT",
                "BUD LIGHT", "BUD LIGHT", "BUD LIGHT")
beers_more_fct <- as.factor(beers_more)
class(beers_more_fct)
levels(beers_more_fct)
nlevels(beers_more_fct)





x <- "hello"





library(tidyverse)

# The function `str_c()`, provided by `tidyverse`, concatenates characters.
str_c("Data", "Analytics")
str_c("Data", "Analytics", sep = "!")


