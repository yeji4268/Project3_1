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
# [Scaler Test] : StandardScaler
from sklearn.model_selection import train_test_split
from sklearn.naive_bayes import GaussianNB
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import confusion_matrix
from sklearn import metrics
from sklearn.metrics import accuracy_score,precision_score, recall_score, f1_score
import pandas as pd


# 데이터 불러오기
data = pd.read_csv('C:\Projects\data_test1.csv')

# [데이터 확인] 상위 5행 불러오기
data.head()

# [데이터 확인] 데이터 정보
data.info()

# 컬럼 타입 변경 : 문자형 -> 숫자형 
# error 옵션 : 숫자로 변경할 수 없는 데이터면 NaN 처리
# NaN 처리된 데이터는 0으로 바뀜
data = data.apply(pd.to_numeric, errors = 'coerce').fillna(0)

# 바뀐 데이터 타입 확인
data.info()

# [데이터 확인] 데이터 요약, 관련 통계
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

# # 스케일링 
# ss = StandardScaler()

# # train 데이터 조정
# ss.fit(train_input)

# # train / test 데이터 스케일 조정, 표준 점수로 변환
# train_scaled = ss.transform(train_input)
# test_scaled = ss.transform(test_input)

# 가우시안 나이브베이즈 객체 생성
nb = GaussianNB()

# 학습
nb_fitted = nb.fit(train_input, train_target)
y_pred = nb_fitted.predict(test_input)

# 혼동 행렬 : 성능 확인
print(metrics.classification_report(test_target, y_pred))
print(confusion_matrix(test_target, y_pred))
print("----------------------------------------------------------------")
print(f"[Accuracy_score] : {accuracy_score(test_target, y_pred)}")
print(f"[Precision_score] : {precision_score(test_target, y_pred)}")
print(f"[Recall_score] : {recall_score(test_target, y_pred)}")
print(f"[F1_score] : {f1_score(test_target, y_pred)}")
print("----------------------------------------------------------------")

# 테스트 
print(nb_fitted.predict_proba(train_input)[[1, 7, 12]])
print("----------------------------------------------------------------")
print(f"[Test #1] 예측값 : {nb_fitted.predict(train_input)[1]}")
print(f"[Test #2] 예측값 : {nb_fitted.predict(train_input)[7]}")
print(f"[Test #3] 예측값 : {nb_fitted.predict(train_input)[12]}")
print("----------------------------------------------------------------")
print(f"[Test #1] 실제값 : {train_target[1]}")
print(f"[Test #2] 실제값 : {train_target[7]}")
print(f"[Test #3] 실제값 : {train_target[12]}")


# 추가 테스트 (결항)
test = [[8 ,15, 4, 20.5, 600, 3, 18]]
pred = nb_fitted.predict(test)
y_true = 1

print("----------------------------------------------------------------")
print(f"예측값 : {pred} ")
print(f"실제값 : {y_true}")


