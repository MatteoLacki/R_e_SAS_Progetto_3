#source("./Scripts/setting_up_libraries.R")            # TO DOWNLOAD libraries
#source("./Scripts/data_generation_and_description.R") #  Do download data in work space

attach(dane)                                           # to call the collumnes 

ordered_Satisfaction <- factor(
  Satisfaction, 
  levels=   c("OKROPNE", 
              "NIESZCZESLIWE",
              "NIEZBYT UDANE",
              "ANI DOBRE, ANI ZLE",
              "UDANE",
              "DOSYC DOBRE",
              "WSPANIALE"),
  ordered=TRUE
)



probability_of_satisfaction <- function(Satisfaction){
  for (i in 1:length(satisfaction[1, ])) {
    y[, i] = ordered_Satisfaction[, i]/sum(length(Satisfaction[, i]))}
}

histogram_probability_of_satisfaction <- 
  qplot(
    Age_in_2007, 
    y=probability_of_satisfaction,
    data=dane, 
    xlab = "Age in 2007",
    ylab = "Number of people", 
    geom="bar",
    binwidth = 3,
    fill = ordered_Satisfaction
  ) + 
  coord_flip() +                                          # horizontal becomes vertical, and vertical, horizontal
  scale_fill_brewer(palette=2, name="Satisfaction level") # colored pallet in legend


detach(dane)

#print(histogram_probability_of_satisfaction)
  