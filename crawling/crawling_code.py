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
from selenium import webdriver as wd
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
print(f"선택 항공편 : {schedule[time-1])
