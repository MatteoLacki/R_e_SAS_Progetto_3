#source("./Scripts/setting_up_libraries.R")            # TO DOWNLOAD libraries
#source("./Scripts/data_generation_and_description.R") #  Do download data in work space


attach(dane)                                           # to call the collumnes 


wiek_zadowolenie <- table(Satisfaction, cut(Age_in_2007,c(18,25,35,50,60,80),right=F) )

wiek_zadowoleniePROB = function(x) {
  y <- x
  for (i in 1:length(x[1,])) {
    y[,i] = x[,i]/sum(x[,i])
  }
  wiek_zadowoleniePROB <- y
}


satisfaction_old <- dotplot(
                            wiek_zadowoleniePROB(wiek_zadowolenie),
                            type = "o",
                            auto.key = list(points = FALSE, lines = TRUE, space = "right"),
                            xlab="Probability",
                            ylab="Satisfaction"
                            )





satisfaction_new <- 
  qplot(
    Age_in_2007, 
    data=dane, 
    xlab = "Age in 2007",
    ylab = "Number of people", 
    geom="bar",
    binwidth = 3,
    fill = Satisfaction
  ) + 
  coord_flip() + 
  scale_fill_brewer(palette=2, name="Satisfaction level") +
  ylim(0, 900)

satisfaction_new

detach(dane)

