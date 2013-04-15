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

# Tiziana, inserisci qua i dettagli per favore.
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