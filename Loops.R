# Loops


analyze <- function(filename){
    dat <- read.csv(filename, header = F)
    avg_day_inflammation <- apply(dat, 1,  mean)
    plot(avg_day_inflammation)
}
dir("data")
analyze("data/inflammation-01.csv")
analyze("data/inflammation-02.csv")
analyze("data/inflammation-03.csv")

for(i in c(1, 3, 5)){
  print(i+1)
}

c(1, 3, 5)+1

inflammation_files <- c("data/inflammation-01.csv",
                        "data/inflammation-02.csv",
                        "data/inflammation-03.csv",
                        "data/inflammation-04.csv",
                        "data/inflammation-05.csv")

for(filename in inflammation_files){
    analyze(filename)
}

sum_x <- 0
for(i in x){
  cat("i:", i, "\n")
  cat("sum_x:", sum_x,"\n")
  sum_x <- sum_x+i
}

sum_x <- 0
sum_x <- sum_x + x[1]
sum_x <- sum_x + x[2]



2*2*2

exponentiate <- function(x, y){
  result <- 1
  for (i in 1:y){
    result <- result*x
    
  }
  return(result)
}
exponentiate(2,2)


# Exercise
product <- function(x, y){
  result <- 0
  for(i in 1:y){
    result <- result + x
  } 
  return(result)
}

print_N <- function(N){
  for(i in 1:N){
    print(i)
  }
}



dat <- read.csv ("data/inflammation-01.csv", header = F)
patient_mean <- apply(dat, 2, mean)

# takes means of each column
patient_mean_function <- function(filename){
  #read file filename into dataframe dat
  dat<- read.csv(filename, header =F)
  #dim(dat) is a length 2 vector c(row_number, col_number)
  rows_cols <- dim(dat)
  #take the second element to get the column number
  dat_cols <- rows_cols[2]
  #take the empty vector with length equal to the number of columns
  mean <- numeric(dat_cols)
  #run the loop "dat_cols" times, taking the mean of the i-th column at each step
  for(i in 1:dat_cols){
    #dat[,i] is the i-th column of dat
    mean[i] <- mean(dat[,i])
  }
  plot(mean, main=filename)
}
patient_mean_function("data/inflammation-01.csv")


x<- 10:1
N<-length(x)
for (i in 1:N){
  print(x[i])
}


# this function plots the mean inflammation of each patients
analyze_rows <- function(filename){
  dat <- data.matrix(read.csv(filename, header = F))
  rows_cols <- dim(dat)
  dat_rows <- rows_cols[1]
  means_patients <- numeric(dat_rows)
  for(i in 1:dat_rows){
    means_patients[i] <- mean(dat[i,])
  }
  plot(means_patients, main=filename)
}
analyze_rows ("data/inflammation-01.csv")


# Practice during break

analyze_c5 <- function(filename){
  #read the csv data file, if header has values incorporate header as part of the table by using FALSE
  dat <- read.csv(filename, header = F)
  #calculate the mean values for the rows using apply function
  avg_day_inflammation <- apply(dat, 1, mean)
  #plot the graph for the calculated datapoints
  plot(avg_day_inflammation, main=filename)
}
analyze_c5 ("data/inflammation-01.csv")
