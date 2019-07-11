setwd('C:/Users/Admin/Desktop/duty/rawdata/times')

times$Flight_Date <- as.Date(times$Flight_Date, format = "%Y-%m-%d") 
get.rows   <- times$Flight_Date >= as.Date("2018-01-01") & times$Flight_Date <= as.Date("2018-01-31")
y201801 <- times[get.rows,]

write.csv(y201801,"y201801.csv")

times$Flight_Date <- as.Date(times$Flight_Date, format = "%Y-%m-%d") 
get.rows   <- times$Flight_Date >= as.Date("2018-02-01") & times$Flight_Date <= as.Date("2018-02-28")
y201802 <- times[get.rows,]

write.csv(y201802,"y201802.csv")

times$Flight_Date <- as.Date(times$Flight_Date, format = "%Y-%m-%d") 
get.rows   <- times$Flight_Date >= as.Date("2018-03-01") & times$Flight_Date <= as.Date("2018-03-31")
y201803 <- times[get.rows,]

write.csv(y201803,"y201803.csv")

times$Flight_Date <- as.Date(times$Flight_Date, format = "%Y-%m-%d") 
get.rows   <- times$Flight_Date >= as.Date("2018-04-01") & times$Flight_Date <= as.Date("2018-04-30")
y201804 <- times[get.rows,]

write.csv(y201804,"y201804.csv")

times$Flight_Date <- as.Date(times$Flight_Date, format = "%Y-%m-%d") 
get.rows   <- times$Flight_Date >= as.Date("2018-05-01") & times$Flight_Date <= as.Date("2018-05-31")
y201805 <- times[get.rows,]

write.csv(y201805,"y201805.csv")

times$Flight_Date <- as.Date(times$Flight_Date, format = "%Y-%m-%d") 
get.rows   <- times$Flight_Date >= as.Date("2018-06-01") & times$Flight_Date <= as.Date("2018-06-30")
y201806 <- times[get.rows,]

write.csv(y201806,"y201806.csv")

times$Flight_Date <- as.Date(times$Flight_Date, format = "%Y-%m-%d") 
get.rows   <- times$Flight_Date >= as.Date("2018-07-01") & times$Flight_Date <= as.Date("2018-07-31")
y201807 <- times[get.rows,]

write.csv(y201807,"y201807.csv")

times$Flight_Date <- as.Date(times$Flight_Date, format = "%Y-%m-%d") 
get.rows   <- times$Flight_Date >= as.Date("2018-08-01") & times$Flight_Date <= as.Date("2018-08-31")
y201808 <- times[get.rows,]

write.csv(y201808,"y201808.csv")

times$Flight_Date <- as.Date(times$Flight_Date, format = "%Y-%m-%d") 
get.rows   <- times$Flight_Date >= as.Date("2018-09-01") & times$Flight_Date <= as.Date("2018-09-30")
y201809 <- times[get.rows,]

write.csv(y201809,"y201809.csv")

times$Flight_Date <- as.Date(times$Flight_Date, format = "%Y-%m-%d") 
get.rows   <- times$Flight_Date >= as.Date("2018-10-01") & times$Flight_Date <= as.Date("2018-10-31")
y201810 <- times[get.rows,]

write.csv(y201810,"y201810.csv")

times$Flight_Date <- as.Date(times$Flight_Date, format = "%Y-%m-%d") 
get.rows   <- times$Flight_Date >= as.Date("2018-11-01") & times$Flight_Date <= as.Date("2018-11-30")
y201811 <- times[get.rows,]

write.csv(y201811,"y201811.csv")

times$Flight_Date <- as.Date(times$Flight_Date, format = "%Y-%m-%d") 
get.rows   <- times$Flight_Date >= as.Date("2018-12-01") & times$Flight_Date <= as.Date("2018-12-31")
y201812 <- times[get.rows,]

write.csv(y201812,"y201812.csv")

