dane <- read.csv2("Data/prepared_data.csv")
comparing_times <- read.csv2("Data/time_of_downloading_over_the_internet.csv")


# C'è un nome inglese per Województwo :)
# Non avremo piu bisogno di nomi dei dati in tabella originale. Per questo cambiamoli.
variables_of_interest <- c( "Voivodship",
                            "Settlement class", 
                            "Gender",
                            "Age in 2007", 
                            "Sattisfaction",
                            "English Skills",
                            "Salary",
                            "Smoking", 
                            "Time to office",
                            "Office distance"
)

colnames(dane) <- variables_of_interest

# Tiziana, inserisci qua i dettagli per favore.
variables_description <- c( "About Voivodship",
                            "About Settlement class", 
                            "About Gender",
                            "About Age in 2007", 
                            "About Sattisfaction",
                            "About English Skills",
                            "About Salary",
                            "About Smoking", 
                            "About Time to office",
                            "About Office distance"
)

variables_desciption_table <- cbind(variables_of_interest, variables_description)
colnames(variables_desciption_table) <- c("Variable name", "Variable description" )
# Don't need it? Frow it away. 
# That's what my mom used to say.

rm(variables_description)