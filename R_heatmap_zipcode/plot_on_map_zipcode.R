##install.packages("devtools")

#library(devtools)
#install_github('arilamstein/choroplethrZip')

library(dplyr)

#library(choroplethr)
library(choroplethrZip)
library(ggplot2)

data(df_pop_zip)
#df_pop_zip[nrow(df_pop_zip) + 1,] = c("07096","120000")

plot.zip <- zip_choropleth(df_pop_zip,
               state_zoom = "new jersey",
               title      = "Data New Jersey State ZCTA Population Estimates",
               legend     = "Population", 
               num_colors = 3
               )

#plot.zip + scale_fill_brewer(palette="YlOrRd")
plot.zip + scale_fill_brewer(palette="Greens")

#plot.zip + scale_fill_brewer(palette="Blues")
#plot.zip + scale_fill_brewer(palette="Reds")

#out_filepath = "/DataSimulation/"
#out_filename = "out_full_filename.csv"
#out_full_filename = paste(out_filepath,ExperimentName,out_filename,sep = "")
# Import the data and look at the first six rows
#input_data <- read.csv(file = out_full_filename, header = TRUE )

