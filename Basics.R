#VECTORS

#Vectors (All elements are of same mode)
x <- c(1:10)
x <- c("a","b","c")

#Accessing vecotor
x[2]
#length
length(x)
#mode
mode(x)

#String Functions
u<- paste("hello", "World") #Concatenation
v<- strsplit(u, " ") # String split

# Inserting Values in a vector
v <- seq(10)
v <- c(v[1:5], 999, v[6:length(v)])
v


# Creating vector for performance
v <- vector(length = 10)
v[5]=655
v
v[12]<-43
v

# Vector Indexing
x<-seq(from = .45, to=1.67, length.out = 15);x;
x[c(1,10,3)]
x[-c(1:14)] #excludes 1:14 index


###################################################################
#MATRIX

#Matrix - is a vector with rownum and colnum.
m <- matrix(c(1:50), nrow=5) #creating matrix
m <- rbind(1:4, 5:8, 9:12, 13:16) # binds rows
m[,2] #all rows, 2nd col

diag(x=1, nrow=5, ncol=5) # creates an identity matrix
diag(m) <- -999 # replaces diagonal

# transpose
t(m)

#Identity Matrix
x <- matrix(rep(1, 100), nrow=10)
diag(x) <- 0 ;x


###################################################################
#LIST

#List has multiple elements, each can be a vector of different mode
l <- list(FirstName="John", LastName="Smith", age=45, children=c("Humpty", "Dumpty"))
l$children
str(l)
#Adding new elements
l$Salary<-100
l


###################################################################
#DataFrame
#is nothing but a list with vectors of same length
d1 <- data.frame(list(kids=c("Mac","Cheese"), age=c(10,20))) # Or
d2 <- data.frame(kids=c("hello","Temp"), age=c(12)) 
d2
d2[2]


###################################################################
#MISCELLANEOUS

#help
?seq
seq(from = 10, to = 100, length.out = 5)
seq(from = 0, to = 100, by = 25)
seq(10)

#Demo examples
example(seq)
example(persp)

#cleanup
rm(list=ls())

# current  working dir
getwd()



###################################################################
#dplyr
install.packages("dplyr")
library("dplyr")
library("hflights")
