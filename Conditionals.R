# Conditionals in R

num <- 3
if (num > 5){
  print("greater than 5!")
} else{
  print("try again!!!")
}
print("done.")


num<- 53
if (num > 100){
  print("greater than 100")
}


# Exercise
#write a function to return (0, -1, 1) based on the sign of the input integer. Call the function"Sign".


sign <- function (num){
  if (num >0){
    print("1")
  } if (num<0){
    print("-1")
  } else
    print("0")
}
        
        
if ((1>0) & (-1>0)){
  print ("both parts are true")
} else{
  print("at least one part is false")
}


if ((1>0) | (-1>0)){
  print ("at least one part is true")
} else{
  print("both parts are false")
}


if (1>0){
  if(-1>0){
    print("both are true")
  } else{
    print("at least one is false")
  }
} else {
  print("at least one is false")
}


# Grabbing odd numbers
n100 <- seq(1,100)
getOdd <- function(v){
  return ( v [ v %% 2 = 1] )
}


# write a function which takes 3 arguments:
# v - a vector of integers
# x - a number to check for even divisibility
# y - a second numebr to check for even divisibility
# output should be all numbers in "v" that are evenly divisible by both "x" and "y"
# Example : double_div(c(1,2,3,4)), 2, 4) => [4]
# Note: you must use a for-loop for this.


Final_v <- function (v, a, b){
  for (i in v){
    v <- c(1:v)
    if (v/a & v/b = 1)
  } print {("v")}
  result(v)
  }

double_div <- function (v, x, y){
  for (e in v){
    if ((e %% x == 0) & (e %% y == 0)){
      print(e)
    } 
  }
}
double_div(n100, 7, 11)


double_div2 <- function(v, x, y){
  return(v[(v %% x == 0) & (v %% y == 0)])
}
double_div2 (n100, 7, 11)
