# Propagation and Infection Rate of COVID-19
## Introduction
For this project I will be using publicly available data from the John's Hopkins data repository of COVID-19 statistics to analyze the rate of propagation of the novel coronavirus.  Specifically, this project will use the _key-countries-pivoted_ dataset to determine the rate at which coronavirus is spreading throughout the world.  My guiding question will be: how can I determine and display which countries have had the highest rate of propagation of COVID-19?
## Data Summary
##### Data original purpose
This data has been used for various purposes to analyze how COVID-19 has been spreading.  As such, the this particular data was not collected as part of a study.  Rather, it has been made publicly available to be used by those who want to use it.  It was collected in the John's Hopkins repository.
##### Methodology
This data was produced by collecting the reported cases of coronavirus from various databases (see **References**), consolidating the data, and normalizing the time frame.
##### Type of Data
**Format**: csv file (dataframe in R)
**Size**: 83 lines, 3.79 KB
**Inconsistencies**: Data starts from 0 in all countries except China.
**Biological Significance**:  the data represents the number of confirmed cases of COVID-19 each day (starting on 1-22-20) in eight countries (China, US, UK, Italy, France, Germany, Spain, and Iran)
## Analysis
In order to achieve my goal,  I will have to calibrate the data for each country such that each country has the same start time (each country has their first confirmed case at the same time).  I may have to supplement my data with data from another dataset for China (see **inconsistencies**).  I will then sum the number of cases per day to determine the total number of cases in the 8 countries.  The cases will be converted to number of cases per day per million people in each country in order to better determine the spread proportionally to the size of the country.  This will allow me to normalize the data such that rate of spread can be determined.  I will then graph the data as a line graph.


## References
Data via:
- [https://github.com/datasets/covid-19](https://github.com/datasets/covid-19)

Upstream dataset sources:

-   World Health Organization (WHO):  [https://www.who.int/](https://www.who.int/)
-   [DXY.cn](http://dxy.cn/). Pneumonia. 2020.  [http://3g.dxy.cn/newh5/view/pneumonia](http://3g.dxy.cn/newh5/view/pneumonia)
-   BNO News:  [https://bnonews.com/index.php/2020/02/the-latest-coronavirus-cases/](https://bnonews.com/index.php/2020/02/the-latest-coronavirus-cases/)
-   National Health Commission of the People’s Republic of China (NHC):  [http://www.nhc.gov.cn/xcs/yqtb/list_gzbd.shtml](http://www.nhc.gov.cn/xcs/yqtb/list_gzbd.shtml)
-   China CDC (CCDC):  [http://weekly.chinacdc.cn/news/TrackingtheEpidemic.htm](http://weekly.chinacdc.cn/news/TrackingtheEpidemic.htm)
-   Hong Kong Department of Health:  [https://www.chp.gov.hk/en/features/102465.html](https://www.chp.gov.hk/en/features/102465.html)
-   Macau Government:  [https://www.ssm.gov.mo/portal/](https://www.ssm.gov.mo/portal/)
-   Taiwan CDC:  [https://sites.google.com/cdc.gov.tw/2019ncov/taiwan?authuser=0](https://sites.google.com/cdc.gov.tw/2019ncov/taiwan?authuser=0)
-   US CDC:  [https://www.cdc.gov/coronavirus/2019-ncov/index.html](https://www.cdc.gov/coronavirus/2019-ncov/index.html)
-   Government of Canada:  [https://www.canada.ca/en/public-health/services/diseases/coronavirus.html](https://www.canada.ca/en/public-health/services/diseases/coronavirus.html)
-   Australia Government Department of Health:  [https://www.health.gov.au/news/coronavirus-update-at-a-glance](https://www.health.gov.au/news/coronavirus-update-at-a-glance)
-   European Centre for Disease Prevention and Control (ECDC):  [https://www.ecdc.europa.eu/en/geographical-distribution-2019-ncov-cases](https://www.ecdc.europa.eu/en/geographical-distribution-2019-ncov-cases)
-   Ministry of Health Singapore (MOH):  [https://www.moh.gov.sg/covid-19](https://www.moh.gov.sg/covid-19)
-   Italy Ministry of Health:  [http://www.salute.gov.it/nuovocoronavirus](http://www.salute.gov.it/nuovocoronavirus)

Additional background information via [CSSE blog](https://systems.jhu.edu/research/public-health/ncov/), and the [Lancet paper](https://www.thelancet.com/journals/laninf/article/PIIS1473-3099(20)30120-1/fulltext) ([DOI](https://doi.org/10.1016/S1473-3099(20)30120-1))

