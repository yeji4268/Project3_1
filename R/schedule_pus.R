# 데이터 불러오기
#17
pus17_1 <- read.csv("C:/R/schedule/2017/김해/2017_1.csv")
pus17_2 <- read.csv("C:/R/schedule/2017/김해/2017_2.csv")
pus17_3 <- read.csv("C:/R/schedule/2017/김해/2017_3.csv")
pus17_4 <- read.csv("C:/R/schedule/2017/김해/2017_4.csv")
pus17_5 <- read.csv("C:/R/schedule/2017/김해/2017_5.csv")
pus17_6 <- read.csv("C:/R/schedule/2017/김해/2017_6.csv")
pus17_7 <- read.csv("C:/R/schedule/2017/김해/2017_7.csv")
pus17_8 <- read.csv("C:/R/schedule/2017/김해/2017_8.csv")
pus17_9 <- read.csv("C:/R/schedule/2017/김해/2017_9.csv")
pus17_10 <- read.csv("C:/R/schedule/2017/김해/2017_10.csv")
pus17_11 <- read.csv("C:/R/schedule/2017/김해/2017_11.csv")
pus17_12 <- read.csv("C:/R/schedule/2017/김해/2017_12.csv")


#18
pus18_1 <- read.csv("C:/R/schedule/2018/김해/2018_1.csv")
pus18_2 <- read.csv("C:/R/schedule/2018/김해/2018_2.csv")
pus18_3 <- read.csv("C:/R/schedule/2018/김해/2018_3.csv")
pus18_4 <- read.csv("C:/R/schedule/2018/김해/2018_4.csv")
pus18_5 <- read.csv("C:/R/schedule/2018/김해/2018_5.csv")
pus18_6 <- read.csv("C:/R/schedule/2018/김해/2018_6.csv")
pus18_7 <- read.csv("C:/R/schedule/2018/김해/2018_7.csv")
pus18_8 <- read.csv("C:/R/schedule/2018/김해/2018_8.csv")
pus18_9 <- read.csv("C:/R/schedule/2018/김해/2018_9.csv")
pus18_10 <- read.csv("C:/R/schedule/2018/김해/2018_10.csv")
pus18_11 <- read.csv("C:/R/schedule/2018/김해/2018_11.csv")
pus18_12 <- read.csv("C:/R/schedule/2018/김해/2018_12.csv")

#19
pus19_1 <- read.csv("C:/R/schedule/2019/김해/2019_1.csv")
pus19_2 <- read.csv("C:/R/schedule/2019/김해/2019_2.csv")
pus19_3 <- read.csv("C:/R/schedule/2019/김해/2019_3.csv")
pus19_4 <- read.csv("C:/R/schedule/2019/김해/2019_4.csv")
pus19_5 <- read.csv("C:/R/schedule/2019/김해/2019_5.csv")
pus19_6 <- read.csv("C:/R/schedule/2019/김해/2019_6.csv")
pus19_7 <- read.csv("C:/R/schedule/2019/김해/2019_7.csv")
pus19_8 <- read.csv("C:/R/schedule/2019/김해/2019_8.csv")
pus19_9 <- read.csv("C:/R/schedule/2019/김해/2019_9.csv")
pus19_10 <- read.csv("C:/R/schedule/2019/김해/2019_10.csv")
pus19_11 <- read.csv("C:/R/schedule/2019/김해/2019_11.csv")
pus19_12 <- read.csv("C:/R/schedule/2019/김해/2019_12.csv")

#20
pus20_1 <- read.csv("C:/R/schedule/2020/김해/2020_1.csv")
pus20_2 <- read.csv("C:/R/schedule/2020/김해/2020_2.csv")
pus20_3 <- read.csv("C:/R/schedule/2020/김해/2020_3.csv")
pus20_4 <- read.csv("C:/R/schedule/2020/김해/2020_4.csv")
pus20_5 <- read.csv("C:/R/schedule/2020/김해/2020_5.csv")
pus20_6 <- read.csv("C:/R/schedule/2020/김해/2020_6.csv")
pus20_7 <- read.csv("C:/R/schedule/2020/김해/2020_7.csv")
pus20_8 <- read.csv("C:/R/schedule/2020/김해/2020_8.csv")
pus20_9 <- read.csv("C:/R/schedule/2020/김해/2020_9.csv")
pus20_10 <- read.csv("C:/R/schedule/2020/김해/2020_10.csv")
pus20_11 <- read.csv("C:/R/schedule/2020/김해/2020_11.csv")
pus20_12 <- read.csv("C:/R/schedule/2020/김해/2020_12.csv")

#21
pus21_1 <- read.csv("C:/R/schedule/2021/김해/2021_1.csv")
pus21_2 <- read.csv("C:/R/schedule/2021/김해/2021_2.csv")
pus21_3 <- read.csv("C:/R/schedule/2021/김해/2021_3.csv")
pus21_4 <- read.csv("C:/R/schedule/2021/김해/2021_4.csv")
pus21_5 <- read.csv("C:/R/schedule/2021/김해/2021_5.csv")
pus21_6 <- read.csv("C:/R/schedule/2021/김해/2021_6.csv")
pus21_7 <- read.csv("C:/R/schedule/2021/김해/2021_7.csv")
pus21_8 <- read.csv("C:/R/schedule/2021/김해/2021_8.csv")
pus21_9 <- read.csv("C:/R/schedule/2021/김해/2021_9.csv")
pus21_10 <- read.csv("C:/R/schedule/2021/김해/2021_10.csv")
pus21_11 <- read.csv("C:/R/schedule/2021/김해/2021_11.csv")
pus21_12 <- read.csv("C:/R/schedule/2021/김해/2021_12.csv")

#김해해_데이터 병합
pus17 <- rbind(pus17_1, pus17_2,pus17_3,pus17_4,pus17_5,pus17_6,pus17_7,pus17_8,pus17_9,pus17_10,pus17_11,pus17_12)
write.csv(pus17, file = "C:/R/schedule/pus17.csv")
pus18 <- rbind(pus18_1, pus18_2,pus18_3,pus18_4,pus18_5,pus18_6,pus18_7,pus18_8,pus18_9,pus18_10,pus18_11,pus18_12)
write.csv(pus18, file = "C:/R/schedule/pus18.csv")
pus19 <- rbind(pus19_1, pus19_2,pus19_3,pus19_4,pus19_5,pus19_6,pus19_7,pus19_8,pus19_9,pus19_10,pus19_11,pus19_12)
write.csv(pus19, file = "C:/R/schedule/pus19.csv")
pus20 <- rbind(pus20_1,pus20_2,pus20_3,pus20_4,pus20_5,pus20_6,pus20_7,pus20_8,pus20_9,pus20_10,pus20_11,pus20_12)
write.csv(pus20, file = "C:/R/schedule/pus20.csv")
pus21 <- rbind(pus21_1, pus21_2,pus21_3,pus21_4,pus21_5,pus21_6,pus21_7,pus21_8,pus21_9,pus21_10,pus21_11,pus21_12)
write.csv(pus21, file = "C:/R/schedule/pus21.csv")


pus <- rbind(pus17, pus18, pus19, pus20, pus21)

pus <- pus[, -c(2,3)]
unique(pus)

pus<- pus %>% filter(!(pus$일자==""))