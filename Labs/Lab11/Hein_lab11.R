# lab step 3: read denisty data into R
WoodDensity <- read.csv (file = "GlobalWoodDensityDatabase-Data.csv", stringsAsFactors = F)
names(WoodDensity)[4] <- "Density" #Renamed col 4 which did not translate well into R

# lab step 4a: find NA value in WoodDensity
which(is.na(WoodDensity$Density))
# lab step 4b: remove NA row
library("tidyr") #access tidyr library
DensityNoNA <- drop_na(WoodDensity)

# lab step 5: compress data so that each species is only listed once
library("dplyr") #access dplyr library
DensityCompressed <- summarise(group_by(DensityNoNA,Binomial,Family), MeanDensity = mean(Density))
#using base R
TreeSpecies <- sort(unique (DensityNoNA$Binomial)) #list of species
NumSpecies <- length(TreeSpecies) # number of unique species
# pre-allocation
DensityCompressed2 <- data.frame (Binomial = TreeSpecies,
                                  Family = rep("", NumSpecies),
                                  Density = rep(0, NumSpecies),
                                  stringsAsFactors = F)
#loop to fill data frame
for (ii in 1:NumSpecies) {
  Species <- TreeSpecies[ii]
  rows <- which(DensityNoNA$Binomial == Species)
  DensityCompressed2$Density[ii] <- mean(DensityNoNA$Density[rows])
  DensityCompressed2$Family[ii] <- DensityNoNA$Family[rows[1]]
}
#check that the two methods produce the same result
all(DensityCompressed == DensityCompressed2)

# lab step 6:
