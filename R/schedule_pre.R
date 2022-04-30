# 날짜 데이터 전저리 (파싱)
schedule$연도 = year(schedule$일자)
schedule$월 = month(schedule$일자)
schedule$일 = day(schedule$일자)

schedule <- schedule[c(10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8, 9)]

# 파싱 전 날짜 데이터 컬럼 삭제
schedule <- schedule[, -4]

na_depature <- na_depature[, -8]

# 결측값 
na_predict_except <- schedule[schedule$예상 != "여객", ]
na_predict <- schedule[schedule$예상 == "여객",]
na_predict$구분 <- na_predict$예상
na_predict$현황 <- na_predict$출발
na_predict <- na_predict[, -c(8,9)]
na_predict$예상 = ""
na_predict$출발 = ""

na_predict <- na_predict[c(1, 2, 3, 4, 5, 6, 7, 10, 11, 8, 9)]
na_predict$현황 <- "결항"
# 다시 추가 
schedule <- rbind(na_predict_except, na_predict)
# 확인 (행이 0인걸 확인해야 함)
na_predict <- schedule[schedule$예상 == "여객",]

na_depature_except <- schedule[schedule$출발 != "여객", ]
na_depature <- schedule[schedule$출발 == "여객", ]
na_depature$현황 <- na_depature$구분
na_depature$구분 <- na_depature$출발
na_depature$출발 <- na_depature$예상
na_depature <-na_depature[, -8]
na_depature$예상 = ""
na_depature <- na_depature[c(1, 2, 3, 4, 5, 6, 7, 11, 8, 9, 10)]

# 다시 추가
schedule <- rbind(na_depature_except, na_depature)
#확인 (행이 0 확인)
na_depature <- schedule[schedule$출발 == "여객", ]

#결항 데이터 
schedule_cancel <- schedule[schedule$현황 == "결항",]

#마지막 결측 케이스 처리
na_status_except <- schedule[schedule$현황 != "", ]
na_status <- schedule[schedule$현황 == "",]
na_status_yes <- na_status[na_status$예상 != "", ]
na_status_yes$현황 <- "출발"
na_status_no <- na_status[na_status$예상 == "", ]
na_status_no$현황 <- "결항"
na_status <- rbind(na_status_yes, na_status_no)


schedule <- rbind(na_status_except, na_status)
write.csv(schedule, file = "C:/R/schedule.csv")


#schedule <- rbind(na_status_except, na_status)
#schedule$일자 <- as.Date(schedule$일자)



#예상시간 데이터 컬럼 삭제 <- 결측값 정리 후 사용
#schedule <- schedule[, -8]