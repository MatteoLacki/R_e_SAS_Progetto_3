#source("./Scripts/setting_up_libraries.R")            # TO DOWNLOAD libraries
#source("./Scripts/data_generation_and_description.R") #  Do download data in work space

attach(dane)                                           # to call the collumnes 
#colnames(dane)


old_distance <- 
  xyplot(
        Time_to_office~Distance_to_office, 
        data=dane,
        type = c("p", "r"),
        xlab="Distance to office",
        ylab="Time to office",
  )

  # ns(x,3) creates cubic splines with 3 degrees of freedom.
new_distance <- ggplot(
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
###################################################PRUSSIA
attach(prussian_partition_data)

distance_prussia <- ggplot(
                    prussian_partition_data,
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
#print(distance_prussia)

detach(prussian_partition_data)
###################################################RUSSIA
attach(russian_partition_data)

distance_russia <- ggplot(
                        russian_partition_data,
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

#print(distance_russia)

detach(russian_partition_data)
###################################################