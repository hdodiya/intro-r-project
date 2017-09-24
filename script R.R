# 9-23-2017
X <- 2
X <- 2+2
X <- 1:5
X <-c(1,3,5)
unzip("data/r-novice-inflammation-data.zip")
my_data <- read.csv("data/inflammation-01.csv",header=F)

head(my_data)
(rows_cols <- dim(my_data))

class(my_data)

my_data[1,1]
my_data[1,5]
my_data[y,1]
my_data[1:5,1]
my_data[c(1,2,3,4,5),1]
my_row <- my_data[X,1]

my_data[c(1,2,3),c(2,4,6)]
my_data[,c(1,2,3)]
my_data[c(1,2,3)]

my_data[,c("V1","V2","V3")]
col_17 <- my_data$V17

mean(col_17)
sd(col_17)
median(col_17)
mean(my_data[,1])
mean(my_data[1:4,3])
summary(my_data[,c(1,2,3)])

summary(my_data[1:4,c(1,2,3)])
mean(my_data[1,1:5])


x <- 5:1
x[x <- 3]


my_col <- my_data[,2]
my_data[my_col==0,2]
sub_col <- my_col[my_col==0]
other_sub_col <- my_col[my_col !=0]
length(sub_col)
length(other_sub_col)
sum(other_sub_col)
sum(sub_col)
length(sub_col)+length(other_sub_col)
dim(my_data[,c(-1,-2,-3)])
x[-4]


col_V1 <- my_data$V1
col_V2 <- my_data$V2

my_data$x <- my_data$V1+my_data$V2
dim(my_data)

y <- c(1,2,3)
z <- c(2,3,4)
a <- y+z

x[1] <- 0
x[1:3] <- c(1,2,3)

# Exercise Break

patient1_v5 <- (my_data$V5)[1]
patient7_v5 <- (my_data$V5)[7]
patient1_v5 + patient7_v5
boxplot(patient1_v5,patient7_v5)
total <- patient1_v5 + patient7_v5
dim(my_data)
my_data[3, 5]
my_data[37,]
my_data[,29]
apply(my_data,2, mean)
apply(my_data,1, mean)

# 