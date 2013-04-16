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
        theme(legend.position="top")


Histogram_Salary_modified_old <-
  densityplot(
              ~Salary[Salary<5000], 
              data=dane,
              plot.points = FALSE,
              groups = Gender[drop=T],
              auto.key = TRUE,
              xlab="Salary",
              ylab="Density",
              )

# to draw histogram in ggplot2

Histogram_Salary_modified_new <- 
  qplot(
          Salary, 
          data=dane[Salary  < 5000,], 
          fill=Gender, 
          ylab = "Number of people", 
          geom="bar"
        ) + 
        theme(legend.position="top")


detach(dane)

#print(Histogram_Salary)


