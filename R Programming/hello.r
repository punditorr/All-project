#Basic Calculation
1+1
2+2
5-2
7/2
print("Hello WOlrd")

# Create Variables
income <- 6000
expense <- 3200
saving <- income - expense
print(saving)

# remove variable
rm(saving)

print("hello world")


# define your own function
my_sum <- function(num1, num2=10) {
  num1 + num2
}

# test function
my_sum(10)

#call functions in library
library(glue)

my_name <- "Pun"
my_age <- 30

glue("Hello my name is {my_name}. This year I'm {my_age} years old.")

#hello
hello <- function(user_name) {
  glue("Hello! {user_name} ")  
}

#data types *****
my_age <- 33
class(my_age)

fav_book <- "Business made Simple"
class(fav_book)

movie_lover <- TRUE
class(movie_lover)

puppy <- c("cat", "dog", "dog", "cat", "cat")
puppy <- as.factor(puppy)

TODAY <- as.Date("2022-09-24")

# data structures
# vector, matrix, list, dataframe

# vector
1:10
seq(from=1, to=100, by=4)


my_friends <- c("Jew", "Champ", "Big", "Boss", "Time")
ages <- c(28, 28, 28, 28, 29)
movie_lover <- c(T, T, T, F, F)


# matrix
matrix(1:15, nrow = 5)
matrix(1:15, ncol = 5)
m1 <- matrix(1:15, ncol = 5, byrow = T)
ncol(m1)
nrow(m1)
dim(m1)


# List
customer_data <- list(
  customer_01 = list(
    name = "Pun",
    location = "Thailand",
    machester_fan = TRUE
  ) , 
  customer_02 = list(
    name = "Any",
    location = "Thailand"
  ), 
  customer_03 = list(
    name = "Jew",
    location = "Thailand",
    moive_lover = TRUE,
    visit_bank = TRUE,
    account_balance = 2000
  )
)


customer_data$name
customer_data[[3]]


#dataframe

df <- data.frame(id = 1:5,
                 my_friends, 
                 ages, 
                 movie_lover)


# write csv file
write.csv(df, "friends.csv", 
          row.names = FALSE )

# read csv file
friends <- read.csv("friends.csv")

class(friends)

#subset dataframe
#subset = extract data 
friends[1:2, 1:3]
friends[1:4,    ]
friends[ c(1, 3, 4),  ]
friends[   , 1:2]
friends[   , "my_friends"]
friends[   , c("my_friends", "ages")]

friends$ages < 29


friends[friends$ages < 29, ]
friends[friends$movie_lover, ]
friends[!friends$movie_lover, ]

new_friends <- data.frame(
  id = 6:7,
  my_friends = c("Any", "Da"),
  ages = c(34, 25),
  movie_lover = c(T,T)
)


#row bind
all_friends <- rbind(friends, new_friends)

#add column
all_friends$correct_age <- all_friends$ages - 1


# remove column
all_friends$ages <- NULL

# rename column
names(all_friends)[2] <- "name"

# use - => remove no.3 
all_friends[-3 , ]

# use - => remove no.3-4
mini_friends <- all_friends[-c(3,4) , ]


# control Flow
# 1. if
check_grade <- function(score){
  if(score >= 80){
    print("Passed")
  } else{
    print("Failed")
  }
}

check_grade_2 <- function(score){
  ifelse(score >= 80, "Passed", "Failed")
}


# 2. for loop

numbers <- c(10, 15, 20, 50)

for(num in numbers) {
  print(num*2)
}

numbers * 2 # element wise computation

##----------------------------

friends <- c("Toy", "Ann", "Wann")

for (friend in friends) {
  print(paste("Hello!", friend))
}

paste("Hello!", friends)


# 3. While loop 
x <- 0
while(x < 10){
  print("Hello")
  x <- x+1 
}


#check username & password
check_in <- function(){
  user_input <- readline("What's your username: ")
  user_pw <- readline("whar is your password: ")
  
  
  sys_un <- c("Pun", "Any", "Wan")
  sys_pw <- "123456"
  
  
  if(user_input %in% sys_un & user_pw == sys_pw){
    print(" Login successfully!")
  }else{
    print("Please check your username & password.")
  }
}

score <- c(50, 100, 95)
names(score) <- c("Pun", "Any" , "Wan")

score


