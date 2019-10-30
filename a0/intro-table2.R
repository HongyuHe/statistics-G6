###########     R-intro Table 2

## matrices
#
x=1:12
y=seq(10, 20, length=12)

m=matrix(x,nrow=3,ncol=4) # creates a 3 by 4 matrix m from vector x column-wise
m
m=matrix(x,nrow=3,ncol=4,byrow=T) # creates a 3 by 4 matrix m from vector x row-wise
m
m[2,3] # extracts element on 2nd row and in 3rd column of m
m[3,] # extracts 3rd row of m
colSums(m) # calculates column sums of matrix m
apply(m,1,mean) # gives maximum of each row of m
               # (replacing 1 by 2 does it for columns, and
               # max can be replaced by other R-function)

cbind(x,y) # forms a matrix with columns x and y
M=read.table("sample1.txt") # reads values from file and saves in a table M
M
M=as.matrix(M) # converts table M into a matrix M
M

#
##lists
#
L=list(1:2,4:6) # creates a list that consists of two elements
L
L[[1]] # extracts the first element of the list L

L=list(element1=1:2,M) # creates a list that consists of two elements also
L
L$element1 # extracts the first element of the list L,
           # but now the elements of the list must have names


#
##for-loops
#
v=numeric(10) # creates a numeric object v of length zero
v

for(i in 1:100) { 
  # does 100 times:
  v[i]=mean(sample(1:100,25)) 
  print(v[i])
} # take a sample of size 25 out of 1,..., 100 and compute sample mean and store in v
v


#
##plotting
#
hist(v) # plots a (unscaled) histogram of v
hist(v,prob=T) # plots a scaled histogram of the values in s

u <- v^2 # takes the square of each entry in v and saves the resulting vector in u
u

plot(u,v) # plots the points (u[i],v[i]) in the plane
plot(u,v, xlab="u",ylab="v", # also names the axes,
main="Plot of u against v")  # and gives the plot a title

points(u,v+5,col="blue")    # adds the points (u[i],v[i]+5)

plot(u,v,type="l",   # plots line segments between points (u[i],v[i]),
col="red", lty=4)    # with dashed, red lines
plot(sort(u),sort(v),type="l",   # plots line segments between points with sorted coordinates
     col="green", lwd=3)    # with thick, green lines

#
##creating a function
#
add2=function(x){ # creates a function add2 with one argument x,
x+2}              # which adds 2 to every element of x
add2
add2(c(3,5)) # calculates function add2 for values 3 and 5
#


fibonacci=function(n){ # creates a function fibonacci with argument n, which
w=numeric(n)           # creates a vector w of length n consisting of zeros,
w[2]=1                 # assigns value 1 to the second element of w,
     for(i in 3:n) {   # uses for-loop to create new elements up to n-th element
     w[i]=w[i-2]+w[i-1] } # out of two existing elements,
w# print(w)    
  }               # and outputs w
fibonacci(20) # computes first 20 Fibonacci numbers
