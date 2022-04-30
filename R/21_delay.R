#21년도 데이터 가져오기
delay <- read.csv("C:/R/airline/21년도 지연.csv", fileEncoding = 'euc-kr')

#공항별 데이터 프레임 
yny <- delay[delay$공항명 == '양양', ]
cju <- delay[delay$공항명 == '제주', ]
gmp <- delay[delay$공항명 == '김포', ]
rsu <- delay[delay$공항명 == '여수', ]
usn <- delay[delay$공항명 == '울산', ]

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

#지연율 계산
yDelay <- 1 - (yTakeoff/yPlan)
cDelay <- 1 - (cTakeoff/cPlan)
gDelay <- 1 - (gTakeoff/gPlan)
rDelay <- 1 - (rTakeoff/rPlan)
uDelay <- 1 - (uTakeoff/uPlan)

d <- c(yDelay, cDelay, gDelay, rDelay, uDelay)
barplot(d, names=c('양양', '제주', '김포', '여수','울산'))
