#source("./Scripts/setting_up_libraries.R")            # TO DOWNLOAD libraries
#source("./Scripts/data_generation_and_description.R") #  Do download data in work space

attach(dane)                                           # to call the collumnes 


Histogram_Salary<- 
  qplot(
    Salary, 
    data=dane, 
    fill=Gender, 
    ylab = "Number of people", 
    geom="bar"
  ) + 
  opts(legend.position="top")



# to draw histogram in ggplot2

Histogram_Salary_modified <- 
  qplot(
      Salary, 
      data=dane[Salary  < 5000,], 
      fill=Gender, 
      ylab = "Number of people", 
      geom="bar"
      ) + 
      opts(legend.position="top")


detach(dane)

#print(Histogram_Salary)


