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
### Original Data Analysis
This data was not originally used for any study, but rather collected from upstream data sources.  The data was then normalized (ex. tidying dates and normalizing time frame).  The original authors also added metadata and other descriptors.
### Analysis in This Project
To address my guiding question, I made three main figures.  The first was just a line graph of the number of cases per day for each country.  Then, I divided the number of cases per day by the population of each country (as of 2018) (_World Development Indicators_) and plotted another line graph to display the number of cases per day per million people in each country.  This better displayed the rate of spread proportional to the size of each country.  Finally, I normalized the time frame of the per capita data by plotting the same data, but with an x-axis  that showed days since each countries first case.
## Conclusion
From my analysis, I was able to conclude that, while the United States has the highest number of cases, Spain has the most cases per capita (as of 4/29/20).  China has the lowest growth rate in, both, total cases and cases per capita. 
![Fig. 1](https://lh3.googleusercontent.com/o_aHEISJHFUAA8JHEHtd-jwGwLLIsNMeLEb4iaZcCyFhB8s-8FbwSNEsCHMo499aYphUbO20636FVV5RwVun5Q5DEmjXQ-YchXbCcFfxuqLO-I9P0HthcNqsVdFlAEFhXMW0HhLEfBEn_W1xzRKAWOfbq09NTT7oLuXH62qq5NMDmAYeSWYavH020nKmqU_SDw4Rup8SlPIvYfBbhVZTGyJuN8HfHNE67ieG-fVFCPaXuk8_tFEvULvCqG_W5pziL3XLjw_aSGNZ-rFuyruJuE83XZc-J8Gsn9IddsMRSGkp7Kuia5V1NDjQJPW0ZgP1aYuhc24F1figuBOvyeVj34cyO1obNxqTnhcyzNRSZrpnh20NOxeKaC0_vt9ywHanI6GGtOXZbsG_P_JKYqlzrDlsbLClpHAp-4EspH7An7b2QoJXEeB8RPziW2Z2J_IbG7J6h_ciIZjjERqrfjMKNkNyqO_p1fkQpv1bKMixIUwYKsZYg667CEY1AVnWqRBY-euccT1nGY9pvHjo5E5y9440DZsVkhCVsTBV4fIljqwvRZloUZVFagYk6VD53dDE8nCNfW5OiiJ8BOG7rzOdwbpKZMOd5MUV2UYTn4-bnJnr1HDsDrO0xGTtK73NJpGOkRTQxh2XObv8MLmVTEY7UuwisRdzU1VEhLOkDa4e1LsY6QAtBIhDaMqoLENeONY=s851-no)
![Fig. 2](https://lh3.googleusercontent.com/I_2C_kr6vCfJ9vNCugYb-82daPmFTKptu7p3DvfwVNap5IX5GTJOhB74ylqQrylrW7rO21gYU0iewjf4sDUe1ez76bluoVAlQdLvI0p-8b3DGxbMp4Y-e9Z1ZDLDq6h7KHV-V8e7UUz_z8-JanEAIV_6aAgrD_8PPI922_Apul2kc4Bt4qi9afoKMvymybHk9sWo3lT3nxUbI6fMT4W8drQEgCfQAVStAsziNi237_qvG4GatzCIzZkpPnm6uAm21HpU_F-H4GXJCpS_-16TO73qJKAJ__x9eZSD5GK9WFsoJ7JQpbr-ZBS6ssQ6iUOL-tE5QoNKx2vmpkR4RERw5UtVRTtsS97baC5TofJuxlwD1KuAP2JX5abaqWcPqI1S8iSI-m9alowe_oetSZuUnd0emBmvMn-vfqhdX5rXi6ywEIBVfP2i3O8Tip7LUUb2sieSE30XDEbqMd4jBdS2S3VG_MJcrOef79Tij8PIwSF4q0gtDIa16jlY891-3IRlce4qGCEBQVPHKYw_P3EEo8hQ8JcsdROnbvdCPiFde9XsF8aRTFgIJ6o5XwZVnE4_ahVqQikBbFb-zg4fwOA7mklwb-y9W0yb3QrliCI2Bdv-KBYNFpeJ2tixBm6NSaxCVpdn9eB-XRE8lPFeM-MyA2ygG3tgV0y2aek1gI6rtfFJmxi5xE6HRy5kd7b9GhI=s851-no)
## References
“Novel Coronavirus 2019.” _DataHub_, [https://datahub.io/core/covid-19](https://datahub.io/core/covid-19). Accessed 1 May 2020.

_World Development Indicators | The World Bank_. [http://wdi.worldbank.org/table/2.1](http://wdi.worldbank.org/table/2.1). Accessed 1 May 2020.
