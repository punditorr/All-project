#data transformation / data viz 101

install.packages( c("ggplot2", "dplyr") )

library(ggplot2)
library(dplyr)

#dplyr
select(mtcars, 1:3, 5, 11)

select(mtcars, mpg, am, hp, wt)

select(mtcars,
       mile_per_gallon = mpg, 
       auto_manual = am, 
       horse_power = hp, 
       weight = wt)

#pipe operator
df <- mtcars %>%
  #step 2 select column
select(mile_per_gallon = mpg, 
       auto_manual = am, 
       horse_power = hp, 
       weight = wt) %>%
  # step 2 filter row 
  filter(mile_per_gallon <= 15) %>%
  # step 3 sort HP 
  arrange(desc(horse_power))



# data visualization
hist(mtcars$hp)
plot(mtcars$hp, mtcars$mpg, pch=16, col="red")


#modern graphics

#aes แกน x,y 
ggplot(mtcars, aes(hp, mpg)) + geom_point()
ggplot(mtcars, aes(hp, mpg)) + geom_smooth()

ggplot(mtcars, aes(hp, mpg)) + geom_point() + 
  geom_smooth() + 
  geom_rug() + 
  theme_minimal()

