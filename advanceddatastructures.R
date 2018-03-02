#Advanced Data Structures
#data frames, array, matrix, list

#Data Frames. Data frame is like a sheet on excell, with rows and columns, where which column is a vector with same lenght.
x<-1:4
y<- -4:-1
z<-c("oreo", "rich tea", "digestives", "custard creams")
df<-data.frame(x, y, z)
df
#giving names for the columns
df<-data.frame("first" = x, "second" = y, "third" = z)
df
nrow(df)
ncol(df)
dim(df)
names(df)
names(df)[1]
rownames(df)
rownames(df)[1]
rownames(df)<-c("one", "two", "three", "four")
df
head(df)
head(df, n=2)
tail(df, n=2)
class(df)
df$first
df$second[2]
rownames(df)[2]
df[2,3]
df[2, 2:3]
df[c(2,3), 3]
df[,3]
df[2,]
df[["third"]]
class(df["third"])
class(df[["third"]])

#Lists - can have a mix of data types
l1<-list(1, 2, 3)
l2<-list("one", 1, "two", 2)
l3<-list(df, l1, l2)
l3
list(c(1, 2, 3), 3:6)
d<-c(1, 2, 3)
list(d, 3:7)
l3<-list(df, l1, l2, d)
names(l3)
names(l3)<-c("data frame", "list 1", "list 2", "vector")
names(l3)
l3
l3$`data frame`
l3$`data frame`[2,3]
#creating an empty list
emptylist<-vector(mode = "list", length = 4)
emptylist
l3[[2]]
l3$`list 1`[2]
#adding new items
length(l3)
l3[[5]]<-c(1, 2, 3)
length(l3)
l3[["vector2"]]<-1:5
length(l3)
l3
names(l3)
names(l3)[5]<-"c"
names(l3)

#Matrice - elements have the same type, normally numeric
A<-matrix(1:10, nrow = 2)
B<-matrix(11:20, nrow = 2)
C<-matrix(4:8, nrow = 5)
A
B
C
dim(A)
dim(C)
A+B
A*B
A==B
A%*%B
A%*%t(B)
df
colnames(A)
rownames(A)
colnames(A)<-c("one", "two", "three", "four", "five")
A
rownames(A)<-c("first", "second")
A
t(A)
colnames(B)<-LETTERS[1:5]
rownames(B)<-c("Top", "Bottom")
B

#Array 
thearray<-array(1:3, dim = c(5, 2, 2, 2))
thearray

