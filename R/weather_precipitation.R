#데이터 불러오기
p17 <- read.csv("C:/R/weather/Jeju/precipitaion/2017.csv")
p18 <- read.csv("C:/R/weather/Jeju/precipitaion/2018.csv")
p19 <- read.csv("C:/R/weather/Jeju/precipitaion/2019.csv")
p20 <- read.csv("C:/R/weather/Jeju/precipitaion/2020.csv")
p21 <- read.csv("C:/R/weather/Jeju/precipitaion/2021.csv")

#5년 간의 데이터 병합
precipitaion <- rbind(p17,p18,p19,p20,p21)

#데이터 월별로 나누기
jan <- precipitaion[precipitaion$month == "1", ]
feb <- precipitaion[precipitaion$month == "2", ]
mar <- precipitaion[precipitaion$month == "3", ]
apr <- precipitaion[precipitaion$month == "4", ]
may <- precipitaion[precipitaion$month == "5", ]
jun <- precipitaion[precipitaion$month == "6", ]
jul <- precipitaion[precipitaion$month == "7", ]
aug <- precipitaion[precipitaion$month == "8", ]
sep <- precipitaion[precipitaion$month == "9", ]
oct <- precipitaion[precipitaion$month == "10", ]
nov <- precipitaion[precipitaion$month == "11", ]
dec <- precipitaion[precipitaion$month == "12", ]

#평균 파생변수 만들기 
jan <-mutate(jan, 평균 = (X01 + X02 + X03 + X04 + X05 + X06 + X07 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 + X21 + X22 + X23 + X24)/24)
janAvg <- mean(jan$평균, na.rm = TRUE)

feb <-mutate(feb, 평균 = (X01 + X02 + X03 + X04 + X05 + X06 + X07 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 + X21 + X22 + X23 + X24)/24)
febAvg <- mean(feb$평균, na.rm = TRUE)

mar <-mutate(mar, 평균 = (X01 + X02 + X03 + X04 + X05 + X06 + X07 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 + X21 + X22 + X23 + X24)/24)
marAvg <- mean(mar$평균, na.rm = TRUE)

apr <-mutate(apr, 평균 = (X01 + X02 + X03 + X04 + X05 + X06 + X07 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 + X21 + X22 + X23 + X24)/24)
aprAvg <- mean(apr$평균, na.rm = TRUE)

may <-mutate(may, 평균 = (X01 + X02 + X03 + X04 + X05 + X06 + X07 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 + X21 + X22 + X23 + X24)/24)
mayAvg <- mean(may$평균, na.rm = TRUE)

jun <-mutate(jun, 평균 = (X01 + X02 + X03 + X04 + X05 + X06 + X07 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 + X21 + X22 + X23 + X24)/24)
junAvg <- mean(jun$평균, na.rm = TRUE)

jul <-mutate(jul, 평균 = (X01 + X02 + X03 + X04 + X05 + X06 + X07 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 + X21 + X22 + X23 + X24)/24)
julAvg <- mean(jul$평균, na.rm = TRUE)

aug <-mutate(aug, 평균 = (X01 + X02 + X03 + X04 + X05 + X06 + X07 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 + X21 + X22 + X23 + X24)/24)
augAvg <- mean(aug$평균, na.rm = TRUE)

sep <-mutate(sep, 평균 = (X01 + X02 + X03 + X04 + X05 + X06 + X07 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 + X21 + X22 + X23 + X24)/24)
sepAvg <- mean(sep$평균, na.rm = TRUE)

oct <-mutate(oct, 평균 = (X01 + X02 + X03 + X04 + X05 + X06 + X07 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 + X21 + X22 + X23 + X24)/24)
octAvg <- mean(oct$평균, na.rm = TRUE)

nov <-mutate(nov, 평균 = (X01 + X02 + X03 + X04 + X05 + X06 + X07 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 + X21 + X22 + X23 + X24)/24)
novAvg <- mean(nov$평균, na.rm = TRUE)

dec <-mutate(dec, 평균 = (X01 + X02 + X03 + X04 + X05 + X06 + X07 + X08 + X09 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 + X21 + X22 + X23 + X24)/24)
decAvg <- mean(dec$평균,na.rm=TRUE)

a <- c(janAvg, febAvg, marAvg, aprAvg, mayAvg, junAvg, julAvg, augAvg, sepAvg, octAvg, novAvg, decAvg)
barplot(a, names = c("1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"), main = "월별 강수량 평균", ylim = c(0, 10))