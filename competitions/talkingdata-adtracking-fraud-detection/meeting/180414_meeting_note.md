

#### 1. Google Landmark Detection
* Transfer learning - 기존 모델을 사용하여 빠르게 새로운 모델을 구축. 과정 중 일부가 프리징 단계임.
* Dataset 이 매우 Imbalanced 함. 1개 클래스 1개 이미지이기도함.
* 케라스는 텐서플로의 하이레벨 Wrapper 느낌. 파이토치는 전체 레이어를 건드릴 수 있는 점.
* 발표자분 사내에서는 텐서플로 사용
    - 발표자분 Spark mllib 만 사용.. 딥러닝 lib 으로 넘어가야하는데.. 꽤 많은 TFonSpark, BigDL 등 lib 존재

#### 1차 발표 리뷰
* IP 대역은 빌딩, 지역 별로 나누어 공유할 수 있음에 따라 (with 동일 디바이스) 특정 사용자 1명을 지목할 피쳐를 만들기는 힘듦.
* 실제 목적은 2차 대회에서 나올 것.