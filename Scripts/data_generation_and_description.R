dane <- read.csv2("Data/prepared_data.csv")
dane <- na.omit(dane)


comparing_times <- read.csv2("Data/time_of_downloading_over_the_internet.csv")


# C'è un nome inglese per Województwo :)
# Non avremo piu bisogno di nomi dei dati in tabella originale. Per questo cambiamoli.
variables_of_interest <- c( "Voivodship",
                            "Settlement_class", 
                            "Gender",
                            "Age_in_2007", 
                            "Satisfaction",
                            "English_Skills",
                            "Salary",
                            "Smoking", 
                            "Time_to_office",
                            "Distance_to_office"
)


colnames(dane) <- variables_of_interest

  # Here the data levels will be translated into English and ordered if a natural ordering exists. 
#####################################################################################################################################
  
  levels(dane$Settlement_class) <- c("[100,200)", "[200,500)","[20,100)","more than 500", "less than 20", "village")

  dane$Settlement_class <- factor(
                            dane$Settlement_class,
                            levels= c("village",
                                      "less than 20",
                                      "[20,100)",
                                      "[100,200)", 
                                      "[200,500)",
                                      "more than 500"
                                      ),
                            ordered=TRUE
                            )
#####################################################################################################################################

  levels(dane$Gender) <- c("woman", "man")
  
#####################################################################################################################################

  levels(dane$Satisfaction) <- c("Ordinary", "Quite good", "Unhappy", "Not so good", "Terrible" ,"Successful", "Wonderful" )  

  dane$Satisfaction <- factor(
    dane$Satisfaction, 
    levels=   c("Terrible", 
                "Unhappy",
                "Not so good",
                "Ordinary",
                "Successful",
                "Quite good",
                "Wonderful"
                ),
    ordered=TRUE
  )


#####################################################################################################################################

  levels(dane$English_Skills) <- c("Active use", "Ignorant", "Passive use")
  
  dane$English_Skills <- factor(
    dane$English_Skills, 
    levels=   c("Ignorant", 
                "Passive use",
                "Active use"
    ),
    ordered=TRUE
  )

#####################################################################################################################################

  levels(dane$Smoking) <- c("No", "Yes")

  # All other variables have numeric inputs and are automatically ordered. 
#####################################################################################################################################

  # Description on http://tofesi.mimuw.edu.pl/~cogito/smarterpoland/Diagnoza2011/diagnozaOsoby2011Opis.txt
variables_description <- c( "About Voivodship",
                            "About Settlement class", 
                            "About Gender",
                            "About Age in 2007", 
                            "About Satisfaction",
                            "About English Skills",
                            "About Salary",
                            "About Smoking", 
                            "About Time to office",
                            "About Distance to office"
)


variables_desciption_table <- cbind(variables_of_interest, variables_description)
colnames(variables_desciption_table) <- c("Variable name", "Variable description" )
# Don't need it? Frow it away. 
# That's what my mom used to say.

rm(variables_description)