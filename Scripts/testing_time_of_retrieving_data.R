time_internet <- system.time({
  con <- url("http://tofesi.mimuw.edu.pl/~cogito/smarterpoland/Diagnoza2011/diagnozaOsoby2011.RData")
  load(con)
  which(colnames(diagnozaOsoby2011)=="WOJEWODZTWO")
  levels(diagnozaOsoby2011[,54])
  which(colnames(diagnozaOsoby2011)=="KLASA_MIEJSOWOSCI")
  levels(diagnozaOsoby2011[,53])
  which(colnames(diagnozaOsoby2011)=="PLEC")
  levels(diagnozaOsoby2011[,51])
  which(colnames(diagnozaOsoby2011)=="wiek2007") #42
  which(colnames(diagnozaOsoby2011)=="dp3") #Ocena dotychczasowego zycia
  levels(diagnozaOsoby2011[,1161])
  which(colnames(diagnozaOsoby2011)=="dc18") #Znajomosc angielskiego
  levels(diagnozaOsoby2011[,1094])
  which(colnames(diagnozaOsoby2011)=="dp72") #Zarobki z ostatnich 3 miesiecy netto
  which(colnames(diagnozaOsoby2011)=="dp56") #Czy pali papierosy
  levels(diagnozaOsoby2011[,1256])
  which(colnames(diagnozaOsoby2011)=="dp114") # czas dojazdu do pracy
  tail(diagnozaOsoby2011[,1388])
  which(colnames(diagnozaOsoby2011)=="dp115") # odleg?osc od miejca pracy
  tail(diagnozaOsoby2011[,1389])
  
  dane=na.omit(diagnozaOsoby2011[,c(54,54,53,51,42,1161,1161,1094,1304,1256,1388,1389)])
  dim(dane)
  
  
  colnames(dane)=c("woj","zabor","kl_miejscowosci","plec","wiek","zadowolenie","zadowolenie_num","ang","zarobki","papierosy","czas_doj_praca","odl_praca")
})

time_downloaded <- system.time(read.csv2("Data/time_of_downloading_over_the_internet.csv"))

times <- cbind(time_internet[3], time_downloaded[3])
colnames(times) <- c("Downloading time", "Reading from file time") 

write.csv2(times, "Data/time_of_downloading_over_the_internet.csv", row.names = FALSE)
