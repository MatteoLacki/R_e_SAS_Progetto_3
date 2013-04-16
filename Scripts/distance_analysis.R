#source("./Scripts/setting_up_libraries.R")            # TO DOWNLOAD libraries
#source("./Scripts/data_generation_and_description.R") #  Do download data in work space

attach(dane)                                           # to call the collumnes 
#colnames(dane)


  # ns(x,3) creates cubic splines with 3 degrees of freedom.
distance <- ggplot(
                    dane,
                    aes(
                      x=Distance_to_office ,
                      y=Time_to_office,
                      colour=Gender
                      )
                  ) + 
                  geom_point(size = 3) + 
                  xlab("Distance to office") + 
                  ylab("Time to office") +
                  stat_smooth(method="lm", formula= y ~ ns(x,3), aes(fill = Gender), level=.99, alpha=.1) +
                  theme(legend.position="top") +
                  scale_colour_discrete(name = "Gender") 


detach(dane)



