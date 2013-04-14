load("./Data/diagnozaOsoby2011.RData")
dim(diagnozaOsoby2011)

# Prepariamo nomi delle colonne di interesse.
variables_of_interest <- c("WOJEWODZTWO", "KLASA_MIEJSOWOSCI", "PLEC","wiek2007", "dp3", "dc18", "dp72",  "dp56", "dp114", "dp115" )

dane <- diagnozaOsoby2011[,variables_of_interest]

write.csv2(dane, "Data/prepared_data.csv", row.names = FALSE)

# Dimentichiamo di dati non utilizzati. Così il computer fonzionera meglio.
# Lo fai sempre in tutti progetti. Altrimenti anche i piu pottenti computer saranno molto tristi.
rm(diagnozaOsoby2011) 
rm(dane)
