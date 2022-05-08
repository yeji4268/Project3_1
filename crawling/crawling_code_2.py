# ---
# jupyter:
#   jupytext:
#     formats: ipynb,py:light
#     text_representation:
#       extension: .py
#       format_name: light
#       format_version: '1.5'
#       jupytext_version: 1.13.8
#   kernelspec:
#     display_name: Python 3 (ipykernel)
#     language: python
#     name: python3
# ---

# +
# from selenium import webdriver as wd
from selenium.webdriver.common.by import By
import csv
import time

driver = wd.Chrome(executable_path = "chromedriver.exe")
url = 'https://www.airportal.go.kr/life/airinfo/RaSkeFrmMain.jsp'
driver.get(url)

# 출발 공항 선택
driver.switch_to.frame('main')
driver.switch_to.frame('airportframe')
driver.find_element(By.XPATH, '//*[@name="ser_airport"]/option[text()="제주"]').click()

# 도착 공항 선택
driver.switch_to.parent_frame()
driver.switch_to.frame(1)
driver.find_element(By.XPATH, '//*[@name="ser_region"]/option[text()="동북아시아"]').click()
driver.find_element(By.XPATH, '//*[@name="ser_nation"]/option[text()="한국"]').click()

# 목적지 선택(입력)
print("====== 예측 가능 목적지 ======")
print("1) 김포")
print("2) 김해")
print("3) 광주")
print("4) 청주")
print("==============================")
des_num = int(input("목적지 번호를 입력해주세요 : "))
if des_num == 1:
    destination = "김포"
elif des_num == 2:
    destination = "김해"
elif des_num == 3:
    destination = "광주"
elif des_num == 4:
    destination = "청주"
else :
    print("==============================")
    print("1) 김포")
    print("2) 김해")
    print("3) 광주")
    print("4) 청주")
    print("==============================")
    des_num = int(input("목적지 번호를 다시 입력하세요 : "))
    if des_num == 1:
        destination = "김포"
    elif des_num == 2:
        destination = "김해"
    elif des_num == 3:
        destination = "광주"
    elif des_num == 4:
        destination = "청주"
p = '//*[@name="ser_airport"]/option[text()="'
p_1 = '"]'
p_2 = p + destination + p_1
driver.find_element(By.XPATH,p_2).click()

# 기간 설정
print("==============================")
t = int(time.strftime('%Y%m%d'))
print(f"예측 가능 기간 : {t} ~ {t + 2}")
print("======= 예측 가능 날짜 =======")
print(f"1) {t}")
print(f"2) {t + 1}")
print(f"3) {t + 2}")
print("==============================")
sel = int(input("원하시는 날짜의 번호를 입력해주세요 : "))
if sel == 1:
    term_from = t
    term_to = t
elif sel == 2:
    term_from = t + 1
    term_to = t + 1
elif sel == 3:
    term_from = t + 2
    term_to = t + 2

# 기간 선택 (from)
driver.switch_to.parent_frame()
driver.find_element(By.NAME, 'current_dt_from').clear()
driver.find_element(By.NAME, 'current_dt_from').send_keys(term_from)

# 기간 선택 (to)
driver.find_element(By.NAME, 'current_dt_to').clear()

driver.find_element(By.NAME, 'current_dt_to').send_keys(term_to)

#용도 선택
driver.find_element(By.XPATH,'//*[@name="regCls"]/option[text()="여객"]').click()

#항공사 선택
driver.find_element(By.XPATH,'//*[@name="al_icao"]/option[text()="대한항공"]').click()

#운항 스케줄
driver.switch_to.parent_frame()
driver.switch_to.frame('main')
driver.switch_to.frame('sframe')
tbody = driver.find_element(By.XPATH,'/html/body/form/table/tbody/tr[3]/td/table/tbody')
tr = tbody.find_elements(By.TAG_NAME, 'tr')
num = int(driver.find_element(By.XPATH,'/html/body/form/table/tbody/tr[4]/td/table/tbody/tr[4]/td/table/tbody/tr/td[3]/font[1]').text)
pages = num // 10 + 1
print("==============================")
print(f"====== 운항 예정 : {num}편 ======")

schedule = list()
for a in range(pages % 10) : 
    for n in range(pages % 10):
        if (a == 0) and (n ==0):
            tbody = driver.find_element(By.XPATH,'/html/body/form/table/tbody/tr[3]/td/table/tbody')
            tr = tbody.find_elements(By.TAG_NAME, 'tr')
            for td in tr:
                row = td.text
                row_list = row.split(' ')
                if row_list not in schedule:
                    row_list = [r for r in row_list if r]
                    schedule.append(row_list)
        else :
            if a == 0 : 
                xpath1 = '/html/body/form/table/tbody/tr[4]/td/table/tbody/tr[4]/td/table/tbody/tr/td[2]/font/a['
                xpath2 = ']/font'
                xpath = xpath1 + str(n) + xpath2
                driver.find_element(By.XPATH, xpath).click()
                tbody = driver.find_element(By.XPATH,'/html/body/form/table/tbody/tr[3]/td/table/tbody')
                tr = tbody.find_elements(By.TAG_NAME, 'tr')
                time.sleep(0.1)
                for td in tr:
                    row = td.text
                    row_list = row.split(' ')
                    if row_list not in schedule:
                        row_list = [r for r in row_list if r]
                        schedule.append(row_list)
                        
schedule = [a for a in schedule if a]
for s in range(len(schedule)):
    print(f"[{s+1}] {schedule[s]}")

print("==============================")
time = int(input("원하시는 항공편의 번호를 입력해주세요 : "))
print("==============================")

s = schedule[time-1]
date = list(s[0])
date = int(date[9])
time = s[4]
time = (time.split(':'))[0]
data =[date, time]
print(f"선택 날짜 : {data[0]}, 시간 : {data[1]}")

# 창 닫기
driver.close()

driver2 = wd.Chrome(executable_path = "chromedriver.exe")
url = 'https://amo.kma.go.kr/weather/airport.do?icaoCode=RKPC'
driver2.get(url)
driver2.maximize_window()
chk = driver2.find_element(By.XPATH,'//*[@id="index-ts"]/div/div[3]/div/div[1]/div[1]/h3/span[1]' ).text
chk = int((list(chk))[0])
print(f"선택 날짜  {data[0]}, 현재 날짜 {chk}")
if data[0] != chk : 
    if(sel == 2):
        driver2.find_element(By.XPATH, '//*[@id="index-ts"]/a[2]').click()
        driver2.find_element(By.XPATH, '//*[@id="index-ts"]/a[2]').click()
    for n in range(2, 26):
        if (n % 10 == 2):
            driver2.find_element(By.XPATH, '//*[@id="index-ts"]/a[2]').click()
        x = '//*[@id="index-ts"]/div/div[3]/div/div['
        x_1= ']/div['
        x_2 = ']/ul/li[2]/span'
        x_3 = x + str(sel) + x_1 +  str(n) + x_2
        t = driver2.find_element(By.XPATH, x_3).text
        t = t.split("시")
        try:
            t = int(t[0])
        except :
            #t = t[0]
            continue
        if (t == int(data[1])):
            t_path = '//*[@id="index-ts"]/div/div[3]/div/div['
            t_path1 = ']/div[' 
            t_path2 = ']/ul/li[4]/span[2]'
            temp_path = t_path + str(sel) + t_path1 + str(n) + t_path2
            temperature = (driver2.find_element(By.XPATH, temp_path).text).split("℃")
            print(f"기온 : {temperature[0]} ℃")
            s_path = '//*[@id="index-ts"]/div/div[3]/div/div['
            s_path1 = ']/div['
            s_path2 = ']/ul/li[6]/span[2]'
            speed_path = s_path + str(sel) + s_path1 + str(n) + s_path2
            speed = (driver2.find_element(By.XPATH, speed_path).text).split("kt")
            print(f"풍속 : {speed[0]} kt")
            c_path = '//*[@id="index-ts"]/div/div[3]/div/div['
            c_path1 = ']/div['
            c_path2 = ']/ul/li[7]/span[2]/span[1]'
            cloud_path = c_path + str(sel) + c_path1 + str(n) + c_path2
            cloud = list()
            cloud.append(2000)
#             try : 
#                 cloud = (driver2.find_element(By.XPATH, cloud_path).text).split('ft')
#             except : 
#                 cloud[0] = 2000 
            print(f"운고 : {cloud[0]} ft")
            v_path = '//*[@id="index-ts"]/div/div[3]/div/div['
            v_path1 = ']/div['
            v_path2 = ']/ul/li[8]/span[2]'
            visiblity_path = v_path + str(sel) + v_path1 + str(n) + v_path2 
            visiblity = (driver2.find_element(By.XPATH, visiblity_path).text).split('m')
            print(f"시정 : {visiblity[0]} m")
            d_path = '//*[@id="index-ts"]/div/div[3]/div/div['
            d_path1 = ']/div['
            d_path2 = ']/ul/li[5]/span[2]/i[2]'
            direction_path = d_path + str(sel) + d_path1 + str(n) + d_path2
            direction = (driver2.find_element(By.XPATH
                                              , direction_path).text).split('°')
            d = int(direction[0])
            print(f"풍향 각도 : {d}")
            if d > 90 : 
                d = (180 - (360-d))/10
            else : 
                d = (360 - d) / 10
            print(f"풍향 : {int(d)}")
else : 
    for n in range(2, 26):
        if (n % 10 == 2):
            driver2.find_element(By.XPATH, '//*[@id="index-ts"]/a[2]').click()
        x = '//*[@id="index-ts"]/div/div[3]/div/div['
        x_1= ']/div['
        x_2 = ']/ul/li[2]/span'
        x_3 = x + str(1) + x_1 +  str(n) + x_2
        t = driver2.find_element(By.XPATH, x_3).text
        t = t.split("시")
        try:
            t = int(t[0])
        except :
            #t = t[0]
            continue
        if (t == int(data[1])):
            t_path = '//*[@id="index-ts"]/div/div[3]/div/div['
            t_path1 = ']/div[' 
            t_path2 = ']/ul/li[4]/span[2]'
            temp_path = t_path + str(1) + t_path1 + str(n) + t_path2
            print(temp_path)
            temperature = (driver2.find_element(By.XPATH, temp_path).text).split("℃")
            print(f"기온 : {temperature[0]} ℃")
            s_path = '//*[@id="index-ts"]/div/div[3]/div/div['
            s_path1 = ']/div['
            s_path2 = ']/ul/li[6]/span[2]'
            speed_path = s_path + str(1) + s_path1 + str(n) + s_path2
            speed = (driver2.find_element(By.XPATH, speed_path).text).split("kt")
            print(f"풍속 : {speed[0]} kt")
            c_path = '//*[@id="index-ts"]/div/div[3]/div/div['
            c_path1 = ']/div['
            c_path2 = ']/ul/li[7]/span[2]/span[1]'
            cloud_path = c_path + str(1) + c_path1 + str(n) + c_path2
            cloud = list()
            cloud.append(2000)
#             try : 
#                 cloud = (driver2.find_element(By.XPATH, cloud_path).text).split('ft')
#             except : 
#                 cloud[0] = 2000 
            print(f"운고 : {cloud[0]} ft")
            v_path = '//*[@id="index-ts"]/div/div[3]/div/div['
            v_path1 = ']/div['
            v_path2 = ']/ul/li[8]/span[2]'
            visiblity_path = v_path + str(1) + v_path1 + str(n) + v_path2 
            visiblity = (driver2.find_element(By.XPATH, visiblity_path).text).split('m')
            print(f"시정 : 0 m")
            d_path = '//*[@id="index-ts"]/div/div[3]/div/div['
            d_path1 = ']/div['
            d_path2 = ']/ul/li[5]/span[2]/i[2]'
            direction_path = d_path + str(1) + d_path1 + str(n) + d_path2
            direction = (driver2.find_element(By.XPATH
                                              , direction_path).text).split('°')
            d = int(direction[0])
            print(f"풍향 각도 : {d}")
            if d > 90 : 
                d = (180 - (360-d))/10
            else : 
                d = (360 - d) / 10
            print(f"풍향 : {int(d)}")
weather = [temperature[0], speed[0], cloud[0], visiblity[0], d]
print(weather)
# -


