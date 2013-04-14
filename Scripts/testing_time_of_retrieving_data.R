time_internet <- system.time({
  con <- url("http://tofesi.mimuw.edu.pl/~cogito/smarterpoland/Diagnoza2011/diagnozaOsoby2011.RData")
  load(con)
})

time_downloaded <- system.time(read.csv2("Data/time_of_downloading_over_the_internet.csv"))

times <- cbind(time_internet[3], time_downloaded[3])
colnames(times) <- c("Downloading time", "Reading from file time") 

write.csv2(times, "Data/time_of_downloading_over_the_internet.csv", row.names = FALSE)
