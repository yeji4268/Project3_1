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
import csv
import time
driver = wd.Chrome(executable_path="chromedriver.exe")
url = 'https://www.airportal.go.kr/life/airinfo/RaSkeFrmMain.jsp'
driver.get(url)

#출발 공항 선택
driver.switch_to.frame('main')
driver.switch_to.frame('airportframe')
driver.find_element_by_xpath('//*[@name="ser_airport"]/option[text()="제주"]').click()

#도착 공항 선택
driver.switch_to.parent_frame()
driver.switch_to.frame(1)
driver.find_element_by_xpath('//*[@name="ser_region"]/option[text()="동북아시아"]').click()
driver.find_element_by_xpath('//*[@name="ser_nation"]/option[text()="한국"]').click()
driver.find_element_by_xpath('//*[@name="ser_airport"]/option[text()="광주"]').click()

#기간 선택(from)
driver.switch_to.parent_frame()
driver.find_element_by_name('current_dt_from').clear()
driver.find_element_by_name('current_dt_from').send_keys('20170201')

#기간 선택(to)
driver.find_element_by_name('current_dt_to').clear()
driver.find_element_by_name('current_dt_to').send_keys('20170228')

#용도 선택
driver.find_element_by_xpath('//*[@name="regCls"]/option[text()="여객"]').click()

#항공사 선택
driver.find_element_by_xpath('//*[@name="al_icao"]/option[text()="대한항공"]').click()

#결과 크롤링
driver.switch_to.parent_frame()
driver.switch_to.frame('main')
driver.switch_to.frame('sframe')
tbody = driver.find_element_by_xpath('/html/body/form/table/tbody/tr[3]/td/table/tbody')
tr = tbody.find_elements_by_tag_name('tr')
num = int(driver.find_element_by_xpath('/html/body/form/table/tbody/tr[4]/td/table/tbody/tr[4]/td/table/tbody/tr/td[3]/font[1]').text)
pages = num // 10 + 1
print(pages%10)
print("----------------------------%d 건, %d 페이지----------------------------"%(num, pages))
col_name = ["일자", "공백1", "공백2", "항공사", "편명", "도착", "계획", "예상", "출발", "구분", "현황"]  
with open('2017_test.csv', 'w', -1, newline='') as f :
    w = csv.writer(f)
    w.writerow(col_name)
    for p in range(pages // 10 ): 
        for n in range(11):
            # 1쪽 1페이지
            if (p == 0) & (n == 0) : 
                tbody = driver.find_element_by_xpath('/html/body/form/table/tbody/tr[3]/td/table/tbody')
                tr = tbody.find_elements_by_tag_name('tr')
                for td in tr:
                    row = td.text
                    row_list = row.split(' ')
                    print(row_list)
                    w.writerow(row_list)
                    time.sleep(0.1)
                print('--------------------------%d 장 , %d 페이지 ---------------------'%(p+1, n+1))
            else :   
                #1쪽이 아닌 경우, next 버튼 누르기
                if (p != 0) &(n == 10) :
                    driver.find_element_by_xpath('/html/body/form/table/tbody/tr[4]/td/table/tbody/tr[4]/td/table/tbody/tr/td[2]/font/font/a[10]/font/img').click()
                    tbody = driver.find_element_by_xpath('/html/body/form/table/tbody/tr[3]/td/table/tbody')
                    tr = tbody.find_elements_by_tag_name('tr')
                    for td in tr:
                        row = td.text
                        row_list = row.split(' ')
                        print(row_list)
                        w.writerow(row_list)
                        time.sleep(0.1)
                    print('--------------------------%d 장 , %d 페이지 ---------------------'%(p+1, n+1))
                else : 
                    # 첫번째 페이지
                    if n == 0 : 
                        tbody = driver.find_element_by_xpath('/html/body/form/table/tbody/tr[3]/td/table/tbody')
                        tr = tbody.find_elements_by_tag_name('tr')
                        for td in tr:
                            row = td.text
                            row_list = row.split(' ')
                            print(row_list)
                            w.writerow(row_list)
                            time.sleep(0.1)
                        print('--------------------------%d 장 , %d 페이지 ---------------------'%(p+1, n+1))
                    else : 
                        #1쪽인 경우 
                        if p == 0 : 
                            xpath1 = '/html/body/form/table/tbody/tr[4]/td/table/tbody/tr[4]/td/table/tbody/tr/td[2]/font/a['
                            xpath2 = ']/font'
                            xpath = xpath1 + str(n) + xpath2
                            driver.find_element_by_xpath(xpath).click()

                            tbody = driver.find_element_by_xpath('/html/body/form/table/tbody/tr[3]/td/table/tbody')
                            tr = tbody.find_elements_by_tag_name('tr')
                            for td in tr:
                                row = td.text
                                row_list = row.split(' ')
                                print(row_list)
                                w.writerow(row_list)
                                time.sleep(0.1)
                            print('--------------------------%d 장 , %d 페이지 ---------------------'%(p+1, n+1))
                        else : 
                            xpath1 = '/html/body/form/table/tbody/tr[4]/td/table/tbody/tr[4]/td/table/tbody/tr/td[2]/font/font/a['
                            xpath2 = ']/font'
                            xpath = xpath1 + str(n) + xpath2
                            driver.find_element_by_xpath(xpath).click()

                            tbody = driver.find_element_by_xpath('/html/body/form/table/tbody/tr[3]/td/table/tbody')
                            tr = tbody.find_elements_by_tag_name('tr')
                            for td in tr:
                                row = td.text
                                row_list = row.split(' ')
                                print(row_list)
                                w.writerow(row_list)
                                time.sleep(0.1)
                            print('--------------------------%d 장 , %d 페이지 ---------------------'%(p+1, n+1))

    
    if(pages%10 != 0):
        for a in range(pages%10):
            for n in range(11):
                # 1쪽 1페이지
                if (a == 0) & (n == 0) : 
                    tbody = driver.find_element_by_xpath('/html/body/form/table/tbody/tr[3]/td/table/tbody')
                    tr = tbody.find_elements_by_tag_name('tr')
                    for td in tr:
                        row = td.text
                        row_list = row.split(' ')
                        print(row_list)
                        w.writerow(row_list)
                        time.sleep(0.1)
                    print('--------------------------%d 페이지 ---------------------'%(n+1))
                else :   
                    if n == 0 : 
                            tbody = driver.find_element_by_xpath('/html/body/form/table/tbody/tr[3]/td/table/tbody')
                            tr = tbody.find_elements_by_tag_name('tr')
                            for td in tr:
                                row = td.text
                                row_list = row.split(' ')
                                print(row_list)
                                w.writerow(row_list)
                                time.sleep(0.1)
                            print('--------------------------%d 페이지 ---------------------'%(n+1))
                    else :  
                        if a == 0 : 
                            xpath1 = '/html/body/form/table/tbody/tr[4]/td/table/tbody/tr[4]/td/table/tbody/tr/td[2]/font/font/a['
                            xpath2 = ']/font'
                            xpath = xpath1 + str(n) + xpath2
                            driver.find_element_by_xpath(xpath).click()

                            tbody = driver.find_element_by_xpath('/html/body/form/table/tbody/tr[3]/td/table/tbody')
                            tr = tbody.find_elements_by_tag_name('tr')
                            for td in tr:
                                row = td.text
                                row_list = row.split(' ')
                                print(row_list)
                                w.writerow(row_list)
                                time.sleep(0.1)
                            print('--------------------------%d 페이지 ---------------------'%(n+1))
# -


