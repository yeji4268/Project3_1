#2017~2021 데이터 불러오기
delay17 <- read.csv("C:/R/data/공항별_지연/지연_17.csv")
delay18 <- read.csv("C:/R/data/공항별_지연/지연_18.csv")
delay19 <- read.csv("C:/R/data/공항별_지연/지연_19.csv")
delay20 <- read.csv("C:/R/data/공항별_지연/지연_20.csv")
delay21 <- read.csv("C:/R/data/공항별_지연/지연_21.csv")

#필요한 데이터 담기
d17 <- delay17[delay17$출.도착 == "계", ]
d18 <- delay18[delay18$출.도착 == "계", ]
d19 <- delay19[delay19$출.도착 == "계", ]
d20 <- delay20[delay20$출.도착 == "계", ]
d21 <- delay21[delay21$출.도착 == "계", ]

#데이터 병합
delay<- rbind(d17, d18, d19, d20, d21)

#월별 평균 지연수 계산
jan <- delay[delay$월 == "1월",]
janAvg <- mean(jan$계)
feb <- delay[delay$월 == "2월",]
febAvg <- mean(feb$계)
mar <- delay[delay$월 == "3월",]
marAvg <- mean(mar$계)
apr <- delay[delay$월 == "4월",]
aprAvg <- mean(apr$계)
may <- delay[delay$월 == "5월",]
mayAvg <- mean(may$계)
jun <- delay[delay$월 == "6월",]
junAvg <- mean(jun$계)
jul <- delay[delay$월 == "7월",]
julAvg <- mean(jul$계)
aug <- delay[delay$월 == "8월",]
augAvg <- mean(aug$계)
sep <- delay[delay$월 == "9월",]
sepAvg <- mean(sep$계)
oct <- delay[delay$월 == "10월",]
octAvg <- mean(oct$계)
nov <- delay[delay$월 == "11월",]
novAvg <- mean(nov$계)
dec <- delay[delay$월 == "12월",]
decAvg <- mean(dec$계)

a <- c(janAvg, febAvg, marAvg, aprAvg, mayAvg, junAvg, julAvg, augAvg, sepAvg, octAvg, novAvg, decAvg)
barplot(a, names = c("1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"), cex.names= 0.7, main = "월별 평균 지연수", ylim = c(0, 2000))

