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

-- �Ľ��� ������ ���� �Ļ� ���� ���� ÿ�������� ��Ƶδ� ���̺�
CREATE TABLE CHALLENGE_INFO
(
	-- ç���� �ε���
	-- 
	ciIdx int NOT NULL AUTO_INCREMENT COMMENT 'ç���� �ε���
',
	-- ç������
	-- 
	ciTitle varchar(100) NOT NULL COMMENT 'ç������
',
	-- ç���� ����
	-- 
	ciContents text NOT NULL COMMENT 'ç���� ����
',
	-- ç���� �̹���
	-- 
	ciImage text NOT NULL COMMENT 'ç���� �̹���
',
	-- ç���� ��õ
	-- 
	ciRecom int NOT NULL COMMENT 'ç���� ��õ
',
	-- ç���� �Ⱓ
	-- 
	ciDuration enum(7,14,30) NOT NULL COMMENT 'ç���� �Ⱓ
',
	-- ç���� ���� ���
	-- 
	ciAuthMethod text NOT NULL COMMENT 'ç���� ���� ���
',
	-- ç���� �ۼ� ��¥
	-- 
	ciWriteDay datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT 'ç���� �ۼ� ��¥
',
	-- ç���� ��������
	-- 
	ciDelyn char(1) DEFAULT 'N' NOT NULL COMMENT 'ç���� ��������
',
	-- ç���� ���� ��¥
	-- 
	ciDelDate datetime NOT NULL COMMENT 'ç���� ���� ��¥
',
	-- ç���� ���� ��¥
	ciModifyDate datetime NOT NULL COMMENT 'ç���� ���� ��¥',
	-- ÿ���� ī�װ�(����, ������ �з�)
	-- 
	ciRole enum('ADMIN','USER') NOT NULL COMMENT 'ÿ���� ī�װ�(����, ������ �з�)
',
	-- �ش� ���� ���� ����
	ciCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '�ش� ���� ���� ����',
	-- ���� �ε���
	uIdx int unsigned NOT NULL COMMENT '���� �ε���',
	-- ���� ç���� �ε���
	-- 
	ucIdx int unsigned NOT NULL COMMENT '���� ç���� �ε���
',
	PRIMARY KEY (ciIdx)
) COMMENT = '�Ľ��� ������ ���� �Ļ� ���� ���� ÿ�������� ��Ƶδ� ���̺�';


-- ������ ������ ç���� �ۿ� �ۼ��� ����� �����ϴ� ���̺�
CREATE TABLE COMMENT
(
	-- ��� �ε���
	-- 
	coIdx int NOT NULL AUTO_INCREMENT COMMENT '��� �ε���
',
	-- ��� ����
	-- 
	coContents text NOT NULL COMMENT '��� ����
',
	-- ��� �ۼ� ��¥
	-- 
	coWriteDay datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '��� �ۼ� ��¥
',
	-- ��� ���� ����
	-- 
	coDelyn char(1) DEFAULT 'N' NOT NULL COMMENT '��� ���� ����
',
	-- ��� ���� ��¥
	-- 
	coDelDate datetime COMMENT '��� ���� ��¥
',
	-- �ش� ���� ���� ��¥
	coCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '�ش� ���� ���� ��¥',
	-- ���� �ε���
	uIdx int unsigned NOT NULL COMMENT '���� �ε���',
	uccIdx int unsigned NOT NULL,
	PRIMARY KEY (coIdx)
) COMMENT = '������ ������ ç���� �ۿ� �ۼ��� ����� �����ϴ� ���̺�';


-- ������ ���� �Ϸ� ���� ���ĵ��� ����� ��ġ�� �ջ����ִ� ���̺�
CREATE TABLE DAILY_SUMMARY
(
	-- �Ϻ� ��� �ε���
	-- 
	dsIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '�Ϻ� ��� �ε���
',
	-- �� ���� ���� (kcal)
	-- 
	dsTotalCalorie varchar(20) NOT NULL COMMENT '�� ���� ���� (kcal)
',
	-- �� ���� ź��ȭ�� (g)
	-- 
	dsTotalCarb varchar(20) NOT NULL COMMENT '�� ���� ź��ȭ�� (g)
',
	-- �� ���� �ܹ��� (g)
	-- 
	dsTotalProtein varchar(20) NOT NULL COMMENT '�� ���� �ܹ��� (g)
',
	-- �� ���� ���� (g)
	-- 
	dsTotalFat varchar(20) NOT NULL COMMENT '�� ���� ���� (g)
',
	-- �� ���� �� (g)
	-- 
	dsTotalSugar varchar(20) NOT NULL COMMENT '�� ���� �� (g)
',
	-- �� ���� ���̼��� (g)
	-- 
	dsTotalFiber varchar(20) NOT NULL COMMENT '�� ���� ���̼��� (g)
',
	-- �� ���� �ݷ����׷� (mg)
	-- 
	dsTotalCholesterol varchar(20) NOT NULL COMMENT '�� ���� �ݷ����׷� (mg)
',
	-- �� ���� ��Ʈ�� (mg)
	-- 
	dsTotalSodium varchar(20) NOT NULL COMMENT '�� ���� ��Ʈ�� (mg)
',
	-- �� ���� ����
	-- 
	dsStatus enum('����','��ȣ') NOT NULL COMMENT '�� ���� ����
',
	-- �ش� ���� ���� ��¥
	dsCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '�ش� ���� ���� ��¥',
	-- ���� �ε���
	uIdx int unsigned NOT NULL COMMENT '���� �ε���',
	PRIMARY KEY (dsIdx)
) COMMENT = '������ ���� �Ϸ� ���� ���ĵ��� ����� ��ġ�� �ջ����ִ� ���̺�';


CREATE TABLE Diagnosis_Record
(
	-- ���� �� ��Ȱ���� �ε���
	-- 
	drId int NOT NULL AUTO_INCREMENT COMMENT '���� �� ��Ȱ���� �ε���
',
	-- ������ �Է��ϴ� ����(cm)
	-- 
	drHeight float NOT NULL COMMENT '������ �Է��ϴ� ����(cm)
',
	-- ������ �Է��ϴ� ü��(kg)
	-- 
	drWeight float NOT NULL COMMENT '������ �Է��ϴ� ü��(kg)
',
	-- ������ �Է��ϴ� ����
	-- 
	drAge int NOT NULL COMMENT '������ �Է��ϴ� ����
',
	-- ������ �Է��ϴ� �ǽ���ȯ
	-- 
	drDisease varchar(50) NOT NULL COMMENT '������ �Է��ϴ� �ǽ���ȯ
',
	-- ������ �Է��ϴ� Ȱ������
	-- 
	drActivity varchar(50) COMMENT '������ �Է��ϴ� Ȱ������
',
	-- ���� �� ��Ȱ���� ���� ��¥
	-- 
	drCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '���� �� ��Ȱ���� ���� ��¥
',
	-- ���� �ε���
	uIdx int unsigned NOT NULL COMMENT '���� �ε���',
	PRIMARY KEY (drId)
);


-- ���Ŀ� ���� ����ǰ���� �Է��ϰ� ���� ������ �⺻ ����� �����͸� �޴� ���̺�
CREATE TABLE FOOD
(
	-- ���� ī�װ�(�з���)
	-- 
	fCategory varchar(20) NOT NULL COMMENT '���� ī�װ�(�з���)
',
	-- ���� ��������
	-- 
	fName varchar(20) NOT NULL COMMENT '���� ��������
',
	-- ���� Į�θ�
	-- 
	fCalorie varchar(20) NOT NULL COMMENT '���� Į�θ�
',
	-- ���� ź��ȭ��
	-- 
	fCarb varchar(20) NOT NULL COMMENT '���� ź��ȭ��
',
	-- ���� �ܹ���
	-- 
	fProtein varchar(20) NOT NULL COMMENT '���� �ܹ���
',
	-- ���� ����
	-- 
	fFat varchar(20) NOT NULL COMMENT '���� ����
',
	-- ���� ���̼���
	-- 
	fFiber varchar(20) NOT NULL COMMENT '���� ���̼���
',
	-- ���� �ε���
	-- 
	fIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '���� �ε���
',
	-- ���� ���
	-- 
	fSugar varchar(20) NOT NULL COMMENT '���� ���
',
	-- ���� ��ȭ����
	-- 
	fStFat varchar(20) NOT NULL COMMENT '���� ��ȭ����
',
	-- ���� �ݷ����׷�
	-- 
	fCholesterol varchar(20) NOT NULL COMMENT '���� �ݷ����׷�
',
	-- ���� ��Ʈ��
	-- 
	fSodium varchar(20) NOT NULL COMMENT '���� ��Ʈ��
',
	-- �ش� ���� ���� ��¥
	-- 
	fCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '�ش� ���� ���� ��¥
',
	-- �Ļ� ��� �ε���
	-- 
	ftId int unsigned NOT NULL COMMENT '�Ļ� ��� �ε���
',
	-- �Ϻ� ��� �ε���
	-- 
	dsIdx int unsigned NOT NULL COMMENT '�Ϻ� ��� �ε���
',
	-- �ǰ����� �Խñ� �ε���
	-- 
	hbId int NOT NULL COMMENT '�ǰ����� �Խñ� �ε���
',
	-- ������ �Է��� ���缺�� ���� �ε���
	-- 
	mIdx int NOT NULL COMMENT '������ �Է��� ���缺�� ���� �ε���
',
	-- ���� ID
	-- 
	nsIdx int unsigned NOT NULL COMMENT '���� ID
',
	-- ������ id
	-- 
	rIdx int NOT NULL COMMENT '������ id
',
	PRIMARY KEY (fIdx)
) COMMENT = '���Ŀ� ���� ����ǰ���� �Է��ϰ� ���� ������ �⺻ ����� �����͸� �޴� ���̺�';


-- �� ���� ���� ������ ���� ���� ������� ����ϴ� ���̺�
CREATE TABLE FOOD_TRACKER
(
	-- �Ļ� ��� �ε���
	-- 
	ftId int unsigned NOT NULL AUTO_INCREMENT COMMENT '�Ļ� ��� �ε���
',
	-- �Ļ� ��� ��¥ 
	-- 
	ftWriteDate datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '�Ļ� ��� ��¥ 
',
	-- �Ļ� �ð��� (��ħ/����/����/����)
	-- 
	ftMealTime varchar(10) NOT NULL COMMENT '�Ļ� �ð��� (��ħ/����/����/����)
',
	-- �Ļ� ���� �̸�
	-- 
	ftFoodName varchar(100) NOT NULL COMMENT '�Ļ� ���� �̸�
',
	-- �Ļ� ���� (kcal)
	-- 
	ftCalorie varchar(20) NOT NULL COMMENT '�Ļ� ���� (kcal)
',
	-- �Ļ� ź��ȭ�� (g)
	-- 
	ftCarb varchar(20) NOT NULL COMMENT '�Ļ� ź��ȭ�� (g)
',
	-- �Ļ� �ܹ��� (g)
	-- 
	ftProtein varchar(20) NOT NULL COMMENT '�Ļ� �ܹ��� (g)
',
	-- �Ļ� ���� (g)
	-- 
	ftFat varchar(20) NOT NULL COMMENT '�Ļ� ���� (g)
',
	-- �Ļ� �� (g)
	-- 
	ftSugar varchar(20) NOT NULL COMMENT '�Ļ� �� (g)
',
	-- �Ļ� ��Ʈ�� (mg)
	-- 
	ftSodium varchar(20) NOT NULL COMMENT '�Ļ� ��Ʈ�� (mg)
',
	-- �ش� ���� ���� ��¥
	ftCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '�ش� ���� ���� ��¥',
	-- ���� �ε���
	uIdx int unsigned NOT NULL COMMENT '���� �ε���',
	-- �Ϻ� ��� �ε���
	-- 
	dsIdx int unsigned NOT NULL COMMENT '�Ϻ� ��� �ε���
',
	PRIMARY KEY (ftId)
) COMMENT = '�� ���� ���� ������ ���� ���� ������� ����ϴ� ���̺�';


-- �ǰ������Ϳ� �Ĵܵ����͸� �����ؼ� ���� ������¿� ���� ����� �ο��ϴ� ���̺�
CREATE TABLE GRADE_STANDARD
(
	-- ��� ID
	-- 
	gsIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '��� ID
',
	-- �ּ� ������ (%)
	-- 
	gsMinPercentage double NOT NULL COMMENT '�ּ� ������ (%)
',
	-- �ִ� ������ (%)
	-- 
	gsMaxPercentage double NOT NULL COMMENT '�ִ� ������ (%)
',
	-- ���
	-- 
	gsGrade varchar(10) NOT NULL COMMENT '���
',
	-- ��� ����
	-- 
	gsDescription varchar(100) NOT NULL COMMENT '��� ����
',
	-- �� ���� �ڵ�
	-- 
	gsColorCode varchar(10) NOT NULL COMMENT '�� ���� �ڵ�
',
	-- �ش� ���� ���� ��¥
	gsCreateAt datetime NOT NULL COMMENT '�ش� ���� ���� ��¥',
	PRIMARY KEY (gsIdx)
) COMMENT = '�ǰ������Ϳ� �Ĵܵ����͸� �����ؼ� ���� ������¿� ���� ����� �ο��ϴ� ���̺�';


-- �ۼ��� ī�� ������ �����ϴ� ���̺�
CREATE TABLE HEALTH_BOARD
(
	-- �ǰ����� �Խñ� �ε���
	-- 
	hbId int NOT NULL AUTO_INCREMENT COMMENT '�ǰ����� �Խñ� �ε���
',
	-- �ǰ����� �Խñ� ����
	-- 
	hbTitle text NOT NULL COMMENT '�ǰ����� �Խñ� ����
',
	-- �ǰ����� �Խñ� ����(�̹���) - ������
	-- 
	hbContents longtext NOT NULL COMMENT '�ǰ����� �Խñ� ����(�̹���) - ������
',
	-- �ǰ����� �Խñ� �̹���(�����)
	-- 
	hbImage text NOT NULL COMMENT '�ǰ����� �Խñ� �̹���(�����)
',
	-- �ǰ����� �Խñ� �ۼ� ��¥
	-- 
	hbWriteDay datetime DEFAULT NOW(), SYSDATE() COMMENT '�ǰ����� �Խñ� �ۼ� ��¥
',
	-- �ǰ����� �Խñ� ���� ����
	-- 
	hbDelyn char(1) DEFAULT 'N' NOT NULL COMMENT '�ǰ����� �Խñ� ���� ����
',
	-- �ǰ����� �Խñ� ���� ��¥
	-- 
	hbDelDate datetime NOT NULL COMMENT '�ǰ����� �Խñ� ���� ��¥
',
	-- �ǰ����� �Խñ� ���� ��¥
	-- 
	hbModifyDate datetime NOT NULL COMMENT '�ǰ����� �Խñ� ���� ��¥
',
	-- �ش� ���� ���� ��¥
	hbCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '�ش� ���� ���� ��¥',
	-- ���� �ε���
	uIdx int unsigned NOT NULL COMMENT '���� �ε���',
	PRIMARY KEY (hbId)
) COMMENT = '�ۼ��� ī�� ������ �����ϴ� ���̺�';


-- ȸ���� �Ĵ��Է� â���� �Է��ϴ� �Ĵ��� ����� �����͸� �޴� ���̺�
CREATE TABLE MEAL_RECORD
(
	-- ������ �Է��� ���缺�� ���� �ε���
	-- 
	mIdx int NOT NULL AUTO_INCREMENT COMMENT '������ �Է��� ���缺�� ���� �ε���
',
	-- ������ �Է��� ���缺�� ���� ��� ��¥
	-- 
	mWriteDate datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '������ �Է��� ���缺�� ���� ��� ��¥
',
	-- ������ �Է��� ���缺�п��� (kcal)
	-- 
	mCalorie varchar(20) NOT NULL COMMENT '������ �Է��� ���缺�п��� (kcal)
',
	-- ������ �Է��� ���缺�� ź��ȭ�� (g)
	-- 
	mCarb varchar(20) NOT NULL COMMENT '������ �Է��� ���缺�� ź��ȭ�� (g)
',
	-- ������ �Է��� ���缺�� �ܹ��� (g)
	-- 
	mProtein varchar(20) NOT NULL COMMENT '������ �Է��� ���缺�� �ܹ��� (g)
',
	-- ������ �Է��� ���缺�� ���� (g)
	-- 
	mFat varchar(20) NOT NULL COMMENT '������ �Է��� ���缺�� ���� (g)
',
	-- ������ �Է��� ���缺�� �� (g)
	-- 
	mSugar varchar(20) NOT NULL COMMENT '������ �Է��� ���缺�� �� (g)
',
	-- ������ �Է��� ���缺�� ���̼��� (g)
	-- 
	mFiber varchar(20) NOT NULL COMMENT '������ �Է��� ���缺�� ���̼��� (g)
',
	-- ������ �Է��� ���缺�� �ݷ����׷� (mg)
	-- 
	mCholesterol varchar(20) NOT NULL COMMENT '������ �Է��� ���缺�� �ݷ����׷� (mg)
',
	-- ������ �Է��� ���缺�� ��Ʈ�� (mg)
	-- 
	mSodium varchar(20) NOT NULL COMMENT '������ �Է��� ���缺�� ��Ʈ�� (mg)
',
	-- �ش� ���� ������¥
	mrCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '�ش� ���� ������¥',
	-- ���� �ε���
	uIdx int unsigned NOT NULL COMMENT '���� �ε���',
	PRIMARY KEY (mIdx)
) COMMENT = 'ȸ���� �Ĵ��Է� â���� �Է��ϴ� �Ĵ��� ����� �����͸� �޴� ���̺�';


-- �������İ� �Ĵ������� ����� �����͸� �޾Ƽ� ���� ȸ���� �ǰ����¿� ���� ���� ������ �������� �Ǵ��ϴ� ����
CREATE TABLE NUTRITION_STANDARD
(
	-- ���� ID
	-- 
	nsIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '���� ID
',
	-- ���� ���� ���� (kcal)
	-- 
	nsCalorie varchar(20) NOT NULL COMMENT '���� ���� ���� (kcal)
',
	-- ���� ���� ź��ȭ�� (g)
	-- 
	nsCarb varchar(20) NOT NULL COMMENT '���� ���� ź��ȭ�� (g)
',
	-- ���� ���� �ܹ��� (g)
	-- 
	nsProtein varchar(20) NOT NULL COMMENT '���� ���� �ܹ��� (g)
',
	-- ���� ���� ���� (g)
	-- 
	nsFat varchar(20) NOT NULL COMMENT '���� ���� ���� (g)
',
	-- ���� ���� �� (g)
	-- 
	nsSugar varchar(20) NOT NULL COMMENT '���� ���� �� (g)
',
	-- ���� ���� ���̼��� (g)
	-- 
	nsFiber varchar(20) NOT NULL COMMENT '���� ���� ���̼��� (g)
',
	-- ���� ���� �ݷ����׷� (mg)
	-- 
	nsCholesterol varchar(20) NOT NULL COMMENT '���� ���� �ݷ����׷� (mg)
',
	-- ���� ���� ��Ʈ�� (mg)
	-- 
	nsSodium varchar(20) NOT NULL COMMENT '���� ���� ��Ʈ�� (mg)
',
	-- �ش� ���� ���� ��¥
	nsCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '�ش� ���� ���� ��¥',
	-- ���� �ε���
	uIdx int unsigned NOT NULL COMMENT '���� �ε���',
	-- �Ϻ� ��� �ε���
	-- 
	dsIdx int unsigned NOT NULL COMMENT '�Ϻ� ��� �ε���
',
	PRIMARY KEY (nsIdx)
) COMMENT = '�������İ� �Ĵ������� ����� �����͸� �޾Ƽ� ���� ȸ���� �ǰ����¿� ���� ���� ������ �������� �Ǵ��ϴ� ����';


CREATE TABLE RECIPE
(
	-- ������ id
	-- 
	rIdx int NOT NULL AUTO_INCREMENT COMMENT '������ id
',
	-- ������ �̸�
	-- 
	rName varchar(255) NOT NULL COMMENT '������ �̸�
',
	-- ������ ���(�ؽ��±�)
	-- 
	rSummary text NOT NULL COMMENT '������ ���(�ؽ��±�)
',
	-- ��� ���
	-- 
	rIngredients text NOT NULL COMMENT '��� ���
',
	rImge varchar(255) NOT NULL,
	-- �丮 ����
	-- 
	rCategory varchar(50) NOT NULL COMMENT '�丮 ����
',
	rCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL,
	-- ����� �ε���
	-- 
	ufIdx int NOT NULL COMMENT '����� �ε���
',
	PRIMARY KEY (rIdx)
);


CREATE TABLE RECIPE_NUTRITION
(
	-- ���� ���� ���� id
	rnIdx int NOT NULL AUTO_INCREMENT COMMENT '���� ���� ���� id',
	-- ����(kcal)
	-- 
	rnCalories double NOT NULL COMMENT '����(kcal)
',
	-- ź��ȭ��(g)
	-- 
	rnCarbohydrates double NOT NULL COMMENT 'ź��ȭ��(g)
',
	-- �ܹ���(g)
	-- 
	rnProtein double NOT NULL COMMENT '�ܹ���(g)
',
	-- ����(g)
	-- 
	rnFat double NOT NULL COMMENT '����(g)
',
	rnCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL,
	-- ������ id
	-- 
	rIdx int NOT NULL COMMENT '������ id
',
	PRIMARY KEY (rnIdx)
);


CREATE TABLE RECIPE_STEPS
(
	-- ���� �ܰ� ���� id
	-- 
	rsIdx int NOT NULL COMMENT '���� �ܰ� ���� id
',
	-- ���� �ܰ� ����
	-- 
	rsOrder int NOT NULL COMMENT '���� �ܰ� ����
',
	-- �ܰ躰 ����
	-- 
	rsDescription text NOT NULL COMMENT '�ܰ躰 ����
',
	-- �ܰ� �̹���
	-- 
	rsImage varchar(255) NOT NULL COMMENT '�ܰ� �̹���
',
	rsCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL,
	-- ������ id
	-- 
	rIdx int NOT NULL COMMENT '������ id
',
	PRIMARY KEY (rsIdx)
);


-- �ش� �� ���α׷��� ȸ�������ϴ� ȸ������ ������ �����ϴ� ���̺�
CREATE TABLE USER
(
	-- ���� �ε���
	uIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '���� �ε���',
	-- ���� ���̵�
	-- 
	uId varchar(50) NOT NULL COMMENT '���� ���̵�
',
	-- ���� ��й�ȣ
	-- 
	uPwd varchar(50) NOT NULL COMMENT '���� ��й�ȣ
',
	-- ���� �̸�
	-- 
	uName varchar(50) NOT NULL COMMENT '���� �̸�
',
	-- ���� ����
	-- 
	uGender char(1) NOT NULL COMMENT '���� ����
',
	-- ���� �������
	-- 
	uBirth varchar(10) NOT NULL COMMENT '���� �������
',
	-- ���� ����ó
	-- 
	uPhone varchar(20) NOT NULL COMMENT '���� ����ó
',
	-- ���� �г���
	-- 
	uNickName varchar(20) NOT NULL COMMENT '���� �г���
',
	-- ���� �̸���
	-- 
	uMail varchar(40) NOT NULL COMMENT '���� �̸���
',
	-- -���� �����
	-- - ����� �⺻ ����  > titlelogo
	-- - ���� ����� ���� > ������ ����� �̹���
	uThumbnail text NOT NULL COMMENT '-���� �����
- ����� �⺻ ����  > titlelogo
- ���� ����� ���� > ������ ����� �̹���',
	-- ���� ������
	-- 
	uIp varchar(50) NOT NULL COMMENT '���� ������
',
	-- ���� ���Գ�¥
	-- 
	uEnterDate datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '���� ���Գ�¥
',
	-- ���� ������¥
	-- 
	uUpdateDate datetime COMMENT '���� ������¥
',
	-- ���� Ż�𿩺�
	-- 
	uDelyn char(1) DEFAULT 'N' NOT NULL COMMENT '���� Ż�𿩺�
',
	-- ���� Ż��¥
	-- 
	uDelDate datetime COMMENT '���� Ż��¥
',
	-- ���� �з�
	-- ENUM('ADMIN','USER')
	-- 
	uRole enum('ADMIN','USER') NOT NULL COMMENT '���� �з�
ENUM(''ADMIN'',''USER'')
',
	-- �ش� ���� ���� ��¥
	uCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '�ش� ���� ���� ��¥',
	PRIMARY KEY (uIdx),
	UNIQUE (uId),
	UNIQUE (uNickName)
) COMMENT = '�ش� �� ���α׷��� ȸ�������ϴ� ȸ������ ������ �����ϴ� ���̺�';


-- ������ ������ ç������ �󸶳� ����Ǿ����� ��Ÿ���ִ� ô�� ���̺�
CREATE TABLE USER_CHALLENGE
(
	-- ���� ç���� �ε���
	-- 
	ucIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '���� ç���� �ε���
',
	-- ���� ç���� ����
	-- 
	cuStatus enum('���� ��', '�Ϸ�', '�̿Ϸ�') NOT NULL COMMENT '���� ç���� ����
',
	-- ���� ���� ��¥
	-- 
	ucStartDate date NOT NULL COMMENT '���� ���� ��¥
',
	-- ���� ���� ��¥
	-- 
	usEndDate date NOT NULL COMMENT '���� ���� ��¥
',
	-- ���� ç���� ���൵
	-- 
	ucProgress int NOT NULL COMMENT '���� ç���� ���൵
',
	-- �ش� ���� ������¥
	ucCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '�ش� ���� ������¥',
	-- ���� �ε���
	uIdx int unsigned NOT NULL COMMENT '���� �ε���',
	PRIMARY KEY (ucIdx)
) COMMENT = '������ ������ ç������ �󸶳� ����Ǿ����� ��Ÿ���ִ� ô�� ���̺�';


-- ������ ������ ç������ �����ϰ� �������� �� ������ ���� �� �ִ� ���̺�
CREATE TABLE USER_CHALLENGE_CERTIFICATION
(
	uccIdx int unsigned NOT NULL AUTO_INCREMENT,
	-- ���� ç���� ���� ����
	-- 
	uccImage text NOT NULL COMMENT '���� ç���� ���� ����
',
	-- ���� ç���� ���� ����
	-- 
	uccTitle varchar(200) NOT NULL COMMENT '���� ç���� ���� ����
',
	-- ���� ç���� ���� ����
	-- 
	uccContents text NOT NULL COMMENT '���� ç���� ���� ����
',
	-- ���� ç���� �ۼ� ��¥
	-- 
	uccWriteDay datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '���� ç���� �ۼ� ��¥
',
	-- ���� ç���� ���� ����
	-- 
	uccDelyn char(1) DEFAULT 'N' NOT NULL COMMENT '���� ç���� ���� ����
',
	-- ���� ç���� ���� ��¥
	-- 
	-- 
	uccModifyDate datetime NOT NULL COMMENT '���� ç���� ���� ��¥

',
	-- ���� ç���� ���� ��¥
	-- 
	uccDelDate datetime NOT NULL COMMENT '���� ç���� ���� ��¥
',
	-- �ش� ���� ���� ��¥
	uccCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '�ش� ���� ���� ��¥',
	-- ���� �ε���
	uIdx int unsigned NOT NULL COMMENT '���� �ε���',
	-- ���� ç���� �ε���
	-- 
	ucIdx int unsigned NOT NULL COMMENT '���� ç���� �ε���
',
	PRIMARY KEY (uccIdx)
) COMMENT = '������ ������ ç������ �����ϰ� �������� �� ������ ���� �� �ִ� ���̺�';


CREATE TABLE User_Fridge
(
	-- ����� �ε���
	-- 
	ufIdx int NOT NULL AUTO_INCREMENT COMMENT '����� �ε���
',
	-- ����� �̸�
	-- 
	ufIngredient varchar(150) NOT NULL COMMENT '����� �̸�
',
	-- ����� ����
	-- 
	ufQuantity float NOT NULL COMMENT '����� ����
',
	-- ���� Ÿ��
	-- 
	ufStorage enum("����","�õ�") NOT NULL COMMENT '���� Ÿ��
',
	-- ����� �߰� ��¥
	-- 
	ufCreateAt datetime NOT NULL COMMENT '����� �߰� ��¥
',
	-- ���� �ε���
	uIdx int unsigned NOT NULL COMMENT '���� �ε���',
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



