#데이터 불러오기
s17 <- read.csv("C:/R/weather/Jeju/new snow/2017.csv")
s18 <- read.csv("C:/R/weather/Jeju/new snow/2018.csv")
s19 <- read.csv("C:/R/weather/Jeju/new snow/2019.csv")
s20 <- read.csv("C:/R/weather/Jeju/new snow/2020.csv")
s21 <- read.csv("C:/R/weather/Jeju/new snow/2021.csv")

#5년 간의 데이터 병합
snow <- rbind(s17,s18,s19,s20,s21)

#데이터 월별로 나누기
jan <- snow[snow$month == "1", ]
feb <- snow[snow$month == "2", ]
mar <- snow[snow$month == "3", ]
apr <- snow[snow$month == "4", ]
may <- snow[snow$month == "5", ]
jun <- snow[snow$month == "6", ]
jul <- snow[snow$month == "7", ]
aug <- snow[snow$month == "8", ]
sep <- snow[snow$month == "9", ]
oct <- snow[snow$month == "10", ]
nov <- snow[snow$month == "11", ]
dec <- snow[snow$month == "12", ]

#평균 파생변수 만들기 
jan <-mutate(jan, 평균 = (X01 + X02 + X03 + X04 + X05 + X06 + X07 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 + X21 + X22 + X23 + X24)/24)
janAvg <- mean(jan$평균)

feb <-mutate(feb, 평균 = (X01 + X02 + X03 + X04 + X05 + X06 + X07 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 + X21 + X22 + X23 + X24)/24)
febAvg <- mean(feb$평균)

mar <-mutate(mar, 평균 = (X01 + X02 + X03 + X04 + X05 + X06 + X07 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 + X21 + X22 + X23 + X24)/24)
marAvg <- mean(mar$평균)

apr <-mutate(apr, 평균 = (X01 + X02 + X03 + X04 + X05 + X06 + X07 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 + X21 + X22 + X23 + X24)/24)
aprAvg <- mean(apr$평균)

may <-mutate(may, 평균 = (X01 + X02 + X03 + X04 + X05 + X06 + X07 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 + X21 + X22 + X23 + X24)/24)
mayAvg <- mean(may$평균)

jun <-mutate(jun, 평균 = (X01 + X02 + X03 + X04 + X05 + X06 + X07 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 + X21 + X22 + X23 + X24)/24)
junAvg <- mean(jun$평균)

jul <-mutate(jul, 평균 = (X01 + X02 + X03 + X04 + X05 + X06 + X07 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 + X21 + X22 + X23 + X24)/24)
julAvg <- mean(jul$평균)

aug <-mutate(aug, 평균 = (X01 + X02 + X03 + X04 + X05 + X06 + X07 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 + X21 + X22 + X23 + X24)/24)
augAvg <- mean(aug$평균)

sep <-mutate(sep, 평균 = (X01 + X02 + X03 + X04 + X05 + X06 + X07 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 + X21 + X22 + X23 + X24)/24)
sepAvg <- mean(sep$평균)

oct <-mutate(oct, 평균 = (X01 + X02 + X03 + X04 + X05 + X06 + X07 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 + X21 + X22 + X23 + X24)/24)
octAvg <- mean(oct$평균)

nov <-mutate(nov, 평균 = (X01 + X02 + X03 + X04 + X05 + X06 + X07 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 + X21 + X22 + X23 + X24)/24)
novAvg <- mean(nov$평균)

dec <-mutate(dec, 평균 = (X01 + X02 + X03 + X04 + X05 + X06 + X07 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 + X21 + X22 + X23 + X24)/24)
decAvg <- mean(dec$평균)

a <- c(janAvg, febAvg, marAvg, aprAvg, mayAvg, junAvg, julAvg, augAvg, sepAvg, octAvg, novAvg, decAvg)
barplot(a, names = c("1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"), main = "월별 신적설 평균")

