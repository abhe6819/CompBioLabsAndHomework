# Propagation and Infection Rate of COVID-19
## Biological Question
Have some of the countries with the most COVID-19 cases had the highest rate of propagation of COVID-19?
## Introduction
This project used publicly available data from the John's Hopkins data repository of COVID-19 statistics to analyze the rate of propagation of the novel coronavirus.  There are many graphics available that show the number of cases of novel coronavirus in different.  This analysis  aims to analyze the same data in a "per capita" manner that allows the reader to visualize the number of cases in a country, proportional to the population of the country.  This will better describe the rate at which COVID-19 has spread in different locations across the globe.
## Methods
### Data Source
The data used in this analysis is from the John's Hopkins data repository of COVID-19 statistics.  Specifically, this project used the _key-countries-pivoted_ dataset.

This data was produced by collecting the reported cases of coronavirus from various upstream databases.  The daily case numbers for eight "key" countries in the COVID-19 pandemic were collected.  The data was the consolidated into one data frame with a normalized time frame.

**Format**: csv file (dataframe in R)
**Size**: 83 lines, 3.79 KB
**Inconsistencies**: Data starts from 0 in all countries except China.
**Biological Significance**:  the data represents the number of confirmed cases of COVID-19 each day (starting on 1-22-20) in eight countries (China, US, UK, Italy, France, Germany, Spain, and Iran)
