# lab problem 1: function that calculates triangle area w/ base and height
triangleArea <- function(base, height) {
  area <- 0.5 * base * height
  return(area)
}
#check function
triangleArea(10, 9)

# lab problem 2a: write your own absolute value function
myAbs <- function (value) {
  absValue <- (value^2)^(1/2)
  return(absValue)
}
#check function
myAbs(5)
myAbs(-2.3)
# lab problem 2b: adjust function for vectors
#function already works with vectors
#check function
myAbs( c(1.1,2,0,-4.3,9,-12))

# lab problem 3: return vector of first n(>=3) integers of the Fibonacci sequence
myFibonacci <- function(n) {
  Fibonacci <- rep(0,n)
  Fibonacci <- replace(Fibonacci,2,1)
  for (i in 3:n) {
    Fibonacci[i] <- Fibonacci[i-1] + Fibonacci[i-2]
  }
  return(Fibonacci)
}
#check function
myFibonacci(6)
# lab step 3a: make function work for n=1 and n=2
myFibonacci <- function(n) {
  Fibonacci <- rep(0,n)
  Fibonacci <- replace(Fibonacci,2,1)
  if (n<=2) {
    return(Fibonacci[1:n])
  }
  else {
    for (i in 3:n) {
      Fibonacci[i] <- Fibonacci[i-1] + Fibonacci[i-2]
    }
    return (Fibonacci)
  }
}
#check function
myFibonacci(1)
myFibonacci(6)
# labstep 3b: adjust function to give warning message for zero, negatives, and non integers
myFibonacci <- function(n) {
  if (n<= 0 | is.integer(n)==F) {
    return("please input positive integer")
  }
  Fibonacci <- rep(0,n)
  Fibonacci <- replace(Fibonacci,2,1)
  if (n<=2 & n>0) {
    return(Fibonacci[1:n])
  }
  else {
    for (i in 3:n) {
      Fibonacci[i] <- Fibonacci[i-1] + Fibonacci[i-2]
    }
    return (Fibonacci)
  }
}
#check function
myFibonacci(-1)
myFibonacci(3.5)

# lab step 4a: make function that returns the square of the difference between two values
squareDiff <- function (x,y) {
  myAnswer <- (x-y)^2
  return (myAnswer)
}
#check function
squareDiff(3,5)
#check function with a vector
squareDiff(c(2,4,6), 4)
# lab step 4b: write a vector that calculates the average of a vector
myAvg <- function(numbers) {
 avg <- (sum(numbers))/length(numbers) 
 return(avg)
}
#check function
myAvg(c(5,15,10))
#check function w/ data for lab 7
setwd ("EBIO4420/CompBioLabsandHomework/Labs/Lab7")
lab07Data <- read.csv("DataForLab07.csv")
lab07Data <- as.vector(lab07Data$x) #change data frame to vector
myAvg(lab07Data)
# lab step 4c: write a function for the sum of squares
mySumOfSquare <- function(numbers) {
  SumOfSquare <- sum((numbers - ((sum(numbers))/length(numbers)))^2)
  return(SumOfSquare)
}
#check function
mySumOfSquare(lab07Data)
