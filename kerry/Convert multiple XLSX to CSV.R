setwd("C:/Users/Zia/Documents/test")


library("openxlsx")
require(xlsx)
files <- list.files(pattern = '*.xls')    

y=NULL

for(i in files ) {
  x <- read.xlsx(i)
  y= rbind(y,x)
}

dt <- Sys.Date()
fn<- paste("path/",dt,".csv",sep="")
write.csv(y,fn,row.names = FALSE)

