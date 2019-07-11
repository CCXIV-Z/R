setwd('C:/Users/Admin/Desktop/zia/data')
filenames <- list.files(full.names = TRUE)
All <- lapply(filenames,function(i){
read.csv(i, header = FALSE, skip=0)
})
df <- do.call(rbind.data.frame, All)

names(df)[6]="HAWB"

setwd('C:/Users/Admin/Desktop/zia')
temp <- read.csv("book2.csv")
library(dplyr)
com1 <- left_join(temp,df,by = 'HAWB',copy = FALSE)

library(readr)

time <- read_csv("times raw data.csv")
names(time)[2]="HAWB"

com <- left_join(com1,time,by = 'HAWB',copy = FALSE)

sad <- c(com[9],c(0),com[1:4],com[6:8],com[12],com[15:16],com[22:23],com[25:26],com[19],com[13],com[24],com[36])





write.csv(sad,"raw.csv")
