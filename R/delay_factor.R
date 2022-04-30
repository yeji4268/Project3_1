#데이터 불러오기
delay17 <- read.csv("C:/R/data/공항별_지연/지연_17.csv")
delay18 <- read.csv("C:/R/data/공항별_지연/지연_18.csv")
delay19 <- read.csv("C:/R/data/공항별_지연/지연_19.csv")
delay20 <- read.csv("C:/R/data/공항별_지연/지연_20.csv")
delay21 <- read.csv("C:/R/data/공항별_지연/지연_21.csv")

#필요 데이터만 데이터 프레임에 담기
d17 <- delay17[delay17$출.도착 == "계", ]
d18 <- delay18[delay18$출.도착 == "계", ]
d19 <- delay19[delay19$출.도착 == "계", ]
d20 <- delay20[delay20$출.도착 == "계", ]
d21 <- delay21[delay21$출.도착 == "계", ]

#5년 데이터 통합
delay <- rbind(d17, d18, d19, d20, d21)

#비율 계산 
dTot <- sum(delay$계)
dWeather <- (sum(delay$기상) / dTot) * 100
dConnect <- (sum(delay$A.C접속) / dTot) * 100
dEquipment <- (sum(delay$A.C장비) / dTot) * 100
dPassenger <- (sum(delay$여객처리) / dTot) * 100
dComplex <- (sum(delay$복합원인) / dTot) * 100
dEtc <- (sum(delay$기타) / dTot) * 100

d <- data.frame(
  delay_factor = c("기상", "A.C접속", "A.C장비", "여객처리", "복합원인", "기타"), 
  value = c(dWeather, dConnect, dEquipment, dPassenger, dComplex, dEtc)
)

ggplot(d, aes(x="", y = value, fill=delay_factor))+ 
  geom_bar(stat = "identity")+
  theme_void() + 
  coord_polar('y', start=0) +
  geom_text(aes(label=paste0(round(value, 1), '%')),
            position = position_stack(vjust=0.5), 
            size = 3)+ 
  scale_fill_brewer(palette = "Set3")
