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
import time

driver = wd.Chrome(executable_path = "chromedriver.exe")
url = 'https://amo.kma.go.kr/weather/airport.do?icaoCode=RKPC'
driver.get(url)

#날짜 가져오기
for d in range(1, 4):
    date_path = '//*[@id="index-ts"]/div/div[3]/div/div['
    date_path2 = ']/div[1]/h3/span[1]'
    d_path = date_path + str(d) + date_path2
    date = (driver.find_element(By.XPATH, d_path).text
    
    for h in range(2, 13):
        #시간 가져오기
        hour_path = '//*[@id="index-ts"]/div/div[3]/div/div[1]/div[2]/ul/li[2]/span'
        hour = driver.find_element(By.XPATH, hour_path).text
        print(f"----- {date} {hour} -----")

        #기온 가져오기
        temp_path = '//*[@id="index-ts"]/div/div[3]/div/div[1]/div[2]/ul/li[4]/span[2]'
        temperature = (driver.find_element(By.XPATH, temp_path).text).split("℃")
        print(f"기온 : {temperature[0]} ℃")

        #풍속 가져오기
        speed_path = '//*[@id="index-ts"]/div/div[3]/div/div[1]/div[2]/ul/li[6]/span[2]'
        speed = (driver.find_element(By.XPATH, speed_path).text).split("kt")
        print(f"풍속 : {speed[0]} kt")

        #운고 가져오기
        cloud_path = '//*[@id="index-ts"]/div/div[3]/div/div[1]/div[2]/ul/li[7]/span[2]/span[1]'
        cloud = (driver.find_element(By.XPATH, cloud_path).text).split("ft")
        print(f"운고 : {cloud[0]} ft")

        #시정 가져오기
        visiblity_path = '//*[@id="index-ts"]/div/div[3]/div/div[1]/div[2]/ul/li[8]/span[2]'
        visiblity = (driver.find_element(By.XPATH, visiblity_path).text).split("m")
        print(f"시정 : {visiblity[0]} m")
# -


