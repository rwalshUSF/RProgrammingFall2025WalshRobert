#Module #6 post for my LIS4370 blog. Welcome!

#Task 1 - Matrix Addition & Subtraction

#In R, define:
A<-matrix(c(2,0,1,3),ncol=2)
#Using the matrix() function to create a matrix "A" with 2 rows and 2 columns that
#includes scalar values of "2,0,1,3". R will row bind the elements by default
#and the resulting matrix looks like this:
A
#Using the matrix() function again to create another matrix "B" with 2 rows and
#2 columns that includes scalar values of "5,2,4,-1".
B<-matrix(c(5,2,4,-1),ncol=2)
#R will row bind the elements
#by default and the resulting matrix looks like this:
B

#Then:

#Compute A + B and display the result.
AplusB<-A+B
#Matrix "A" and "B" can be added together using the following code that will
#take the value from one cell and add it to the value in the same cell in the
#second matrix. Here is the resulting matrix after calculations:
AplusB

#Compute A - B and display the result.
AminusB<-A-B
#Matrix "A" and "B" can be subtracted from each other using the following code
#that will take the value from one cell and subtract it from the value in the
#same cell in the second matrix. Here is the resulting matrix after calculations:
AminusB

#Task 2 - Create a Diagonal Matrix
#Use diag() to build a 4×4 matrix with diagonal entries 4, 1, 2, 3:
#Show the code and the resulting matrix.
D<-diag(c(4,1,2,3))
#The diag() function creates a matrix with the specified vales/vector appearing
#diagonally from top left to bottom right. The results look like this:
D

#Task 3 - Construct a Custom 5×5 Matrix
#Generate this matrix:
#  [,1] [,2] [,3] [,4] [,5]
#[1,]    3    1    1    1    1
#[2,]    2    3    0    0    0
#[3,]    2    0    3    0    0
#[4,]    2    0    0    3    0
#[5,]    2    0    0    0    3
#Hint: combine diag() with cbind() or matrix().

#This was a fun and challenging exercise. It was similar to solving a puzzle.
#There are several ways to accomplish this task, however, I wanted to see if it
#could be constructed by multiplying two matrices together.

#Define the first matrix "A" as an identity matrix to base the row values
#that will be used in the multiplication using the matrix() and cbind() functions
A<-matrix(cbind(c(1,2,2,2,2),c(1,1,0,0,0),c(1,0,1,0,0),c(1,0,0,1,0),c(1,0,0,0,1)),nrow=5)

#Define matrix "B" using the diag() function to complete the necessary calculations
#to place the correct values in the resulting matrix
B<-diag(c(1,3,3,3,3))

#Multiply the two matrices together using the correct syntax to multiply matrices
#in R and store the resulting matrix in a new matrix object.
matrix5x5<-A%*%B
#This is what I got:
matrix5x5

#Unfortunately, after trying many combinations of numbers, I could not construct
#the desired output with one multiplication of two matrices, so I had to manually
#update a couple values for the output to match the desired results/matrix.

# Fix the first row, first column to be 3
matrix5x5[1,1]<-3
# Fix the first row, columns 2-5 to be 1
matrix5x5[1,2:5] <- 1
# Print the correct matrix
print(matrix5x5)
