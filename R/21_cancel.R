#21년도 결항 데이터 가져오기
cancel <- read.csv("C:/R/airline/21년도 결항.csv", fileEncoding = 'euc-kr')

#공항별 데이터 프레임
yny <- cancel[cancel$공항명 == '양양', ]
cju <- cancel[cancel$공항명 == '제주', ]
gmp <- cancel[cancel$공항명 == '김포', ]
rsu <- cancel[cancel$공항명 == '여수', ]
usn <- cancel[cancel$공항명 == '울산', ]

#양양공항
yPlan <- sum(yny$운항계획)
yTakeoff <- sum(yny$운항)

#제주공항
cPlan <- sum(cju$운항계획)
cTakeoff <- sum(cju$운항)

#김포공항
gPlan <- sum(gmp$운항계획)
gTakeoff <- sum(gmp$운항)

#여수공항
rPlan <- sum(rsu$운항계획)
rTakeoff <- sum(rsu$운항)

#울산공항
uPlan <- sum(usn$운항계획)
uTakeoff <- sum(usn$운항)

#결항률 계산
yCancel <- 1 - (yTakeoff/yPlan)
cCancel <- 1 - (cTakeoff/cPlan)
gCancel <- 1 - (gTakeoff/gPlan)
rCancel <- 1 - (rTakeoff/rPlan)
uCancel <- 1 - (uTakeoff/uPlan)

d <- c(yCancel, cCancel, gCancel, rCancel, uCancel)
barplot(d, names=c('양양', '제주', '김포', '여수','울산'))

