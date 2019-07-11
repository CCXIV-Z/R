setwd('E:/Desktop/zia/report/spn')
filenames <- list.files(full.names = TRUE)
All <- lapply(filenames,function(i){
  read.csv(i, header = FALSE, skip=0)
})
spn <- do.call(rbind.data.frame, All)

names(spn)[7]="HAWB"

setwd('E:/Desktop/zia/report')
raw <- read.csv("raw.csv",header = TRUE, skip=0)
names(raw)[2]="HAWB"

library(dplyr)
test <- left_join(raw,spn,by='HAWB')

com <- c(test[12],test[4:5],test[15],test[9:10])
write.csv(com,"com.csv")
