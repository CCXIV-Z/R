setwd("C:/Users/KPanusnotai/Desktop/test it/d")
filenames <- list.files(full.names = TRUE)
All <- lapply(filenames,function(i){
  read.csv(i, header = TRUE, skip=0,encoding = "UTF-8")
})
df <- do.call(rbind.data.frame, All)

rownames(df) <- NULL

library("dplyr")
library("xlsx")
names(df)[1]="MAWB_no."
names(df)[2]="HAWB_no."

ss <- c(df[2],df[16:20],df[22:23],df[27:31],df[33],df[32])

df <- df %>%distinct(HAWB_no., .keep_all = TRUE)
consigment <- c(df[1:15],df[34],df[24:25],df[21],df[26])

rownames(ss) <- NULL
rownames(consigment) <- NULL

write.xlsx(consigment, file="myworkbook.xlsx",sheetName="consigment",
           col.names=TRUE, row.names=FALSE, append=FALSE)
write.xlsx(ss, file="myworkbook.xlsx", sheetName="package",
           col.names=TRUE, row.names=FALSE,append=TRUE)

# <- df %>% distinct(Shipment.Reference.No., .keep_all = TRUE)

