#source("./Scripts/setting_up_libraries.R")            # TO DOWNLOAD libraries
#source("./Scripts/data_generation_and_description.R") #  Do download data in work space

attach(dane)                                           # to call the collumnes 
colnames(dane)

distance <- ggplot(dane, aes(Distance_to_office ,Time_to_office)) + geom_point(colour = factor(Gender), size = 3)
distance <- distance + stat_quantile()  


detach(dane)

#print(Histogram_Salary)