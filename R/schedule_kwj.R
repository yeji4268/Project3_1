# 데이터 불러오기
#17
kwj17_1 <- read.csv("C:/R/schedule/2017/광주/2017_1.csv")
kwj17_2 <- read.csv("C:/R/schedule/2017/광주/2017_2.csv")
kwj17_3 <- read.csv("C:/R/schedule/2017/광주/2017_3.csv")
kwj17_4 <- read.csv("C:/R/schedule/2017/광주/2017_4.csv")
kwj17_5 <- read.csv("C:/R/schedule/2017/광주/2017_5.csv")
kwj17_6 <- read.csv("C:/R/schedule/2017/광주/2017_6.csv")
kwj17_7 <- read.csv("C:/R/schedule/2017/광주/2017_7.csv")
kwj17_8 <- read.csv("C:/R/schedule/2017/광주/2017_8.csv")
kwj17_9 <- read.csv("C:/R/schedule/2017/광주/2017_9.csv")
kwj17_10 <- read.csv("C:/R/schedule/2017/광주/2017_10.csv")
kwj17_11 <- read.csv("C:/R/schedule/2017/광주/2017_11.csv")
kwj17_12 <- read.csv("C:/R/schedule/2017/광주/2017_12.csv")


#18
kwj18_1 <- read.csv("C:/R/schedule/2018/광주/2018_1.csv")
kwj18_2 <- read.csv("C:/R/schedule/2018/광주/2018_2.csv")
kwj18_3 <- read.csv("C:/R/schedule/2018/광주/2018_3.csv")
kwj18_4 <- read.csv("C:/R/schedule/2018/광주/2018_4.csv")
kwj18_5 <- read.csv("C:/R/schedule/2018/광주/2018_5.csv")
kwj18_6 <- read.csv("C:/R/schedule/2018/광주/2018_6.csv")
kwj18_7 <- read.csv("C:/R/schedule/2018/광주/2018_7.csv")
kwj18_8 <- read.csv("C:/R/schedule/2018/광주/2018_8.csv")
kwj18_9 <- read.csv("C:/R/schedule/2018/광주/2018_9.csv")
kwj18_10 <- read.csv("C:/R/schedule/2018/광주/2018_10.csv")
kwj18_11 <- read.csv("C:/R/schedule/2018/광주/2018_11.csv")
kwj18_12 <- read.csv("C:/R/schedule/2018/광주/2018_12.csv")

#19
kwj19_1 <- read.csv("C:/R/schedule/2019/광주/2019_1.csv")
kwj19_2 <- read.csv("C:/R/schedule/2019/광주/2019_2.csv")
kwj19_3 <- read.csv("C:/R/schedule/2019/광주/2019_3.csv")
kwj19_4 <- read.csv("C:/R/schedule/2019/광주/2019_4.csv")
kwj19_5 <- read.csv("C:/R/schedule/2019/광주/2019_5.csv")
kwj19_6 <- read.csv("C:/R/schedule/2019/광주/2019_6.csv")
kwj19_7 <- read.csv("C:/R/schedule/2019/광주/2019_7.csv")
kwj19_8 <- read.csv("C:/R/schedule/2019/광주/2019_8.csv")
kwj19_9 <- read.csv("C:/R/schedule/2019/광주/2019_9.csv")
kwj19_10 <- read.csv("C:/R/schedule/2019/광주/2019_10.csv")
kwj19_11 <- read.csv("C:/R/schedule/2019/광주/2019_11.csv")
kwj19_12 <- read.csv("C:/R/schedule/2019/광주/2019_12.csv")

#20
kwj20_1 <- read.csv("C:/R/schedule/2020/광주/2020_1.csv")
kwj20_2 <- read.csv("C:/R/schedule/2020/광주/2020_2.csv")
kwj20_3 <- read.csv("C:/R/schedule/2020/광주/2020_3.csv")
kwj20_4 <- read.csv("C:/R/schedule/2020/광주/2020_4.csv")
kwj20_5 <- read.csv("C:/R/schedule/2020/광주/2020_5.csv")
kwj20_6 <- read.csv("C:/R/schedule/2020/광주/2020_6.csv")
kwj20_7 <- read.csv("C:/R/schedule/2020/광주/2020_7.csv")
kwj20_8 <- read.csv("C:/R/schedule/2020/광주/2020_8.csv")
kwj20_9 <- read.csv("C:/R/schedule/2020/광주/2020_9.csv")
kwj20_10 <- read.csv("C:/R/schedule/2020/광주/2020_10.csv")
kwj20_11 <- read.csv("C:/R/schedule/2020/광주/2020_11.csv")
kwj20_12 <- read.csv("C:/R/schedule/2020/광주/2020_12.csv")

#21
kwj21_1 <- read.csv("C:/R/schedule/2021/광주/2021_1.csv")
kwj21_2 <- read.csv("C:/R/schedule/2021/광주/2021_2.csv")
kwj21_3 <- read.csv("C:/R/schedule/2021/광주/2021_3.csv")
kwj21_4 <- read.csv("C:/R/schedule/2021/광주/2021_4.csv")
kwj21_5 <- read.csv("C:/R/schedule/2021/광주/2021_5.csv")
kwj21_6 <- read.csv("C:/R/schedule/2021/광주/2021_6.csv")
kwj21_7 <- read.csv("C:/R/schedule/2021/광주/2021_7.csv")
kwj21_8 <- read.csv("C:/R/schedule/2021/광주/2021_8.csv")
kwj21_9 <- read.csv("C:/R/schedule/2021/광주/2021_9.csv")
kwj21_10 <- read.csv("C:/R/schedule/2021/광주/2021_10.csv")
kwj21_11 <- read.csv("C:/R/schedule/2021/광주/2021_11.csv")
kwj21_12 <- read.csv("C:/R/schedule/2021/광주/2021_12.csv")

#광주 데이터 병합
kwj17 <- rbind(kwj17_1, kwj17_2,kwj17_3,kwj17_4,kwj17_5,kwj17_6,kwj17_7,kwj17_8,kwj17_9,kwj17_10,kwj17_11,kwj17_12)

write.csv(kwj17, file = "C:/R/schedule/kwj17.csv")
kwj18 <- rbind(kwj18_1, kwj18_2,kwj18_3,kwj18_4,kwj18_5,kwj18_6,kwj18_7,kwj18_8,kwj18_9,kwj18_10,kwj18_11,kwj18_12)
write.csv(kwj18, file = "C:/R/schedule/kwj18.csv")
kwj19 <- rbind(kwj19_1, kwj19_2,kwj19_3,kwj19_4,kwj19_5,kwj19_6,kwj19_7,kwj19_8,kwj19_9,kwj19_10,kwj19_11,kwj19_12)
write.csv(kwj19, file = "C:/R/schedule/kwj19.csv")
kwj20 <- rbind(kwj20_1, kwj20_2,kwj20_3,kwj20_4,kwj20_5,kwj20_6,kwj20_7,kwj20_8,kwj20_9,kwj20_10,kwj20_11,kwj20_12)
write.csv(kwj20, file = "C:/R/schedule/kwj20.csv")
kwj21 <- rbind(kwj21_1, kwj21_2,kwj21_3,kwj21_4,kwj21_5,kwj21_6,kwj21_7,kwj21_8,kwj21_9,kwj21_10,kwj21_11,kwj21_12)
write.csv(kwj21, file = "C:/R/schedule/kwj21.csv")


kwj <- rbind(kwj17, kwj18, kwj19, kwj20, kwj21)

kwj <- kwj[, -c(2,3)]
unique(kwj)

kwj<- kwj %>% filter(!(kwj$일자==""))

#write.csv(kwj, file = "C:/R/schedule_pre/kwj.csv")

