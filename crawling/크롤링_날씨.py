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
import pandas as pd

url1 = "https://amo.kma.go.kr/weather/stat/stat-hourly.do?stnCd=RKSI&year="
years = list(range(2017, 2022))
url2 = "&month="
months = list(range(1, 13))
url3 = "&ele="
elements = list(range(0, 9))
elementsName = ["wind direction", "wind speed", "visiblity", "cloud", "minimum cloud height", "temperatures", "precipitation","snow cover", "new snow"]
for e in elements : 
    for y in years : 
        df = pd.DataFrame([])
        for m in months : 
            df1 = pd.read_html(url1 + str(y) + url2 + str(m) + url3 + str(e))[0]
            df = pd.concat([df, df1])
        df.to_csv("C:/R/weather/Incheon/" + elementsName[e] + "/" + str(y) + ".csv")
        

# +
import pandas as pd

url1 = "https://amo.kma.go.kr/weather/stat/stat-hourly.do?stnCd=RKSS&year="
years = list(range(2017, 2022))
url2 = "&month="
months = list(range(1, 13))
url3 = "&ele="
elements = list(range(0, 9))
elementsName = ["wind direction", "wind speed", "visiblity", "cloud", "minimum cloud height", "temperatures", "precipitation","snow cover", "new snow"]
for e in elements : 
    for y in years : 
        df = pd.DataFrame([])
        for m in months : 
            df1 = pd.read_html(url1 + str(y) + url2 + str(m) + url3 + str(e))[0]
            df = pd.concat([df, df1])
        df.to_csv("C:/R/weather/Gimpo/" + elementsName[e] + "/" + str(y) + ".csv")

# +
import pandas as pd

url1 = "https://amo.kma.go.kr/weather/stat/stat-hourly.do?stnCd=RKPC&year="
years = list(range(2017, 2022))
url2 = "&month="
months = list(range(1, 13))
url3 = "&ele="
elements = list(range(0, 9))
elementsName = ["wind direction", "wind speed", "visiblity", "cloud", "minimum cloud height", "temperatures", "precipitation","snow cover", "new snow"]
for e in elements : 
    for y in years : 
        df = pd.DataFrame([])
        for m in months : 
            df1 = pd.read_html(url1 + str(y) + url2 + str(m) + url3 + str(e))[0]
            df = pd.concat([df, df1])
        df.to_csv("C:/R/weather/Jeju/" + elementsName[e] + "/" + str(y) + ".csv")

# +
import pandas as pd

url1 = "https://amo.kma.go.kr/weather/stat/stat-hourly.do?stnCd=RKJB&year="
years = list(range(2017, 2022))
url2 = "&month="
months = list(range(1, 13))
url3 = "&ele="
elements = list(range(0, 9))
elementsName = ["wind direction", "wind speed", "visiblity", "cloud", "minimum cloud height", "temperatures", "precipitation","snow cover", "new snow"]
for e in elements : 
    for y in years : 
        df = pd.DataFrame([])
        for m in months : 
            df1 = pd.read_html(url1 + str(y) + url2 + str(m) + url3 + str(e))[0]
            df = pd.concat([df, df1])
        df.to_csv("C:/R/weather/Muan/" + elementsName[e] + "/" + str(y) + ".csv")

# +
import pandas as pd

url1 = "https://amo.kma.go.kr/weather/stat/stat-hourly.do?stnCd=RKPU&year="
years = list(range(2017, 2022))
url2 = "&month="
months = list(range(1, 13))
url3 = "&ele="
elements = list(range(0, 9))
elementsName = ["wind direction", "wind speed", "visiblity", "cloud", "minimum cloud height", "temperatures", "precipitation","snow cover", "new snow"]
for e in elements : 
    for y in years : 
        df = pd.DataFrame([])
        for m in months : 
            df1 = pd.read_html(url1 + str(y) + url2 + str(m) + url3 + str(e))[0]
            df = pd.concat([df, df1])
        df.to_csv("C:/R/weather/Ulsan/" + elementsName[e] + "/" + str(y) + ".csv")

# +
import pandas as pd

url1 = "https://amo.kma.go.kr/weather/stat/stat-hourly.do?stnCd=RKJY&year="
years = list(range(2017, 2022))
url2 = "&month="
months = list(range(1, 13))
url3 = "&ele="
elements = list(range(0, 9))
elementsName = ["wind direction", "wind speed", "visiblity", "cloud", "minimum cloud height", "temperatures", "precipitation","snow cover", "new snow"]
for e in elements : 
    for y in years : 
        df = pd.DataFrame([])
        for m in months : 
            df1 = pd.read_html(url1 + str(y) + url2 + str(m) + url3 + str(e))[0]
            df = pd.concat([df, df1])
        df.to_csv("C:/R/weather/Yeosu/" + elementsName[e] + "/" + str(y) + ".csv")

# +
import pandas as pd

url1 = "https://amo.kma.go.kr/weather/stat/stat-hourly.do?stnCd=RKNY&year="
years = list(range(2017, 2022))
url2 = "&month="
months = list(range(1, 13))
url3 = "&ele="
elements = list(range(0, 9))
elementsName = ["wind direction", "wind speed", "visiblity", "cloud", "minimum cloud height", "temperatures", "precipitation","snow cover", "new snow"]
for e in elements : 
    for y in years : 
        df = pd.DataFrame([])
        for m in months : 
            df1 = pd.read_html(url1 + str(y) + url2 + str(m) + url3 + str(e))[0]
            df = pd.concat([df, df1])
        df.to_csv("C:/R/weather/Yangyang/" + elementsName[e] + "/" + str(y) + ".csv")

# +
import pandas as pd

url1 = "https://amo.kma.go.kr/weather/stat/stat-hourly.do?stnCd=RKPC&year=2017&month="
months = [1,2,3,4,5,6,7,8,9,10,11,12]

df = pd.DataFrame([])
for m in months : 
    df1 = pd.read_html(url1 + str(y) + url2 + str(m))[0]
     df = pd.concat([df, df1])
df.to_csv("C:/R/weather/Jeju/wind direction/2017.csv")

# +
import pandas as pd

url1 = "https://amo.kma.go.kr/weather/stat/stat-hourly.do?stnCd=RKPC&year=2017&month="
months = [1,2,3,4,5,6,7,8,9,10,11,12]

df = pd.DataFrame([])
for m in months : 
    df1 = pd.read_html(url1 + str(y) + url2 + str(m))[0]
    df = pd.concat([df, df1])
df.to_csv("C:/R/weather/Jeju/wind direction/2017.csv")

# +
import pandas as pd

url1 = "https://amo.kma.go.kr/weather/stat/stat-hourly.do?stnCd=RKPC&year=2017&month="
months = [1,2,3,4,5,6,7,8,9,10,11,12]

df = pd.DataFrame([])
for m in months : 
    df1 = pd.read_html(url1 + str(y) + url2 + str(m))[0]
    df = pd.concat([df, df1])
df

# +
import pandas as pd

url1 = "https://amo.kma.go.kr/weather/stat/stat-hourly.do?stnCd=RKSI&year="
years = list(range(2017, 2022))
url2 = "&month="
months = list(range(1, 13))
url3 = "&ele="
elements = list(range(0, 9))
elementsName = ["wind direction", "wind speed", "visiblity", "cloud", "minimum cloud height", "temperatures", "precipitation","snow cover", "new snow"]
for e in elements : 
    for y in years : 
        df = pd.DataFrame([])
        for m in months : 
            df1 = pd.read_html(url1 + str(y) + url2 + str(m) + url3 + str(e))[0]
            df1["month"] = m
            df1 = df1.rename(columns={'시간날짜' : 'day'})
            df1 = df1.reindex(columns=['month', 'day', '01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24'])
            df = pd.concat([df, df1])
        df.to_csv("C:/R/weather/Incheon/" + elementsName[e] + "/" + str(y) + ".csv")

# +
import pandas as pd

url1 = "https://amo.kma.go.kr/weather/stat/stat-hourly.do?stnCd=RKSI&year="
years = list(range(2017, 2022))
url2 = "&month="
months = list(range(1, 13))
url3 = "&ele="
elements = list(range(0, 9))
elementsName = ["wind direction", "wind speed", "visiblity", "cloud", "minimum cloud height", "temperatures", "precipitation","snow cover", "new snow"]
for e in elements : 
    for y in years : 
        df = pd.DataFrame([])
        for m in months : 
            df1 = pd.read_html(url1 + str(y) + url2 + str(m) + url3 + str(e))[0]
            df1["month"] = m
            df1 = df1.rename(columns={'시간날짜' : 'day'})
            df1 = df1.reindex(columns=['month', 'day', '01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24'])
            df = pd.concat([df, df1])
        df.to_csv("C:/R/weather/Incheon/" + elementsName[e] + "/" + str(y) + ".csv")

# +
import pandas as pd

url1 = "https://amo.kma.go.kr/weather/stat/stat-hourly.do?stnCd=RKSS&year="
years = list(range(2017, 2022))
url2 = "&month="
months = list(range(1, 13))
url3 = "&ele="
elements = list(range(0, 9))
elementsName = ["wind direction", "wind speed", "visiblity", "cloud", "minimum cloud height", "temperatures", "precipitation","snow cover", "new snow"]
for e in elements : 
    for y in years : 
        df = pd.DataFrame([])
        for m in months : 
            df1 = pd.read_html(url1 + str(y) + url2 + str(m) + url3 + str(e))[0]
            df1["month"] = m
            df1 = df1.rename(columns={'시간날짜' : 'day'})
            df1 = df1.reindex(columns=['month', 'day', '01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24'])
            df = pd.concat([df, df1])
        df.to_csv("C:/R/weather/Gimpo/" + elementsName[e] + "/" + str(y) + ".csv")

# +
import pandas as pd

url1 = "https://amo.kma.go.kr/weather/stat/stat-hourly.do?stnCd=RKPC&year="
years = list(range(2017, 2022))
url2 = "&month="
months = list(range(1, 13))
url3 = "&ele="
elements = list(range(0, 9))
elementsName = ["wind direction", "wind speed", "visiblity", "cloud", "minimum cloud height", "temperatures", "precipitation","snow cover", "new snow"]
for e in elements : 
    for y in years : 
        df = pd.DataFrame([])
        for m in months : 
            df1 = pd.read_html(url1 + str(y) + url2 + str(m) + url3 + str(e))[0]
            df1["month"] = m
            df1 = df1.rename(columns={'시간날짜' : 'day'})
            df1 = df1.reindex(columns=['month', 'day', '01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24'])
            df = pd.concat([df, df1])
        df.to_csv("C:/R/weather/Jeju/" + elementsName[e] + "/" + str(y) + ".csv")

# +
import pandas as pd

url1 = "https://amo.kma.go.kr/weather/stat/stat-hourly.do?stnCd=RKJB&year="
years = list(range(2017, 2022))
url2 = "&month="
months = list(range(1, 13))
url3 = "&ele="
elements = list(range(0, 9))
elementsName = ["wind direction", "wind speed", "visiblity", "cloud", "minimum cloud height", "temperatures", "precipitation","snow cover", "new snow"]
for e in elements : 
    for y in years : 
        df = pd.DataFrame([])
        for m in months : 
            df1 = pd.read_html(url1 + str(y) + url2 + str(m) + url3 + str(e))[0]
            df1["month"] = m
            df1 = df1.rename(columns={'시간날짜' : 'day'})
            df1 = df1.reindex(columns=['month', 'day', '01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24'])
            df = pd.concat([df, df1])
        df.to_csv("C:/R/weather/Muan/" + elementsName[e] + "/" + str(y) + ".csv")

# +
import pandas as pd

url1 = "https://amo.kma.go.kr/weather/stat/stat-hourly.do?stnCd=RKPU&year="
years = list(range(2017, 2022))
url2 = "&month="
months = list(range(1, 13))
url3 = "&ele="
elements = list(range(0, 9))
elementsName = ["wind direction", "wind speed", "visiblity", "cloud", "minimum cloud height", "temperatures", "precipitation","snow cover", "new snow"]
for e in elements : 
    for y in years : 
        df = pd.DataFrame([])
        for m in months : 
            df1 = pd.read_html(url1 + str(y) + url2 + str(m) + url3 + str(e))[0]
            df1["month"] = m
            df1 = df1.rename(columns={'시간날짜' : 'day'})
            df1 = df1.reindex(columns=['month', 'day', '01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24'])
            df = pd.concat([df, df1])
        df.to_csv("C:/R/weather/Ulsan/" + elementsName[e] + "/" + str(y) + ".csv")

# +
import pandas as pd

url1 = "https://amo.kma.go.kr/weather/stat/stat-hourly.do?stnCd=RKJY&year="
years = list(range(2017, 2022))
url2 = "&month="
months = list(range(1, 13))
url3 = "&ele="
elements = list(range(0, 9))
elementsName = ["wind direction", "wind speed", "visiblity", "cloud", "minimum cloud height", "temperatures", "precipitation","snow cover", "new snow"]
for e in elements : 
    for y in years : 
        df = pd.DataFrame([])
        for m in months : 
            df1 = pd.read_html(url1 + str(y) + url2 + str(m) + url3 + str(e))[0]
            df1["month"] = m
            df1 = df1.rename(columns={'시간날짜' : 'day'})
            df1 = df1.reindex(columns=['month', 'day', '01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24'])
            df = pd.concat([df, df1])
        df.to_csv("C:/R/weather/Yeosu/" + elementsName[e] + "/" + str(y) + ".csv")

# +
import pandas as pd

url1 = "https://amo.kma.go.kr/weather/stat/stat-hourly.do?stnCd=RKNY&year="
years = list(range(2017, 2022))
url2 = "&month="
months = list(range(1, 13))
url3 = "&ele="
elements = list(range(0, 9))
elementsName = ["wind direction", "wind speed", "visiblity", "cloud", "minimum cloud height", "temperatures", "precipitation","snow cover", "new snow"]
for e in elements : 
    for y in years : 
        df = pd.DataFrame([])
        for m in months : 
            df1 = pd.read_html(url1 + str(y) + url2 + str(m) + url3 + str(e))[0]
            df1["month"] = m
            df1 = df1.rename(columns={'시간날짜' : 'day'})
            df1 = df1.reindex(columns=['month', 'day', '01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24'])
            df = pd.concat([df, df1])
        df.to_csv("C:/R/weather/Yangyang/" + elementsName[e] + "/" + str(y) + ".csv")
# -


