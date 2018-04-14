# AD Tracking C팀(서범석님)
	- EDA
		○ Alluival diagrams에 대해서 찾아볼만한 듯
	- Catboost starter
		○ Catboost 
			§ One-hot encoding을 거치지 않고, 변수의 위치만 설정해주면 문자열 변수 사용
			§ LightGBM에도 비슷한 기능이 있으나 문자열 변수로는 받지 않음
		○ Simple Preprocessing
		○ CatBoostRegressor vs CatBoostClassifier
			§ Catboost classifier로 돌리니 더 잘되었다
	- Q & A 어느정도 숫자가 되어야지 카테고리로 짜르기가 편한가
		○ 스칼라값으로 의미 있다기보다는 인코딩 된 값이라 카테고리로 봐도 괜찮을듯

# AD Tracking
	- EDA
		○ 컴퓨터에서 안돌아서 1/5로 줄이고 데이터 타입을 변경하였음
		○ 시간에 대한 고찰
			§ 하루에 분당 얼마나 클릭을 수행했는가, 분당으로 했을 때 얼마나 기여를 하였는가 확인
			§ 하루마다 패턴이 존재한다
			§ 시간대 관련해서 넓기 때문에 섣불리 판단할 수 있는가?
		○ IP 관련해서 꽤 많이 겹치는 경우가 있었다
		
	
# 발표자료 준비
	- 개요
		○ Measuring App Performance
	- EDA
		○ EDA에서 확인할 수 있는 것들
	- 간단한 결과 확인









### 종민 정리 내용
* H2O 패키지 - Hadoop 클러스터 기반으로 예측모델 구축 가능. JAVA 기반 오픈소스 머신러닝/AI 플랫폼
* 사용 경험에 대한 다른 분의 말씀 - 튜토리얼이 잘되어있음. 가상 서버(?) 라는 것이 올라가 있어서 모델 솔루션에 문제가 있었음
* 중복 설치에 대한 Unique Count (ip, device, os 그룹 카운트)