j17 <- read.csv("C:/R/weather/Jeju/cloud/2017.csv")
j17 <- subset(j17, select = -X)

j18 <- read.csv("C:/R/weather/Jeju/cloud/2018.csv")
j18 <- subset(j18, select = -X)

j19 <- read.csv("C:/R/weather/Jeju/cloud/2019.csv")
j19 <- subset(j19, select = -X)

j20 <- read.csv("C:/R/weather/Jeju/cloud/2020.csv")
j20 <- subset(j20, select = -X)

j21 <- read.csv("C:/R/weather/Jeju/cloud/2021.csv")
j21 <- subset(j21, select = -X)

jan17 <- j17[j17$month == '1', ]
jan18 <- j18[j18$month == '1', ]
jan19 <- j19[j19$month == '1', ]
jan20 <- j20[j20$month == '1', ]
jan21 <- 