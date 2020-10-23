##install.packages("devtools")

#library(devtools)
#install_github('arilamstein/choroplethrZip')

library(choroplethrZip)

library(choroplethr)
library(choroplethrZip)

data(df_pop_zip) 

data(df_pop_zip)

plot.zip <- zip_choropleth(df_pop_zip,
               state_zoom = "new jersey",
               title      = "Data New Jersey State ZCTA Population Estimates",
               legend     = "Population", 
               num_colors = 10
               )

plot.zip + scale_fill_brewer(palette="Set1")
plot.zip + scale_fill_brewer(palette="Greens")
plot.zip + scale_fill_brewer(palette="Blues")
plot.zip + scale_fill_brewer(palette="Reds")