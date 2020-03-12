# lab step 3a: paste lab 4, #7 script to lab 8
# equation: n[t] = n[t-1] + (r * n[t-1] * (K - n[t-1])/K)

#parameters
Abundance <- 2500     #initial population: n[1]
carryingCapacity <- 10000 #carrying capacity of population: K
growthRate <- 0.8         #intrinsic growth rate of population: r

#calculations
for (time in seq(2,12)) {
  Abundance[time] <- Abundance[time-1] + (growthRate * Abundance[time-1] * (carryingCapacity - Abundance[time-1])/carryingCapacity)
  print (Abundance[time]) 
}

#plot data
timeStep4 <- seq(1,12)
plot(timeStep4,Abundance)

# lab step 3b: make 3a into function
MyPopulationFunction <- function(Abundance, carryingCapacity, growthRate) {
  for (time in seq(2,12)) {
    Abundance[time] <- Abundance[time-1] + (growthRate * Abundance[time-1] * (carryingCapacity - Abundance[time-1])/carryingCapacity)
    print (Abundance[time])
  }
  return (Abundance[time])
}
#test function
MyPopulationFunction(2500, 10000, 0.8)

# lab step 3c: add to function to make it plot the data
MyPopulationFunction <- function(Abundance, carryingCapacity, growthRate) {
  for (time in seq(2,12)) {
    Abundance[time] <- Abundance[time-1] + (growthRate * Abundance[time-1] * (carryingCapacity - Abundance[time-1])/carryingCapacity)
    print (Abundance[time])
  }
  timeStep <- seq(1,12)
  plot(timeStep,Abundance)
  return (Abundance[time])
}

# lab step 3d: call the function
#test function
MyPopulationFunction(2300, 19000, 0.3)

# lab step 3e: write dataset from function to file with headers
AbundanceMatrix <- as.matrix(Abundance)
AbundanceMatrix <- cbind(seq(1,12), AbundanceMatrix)
#add headers
colnames(AbundanceMatrix) <- c("generations", "abundance")
#export to file
write.csv(AbundanceMatrix, "logisticGrowthData.csv")


