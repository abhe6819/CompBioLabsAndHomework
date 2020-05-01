# read data into script
# key-countries-pivoted dataset
KeyCountriesData <- read.csv("key-countries-pivoted.csv", stringsAsFactors = F)
#required libraries
library(ggplot2)
library(tidyr)
library(scales)
library(dplyr)

#convert key countries data frme to long form
longformcases <- with(KeyCountriesData,
                data.frame(value = c(China, US, United_Kingdom, Italy, France, Germany, Spain, Iran),
                           variable = factor(rep(c("China", "US", "United_Kingdom", "Italy", "France", "Germany", "Spain", "Iran"),
                                                 each = NROW(KeyCountriesData))),
                           Date = Date))
# format date as date for plotting
longformcases$Date <-as.Date(longformcases$Date)
# plot total cases
pdf("Total_Cases.pdf")
Total_Cases <- ggplot(longformcases, aes(Date, value, colour = variable, group=variable))+
  geom_line()+
  geom_point(size=0.75)+
  labs(x= "Date", title= "COVID-19 Cases Over Time", y="Cases", colour= "Countries")+
  theme (axis.text.x= element_text(angle=90))+
  scale_x_date(date_breaks = "weeks", date_labels = "%m-%d")
print(Total_Cases)
dev.off()


# make data frame of national cases per capita
# data frame of national populations in millions
CountryPopulation <- data.frame(1392.73000,326.68750, 66.46034, 60.42176, 66.97711, 82.90578, 46.79654, 81.80027) 
colnames(CountryPopulation) <- c("China", "US", "United_Kingdom", "Italy", "France", "Germany", "Spain", "Iran")
rownames(CountryPopulation) <- ("population(millions)")
# normalize cases per country by population
KeyCountriesNoDate <- as.matrix(KeyCountriesData[,2:9]) #convert to matrix for sweep function
CountryPopulationMat <- as.matrix(CountryPopulation)
DataPerCapitaNoDate <- as.data.frame (sweep (KeyCountriesNoDate, 2, CountryPopulationMat, '/')) #use sweep to divide each value by national population
# attach date
Date <- KeyCountriesData$Date
KeyCountriesPerCapita <- cbind(Date, DataPerCapitaNoDate)
#convert per capita data to long form
longFormPerCap <- with(KeyCountriesPerCapita,
                data.frame(value = c(China, US, United_Kingdom, Italy, France, Germany, Spain, Iran),
                           variable = factor(rep(c("China", "US", "United_Kingdom", "Italy", "France", "Germany", "Spain", "Iran"),
                                                 each = NROW(KeyCountriesPerCapita))),
                           Date = Date))
# format date as date for plotting
longFormPerCap$Date <-as.Date(longFormPerCap$Date)
# plot cases per capita over time
pdf("Cases_Per_Cap.pdf")
Cases_Per_Cap <- ggplot(longFormPerCap, aes(Date, value, colour = variable, group=variable))+
  geom_line()+
  geom_point(size=0.75)+
  labs(x= "Date", title= "COVID-19 Cases Per Capita", y="Cases Per Million People", colour= "Countries")+
  theme (axis.text.x= element_text(angle=90))+
  scale_x_date(date_breaks = "weeks", date_labels = "%m-%d")
print(Cases_Per_Cap)
dev.off()

# delete longFormPerCapita rows with zeros
LongFormNoZed <- subset(longFormPerCap, value!=0, select= c(value, variable))
LongFormNoZed <- LongFormNoZed[order(LongFormNoZed$variable),] #alphabetize by country name for applying count
lengthcount <- summarise(group_by(LongFormNoZed, variable),length(variable)) #count number of nonzero values for each country
# pre-allocate count vector
DayNum <- rep(0, nrow(LongFormNoZed))
# write count sequences
for (ii in 1:nrow(lengthcount)) {
  if(DayNum[ii]!=0) {
    DayNum <- append(DayNum, (seq(1:lengthcount$`length(variable)`[ii])))
  } else {
    DayNum <- seq(1:lengthcount$`length(variable)`[ii])
  }
}
# bind count to non-zero dataframe
LongFormNoZed <- cbind(DayNum, LongFormNoZed)
# plot normalized per cap data
pdf("Norm_Cases_Per_Cap.pdf")
Norm_Cases_Per_Cap <- ggplot(LongFormNoZed, aes(DayNum, value, colour = variable, group=variable))+
  geom_line()+
  geom_point(size=0.75)+
  labs(x= "Days Since First Case", title= "Normalized Cases Per Capita", y="Cases Per Million People", colour= "Countries")
print(Norm_Cases_Per_Cap)
dev.off()
 
