# Review R 

# ---- Assignment ----#

x <- 3
y <- 1
z <-  x + y


# ---- Functions -----#

# Takes an input and returns the square
Square <- function(x){
  return(x^2)
  
}
Square(2)



# ---- Conditionals -----#

isOdd <- function(x){
  if (x %% 2 == 1) {
    return(TRUE)
  } else {
    return (FALSE)
    
  }
}

isOdd(3)



# ----- For - loops ------#


#summing up the elements in a vector
mySum <-function(v){
  acc <- 0
  for (x in v){
    acc <- acc + x
  }
  return(acc)
}
mySum(seq(1,10))

sum(seq(1,10))


# ----- indexing -------#

x <- c(1,2,3,4)
# () - function arguments
# {} - control flow
# [] - indexing

#1. create a directory
#mkdir some_directory
#2. create a file in that directory
#touch some_directory/some_file
#3. edit the file with nano.
#nano some_file - type - ctrl+O to save - ctrl+x to quit
#4. navigate back out of that directory.
#
#5. delete the directory.


# ----- Excercise -----#
# Provide a shell command that finds the 3 files that have the *least* 
# number of lines in a directory
# write the same shell command to find the 3 with the most lines.. 


# ---- Excercise ----- #

# Find the number of line for each .csv, .txt and  .md file in "data/"
# Find the .csv, .txt or .md files with the least number of lines
# Find the .csv, .txt or .md files with the most number of lines
# 

# ----Lunch Time -----#

x <- 7
y <- 19
x - y 
x * y
x / y











