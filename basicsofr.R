#Chapter 4

#Variables
x<-3
y<-4
4->z
a<-b<-8
a
b
assign("j", 6)
j
#removing
rm(j)
j

#Data Types

#checktype
class(x)
is.numeric(x) 
#integer
i<-2L
is.integer(i)
class(i)
#character
x<-"data"
class(x)
# character lenght
nchar(x)
nchar("test")
#Dates
date1 <- as.Date("2017-02-28")
date1
class(date1)
date2<-as.POSIXct("2017-02-28 17:01")
date2
class(date2)
#Logical
x<-TRUE
x
class(x)
x*5
y<-FALSE
y
y*0
is.logical(y)
is.logical(x)
T
F
class(T)
T<-2
class(T)
x<-2
y<-3
x==2
x==y
x<y
y<x
"data"=="date"
"data"!="date"
"data"<"date"
"data"<"dat"

#Vectors: cannot contain a mix of types
x<- c(1, 2, 3, 4, 5)
x
class(x)
x*2
x<-x*2
x
y<-1:10
y
x+y
length(x)
length(y)
z<-1:3
z
x+z
x==y
x<=5
any(x<y)
all(x<y)
v<-c("house", "apartment", "flat")
nchar(v)
x[1]
x[1:3]
x[1,3]
x[c(1,4)]
x
w<-c("one"=1, "two"=2, "three"=3)
w
w<-c(1, 2, 3)
names(w)<-c("a", "b", "c")
w
#Factors
books<-c("Statistics", "Data Warehouse", "Hadoop", "Spark", "R for everyone", "Hadoop", "Data Storage", "Statistics")
books<-as.factor(books)
books
education<- factor(x=c("Pos PHD","PHD", "MSc", "Bsc"), levels = c("Pos PHD","PHD", "MSc", "Bsc"), ordered = TRUE)
education

#Calling functions
x
mean(x)

#Missing Data is represented as NA
z<-c(1, 2, NA, 4, 5, NA, 7)
is.na(z)
q<-c("oreo", NA, "rich tea", "digestives", NA)
is.na(q)
#if a single element from a vector is NA, the mean will be NA, you have to remove the NA first and calculate the mean
mean(z)
mean(z, na.rm = TRUE)
#Null is not missing value and cant be vectorized
vn<-c(1, NULL, 3)
vn
mean(vn)
is.null(vn)
d<-NULL
is.null(d)

#Pipe - other way to call functions. Its needed the library magrittr
library(magrittr)
x<-1:10
mean(x)
x%>%mean

z%>%is.na%>%sum
sum(is.na(z))

z%>%mean(na.rm=TRUE)
