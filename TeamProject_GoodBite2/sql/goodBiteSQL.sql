SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS CHALLENGE_INFO;
DROP TABLE IF EXISTS COMMENT;
DROP TABLE IF EXISTS FOOD;
DROP TABLE IF EXISTS FOOD_TRACKER;
DROP TABLE IF EXISTS NUTRITION_STANDARD;
DROP TABLE IF EXISTS DAILY_SUMMARY;
DROP TABLE IF EXISTS Diagnosis_Record;
DROP TABLE IF EXISTS GRADE_STANDARD;
DROP TABLE IF EXISTS HEALTH_BOARD;
DROP TABLE IF EXISTS MEAL_RECORD;
DROP TABLE IF EXISTS RECIPE_NUTRITION;
DROP TABLE IF EXISTS RECIPE_STEPS;
DROP TABLE IF EXISTS RECIPE;
DROP TABLE IF EXISTS USER_CHALLENGE_CERTIFICATION;
DROP TABLE IF EXISTS USER_CHALLENGE;
DROP TABLE IF EXISTS User_Fridge;
DROP TABLE IF EXISTS USER;




/* Create Tables */

-- 식습관 형성을 위한 식사 습관 형성 첼린지들을 모아두는 테이블
CREATE TABLE CHALLENGE_INFO
(
	-- 챌린지 인덱스
	-- 
	ciIdx int NOT NULL AUTO_INCREMENT COMMENT '챌린지 인덱스
',
	-- 챌린지명
	-- 
	ciTitle varchar(100) NOT NULL COMMENT '챌린지명
',
	-- 챌린지 내용
	-- 
	ciContents text NOT NULL COMMENT '챌린지 내용
',
	-- 챌린지 이미지
	-- 
	ciImage text NOT NULL COMMENT '챌린지 이미지
',
	-- 챌린지 추천
	-- 
	ciRecom int NOT NULL COMMENT '챌린지 추천
',
	-- 챌린지 기간
	-- 
	ciDuration enum(7,14,30) NOT NULL COMMENT '챌린지 기간
',
	-- 챌린지 인증 방법
	-- 
	ciAuthMethod text NOT NULL COMMENT '챌린지 인증 방법
',
	-- 챌린지 작성 날짜
	-- 
	ciWriteDay datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '챌린지 작성 날짜
',
	-- 챌린지 삭제여부
	-- 
	ciDelyn char(1) DEFAULT 'N' NOT NULL COMMENT '챌린지 삭제여부
',
	-- 챌린지 삭제 날짜
	-- 
	ciDelDate datetime NOT NULL COMMENT '챌린지 삭제 날짜
',
	-- 챌린지 수정 날짜
	ciModifyDate datetime NOT NULL COMMENT '챌린지 수정 날짜',
	-- 첼린지 카테고리(유저, 관리자 분류)
	-- 
	ciRole enum('ADMIN','USER') NOT NULL COMMENT '첼린지 카테고리(유저, 관리자 분류)
',
	-- 해당 정보 생성 날자
	ciCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '해당 정보 생성 날자',
	-- 유저 인덱스
	uIdx int unsigned NOT NULL COMMENT '유저 인덱스',
	-- 유저 챌린지 인덱스
	-- 
	ucIdx int unsigned NOT NULL COMMENT '유저 챌린지 인덱스
',
	PRIMARY KEY (ciIdx)
) COMMENT = '식습관 형성을 위한 식사 습관 형성 첼린지들을 모아두는 테이블';


-- 유저가 인증한 챌린지 글에 작성한 댓글을 저장하는 테이블
CREATE TABLE COMMENT
(
	-- 댓글 인덱스
	-- 
	coIdx int NOT NULL AUTO_INCREMENT COMMENT '댓글 인덱스
',
	-- 댓글 내용
	-- 
	coContents text NOT NULL COMMENT '댓글 내용
',
	-- 댓글 작성 날짜
	-- 
	coWriteDay datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '댓글 작성 날짜
',
	-- 댓글 삭제 여부
	-- 
	coDelyn char(1) DEFAULT 'N' NOT NULL COMMENT '댓글 삭제 여부
',
	-- 댓글 삭제 날짜
	-- 
	coDelDate datetime COMMENT '댓글 삭제 날짜
',
	-- 해당 정보 생성 날짜
	coCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '해당 정보 생성 날짜',
	-- 유저 인덱스
	uIdx int unsigned NOT NULL COMMENT '유저 인덱스',
	uccIdx int unsigned NOT NULL,
	PRIMARY KEY (coIdx)
) COMMENT = '유저가 인증한 챌린지 글에 작성한 댓글을 저장하는 테이블';


-- 유저가 먹은 하루 먹은 음식들의 영양소 수치를 합산해주는 테이블
CREATE TABLE DAILY_SUMMARY
(
	-- 일별 요약 인덱스
	-- 
	dsIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '일별 요약 인덱스
',
	-- 총 섭취 열량 (kcal)
	-- 
	dsTotalCalorie varchar(20) NOT NULL COMMENT '총 섭취 열량 (kcal)
',
	-- 총 섭취 탄수화물 (g)
	-- 
	dsTotalCarb varchar(20) NOT NULL COMMENT '총 섭취 탄수화물 (g)
',
	-- 총 섭취 단백질 (g)
	-- 
	dsTotalProtein varchar(20) NOT NULL COMMENT '총 섭취 단백질 (g)
',
	-- 총 섭취 지방 (g)
	-- 
	dsTotalFat varchar(20) NOT NULL COMMENT '총 섭취 지방 (g)
',
	-- 총 섭취 당 (g)
	-- 
	dsTotalSugar varchar(20) NOT NULL COMMENT '총 섭취 당 (g)
',
	-- 총 섭취 식이섬유 (g)
	-- 
	dsTotalFiber varchar(20) NOT NULL COMMENT '총 섭취 식이섬유 (g)
',
	-- 총 섭취 콜레스테롤 (mg)
	-- 
	dsTotalCholesterol varchar(20) NOT NULL COMMENT '총 섭취 콜레스테롤 (mg)
',
	-- 총 섭취 나트륨 (mg)
	-- 
	dsTotalSodium varchar(20) NOT NULL COMMENT '총 섭취 나트륨 (mg)
',
	-- 총 현재 상태
	-- 
	dsStatus enum('주의','양호') NOT NULL COMMENT '총 현재 상태
',
	-- 해당 정보 생성 날짜
	dsCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '해당 정보 생성 날짜',
	-- 유저 인덱스
	uIdx int unsigned NOT NULL COMMENT '유저 인덱스',
	PRIMARY KEY (dsIdx)
) COMMENT = '유저가 먹은 하루 먹은 음식들의 영양소 수치를 합산해주는 테이블';


CREATE TABLE Diagnosis_Record
(
	-- 영양 및 생활패턴 인덱스
	-- 
	drId int NOT NULL AUTO_INCREMENT COMMENT '영양 및 생활패턴 인덱스
',
	-- 유저가 입력하는 신장(cm)
	-- 
	drHeight float NOT NULL COMMENT '유저가 입력하는 신장(cm)
',
	-- 유저가 입력하는 체중(kg)
	-- 
	drWeight float NOT NULL COMMENT '유저가 입력하는 체중(kg)
',
	-- 유저가 입력하는 나이
	-- 
	drAge int NOT NULL COMMENT '유저가 입력하는 나이
',
	-- 유저가 입력하는 의심질환
	-- 
	drDisease varchar(50) NOT NULL COMMENT '유저가 입력하는 의심질환
',
	-- 유저가 입력하는 활동수준
	-- 
	drActivity varchar(50) COMMENT '유저가 입력하는 활동수준
',
	-- 영양 및 생활패턴 진단 날짜
	-- 
	drCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '영양 및 생활패턴 진단 날짜
',
	-- 유저 인덱스
	uIdx int unsigned NOT NULL COMMENT '유저 인덱스',
	PRIMARY KEY (drId)
);


-- 음식에 대한 예제품목을 입력하고 예제 음식의 기본 영양소 데이터를 받는 테이블
CREATE TABLE FOOD
(
	-- 음식 카테고리(분류군)
	-- 
	fCategory varchar(20) NOT NULL COMMENT '음식 카테고리(분류군)
',
	-- 음식 예제음식
	-- 
	fName varchar(20) NOT NULL COMMENT '음식 예제음식
',
	-- 음식 칼로리
	-- 
	fCalorie varchar(20) NOT NULL COMMENT '음식 칼로리
',
	-- 음식 탄수화물
	-- 
	fCarb varchar(20) NOT NULL COMMENT '음식 탄수화물
',
	-- 음식 단백질
	-- 
	fProtein varchar(20) NOT NULL COMMENT '음식 단백질
',
	-- 음식 지방
	-- 
	fFat varchar(20) NOT NULL COMMENT '음식 지방
',
	-- 음식 식이섬유
	-- 
	fFiber varchar(20) NOT NULL COMMENT '음식 식이섬유
',
	-- 음식 인덱스
	-- 
	fIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '음식 인덱스
',
	-- 음식 당류
	-- 
	fSugar varchar(20) NOT NULL COMMENT '음식 당류
',
	-- 음식 포화지방
	-- 
	fStFat varchar(20) NOT NULL COMMENT '음식 포화지방
',
	-- 음식 콜레스테롤
	-- 
	fCholesterol varchar(20) NOT NULL COMMENT '음식 콜레스테롤
',
	-- 음식 나트륨
	-- 
	fSodium varchar(20) NOT NULL COMMENT '음식 나트륨
',
	-- 해당 정보 생성 날짜
	-- 
	fCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '해당 정보 생성 날짜
',
	-- 식사 기록 인덱스
	-- 
	ftId int unsigned NOT NULL COMMENT '식사 기록 인덱스
',
	-- 일별 요약 인덱스
	-- 
	dsIdx int unsigned NOT NULL COMMENT '일별 요약 인덱스
',
	-- 건강정보 게시글 인덱스
	-- 
	hbId int NOT NULL COMMENT '건강정보 게시글 인덱스
',
	-- 유저가 입력한 영양성분 정보 인덱스
	-- 
	mIdx int NOT NULL COMMENT '유저가 입력한 영양성분 정보 인덱스
',
	-- 기준 ID
	-- 
	nsIdx int unsigned NOT NULL COMMENT '기준 ID
',
	-- 레시피 id
	-- 
	rIdx int NOT NULL COMMENT '레시피 id
',
	PRIMARY KEY (fIdx)
) COMMENT = '음식에 대한 예제품목을 입력하고 예제 음식의 기본 영양소 데이터를 받는 테이블';


-- 매 끼니 마다 유저가 먹은 음식 내용들을 기록하는 테이블
CREATE TABLE FOOD_TRACKER
(
	-- 식사 기록 인덱스
	-- 
	ftId int unsigned NOT NULL AUTO_INCREMENT COMMENT '식사 기록 인덱스
',
	-- 식사 기록 날짜 
	-- 
	ftWriteDate datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '식사 기록 날짜 
',
	-- 식사 시간대 (아침/점심/저녁/간식)
	-- 
	ftMealTime varchar(10) NOT NULL COMMENT '식사 시간대 (아침/점심/저녁/간식)
',
	-- 식사 음식 이름
	-- 
	ftFoodName varchar(100) NOT NULL COMMENT '식사 음식 이름
',
	-- 식사 열량 (kcal)
	-- 
	ftCalorie varchar(20) NOT NULL COMMENT '식사 열량 (kcal)
',
	-- 식사 탄수화물 (g)
	-- 
	ftCarb varchar(20) NOT NULL COMMENT '식사 탄수화물 (g)
',
	-- 식사 단백질 (g)
	-- 
	ftProtein varchar(20) NOT NULL COMMENT '식사 단백질 (g)
',
	-- 식사 지방 (g)
	-- 
	ftFat varchar(20) NOT NULL COMMENT '식사 지방 (g)
',
	-- 식사 당 (g)
	-- 
	ftSugar varchar(20) NOT NULL COMMENT '식사 당 (g)
',
	-- 식사 나트륨 (mg)
	-- 
	ftSodium varchar(20) NOT NULL COMMENT '식사 나트륨 (mg)
',
	-- 해당 정보 생성 날짜
	ftCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '해당 정보 생성 날짜',
	-- 유저 인덱스
	uIdx int unsigned NOT NULL COMMENT '유저 인덱스',
	-- 일별 요약 인덱스
	-- 
	dsIdx int unsigned NOT NULL COMMENT '일별 요약 인덱스
',
	PRIMARY KEY (ftId)
) COMMENT = '매 끼니 마다 유저가 먹은 음식 내용들을 기록하는 테이블';


-- 건강데이터와 식단데이터를 취합해서 현재 영양상태에 대해 등급을 부여하는 테이블
CREATE TABLE GRADE_STANDARD
(
	-- 등급 ID
	-- 
	gsIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '등급 ID
',
	-- 최소 차이율 (%)
	-- 
	gsMinPercentage double NOT NULL COMMENT '최소 차이율 (%)
',
	-- 최대 차이율 (%)
	-- 
	gsMaxPercentage double NOT NULL COMMENT '최대 차이율 (%)
',
	-- 등급
	-- 
	gsGrade varchar(10) NOT NULL COMMENT '등급
',
	-- 등급 설명
	-- 
	gsDescription varchar(100) NOT NULL COMMENT '등급 설명
',
	-- 평가 색상 코드
	-- 
	gsColorCode varchar(10) NOT NULL COMMENT '평가 색상 코드
',
	-- 해당 정보 생성 날짜
	gsCreateAt datetime NOT NULL COMMENT '해당 정보 생성 날짜',
	PRIMARY KEY (gsIdx)
) COMMENT = '건강데이터와 식단데이터를 취합해서 현재 영양상태에 대해 등급을 부여하는 테이블';


-- 작성된 카드 뉴스를 저장하는 테이블
CREATE TABLE HEALTH_BOARD
(
	-- 건강정보 게시글 인덱스
	-- 
	hbId int NOT NULL AUTO_INCREMENT COMMENT '건강정보 게시글 인덱스
',
	-- 건강정보 게시글 제목
	-- 
	hbTitle text NOT NULL COMMENT '건강정보 게시글 제목
',
	-- 건강정보 게시글 내용(이미지) - 에디터
	-- 
	hbContents longtext NOT NULL COMMENT '건강정보 게시글 내용(이미지) - 에디터
',
	-- 건강정보 게시글 이미지(썸네일)
	-- 
	hbImage text NOT NULL COMMENT '건강정보 게시글 이미지(썸네일)
',
	-- 건강정보 게시글 작성 날짜
	-- 
	hbWriteDay datetime DEFAULT NOW(), SYSDATE() COMMENT '건강정보 게시글 작성 날짜
',
	-- 건강정보 게시글 삭제 여부
	-- 
	hbDelyn char(1) DEFAULT 'N' NOT NULL COMMENT '건강정보 게시글 삭제 여부
',
	-- 건강정보 게시글 삭제 날짜
	-- 
	hbDelDate datetime NOT NULL COMMENT '건강정보 게시글 삭제 날짜
',
	-- 건강정보 게시글 수정 날짜
	-- 
	hbModifyDate datetime NOT NULL COMMENT '건강정보 게시글 수정 날짜
',
	-- 해당 정보 생성 날짜
	hbCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '해당 정보 생성 날짜',
	-- 유저 인덱스
	uIdx int unsigned NOT NULL COMMENT '유저 인덱스',
	PRIMARY KEY (hbId)
) COMMENT = '작성된 카드 뉴스를 저장하는 테이블';


-- 회원이 식단입력 창에서 입력하는 식단의 영양소 데이터를 받는 테이블
CREATE TABLE MEAL_RECORD
(
	-- 유저가 입력한 영양성분 정보 인덱스
	-- 
	mIdx int NOT NULL AUTO_INCREMENT COMMENT '유저가 입력한 영양성분 정보 인덱스
',
	-- 유저가 입력한 영양성분 정보 기록 날짜
	-- 
	mWriteDate datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '유저가 입력한 영양성분 정보 기록 날짜
',
	-- 유저가 입력한 영양성분열량 (kcal)
	-- 
	mCalorie varchar(20) NOT NULL COMMENT '유저가 입력한 영양성분열량 (kcal)
',
	-- 유저가 입력한 영양성분 탄수화물 (g)
	-- 
	mCarb varchar(20) NOT NULL COMMENT '유저가 입력한 영양성분 탄수화물 (g)
',
	-- 유저가 입력한 영양성분 단백질 (g)
	-- 
	mProtein varchar(20) NOT NULL COMMENT '유저가 입력한 영양성분 단백질 (g)
',
	-- 유저가 입력한 영양성분 지방 (g)
	-- 
	mFat varchar(20) NOT NULL COMMENT '유저가 입력한 영양성분 지방 (g)
',
	-- 유저가 입력한 영양성분 당 (g)
	-- 
	mSugar varchar(20) NOT NULL COMMENT '유저가 입력한 영양성분 당 (g)
',
	-- 유저가 입력한 영양성분 식이섬유 (g)
	-- 
	mFiber varchar(20) NOT NULL COMMENT '유저가 입력한 영양성분 식이섬유 (g)
',
	-- 유저가 입력한 영양성분 콜레스테롤 (mg)
	-- 
	mCholesterol varchar(20) NOT NULL COMMENT '유저가 입력한 영양성분 콜레스테롤 (mg)
',
	-- 유저가 입력한 영양성분 나트륨 (mg)
	-- 
	mSodium varchar(20) NOT NULL COMMENT '유저가 입력한 영양성분 나트륨 (mg)
',
	-- 해당 정보 생성날짜
	mrCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '해당 정보 생성날짜',
	-- 유저 인덱스
	uIdx int unsigned NOT NULL COMMENT '유저 인덱스',
	PRIMARY KEY (mIdx)
) COMMENT = '회원이 식단입력 창에서 입력하는 식단의 영양소 데이터를 받는 테이블';


-- 예제음식과 식단음식의 영양소 데이터를 받아서 현재 회원의 건강상태에 비해 영양 기준이 적절한지 판단하는 기준
CREATE TABLE NUTRITION_STANDARD
(
	-- 기준 ID
	-- 
	nsIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '기준 ID
',
	-- 적정 섭취 열량 (kcal)
	-- 
	nsCalorie varchar(20) NOT NULL COMMENT '적정 섭취 열량 (kcal)
',
	-- 적정 섭취 탄수화물 (g)
	-- 
	nsCarb varchar(20) NOT NULL COMMENT '적정 섭취 탄수화물 (g)
',
	-- 적정 섭취 단백질 (g)
	-- 
	nsProtein varchar(20) NOT NULL COMMENT '적정 섭취 단백질 (g)
',
	-- 적정 섭취 지방 (g)
	-- 
	nsFat varchar(20) NOT NULL COMMENT '적정 섭취 지방 (g)
',
	-- 적정 섭취 당 (g)
	-- 
	nsSugar varchar(20) NOT NULL COMMENT '적정 섭취 당 (g)
',
	-- 적정 섭취 식이섬유 (g)
	-- 
	nsFiber varchar(20) NOT NULL COMMENT '적정 섭취 식이섬유 (g)
',
	-- 적정 섭취 콜레스테롤 (mg)
	-- 
	nsCholesterol varchar(20) NOT NULL COMMENT '적정 섭취 콜레스테롤 (mg)
',
	-- 적정 섭취 나트륨 (mg)
	-- 
	nsSodium varchar(20) NOT NULL COMMENT '적정 섭취 나트륨 (mg)
',
	-- 해당 정보 생성 날짜
	nsCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '해당 정보 생성 날짜',
	-- 유저 인덱스
	uIdx int unsigned NOT NULL COMMENT '유저 인덱스',
	-- 일별 요약 인덱스
	-- 
	dsIdx int unsigned NOT NULL COMMENT '일별 요약 인덱스
',
	PRIMARY KEY (nsIdx)
) COMMENT = '예제음식과 식단음식의 영양소 데이터를 받아서 현재 회원의 건강상태에 비해 영양 기준이 적절한지 판단하는 기준';


CREATE TABLE RECIPE
(
	-- 레시피 id
	-- 
	rIdx int NOT NULL AUTO_INCREMENT COMMENT '레시피 id
',
	-- 레시피 이름
	-- 
	rName varchar(255) NOT NULL COMMENT '레시피 이름
',
	-- 레시피 요약(해시태그)
	-- 
	rSummary text NOT NULL COMMENT '레시피 요약(해시태그)
',
	-- 재료 목록
	-- 
	rIngredients text NOT NULL COMMENT '재료 목록
',
	rImge varchar(255) NOT NULL,
	-- 요리 종류
	-- 
	rCategory varchar(50) NOT NULL COMMENT '요리 종류
',
	rCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL,
	-- 냉장고 인덱스
	-- 
	ufIdx int NOT NULL COMMENT '냉장고 인덱스
',
	PRIMARY KEY (rIdx)
);


CREATE TABLE RECIPE_NUTRITION
(
	-- 영양 정보 고유 id
	rnIdx int NOT NULL AUTO_INCREMENT COMMENT '영양 정보 고유 id',
	-- 열량(kcal)
	-- 
	rnCalories double NOT NULL COMMENT '열량(kcal)
',
	-- 탄수화물(g)
	-- 
	rnCarbohydrates double NOT NULL COMMENT '탄수화물(g)
',
	-- 단백질(g)
	-- 
	rnProtein double NOT NULL COMMENT '단백질(g)
',
	-- 지방(g)
	-- 
	rnFat double NOT NULL COMMENT '지방(g)
',
	rnCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL,
	-- 레시피 id
	-- 
	rIdx int NOT NULL COMMENT '레시피 id
',
	PRIMARY KEY (rnIdx)
);


CREATE TABLE RECIPE_STEPS
(
	-- 조리 단계 고유 id
	-- 
	rsIdx int NOT NULL COMMENT '조리 단계 고유 id
',
	-- 조리 단계 순서
	-- 
	rsOrder int NOT NULL COMMENT '조리 단계 순서
',
	-- 단계별 설명
	-- 
	rsDescription text NOT NULL COMMENT '단계별 설명
',
	-- 단계 이미지
	-- 
	rsImage varchar(255) NOT NULL COMMENT '단계 이미지
',
	rsCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL,
	-- 레시피 id
	-- 
	rIdx int NOT NULL COMMENT '레시피 id
',
	PRIMARY KEY (rsIdx)
);


-- 해당 웹 프로그램에 회원가입하는 회원들의 정보를 관리하는 테이블
CREATE TABLE USER
(
	-- 유저 인덱스
	uIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '유저 인덱스',
	-- 유저 아이디
	-- 
	uId varchar(50) NOT NULL COMMENT '유저 아이디
',
	-- 유저 비밀번호
	-- 
	uPwd varchar(50) NOT NULL COMMENT '유저 비밀번호
',
	-- 유저 이름
	-- 
	uName varchar(50) NOT NULL COMMENT '유저 이름
',
	-- 유저 성별
	-- 
	uGender char(1) NOT NULL COMMENT '유저 성별
',
	-- 유저 생년월일
	-- 
	uBirth varchar(10) NOT NULL COMMENT '유저 생년월일
',
	-- 유저 연락처
	-- 
	uPhone varchar(20) NOT NULL COMMENT '유저 연락처
',
	-- 유저 닉네임
	-- 
	uNickName varchar(20) NOT NULL COMMENT '유저 닉네임
',
	-- 유저 이메일
	-- 
	uMail varchar(40) NOT NULL COMMENT '유저 이메일
',
	-- -유저 썸네일
	-- - 썸네일 기본 유지  > titlelogo
	-- - 유저 썸네일 수정 > 수정된 썸네일 이미지
	uThumbnail text NOT NULL COMMENT '-유저 썸네일
- 썸네일 기본 유지  > titlelogo
- 유저 썸네일 수정 > 수정된 썸네일 이미지',
	-- 유저 아이피
	-- 
	uIp varchar(50) NOT NULL COMMENT '유저 아이피
',
	-- 유저 가입날짜
	-- 
	uEnterDate datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '유저 가입날짜
',
	-- 유저 수정날짜
	-- 
	uUpdateDate datetime COMMENT '유저 수정날짜
',
	-- 유저 탈퇴여부
	-- 
	uDelyn char(1) DEFAULT 'N' NOT NULL COMMENT '유저 탈퇴여부
',
	-- 유저 탈퇴날짜
	-- 
	uDelDate datetime COMMENT '유저 탈퇴날짜
',
	-- 유저 분류
	-- ENUM('ADMIN','USER')
	-- 
	uRole enum('ADMIN','USER') NOT NULL COMMENT '유저 분류
ENUM(''ADMIN'',''USER'')
',
	-- 해당 정보 생성 날짜
	uCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '해당 정보 생성 날짜',
	PRIMARY KEY (uIdx),
	UNIQUE (uId),
	UNIQUE (uNickName)
) COMMENT = '해당 웹 프로그램에 회원가입하는 회원들의 정보를 관리하는 테이블';


-- 유저가 선택한 챌린지가 얼마나 진행되었는지 나타내주는 척도 테이블
CREATE TABLE USER_CHALLENGE
(
	-- 유저 챌린지 인덱스
	-- 
	ucIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '유저 챌린지 인덱스
',
	-- 유저 챌린지 상태
	-- 
	cuStatus enum('진행 중', '완료', '미완료') NOT NULL COMMENT '유저 챌린지 상태
',
	-- 참여 시작 날짜
	-- 
	ucStartDate date NOT NULL COMMENT '참여 시작 날짜
',
	-- 참여 종료 날짜
	-- 
	usEndDate date NOT NULL COMMENT '참여 종료 날짜
',
	-- 유저 챌린지 진행도
	-- 
	ucProgress int NOT NULL COMMENT '유저 챌린지 진행도
',
	-- 해당 정보 생성날짜
	ucCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '해당 정보 생성날짜',
	-- 유저 인덱스
	uIdx int unsigned NOT NULL COMMENT '유저 인덱스',
	PRIMARY KEY (ucIdx)
) COMMENT = '유저가 선택한 챌린지가 얼마나 진행되었는지 나타내주는 척도 테이블';


-- 유저가 선택한 챌린지를 진행하고 실행했을 때 인증을 남길 수 있는 테이블
CREATE TABLE USER_CHALLENGE_CERTIFICATION
(
	uccIdx int unsigned NOT NULL AUTO_INCREMENT,
	-- 유저 챌린지 인증 사진
	-- 
	uccImage text NOT NULL COMMENT '유저 챌린지 인증 사진
',
	-- 유저 챌린지 인증 제목
	-- 
	uccTitle varchar(200) NOT NULL COMMENT '유저 챌린지 인증 제목
',
	-- 유저 챌린지 인증 내용
	-- 
	uccContents text NOT NULL COMMENT '유저 챌린지 인증 내용
',
	-- 유저 챌린지 작성 날짜
	-- 
	uccWriteDay datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '유저 챌린지 작성 날짜
',
	-- 유저 챌린지 삭제 여부
	-- 
	uccDelyn char(1) DEFAULT 'N' NOT NULL COMMENT '유저 챌린지 삭제 여부
',
	-- 유저 챌린지 수정 날짜
	-- 
	-- 
	uccModifyDate datetime NOT NULL COMMENT '유저 챌린지 수정 날짜

',
	-- 유저 챌린지 삭제 날짜
	-- 
	uccDelDate datetime NOT NULL COMMENT '유저 챌린지 삭제 날짜
',
	-- 해당 정보 생성 날짜
	uccCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '해당 정보 생성 날짜',
	-- 유저 인덱스
	uIdx int unsigned NOT NULL COMMENT '유저 인덱스',
	-- 유저 챌린지 인덱스
	-- 
	ucIdx int unsigned NOT NULL COMMENT '유저 챌린지 인덱스
',
	PRIMARY KEY (uccIdx)
) COMMENT = '유저가 선택한 챌린지를 진행하고 실행했을 때 인증을 남길 수 있는 테이블';


CREATE TABLE User_Fridge
(
	-- 냉장고 인덱스
	-- 
	ufIdx int NOT NULL AUTO_INCREMENT COMMENT '냉장고 인덱스
',
	-- 식재료 이름
	-- 
	ufIngredient varchar(150) NOT NULL COMMENT '식재료 이름
',
	-- 식재료 수량
	-- 
	ufQuantity float NOT NULL COMMENT '식재료 수량
',
	-- 보관 타입
	-- 
	ufStorage enum("냉장","냉동") NOT NULL COMMENT '보관 타입
',
	-- 식재료 추가 날짜
	-- 
	ufCreateAt datetime NOT NULL COMMENT '식재료 추가 날짜
',
	-- 유저 인덱스
	uIdx int unsigned NOT NULL COMMENT '유저 인덱스',
	PRIMARY KEY (ufIdx)
);



/* Create Foreign Keys */

ALTER TABLE FOOD
	ADD FOREIGN KEY (dsIdx)
	REFERENCES DAILY_SUMMARY (dsIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE FOOD_TRACKER
	ADD FOREIGN KEY (dsIdx)
	REFERENCES DAILY_SUMMARY (dsIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE NUTRITION_STANDARD
	ADD FOREIGN KEY (dsIdx)
	REFERENCES DAILY_SUMMARY (dsIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE FOOD
	ADD FOREIGN KEY (ftId)
	REFERENCES FOOD_TRACKER (ftId)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE FOOD
	ADD FOREIGN KEY (hbId)
	REFERENCES HEALTH_BOARD (hbId)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE FOOD
	ADD FOREIGN KEY (mIdx)
	REFERENCES MEAL_RECORD (mIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE FOOD
	ADD FOREIGN KEY (nsIdx)
	REFERENCES NUTRITION_STANDARD (nsIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE FOOD
	ADD FOREIGN KEY (rIdx)
	REFERENCES RECIPE (rIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE RECIPE_NUTRITION
	ADD FOREIGN KEY (rIdx)
	REFERENCES RECIPE (rIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE RECIPE_STEPS
	ADD FOREIGN KEY (rIdx)
	REFERENCES RECIPE (rIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE CHALLENGE_INFO
	ADD FOREIGN KEY (uIdx)
	REFERENCES USER (uIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE COMMENT
	ADD FOREIGN KEY (uIdx)
	REFERENCES USER (uIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE DAILY_SUMMARY
	ADD FOREIGN KEY (uIdx)
	REFERENCES USER (uIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE Diagnosis_Record
	ADD FOREIGN KEY (uIdx)
	REFERENCES USER (uIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE FOOD_TRACKER
	ADD FOREIGN KEY (uIdx)
	REFERENCES USER (uIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE HEALTH_BOARD
	ADD FOREIGN KEY (uIdx)
	REFERENCES USER (uIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE MEAL_RECORD
	ADD FOREIGN KEY (uIdx)
	REFERENCES USER (uIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE NUTRITION_STANDARD
	ADD FOREIGN KEY (uIdx)
	REFERENCES USER (uIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE USER_CHALLENGE
	ADD FOREIGN KEY (uIdx)
	REFERENCES USER (uIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE USER_CHALLENGE_CERTIFICATION
	ADD FOREIGN KEY (uIdx)
	REFERENCES USER (uIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE User_Fridge
	ADD FOREIGN KEY (uIdx)
	REFERENCES USER (uIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE CHALLENGE_INFO
	ADD FOREIGN KEY (ucIdx)
	REFERENCES USER_CHALLENGE (ucIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE USER_CHALLENGE_CERTIFICATION
	ADD FOREIGN KEY (ucIdx)
	REFERENCES USER_CHALLENGE (ucIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE COMMENT
	ADD FOREIGN KEY (uccIdx)
	REFERENCES USER_CHALLENGE_CERTIFICATION (uccIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE RECIPE
	ADD FOREIGN KEY (ufIdx)
	REFERENCES User_Fridge (ufIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



