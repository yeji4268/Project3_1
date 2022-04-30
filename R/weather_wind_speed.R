#데이터 불러오기
w17 <- read.csv("C:/R/weather/Jeju/wind speed/2017.csv")
w18 <- read.csv("C:/R/weather/Jeju/wind speed/2018.csv")
w19 <- read.csv("C:/R/weather/Jeju/wind speed/2019.csv")
w20 <- read.csv("C:/R/weather/Jeju/wind speed/2020.csv")
w21 <- read.csv("C:/R/weather/Jeju/wind speed/2021.csv")

#5년 간의 데이터 병합
wind <- rbind(w17,w18,w19,w20,w21)

#데이터 월별로 나누기
jan <- wind[wind$month == "1", ]
feb <- wind[wind$month == "2", ]
mar <- wind[wind$month == "3", ]
apr <- wind[wind$month == "4", ]
may <- wind[wind$month == "5", ]
jun <- wind[wind$month == "6", ]
jul <- wind[wind$month == "7", ]
aug <- wind[wind$month == "8", ]
sep <- wind[wind$month == "9", ]
oct <- wind[wind$month == "10", ]
nov <- wind[wind$month == "11", ]
dec <- wind[wind$month == "12", ]

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
barplot(a, names = c("1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"), main = "월별 풍속 평균", ylim = c(0, 10))
