# lab part I
# lab step 1: make variable x and an "if else" statement for > 5
x <- 15
if (x > 5) {
  print ("big number")
} else { (x < 5)
  print ("small number")
}

# lab step 2: read example data into R
setwd ("EBIO4420/CompBioLabsandHomework/Labs/Lab5")
ExData <- read.csv ("ExampleData.csv")
ExData <- as.vector (ExData$x) #change ExData data frame to a vector
# lab step 2a: change every negative value to NA
for (ii in 1:length(ExData)) {
  if (ExData[ii] < 0) {
    ExData[ii]<- NA 
  } 
}
# lab step 2b: replace NA values with NaN without a loop
ExData[is.na(ExData)] <- NaN
# lab step 2c: use which() statement to replace NaN with zero
ExData [which (is.nan (ExData))] <- 0
# lab step 2d: determine how many values fall between 50 and 100
length (which (ExData <=100 & ExData >=50))
# lab step 2e: make vector of ExData values from 50 to 100
FiftyToOneHundred <- ExData[which (ExData <=100 & ExData >=50)]
# lab step 2f: write csv file from vector from 2e
write.csv (x = FiftyToOneHundred, file = "FiftyToOneHundred.csv")

# lab step 3: import CO2_data_cut_paste.csv from lab 4
CO2DataLab5 <- read.csv ("CO2_data_cut_paste.csv")
# lab step 3a: first year gas emmisions were non-zero
PositiveGasEmissions <- which (CO2DataLab5$GasFlaring > 0)
CO2DataLab5$Year [PositiveGasEmissions [1]]
# lab step 3b: "Total" emissions between 200 and 300 million metric tons of carbon
CO2DataLab5$Year [ CO2DataLab5$Total >= 200 & CO2DataLab5$Total <= 300]

# lab part II
#parameters
totalGenerations <- 1000
initPrey <- 100 	# initial prey abundance at time t = 1
initPred <- 10		# initial predator abundance at time t = 1
a <- 0.01 	# attack rate
r <- 0.2 		# prey growth rate
m <- 0.05 	# predator mortality rate
k <- 0.1 		# conversion constant of prey into predators
timeVec <- c(seq(from = 1, to = totalGenerations, by = 1))
# prey population over time
preyPop <- rep (0,totalGenerations)
preyPop[1] <- initPrey
# pred population over time
predPop <- rep (0,totalGenerations)
predPop[1] <- initPred

#calculations 
for (ii in 2:totalGenerations) {
  preyPop[ii] <- preyPop[ii-1] + (r * preyPop[ii-1]) - (a * preyPop[ii-1] * predPop[ii-1])
  predPop[ii] <- predPop[ii-1] + (k * a * preyPop[ii-1] * predPop[ii-1]) - (m * predPop[ii-1])
  if (preyPop[ii] < 0) {
    preyPop[ii] <- 0
  }
}

# plotting results
plot (timeVec, preyPop, xlim = c(0,max(timeVec)), ylim = c(0,max(preyPop)))
lines (timeVec, predPop)

#making results matrix
myResults <- cbind(timeVec, preyPop, predPop)
write.csv(x = myResults, file = "PredPreyResults.csv")

# lab part III
initPreyVec <- seq(from = 10, to = 100, by = 10) # initial population vectors
# prey population over time
preyPop <- rep (0,totalGenerations)
preyPop[1] <- initPreyVec
# pred population over time
predPop <- rep (0,totalGenerations)
predPop[1] <- initPred
lapply(initPreyVec, for (ii in 2:totalGenerations) {
  preyPop[ii] <- preyPop[ii-1] + (r * preyPop[ii-1]) - (a * preyPop[ii-1] * predPop[ii-1])
  predPop[ii] <- predPop[ii-1] + (k * a * preyPop[ii-1] * predPop[ii-1]) - (m * predPop[ii-1])
  if (preyPop[ii] < 0) {
    preyPop[ii] <- 0
  }
})


