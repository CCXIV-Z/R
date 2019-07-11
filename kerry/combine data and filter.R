setwd('C:/Users/Admin/Desktop/duty/csv')
filenames <- list.files(full.names = TRUE)
All <- lapply(filenames,function(i){
  read.csv(i, header = FALSE, skip=0)
})
spn <- do.call(rbind.data.frame, All)

names(spn) <- c("reference_No","Declaration No.","Flight","Flight_Date","MAWB","bill of landing","HAWB","No. on Declaration","cat","content","content2","HSCODE","tariff","QTY","QTY Unit","package","package unit","WEIGHT","WEIGHT UNIT","Unit Price","FOB","CIF","currency","duty rate","Exchange rate","duty","vat","status")

spn$reference_No <- substr(spn$reference_No, 1, 4)

library(dplyr)

spn <- spn%>%select_all() %>% filter(reference_No == "DOYU")
spn$reference_No <- substr(spn$HAWB,1,2)

lazada08 <- spn%>%select_all() %>% filter(reference_No == "MT")
lazada11 <- spn%>%select_all() %>% filter(reference_No == "XB")
sun <- spn%>%select_all()%>%filter(reference_No == "SH")
times <- spn%>%select_all()%>%filter(reference_No != "MT" & reference_No != "XB" & reference_No != "SH")



#times <- spn%>%select_all()%>%filter(reference_No %in% c("SZ","TE","TH","XM","CH","CU","ST"))
#unknow <- spn%>%select_all()%>%filter(reference_No != "MT" & reference_No != "XB" & reference_No != "SH" & reference_No != "SZ" & reference_No != "TE" & reference_No != "TH" & reference_No != "XM" & reference_No != "CH" & reference_No != "Cu" & reference_No != "ST")


setwd('C:/Users/Admin/Desktop/duty/csvfilter')

write.csv(lazada08,"lazada08.csv")
write.csv(lazada11,"lazada11.csv")
write.csv(sun,"sun.csv")
write.csv(times,"times.csv")
write.csv(unknow,"unknow.csv")



setwd('C:/Users/Admin/Desktop/duty/csvfliter by year')

spn$V4 <- as.Date(spn$V4, format = "%Y-%m-%d") 
get.rows   <- spn$V4 >= as.Date("2014-01-01") & spn$V4 <= as.Date("2014-12-31")
y2014 <- spn[get.rows,]

spn$V4 <- as.Date(spn$V4, format = "%Y-%m-%d") 
get.rows   <- spn$V4 >= as.Date("2015-01-01") & spn$V4 <= as.Date("2015-12-31")
y2015 <- spn[get.rows,]

spn$V4 <- as.Date(spn$V4, format = "%Y-%m-%d") 
get.rows   <- spn$V4 >= as.Date("2016-01-01") & spn$V4 <= as.Date("2016-12-31")
y2016 <- spn[get.rows,]

spn$V4 <- as.Date(spn$V4, format = "%Y-%m-%d") 
get.rows   <- spn$V4 >= as.Date("2017-01-01") & spn$V4 <= as.Date("2017-12-31")
y2017 <- spn[get.rows,]

spn$V4 <- as.Date(spn$V4, format = "%Y-%m-%d") 
get.rows   <- spn$V4 >= as.Date("2018-01-01") & spn$V4 <= as.Date("2018-12-31")
y2018 <- spn[get.rows,]

write.csv(y2014,"y2014.csv")
write.csv(y2015,"y2015.csv")
write.csv(y2016,"y2016.csv")
write.csv(y2017,"y2017.csv")
write.csv(y2018,"y2018.csv")

setwd('C:/Users/Admin/Desktop/duty/csvfilter by month')

spn$V4 <- as.Date(spn$V4, format = "%Y-%m-%d") 
get.rows   <- spn$V4 >= as.Date("2014-01-01") & spn$V4 <= as.Date("2014-01-31")
y201401 <- spn[get.rows,]

write.csv(y201401,"y201401.csv")

spn$V4 <- as.Date(spn$V4, format = "%Y-%m-%d") 
get.rows   <- spn$V4 >= as.Date("2014-02-01") & spn$V4 <= as.Date("2014-02-31")
y201402 <- spn[get.rows,]

write.csv(y201402,"y201402.csv")

spn$V4 <- as.Date(spn$V4, format = "%Y-%m-%d") 
get.rows   <- spn$V4 >= as.Date("2014-03-01") & spn$V4 <= as.Date("2014-03-31")
y201403 <- spn[get.rows,]

write.csv(y201403,"y201403.csv")

spn$V4 <- as.Date(spn$V4, format = "%Y-%m-%d") 
get.rows   <- spn$V4 >= as.Date("2014-04-01") & spn$V4 <= as.Date("2014-04-31")
y201404 <- spn[get.rows,]

write.csv(y201404,"y201404.csv")

spn$V4 <- as.Date(spn$V4, format = "%Y-%m-%d") 
get.rows   <- spn$V4 >= as.Date("2014-05-01") & spn$V4 <= as.Date("2014-05-31")
y201405 <- spn[get.rows,]

write.csv(y201405,"y201405.csv")

spn$V4 <- as.Date(spn$V4, format = "%Y-%m-%d") 
get.rows   <- spn$V4 >= as.Date("2014-06-01") & spn$V4 <= as.Date("2014-06-31")
y201406 <- spn[get.rows,]

write.csv(y201406,"y201406.csv")

spn$V4 <- as.Date(spn$V4, format = "%Y-%m-%d") 
get.rows   <- spn$V4 >= as.Date("2014-07-01") & spn$V4 <= as.Date("2014-07-31")
y201407 <- spn[get.rows,]

write.csv(y201407,"y201407.csv")

spn$V4 <- as.Date(spn$V4, format = "%Y-%m-%d") 
get.rows   <- spn$V4 >= as.Date("2014-08-01") & spn$V4 <= as.Date("2014-08-31")
y201408 <- spn[get.rows,]

write.csv(y201408,"y201408.csv")

spn$V4 <- as.Date(spn$V4, format = "%Y-%m-%d") 
get.rows   <- spn$V4 >= as.Date("2014-09-01") & spn$V4 <= as.Date("2014-09-31")
y201409 <- spn[get.rows,]

write.csv(y201409,"y201409.csv")

spn$V4 <- as.Date(spn$V4, format = "%Y-%m-%d") 
get.rows   <- spn$V4 >= as.Date("2014-10-01") & spn$V4 <= as.Date("2014-10-31")
y201410 <- spn[get.rows,]

write.csv(y201410,"y201410.csv")

spn$V4 <- as.Date(spn$V4, format = "%Y-%m-%d") 
get.rows   <- spn$V4 >= as.Date("2014-11-01") & spn$V4 <= as.Date("2014-11-31")
y201411 <- spn[get.rows,]

write.csv(y201411,"y201411.csv")

spn$V4 <- as.Date(spn$V4, format = "%Y-%m-%d") 
get.rows   <- spn$V4 >= as.Date("2014-12-01") & spn$V4 <= as.Date("2014-12-31")
y201412 <- spn[get.rows,]

write.csv(y201412,"y201412.csv")