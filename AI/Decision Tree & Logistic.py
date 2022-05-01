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
# 필요한 라이브러리 & 모듈 
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.linear_model import LogisticRegression
from sklearn.tree import DecisionTreeClassifier
from sklearn.tree import plot_tree
from sklearn.metrics import accuracy_score,precision_score, recall_score, f1_score

# 데이터 불러오기
data = pd.read_csv('C:\Projects\data_test1.csv', encoding = 'euc-kr')

# 상위 5행 확인 : 데이터 확인 
data.head()


# 데이터 정보 확인, 누락 확인
data.info()

# 컬럼 타입 변경 : 문자형 -> 숫자형 
# error 옵션 : 숫자로 변경할 수 없는 데이터면 NaN 처리
# NaN 처리된 데이터는 0으로 바뀜
data = data.apply(pd.to_numeric, errors = 'coerce').fillna(0)

# 바뀐 데이터 타입 확인
data.info()

# 데이터 요약, 관련 통계
data.describe()

# pandas 데이터 프레임 객체 -> numpy 배열 객체
# 학습 데이터 
train_data = data[['cloud','min_cloud_hei','rain', 'temp', 'visiblity','wind_dire','wind_spd']].to_numpy()
# 타겟 데이터 
target=data['class'].to_numpy()

# train_test_split : 학습 / 테스트 데이터 셋 분리 모듈
# 테스트 셋 사이즈 = 30%
train_input, test_input, train_target, test_target = train_test_split(
train_data, target, test_size = 0.3)

# 데이터 셋 분리 확인
print(train_input.shape, test_input.shape)

# 스케일링 
ss = StandardScaler()

# train 데이터 조정
ss.fit(train_input)

# train / test 데이터 스케일 조정, 표준 점수로 변환
train_scaled = ss.transform(train_input)
test_scaled = ss.transform(test_input)

# 로지스틱 회귀
lr = LogisticRegression()

# 학습
lr.fit(train_scaled, train_target)
y_pred = lr.predict(train_scaled)

# 정확도 확인
# 학습 데이터 정확도
print(f"[Logistic Regression] Train_data Accuracy : {lr.score(train_scaled, train_target)}")
# 테스트 데이터 정확도
print(f"[Logistic Regression] Test_data Accuracy : {lr.score(test_scaled, test_target)}")
# 계수, y절편
print(lr.coef_, lr.intercept_)

print("----------------------------------------------------------------")
print(f"[Accuracy_score] : {accuracy_score(train_target, y_pred)}")
print(f"[Precision_score] : {precision_score(train_target, y_pred)}")
print(f"[Recall_score] : {recall_score(train_target, y_pred)}")
print(f"[F1_score] : {f1_score(train_target, y_pred)}")
print("----------------------------------------------------------------")

# 테스트(결항)
test = [[8 ,15, 4, 20.5, 600, 3, 18]]
pred = lr.predict(test)
y_true = 1

print(f"예측값 : {pred} ")
print(f"실제값 : {y_true}")

# +
# decision tree 
dt = DecisionTreeClassifier()
# 학습
dt.fit(train_scaled, train_target)
# 정확도 확인 
print(f"[Decision Tree] Train_data Accuracy : {dt.score(train_scaled, train_target)}")
print(f"[Decision Tree] Test_data Accuracy : {dt.score(test_scaled, test_target)}")

y_pred = dt.predict([test_scaled[-1]])
y_true = test_target[-1]

print(f"예측값 : {y_pred} ")
print(f"실제값 : {y_true}")
# plot 그리기 사이즈 : (10,7)
plt.figure(figsize=(10,7))
plot_tree(dt)
plt.show()
# -


# plot 그리기 
plt.figure(figsize=(10,7))
# 최대 깊이 : 1, 색 칠하기 : true, feature_names : feature 이름 전달
plot_tree(dt, max_depth=1, filled=True, feature_names=['cloud','min_cloud_hei','rain', 'temp', 'visiblity','wind_dire','wind_spd'])
plt.show()



# +
# 깊이 3으로 디시전트리 만들기
dt = DecisionTreeClassifier(max_depth=3)
#학습
dt.fit(train_scaled, train_target)
# 정확도 확인
print(f"[Decision Tree] Train_data Accuracy : {dt.score(train_scaled, train_target)}")
print(f"[Decision Tree] Test_data Accuracy : {dt.score(test_scaled, test_target)}")

plt.figure(figsize=(20,15))
plot_tree(dt, filled=True, feature_names=['cloud','min_cloud_hei','rain', 'temp', 'visiblity','wind_dire','wind_spd'])
plt.show()

# 변수별 중요도 확인
print(dt.feature_importances_)
