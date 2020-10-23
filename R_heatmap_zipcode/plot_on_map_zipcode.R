##install.packages("devtools")

#library(devtools)
#install_github('arilamstein/choroplethrZip')

library(choroplethrZip)

library(choroplethr)
library(choroplethrZip)

data(df_pop_zip) 

data(df_pop_zip)

zip_choropleth(df_pop_zip,
               state_zoom = "new york",
               title      = "2012 New York State ZCTA Population Estimates",
               legend     = "Population")
