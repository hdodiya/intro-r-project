# Functions in R
# by Hemraj


fahr_to_kelvin <- function(temp){kelvin <- 273.15 + ((temp-32) * (5/9))
  return(kelvin)}


# kelvin -> Celsius
kelvin_to_Celsius <- function(t){celsius <- t -273.15
  return (celsius)}

# Farenheit -> Celsius
fahr_to_Celsius <- function(temp){kelvin <- fahr_to_kelvin(temp) 
  celsius <- kelvin_to_Celsius(kelvin) 
  return(celsius)}


# Excercise
# define a function "fence" - which takes 2 vectors and returns the second vector concatenatedto the first

fence <- function(x, y){
  return(c(x, y))
}

fence <- function (x, y){
  v <- c(y, x)
  return (v)}

test_vec1 <- c("hemraj","is")
test_vec2 <- c(1, 3, 4)
fence <- function(test_vec1,test_vec2){return(c(test_vec2,test_vec1))}

#

input_1 <- 20
mySum <-function(input_1, input_2 =20){
  print(input_1)
  print(input_2)
  output <- input_1 + input_2
  return(output)
}

#function to center my data
center <- function(data, desired){
  new_data <- (data - mean(data)) +desired
  return(new_data)
}

dat <- read.csv("data/inflammation-01.csv", header =F)
centered <- center(dat[,4],0)


#
center <- function(data, desired){
  # return a new vector containing original data centered around
  # the desired value
  # Example : center(c(1,2,3), 0) => c(-1,0,1)
  new_data <- (data - mean(data)) +desired
  return(new_data)
}

dat <- read.csv("data/inflammation-01.csv", header =F)
centered <- center(dat[,4],0)


# ------apply functions-----
patient1 <- dat[1,]

avg_day_inflammation <- apply(dat,2,mean)
max_day_inflammation <- apply(dat,2, max)
min_day_inflammation <- apply(dat,2, min)


# Exercise:
# create a function "analyze" whose input is a name of a dataset (e.g. "data/inflammation-01.csv") and output a plot of mean inflammation per day.

z <- plot(apply(my_data, 2, mean))

analyze <- function(plot){
  plot <- plot(my_data, 2, mean)
  return(plot)
}

analyze <- function(filename){
  dat<- read.csv(filename, header = F)
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation)
}

# Lunch Break
# 

analyze <- function(filename){
  dat <- read.csv (filename, header =F)
  avg_day_inflammation <- apply(dat, 1,  mean)
  plot(avg_day_inflammation)
}

analyze_custom2 <- function(filename){
  dat <- read.csv (filename, header =F)
  avg_day_inflammation <- apply(dat, 1,  mean)
  avg_day_inflammation_group1 <- avg_day_inflammation[1:30]
  avg_day_inflammation_group2 <- avg_day_inflammation[31:60]
  boxplot(avg_day_inflammation_group1, avg_day_inflammation_group2, main = filename)
}

analyze_custom3 <- function(filename){
  dat <- read.csv (filename, header =F)
  avg_day_inflammation <- apply(dat, 1,  mean)
  avg_day_inflammation_group1 <- avg_day_inflammation[1:30]
  avg_day_inflammation_group2 <- avg_day_inflammation[31:60]
  scatter.smooth(avg_day_inflammation_group1, avg_day_inflammation_group2, main = filename)
}

analyze_custom4 <- function(filename){
  dat <- read.csv (filename, header =F)
  avg_day_inflammation <- apply(dat,1,mean)
  avg_day_inflammation_1 <- avg_day_inflammation[1:20]
  avg_day_inflammation_2 <- avg_day_inflammation[21:40]
  avg_day_inflammation_3 <- avg_day_inflammation[41:60]
  boxplot(avg_day_inflammation_1, avg_day_inflammation_2, avg_day_inflammation_3, main = filename)
}

analyze_custom3 ("data/inflammation-01.csv")

pdf("inflammation-01.pdf")
