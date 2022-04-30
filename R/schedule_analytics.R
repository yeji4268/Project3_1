schedule_pre <-read.csv("C:/R/schedule_1.csv")



schedule_order <- schedule_pre[order(schedule_pre$연도, schedule_pre$월, schedule_pre$일, schedule_pre$계획),]




schedule_pre <- schedule_pre[, -1]
unique(schedule_pre)
write.csv(schedule_order, file = "C:/R/schedule_1.csv")




schedule <- schedule[, -c(4, 5, 6, 8, 10)]

schedule$현황 <- gsub("결항", 1, schedule$현황)
schedule$현황 <- gsub("출발", 0, schedule$현황)
schedule$현황 <- gsub("지연", 0, schedule$현황)

