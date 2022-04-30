#2017~2021 결항 데이터 가져오기
cancel17 <- read.csv("C:/R/data/공항별_결항/결항_17.csv")
cancel18 <- read.csv("C:/R/data/공항별_결항/결항_18.csv")
cancel19 <- read.csv("C:/R/data/공항별_결항/결항_19.csv")
cancel20 <- read.csv("C:/R/data/공항별_결항/결항_20.csv")
cancel21 <- read.csv("C:/R/data/공항별_결항/결항_21.csv")

#필요한 데이터 데이터 프레임으로 분류
c17 <- cancel17[cancel17$출.도착 == "계", ]
c18 <- cancel18[cancel18$출.도착 == "계", ]
c19 <- cancel19[cancel19$출.도착 == "계", ]
c20 <- cancel20[cancel20$출.도착 == "계", ]
c21 <- cancel21[cancel21$출.도착 == "계", ]

#데이터 병합
cancel <- rbind(c17, c18, c19, c20, c21)
cTot <- sum(cancel$계)
cWeather <- (sum(cancel$기상) / cTot) * 100
cConnect <- (sum(cancel$A.C접속) / cTot) * 100
cEquipment <- (sum(cancel$A.C장비) / cTot) * 100
cPassenger <- (sum(cancel$여객처리) / cTot) * 100
cComplex <- (sum(cancel$복합원인) / cTot) * 100
cEtc <- (sum(cancel$기타) / cTot) * 100

c <- data.frame(
  cancel_factor = c("기상", "A.C접속", "A.C장비", "여객처리", "복합원인", "기타"), 
  value = c(cWeather, cConnect, cEquipment, cPassenger, cComplex, cEtc)
)

ggplot(c, aes(x="", y = value, fill=cancel_factor))+ 
  geom_bar(stat = "identity")+
  theme_void() + 
  coord_polar('y', start=0) +
  geom_text(aes(label=paste0(round(value, 1), '%')),
            position = position_stack(vjust=0.5), 
            size = 3)+ 
  scale_fill_brewer(palette = "Set3")

