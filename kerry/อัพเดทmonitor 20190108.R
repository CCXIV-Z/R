setwd('D:/data')
filenames <- list.files(full.names = TRUE)
All <- lapply(filenames,function(i){
read.csv(i, header = FALSE, skip=0)
})
df <- do.call(rbind.data.frame, All)

names(df)[6]="HAWB"

setwd('Y:/R/HOLD')
temp <- read.csv("update.csv")
library(dplyr)
com <- left_join(temp,df,by = 'HAWB',copy = FALSE)

sad <- c(com[9],c(0),com[1:7],com[6:8],com[12],com[15:16],com[22:23],com[25:26],com[19],com[13],com[24])

write.csv(sad,"raw.csv")
