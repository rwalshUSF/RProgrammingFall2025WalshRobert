#Module #7 post for my LIS4370 blog. Welcome!

#Task 1 - Choose or Download Data

#Load the "mtcars" data set and store to an r object 'my_cars'
data("mtcars")
my_cars<-mtcars
#Print the first 5 rows of 'my_cars' object
head(my_cars)
#Explore the structure of 'my_cars' object
str(my_cars)

#Task 2 - Test Generic Functions

#Check to see if 'my_cars' is an S3 or S4 class object
isS4(my_cars)

#The output is 'FALSE' therefore 'my_cars' is an S3 object and the following
#generic functions will dispatch:

#print() - to display the object's data
print(my_cars)
#summary() - gives a summary of the objects variables statistics
summary(my_cars)
#plot() - plots the variables on a graph
plot(my_cars)

#Task 3 - Explore S3 vs. S4

#S3 object example

#Create an S3 object using list() and initializing variables upon creation
s3_obj <- list(car = "Ferarri", year = 2009, cost = 135000)

#Set the class of the object as an attribute
class(s3_obj) <- "car_s3"
class(s3_obj)
#mode() - generic function to display object mode
mode(s3_obj)
#print() - generic function dispatch to display object
print(s3_obj)
#str() - generic function dispatch for display of the internal structure
str(s3_obj)


#S4 class and object example

#Create an S4 class using setClass() and define class variables upon creation
setClass("car_s4",slots = c(car = "character", year = "numeric", cost = "numeric"))

#Instantiate a new S4 object by calling the new() and initializing the variables
s4_obj <- new("car_s4", car = "Porsche", year = 2009, cost = 75000)
class(s4_obj)
#mode() - generic function to display object mode
mode(s4_obj)
#print() - generic function dispatch to display object
print(s4_obj)
#str() - generic function dispatch for display of the internal structure
str(s4_obj)

