# 데이터 불러오기
#17
gmp17_1 <- read.csv("C:/R/schedule/2017/김포/2017_1.csv")
gmp17_2 <- read.csv("C:/R/schedule/2017/김포/2017_2.csv")
gmp17_3 <- read.csv("C:/R/schedule/2017/김포/2017_3.csv")
gmp17_4 <- read.csv("C:/R/schedule/2017/김포/2017_4.csv")
gmp17_5 <- read.csv("C:/R/schedule/2017/김포/2017_5.csv")
gmp17_6 <- read.csv("C:/R/schedule/2017/김포/2017_6.csv")
gmp17_7 <- read.csv("C:/R/schedule/2017/김포/2017_7.csv")
gmp17_8 <- read.csv("C:/R/schedule/2017/김포/2017_8.csv")
gmp17_9 <- read.csv("C:/R/schedule/2017/김포/2017_9.csv")
gmp17_10 <- read.csv("C:/R/schedule/2017/김포/2017_10.csv")
gmp17_11 <- read.csv("C:/R/schedule/2017/김포/2017_11.csv")
gmp17_12 <- read.csv("C:/R/schedule/2017/김포/2017_12.csv")


#18
gmp18_1 <- read.csv("C:/R/schedule/2018/김포/2018_1.csv")
gmp18_2 <- read.csv("C:/R/schedule/2018/김포/2018_2.csv")
gmp18_3 <- read.csv("C:/R/schedule/2018/김포/2018_3.csv")
gmp18_4 <- read.csv("C:/R/schedule/2018/김포/2018_4.csv")
gmp18_5 <- read.csv("C:/R/schedule/2018/김포/2018_5.csv")
gmp18_6 <- read.csv("C:/R/schedule/2018/김포/2018_6.csv")
gmp18_7 <- read.csv("C:/R/schedule/2018/김포/2018_7.csv")
gmp18_8 <- read.csv("C:/R/schedule/2018/김포/2018_8.csv")
gmp18_9 <- read.csv("C:/R/schedule/2018/김포/2018_9.csv")
gmp18_10 <- read.csv("C:/R/schedule/2018/김포/2018_10.csv")
gmp18_11 <- read.csv("C:/R/schedule/2018/김포/2018_11.csv")
gmp18_12 <- read.csv("C:/R/schedule/2018/김포/2018_12.csv")

#19
gmp19_1 <- read.csv("C:/R/schedule/2019/김포/2019_1.csv")
gmp19_2 <- read.csv("C:/R/schedule/2019/김포/2019_2.csv")
gmp19_3 <- read.csv("C:/R/schedule/2019/김포/2019_3.csv")
gmp19_4 <- read.csv("C:/R/schedule/2019/김포/2019_4.csv")
gmp19_5 <- read.csv("C:/R/schedule/2019/김포/2019_5.csv")
gmp19_6 <- read.csv("C:/R/schedule/2019/김포/2019_6.csv")
gmp19_7 <- read.csv("C:/R/schedule/2019/김포/2019_7.csv")
gmp19_8 <- read.csv("C:/R/schedule/2019/김포/2019_8.csv")
gmp19_9 <- read.csv("C:/R/schedule/2019/김포/2019_9.csv")
gmp19_10 <- read.csv("C:/R/schedule/2019/김포/2019_10.csv")
gmp19_11 <- read.csv("C:/R/schedule/2019/김포/2019_11.csv")
gmp19_12 <- read.csv("C:/R/schedule/2019/김포/2019_12.csv")

#20
gmp20_1 <- read.csv("C:/R/schedule/2020/김포/2020_1.csv")
gmp20_2 <- read.csv("C:/R/schedule/2020/김포/2020_2.csv")
gmp20_3 <- read.csv("C:/R/schedule/2020/김포/2020_3.csv")
gmp20_4 <- read.csv("C:/R/schedule/2020/김포/2020_4.csv")
gmp20_5 <- read.csv("C:/R/schedule/2020/김포/2020_5.csv")
gmp20_6 <- read.csv("C:/R/schedule/2020/김포/2020_6.csv")
gmp20_7 <- read.csv("C:/R/schedule/2020/김포/2020_7.csv")
gmp20_8 <- read.csv("C:/R/schedule/2020/김포/2020_8.csv")
gmp20_9 <- read.csv("C:/R/schedule/2020/김포/2020_9.csv")
gmp20_10 <- read.csv("C:/R/schedule/2020/김포/2020_10.csv")
gmp20_11 <- read.csv("C:/R/schedule/2020/김포/2020_11.csv")
gmp20_12 <- read.csv("C:/R/schedule/2020/김포/2020_12.csv")

#21
gmp21_1 <- read.csv("C:/R/schedule/2021/김포/2021_1.csv")
gmp21_2 <- read.csv("C:/R/schedule/2021/김포/2021_2.csv")
gmp21_3 <- read.csv("C:/R/schedule/2021/김포/2021_3.csv")
gmp21_4 <- read.csv("C:/R/schedule/2021/김포/2021_4.csv")
gmp21_5 <- read.csv("C:/R/schedule/2021/김포/2021_5.csv")
gmp21_6 <- read.csv("C:/R/schedule/2021/김포/2021_6.csv")
gmp21_7 <- read.csv("C:/R/schedule/2021/김포/2021_7.csv")
gmp21_8 <- read.csv("C:/R/schedule/2021/김포/2021_8.csv")
gmp21_9 <- read.csv("C:/R/schedule/2021/김포/2021_9.csv")
gmp21_10 <- read.csv("C:/R/schedule/2021/김포/2021_10.csv")
gmp21_11 <- read.csv("C:/R/schedule/2021/김포/2021_11.csv")
gmp21_12 <- read.csv("C:/R/schedule/2021/김포/2021_12.csv")

#김포_데이터 병합
gmp17 <- rbind(gmp17_1, gmp17_2,gmp17_3,gmp17_4,gmp17_5,gmp17_6,gmp17_7,gmp17_8,gmp17_9,gmp17_10,gmp17_11,gmp17_12)
write.csv(gmp17, file = "C:/R/schedule/gmp17.csv")
gmp18 <- rbind(gmp18_1, gmp18_2,gmp18_3,gmp18_4,gmp18_5,gmp18_6,gmp18_7,gmp18_8,gmp18_9,gmp18_10,gmp18_11,gmp18_12)
write.csv(gmp18, file = "C:/R/schedule/gmp18.csv")
gmp19 <- rbind(gmp19_1, gmp19_2,gmp19_3,gmp19_4,gmp19_5,gmp19_6,gmp19_7,gmp19_8,gmp19_9,gmp19_10,gmp19_11,gmp19_12)
write.csv(gmp19, file = "C:/R/schedule/gmp19.csv")
gmp20 <- rbind(gmp20_1, gmp20_2,gmp20_3,gmp20_4,gmp20_5,gmp20_6,gmp20_7,gmp20_8,gmp20_9,gmp20_10,gmp20_11,gmp20_12)
write.csv(gmp20, file = "C:/R/schedule/gmp20.csv")
gmp21 <- rbind(gmp21_1, gmp21_2,gmp21_3,gmp21_4,gmp21_5,gmp21_6,gmp21_7,gmp21_8,gmp21_9,gmp21_10,gmp21_11,gmp21_12)
write.csv(gmp21, file = "C:/R/schedule/gmp21.csv")


gmp <- rbind(gmp17, gmp18, gmp19, gmp20, gmp21)

gmp <- gmp[, -c(2,3)]
unique(gmp)

gmp<- gmp %>% filter(!(gmp$일자==""))

#write.csv(kwj, file = "C:/R/schedule_pre/kwj.csv")

