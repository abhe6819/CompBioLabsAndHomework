# lab step 3: read denisty data into R
WoodDensity <- read.csv (file = "GlobalWoodDensityDatabase-Data.csv", stringsAsFactors = F)
names(WoodDensity)[4] <- "Density" #Renamed col 4 which did not translate well into R

# lab step 4a: find NA value in WoodDensity
unlist (lapply (WoodDensity, function (x){
  which (is.na (x))
  }))
# lab step 4b: remove NA row
DensityNoNA <- drop_na(WoodDensity)

# lab step 5: compress data so that each species is only listed once
library("dplyr")
DensityCompressed <- summarise(group_by(DensityNoNA,Binomial,Family), MeanDensity = mean(Density))
