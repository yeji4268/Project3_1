#데이터 불러오기
cancel17 <- read.csv("C:/R/data/공항별_결항/결항_17.csv")
cancel18 <- read.csv("C:/R/data/공항별_결항/결항_18.csv")
cancel19 <- read.csv("C:/R/data/공항별_결항/결항_19.csv")
cancel20 <- read.csv("C:/R/data/공항별_결항/결항_20.csv")
cancel21 <- read.csv("C:/R/data/공항별_결항/결항_21.csv")

#필요한 데이터 담기
c17 <- cancel17[cancel17$출.도착 == "계", ]
c18 <- cancel18[cancel18$출.도착 == "계", ]
c19 <- cancel19[cancel19$출.도착 == "계", ]
c20 <- cancel20[cancel20$출.도착 == "계", ]
c21 <- cancel21[cancel21$출.도착 == "계", ]

#데이터 병합
cancel <- rbind(c17, c18, c19, c20, c21)

#월별 평균 결항 수 계싼
jan <- cancel[cancel$월 == "1월",]
janAvg <- mean(jan$계)
feb <- cancel[cancel$월 == "2월",]
febAvg <- mean(feb$계)
mar <- cancel[cancel$월 == "3월",]
marAvg <- mean(mar$계)
apr <- cancel[cancel$월 == "4월",]
aprAvg <- mean(apr$계)
may <- cancel[cancel$월 == "5월",]
mayAvg <- mean(may$계)
jun <- cancel[cancel$월 == "6월",]
junAvg <- mean(jun$계)
jul <- cancel[cancel$월 == "7월",]
julAvg <- mean(jul$계)
aug <- cancel[cancel$월 == "8월",]
augAvg <- mean(aug$계)
sep <- cancel[cancel$월 == "9월",]
sepAvg <- mean(sep$계)
oct <- cancel[cancel$월 == "10월",]
octAvg <- mean(oct$계)
nov <- cancel[cancel$월 == "11월",]
novAvg <- mean(nov$계)
dec <- cancel[cancel$월 == "12월",]
decAvg <- mean(dec$계)

a <- c(janAvg, febAvg, marAvg, aprAvg, mayAvg, junAvg, julAvg, augAvg, sepAvg, octAvg, novAvg, decAvg)
barplot(a, names = c("1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"), cex.names= 0.7, main = "월별 평균 결항수")
