##install.packages("devtools")

#library(devtools)
#install_github('arilamstein/choroplethrZip')

library(choroplethrZip)

library(choroplethr)
library(choroplethrZip)
library(ggplot2)

data(df_pop_zip) 

plot_zip <- zip_choropleth(df_pop_zip,
               state_zoom = "new jersey",
               title      = "Data New Jersey State ZCTA Population Estimates",
               legend     = "Population", 
               num_colors = 9
               ) 
plot_zip + scale_fill_brewer(palette="Greens")

#plot.zip + scale_fill_brewer(palette="Greens")
#plot.zip + scale_fill_brewer(palette="Blues")
#plot.zip + scale_fill_brewer(palette="Reds")

#https://cengel.github.io/R-spatial/index.html#references

df1 = plot_zip$data
df1 <- df1 %>% rename("orginal_map" = "value")
df2 <- merge(df1,df_pop_zip,by="region")
df2 <- df2 %>% rename("orginal_value" = "value")

df2$value = df2$orginal_value
plot_zip$data = df2
plot_zip + scale_fill_continuous(type = "viridis", limits = c(0, 100000), oob = scales::squish)
# This is 

#histinfo<-hist(df2$orginal_value)
#histinfo



levels(df2$orginal_map)

#factor_data <- factor(df2$orginal_value)
manual_levels = seq.int(0, 100000, by = 12000) 
manual_levels = c(0,100,300,500,1000,2000,5000,8000,100000)
temp  = factor(df2$orginal_value,levels=c(manual_levels),ordered=TRUE)
temp2 = as.numeric(as.character(temp)) 


#temp3 = cut(df2$orginal_value, levels=c(manual_levels), dig.lab=4, ordered = TRUE)

df2$value = cut(df2$orginal_value, manual_levels, labels = NULL, include.lowest = FALSE, right = TRUE, dig.lab = 3)
plot_zip$data = df2
plot_zip + scale_fill_brewer(palette="Greens")


