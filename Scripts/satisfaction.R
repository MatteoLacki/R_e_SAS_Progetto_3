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
satisfaction <- 
  qplot(
    Age_in_2007, 
    data=dane, 
    xlab = "Age in 2007",
    ylab = "Number of people", 
    geom="bar",
    binwidth = 3,
    fill = ordered_Satisfaction
  ) + coord_flip() + scale_fill_brewer(palette=2, name="Satisfaction level") 


detach(dane)

#print(Histogram_Salary)

