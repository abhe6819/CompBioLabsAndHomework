# lab step 1: print "hi" 10 times
for ( i in seq(1,10)) {
  print("hi")
}
# lab step 2: calculating how much money Tim has for the next 8 weeks

# parameters
initialMoney <- 10  # starting value in piggy bank
gumCost <- 1.34     # cost of one pack of gum
allowance <- 5      # weekly allowance
gumPacks <- 2       # packs of gum per week

#calculations for 8 weeks
for (week in seq(1,8)) {
  funds <- initialMoney + week * (allowance - gumPacks * gumCost)
  print (funds)
}

# lab step 3: calculating population decay

#parameters
initialPop <- 2000 #initial population size
decayRate <- 0.05  #population decay rate per year

#calculations
for (year in seq(1,7)) {
 population <- initialPop * ((1 - decayRate)^year)
 print (population)
}

# lab step 4: modeling population with discrete-time logistic growth equation
# equation: n[t] = n[t-1] + (r * n[t-1] * (K - n[t-1])/K)

#parameters
Abundance <- 2500     #initial population: n[1]
carryingCapacity <- 10000 #carrying capacity of population: K
growthRate <- 0.8         #intrinsic growth rate of population: r

#calculation
for (time in seq(2,12)) {
   Abundance[time] <- Abundance[time-1] + (growthRate * Abundance[time-1] * (carryingCapacity - Abundance[time-1])/K)
   print (Abundance[time]) 
}

# lab step 5a: make vector with 18 zeros
zeros <- rep(0, 18)
# lab step 5b: multiply a 1-18 sequence by 3
for ( i in seq(1,18)) {
  zeros[i] <- i * 3
}
# lab step 5c: repeat 5a and replace first entry with 1
morezeros <- rep(0, 18)
morezeros <- replace(morezeros, 1, 1)
# lab step 5d: morezeros value is 1 + (2 * previous entry)
for (i in 2:18) {
  morezeros[i] <- 1 + (2 * morezeros[i-1])
}

# lab step 6: make the first 20 numbers of the Fibonacci sequence with a loop
Fibonacci <- rep(0,20)
Fibonacci <- replace(Fibonacci,2,1)
for (i in 3:20) {
  Fibonacci[i] <- Fibonacci[i-1] + Fibonacci[i-2]
}

# lab step 7: redo step 4 and store data (abundance is already stored as a vector)
#see step 4 for parameters and calculations
timeStep4 <- seq(1,12)
plot(timeStep4,Abundance)

# lab step 8a: read data files into R
setwd ("EBIO4420/CompBioLabsandHomework/Labs/Lab4") #set working directory to lab 4

# lab step 8b: convert columns 2-8 to numerics
# i) conversion using read.csv option (there's probably a better way to do this)
CO2Data <- read.csv ("CO2_data_cut_paste.csv",colClasses = c ("Total" = "numeric", "Gas" = "numeric", "Liquids" = "numeric", "Solids" = "numeric", "CementProduction" = "numeric", "GasFlaring" = "numeric", "PerCapita" = "numeric"))
# ii) conversion using "for" loop
for (ii in 2:nrow(CO2Data)) {
  for (jj in 2:ncol(CO2Data)) {
    CO2Data2[ii,jj] <- as.numeric(CO2Data[ii,jj])
  }
}

# lab step 8c: calculate % change except for year

