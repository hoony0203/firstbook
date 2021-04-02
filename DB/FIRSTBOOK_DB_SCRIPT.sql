DROP TABLE MEM_INFO CASCADE CONSTRAINTS;
DROP TABLE COMPET_INFO CASCADE CONSTRAINTS;
DROP TABLE COMPET_DETAIL CASCADE CONSTRAINTS;
DROP TABLE COMPET_FIXTURE CASCADE CONSTRAINTS;
DROP TABLE GENRE_CATEGORY CASCADE CONSTRAINTS;
DROP TABLE WEB_NOV_INFO CASCADE CONSTRAINTS;
DROP TABLE WEB_NOV_DETAIL CASCADE CONSTRAINTS;
DROP TABLE WEB_NOV_REPLY CASCADE CONSTRAINTS;
DROP TABLE WISH_LIST CASCADE CONSTRAINTS;
DROP TABLE QNA CASCADE CONSTRAINTS;
DROP TABLE QNA_REPLY CASCADE CONSTRAINTS;
DROP TABLE ACCUM_REPORT CASCADE CONSTRAINTS;



------------MEM_INFO

CREATE TABLE MEM_INFO
(
    MEM_NUM           VARCHAR2(15) PRIMARY KEY,
    MEM_NAME          VARCHAR2(30)                                              NOT NULL,
    MEM_ID            VARCHAR2(30)                                              NOT NULL UNIQUE,
    MEM_PWD           VARCHAR2(30)                                              NOT NULL,
    MEM_EMAIL         VARCHAR2(320)                                             NOT NULL,
    MEM_ADDRESS       VARCHAR2(320),
    MEM_BIRTHDATE     DATE                                                      NOT NULL,
    MEM_LOGIN_COUNT   NUMBER  DEFAULT 0                                         NOT NULL,
    MEM_COIN          NUMBER  DEFAULT 0                                         NOT NULL,
    MEM_CAN_VOTE_YN   CHAR(2) DEFAULT 'N' CHECK (MEM_CAN_VOTE_YN IN ('Y', 'N')) NOT NULL,
    MEM_WITHDRAW_YN   CHAR(2) DEFAULT 'N' CHECK (MEM_WITHDRAW_YN IN ('Y', 'N')) NOT NULL,
    MEM_WITHDRAW_DATE VARCHAR2(20),
    MEM_CLASS         VARCHAR2(10),
    MEM_BLOCK_YN      CHAR(2) DEFAULT 'N' CHECK (MEM_BLOCK_YN IN ('Y', 'N')),
    MEM_BLOCK_DATE    VARCHAR2(20),
    MEM_ENROLL_DATE   DATE                                                      NOT NULL
);

INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0001', '관리자', 'manager01', 'manager01', 'manager@naver.com', '서울시 강남구', TO_DATE('92/08/10', 'RR/MM/DD'),
        10000, 100000000, 'Y', 'N', '-', '관리자', 'N', '-', TO_DATE('19/06/01', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0002', '김용승', 'dlagon77', 'dlagon', 'dlagon77@gmail.com', '서울시 서초구', TO_DATE('85/01/05', 'RR/MM/DD'), 100,
        19500, 'Y', 'N', '-', '회원', 'N', '-', TO_DATE('19/06/02', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0003', '조영석', 'yscho', 'yscho0819', 'dongr52@naver.com', '서울시 서초구', TO_DATE('92/08/19', 'RR/MM/DD'), 94, 9600,
        'Y', 'N', '-', '회원', 'N', '-', TO_DATE('19/06/05', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0004', '임창훈', 'chim', 'chim2010', 'chim12@gmail.com', '서울시 강동구', TO_DATE('90/06/21', 'RR/MM/DD'), 54, 15000,
        'Y', 'N', '-', '회원', 'N', '-', TO_DATE('19/06/05', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0005', '송준원', 'jwsong', 'jwsong2011', 'jwsong08@gmail.com', '서울시 동작구', TO_DATE('96/05/19', 'RR/MM/DD'), 120,
        20000, 'Y', 'N', '-', '회원', 'N', '-', TO_DATE('19/06/05', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0006', '천진민', 'jmchun', 'jmchun2012', 'jmchun88@gmail.com', '서울시 종로구', TO_DATE('97/10/18', 'RR/MM/DD'), 65,
        60000, 'Y', 'N', '-', '회원', 'N', '-', TO_DATE('19/06/05', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0007', '김세정', 'sjkim', 'sjkim2012', 'jwkim8080@gmail.com', '경기도 과천시', TO_DATE('89/04/19', 'RR/MM/DD'), 21,
        3300, 'Y', 'N', '-', '회원', 'N', '-', TO_DATE('19/06/06', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0008', '강동원', 'tuna10', 'dw2020', 'tunakang@gmail.com', '서울시 송파구', TO_DATE('70/10/12', 'RR/MM/DD'), 98, 20100,
        'Y', 'N', '-', '회원', 'N', '-', TO_DATE('19/06/07', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0009', '황정민', 'jmhwang', 'jmjm1111', 'jmjm@naver.com', '서울시 금천구', TO_DATE('65/03/13', 'RR/MM/DD'), 20, 1700,
        'Y', 'Y', '01/01/2021', '회원', 'N', '-', TO_DATE('19/06/07', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0010', '김수홍', 'shkim', 'shhs1234', 'sh4000@naver.com', '인천 남동구', TO_DATE('71/01/30', 'RR/MM/DD'), 333, 10000,
        'N', 'N', '-', '회원', 'Y', '11/15/2019', TO_DATE('19/06/11', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0011', '유재석', 'jsyoo', 'green12', 'jsyoo10@gmail.com', '서울시 금천구', TO_DATE('80/10/10', 'RR/MM/DD'), 51, 100000,
        'Y', 'N', '-', '회원', 'N', NULL, TO_DATE('19/07/01', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0012', '양세찬', 'scyang', 'scvscv', 'scyang180@gmail.com', '경기도 분당', TO_DATE('86/04/15', 'RR/MM/DD'), 20, 5600,
        'Y', 'Y', '10/24/2020', '회원', 'N', '-', TO_DATE('19/07/02', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0013', '송중기', 'jksong', 'songsong', 'jksong19@gmail.com', '서울시 종로구', TO_DATE('85/01/05', 'RR/MM/DD'), 31, 0,
        'Y', 'N', '-', '회원', 'N', '-', TO_DATE('19/07/02', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0014', '송혜교', 'hksong', 'hkhksong', 'hksong78@gmail.com', '서울시 금천구', TO_DATE('83/03/25', 'RR/MM/DD'), 32,
        6300, 'Y', 'N', '-', '회원', 'N', '-', TO_DATE('19/07/03', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0015', '김태희', 'thkim', 'snukim', 'snukim@gmail.com', '부산 남동구', TO_DATE('86/10/19', 'RR/MM/DD'), 50, 5000, 'Y',
        'N', '-', '회원', 'N', '-', TO_DATE('19/07/15', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0016', '정지훈', 'jhjung', 'rainism', 'thief@gmail.com', '울산시', TO_DATE('85/07/05', 'RR/MM/DD'), 55, 60000, 'Y',
        'N', '-', '회원', 'N', '-', TO_DATE('19/07/18', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0017', '태연', 'tysnsd', 'tyty10', 'snsd@naver.com', '광주광역시', TO_DATE('89/05/16', 'RR/MM/DD'), 56, 0, 'N', 'N',
        '-', '회원', 'N', '-', TO_DATE('19/07/20', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0018', '임윤아', 'yaim', 'imim11', 'imya@gmail.com', '서울시 동작구', TO_DATE('90/03/31', 'RR/MM/DD'), 70, 108000, 'Y',
        'N', '-', '회원', 'N', '-', TO_DATE('19/07/21', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0019', '조수영', 'sycho', 'chochosy', 'sycho11@gmail.com', '서울시 강서구', TO_DATE('92/11/05', 'RR/MM/DD'), 100,
        150000, 'Y', 'N', '-', '회원', 'N', '-', TO_DATE('19/07/22', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0020', '공유', 'coffeecanu', 'sharingcanu', 'canu@gmail.com', '서울시 강서구', TO_DATE('79/02/15', 'RR/MM/DD'), 105,
        200000, 'Y', 'N', '-', '회원', 'N', '-', TO_DATE('19/07/23', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0021', '임창정', 'cjim', 'sojujjang', 'soju1shot@gmail.com', '경기도 안성시', TO_DATE('75/05/03', 'RR/MM/DD'), 110,
        13000, 'Y', 'N', '-', '회원', 'N', '-', TO_DATE('19/08/02', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0022', '배수지', 'suji', 'baesuji', 'sujiii@gmail.com', '경기도 안양시', TO_DATE('80/06/01', 'RR/MM/DD'), 120, 6000,
        'Y', 'N', '-', '회원', 'N', '-', TO_DATE('19/08/03', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0023', '양동근', 'dgyang', 'golmok', 'golmokgil@gmail.com', '경기도 이천시', TO_DATE('81/09/11', 'RR/MM/DD'), 210,
        5000, 'N', 'N', '-', '회원', 'N', '-', TO_DATE('19/08/05', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0024', '박서준', 'sjpark', 'sjsjpark', 'sjpark41@gmail.com', '경기도 일산시', TO_DATE('82/06/10', 'RR/MM/DD'), 9, 7000,
        'Y', 'Y', '11/06/2020', '회원', 'N', '-', TO_DATE('19/09/10', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0025', '박보검', 'bkpark', 'parkbk11', 'cutepark@gmail.com', '경기도 안양시', TO_DATE('90/08/01', 'RR/MM/DD'), 50,
        1000, 'Y', 'N', '-', '회원', 'Y', '08/15/2020', TO_DATE('19/10/11', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0026', '김태리', 'tlkim', 'sunshine', 'shinekim@gmail.com', '경기도 분당구', TO_DATE('87/03/05', 'RR/MM/DD'), 37, 3000,
        'Y', 'N', '-', '회원', 'N', NULL, TO_DATE('19/10/15', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0027', '손나은', 'neson', 'sonne111', 'handson@gmail.com', '서울시 강남구', TO_DATE('88/12/11', 'RR/MM/DD'), 26, 8300,
        'Y', 'N', '-', '회원', 'N', NULL, TO_DATE('19/10/16', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0028', '이효리', 'hllee', 'leejeju', '10minute@gmail.com', '서울시 강북구', TO_DATE('88/11/10', 'RR/MM/DD'), 56, 0,
        'Y', 'N', '-', '회원', 'N', NULL, TO_DATE('19/10/23', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0029', '권상우', 'swkwon', 'kwonsw24', 'sixpack@gmail.com', '인천 남동구', TO_DATE('75/01/19', 'RR/MM/DD'), 3, 24300,
        'Y', 'N', '-', '회원', 'N', NULL, TO_DATE('19/10/25', 'RR/MM/DD'));
INSERT INTO MEM_INFO (MEM_NUM,  MEM_NAME, MEM_ID, MEM_PWD, MEM_EMAIL, MEM_ADDRESS, MEM_BIRTHDATE, MEM_LOGIN_COUNT,
                      MEM_COIN, MEM_CAN_VOTE_YN, MEM_WITHDRAW_YN, MEM_WITHDRAW_DATE, MEM_CLASS, MEM_BLOCK_YN,
                      MEM_BLOCK_DATE, MEM_ENROLL_DATE)
VALUES ('u0030', '박재상', 'jspark', 'psypsy', 'gangnamstyle@gmail.com', '서울시 강동구', TO_DATE('77/12/10', 'RR/MM/DD'), 2, 0,
        'Y', 'N', '-', '회원', 'N', NULL, TO_DATE('19/10/28', 'RR/MM/DD'));

COMMIT;

-----------COMPET_INFO

CREATE TABLE COMPET_INFO
(
    COMPET_NUM              VARCHAR2(12) PRIMARY KEY,
    MEM_NUM                 VARCHAR2(8)    NOT NULL,
    COMPET_PAPER_YN         CHAR(2) DEFAULT 'Y' CHECK (COMPET_PAPER_YN IN ('Y', 'N')),
    NOV_TITLE               VARCHAR2(50)   NOT NULL,
    NOV_INFO                VARCHAR2(2000) NOT NULL,
    COMPET_SSN              VARCHAR2(10)   NOT NULL,
    COMPET_NOV_IMG_LOCATION VARCHAR2(200),
    SCORE                   NUMBER  DEFAULT 0,
    COMPET_ACT_YN           CHAR(2) DEFAULT 'Y' CHECK (COMPET_ACT_YN IN ('Y', 'N'))
);

INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000001', 'u0002', 'Y', '무림속 외노자가 너무 강하다', '어느 날 갑자기 무림에 떨어지고 이래저래 5년이 지났다.
올해는 드디어 정규직이 되었다.', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000002', 'u0003', 'Y', '마왕 삼촌이 돌아왔다', '"삼촌, 삼촌도 헌터야?"
"아니."
"그럼 뭐야?"
"삼촌은... 마왕이야."
', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000003', 'u0004', 'Y', '천재 투수가 장타력을 숨김', '쿠바에서 온 KBO 생태계 교란종', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000004', 'u0005', 'Y', '타임머신으로 인생역전', '내 머릿속에는 최첨단 미래기술이 있다.', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000005', 'u0006', 'Y', '국가직 소환술사', '몬스터와 악마를 사냥하는 국가직 공무원.', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000006', 'u0007', 'Y', '게임속 위병으로 살아가기', '평소 즐겨하던 게임의 위병이 되었다.', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000007', 'u0008', 'Y', '보석을 먹는 플레이어', '이번 생에는, 진짜 천재가 되어주겠다.', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000008', 'u0009', 'Y', '투르크의 술탄이 됐다', '술탄이 되는 왕자, 단 한 명만 살아남는 오스만 제국에 떨어졌다.
하렘은 개뿔, 살아 남기 위해 술탄이 돼야 한다.

#오스만 제국 #영지물 #since 1499', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000009', 'u0010', 'Y', '마법사들의 이능마켓', '여기 마켓은 엄청난 물건을 퍼준다.
능력은 덤이고.


<평화나라 아니고 이능마켓> <아카데미>', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000010', 'u0011', 'Y', '이번 생은 재벌3세', '어쩌다 재벌', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000011', 'u0012', 'Y', '천재 조각가의 재능은 끝이 없다', '화려한 천재조각가의 삶.
재능은 끝이 보이지 않는다.', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000012', 'u0013', 'Y', '천재 베이스', '5년간 활동했던 인디 밴드에서 버림받은 박현우
집으로 돌아가는 길에 테이저건을 맞고 쓰러졌다.
어...? 그런데 재능이 생겨 버렸다.

#천재 #뮤지션 #음악 #엔터 #테이저건', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000013', 'u0014', 'Y', '명왕성 채굴로 우주재벌', '현대 판타지 // 이능력물 // 성장물 // 재벌물 // 우주 개척물', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000014', 'u0015', 'Y', '레벨업하는 해적왕', '배를 얻었다.
모조리 약탈해서 성장한다', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000015', 'u0016', 'Y', '순정만화에서 살아남기', '[Mission]
: 지면을 차지하고 분량을 확보해 완결까지 살아남으시오

만화 속 ''행인1''에 빙의되었다.
근데 그게 첫 화를 끝으로 사라지는 엑스트라다.', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000016', 'u0017', 'Y', '2살부터 허준', '나는 태어날 때부터 한의사였다', '2019Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000017', 'u0018', 'Y', 'K-영화 천재로 회귀했다', '영화사 신입 시절로 회귀해버렸다.
어차피 다 아는 전개.
이젠 내 멋대로 치고 올라간다.', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000018', 'u0019', 'Y', '아카데미의 정령사', '경지에 이른 정령술은 마법과 구별할 수 없다.

그리고 나는 아카데미의 유일무이한 정령사다.', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000019', 'u0020', 'Y', '게임속 어쌔신이 되었다', '게임 속 어쌔신이 되었다.

그런데 시점이 엔딩으로부터 20년이나 흐른 후다….', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000020', 'u0021', 'Y', '경이로운 회귀 타자', '회귀는 개소리를 동반한다.', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000021', 'u0022', 'Y', '멸망한 세계의 창술사', '31세기 디스토피아.
이계에서 온 창술사는 정의와 명예를 외친다.', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000022', 'u0023', 'Y', '신라, 삼국지를 먹다', '신라가 삼국지 시대 중국을 제패해버리다.', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000023', 'u0024', 'Y', '망나니의 약혼자가 되었다', '약혼 상대가 귀족 가문의 망나니다.
내 인생 망해버린 건가?', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000024', 'u0025', 'Y', '빙의한 악역이 너무 약함', '소설 속 등장인물이 되었다.
문제는 검 같은 건 손도 댄적 없다는 건데...
어쩌지', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000025', 'u0026', 'Y', '눈떠보니 천재영화감독', '평행세계의 김정훈
재생시간 13,534 시간짜리 DVD를 얻게 되는데...', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000026', 'u0027', 'Y', '빌런의 경영학', '평행세계의 미래와 접촉한 결과가 빌런?

아무렴 어때. 빌런도 제법 뛰어난 빌런이 될 것 같은데.', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000027', 'u0028', 'Y', '상태창빨로 세계정복', '멸망하는 세상 속에서 환생했다.
[상태창] ', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000028', 'u0029', 'Y', '흰머리 맥아더', '1911년.
미 육군사관학교에 최초의 한인 생도가 입학했다.', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000029', 'u0030', 'Y', '빌어먹을 회귀', '마왕의 후손으로 환생했다.', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000030', 'u0002', 'Y', '서바이벌로 우주 최강', '전역하고 일주일. 이제 민간인 기분좀 내려는데 응? 이계로 강제 납치?
''뭐? 무림인과 마법사 기사들과 서바이벌 게임을 하라고?''
최강운의 우주 정복기.', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000031', 'u0003', 'Y', '신입사원 백현수', '회귀해보니 입사 첫날이었다.', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000032', 'u0004', 'Y', '드루와(격투마스터의 부활)', '대기만성 격투가.

늦깍이 파이터의 옥타곤 도전기!', '2020Q3', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000033', 'u0005', 'Y', '엔젤 소드', '어머니의 당부를 잊고 칼을 잡았다.
칼을 휙! 휘둘렀더니,왕자님이 픽! 죽었다.', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000034', 'u0006', 'Y', '게임속 정령사로 살아가는 법', '평소 즐겨하던 게임의 정령사 캐릭터가 되어버렸다.', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000035', 'u0007', 'Y', '약먹는 천재저격수', '천재적인 재능을 가졌지만 약 없이는 걷는것조차 힘들다.
세번째 부캐로 만들었던 저격수 캐릭터.
그 캐릭터의 세상 속에 들어오고 말았다', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000036', 'u0008', 'Y', '방랑힐러로 살아가는 법', '신성 제국의 기사 가문인 에이츠 가문.
그 가문에서 천재 힐러로 태어난 한철수의 이야기.', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000037', 'u0009', 'Y', '올지능스탯 황제가 되었다', '게임 속 최종 보스.
책략으로 황위를 찬탈한 황제가 되었다.', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000038', 'u0010', 'Y', '미래에서 재능이 쏟아져', '미래의 물건에서 재능을 가져올 수 있다고?', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000039', 'u0011', 'Y', '신성로마 재벌가의 망나니', '평생을 흙수저로 살아왔던 이명훈

과로에 찌들어 도서관에서 잠깐 감았던 눈을 다시 뜨자 그는 신성로마 최고 재벌가의 장남이 되어 있었다.

다시 한 번 시작된 새로운 삶. 이번에는 원없이 돈을 휘두르며 제대로 살아보련다.', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000040', 'u0012', 'Y', '아포칼립스 속 마법사', '종말을 앞둔 세계, 엘드윈을 구원한 마법사.
십여 년만에 그리운 고향, 지구로 귀환했다.
그런데 그날 밤.
평화롭던 지구에 종말이 찾아왔다.', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000041', 'u0013', 'Y', '곤륜파 천재권법가', '사파제일검. 검귀 독고.
곤륜파의 대사형이 되었다.', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000042', 'u0014', 'Y', '골키퍼가 축구를 너무 잘함', '미친 피지컬과 미친 슈팅력을 가진 골키퍼.
이 골키퍼가 축구를 너무 잘한다.', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000043', 'u0015', 'Y', '치트키로 월드컵 우승', '성한 곳 하나 없는 몸으로 꿈을 포기하게 된 내게,
온 몸을 치트키 할 수 있는 능력이 주어졌다.', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000044', 'u0016', 'Y', '역대급 도루왕의 탄생', 'KBO 타격왕, 메이저리그 3번 타자 최강남.
이번엔 메이저리그 도루왕에 도전한다.', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000045', 'u0017', 'Y', '천재 냥통령이 되었다', '그 녀석이 떠난 뒤, 모든 게 시작됐다.', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000046', 'u0018', 'Y', '삼국지 : 어부라로 천하통일', '아무도 알아주지 않지만 천하통일의 그릇이라며 뻔뻔함을 지닌 나. 대업에 도전한다!!', '2020Q4', '경로1',
        0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000047', 'u0019', 'Y', '해를 품은 9서클 마도사', '높디높은 밤하늘에 있지 않더라도.
아무도 보지 못하는 곳에 떨어져 있더라도
스스로가 빛나기를 원한다면
그렇다면 그것은 태양이다.', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000048', 'u0020', 'Y', '회귀했는데 여대생이 되었다', '간신히 회귀해서 복수할 수 있는 기회를 거머쥐었는데.
뭐? 여대생이라고?', '2020Q4', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000049', 'u0021', 'Y', '특성카피로 야구도사', '죽을 뻔한 위기를 겪고 나자 선수들의 능력을 카피 할 수 있게 되었다.

세계 최고가 되리라.', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000050', 'u0022', 'Y', '엘프가 너무 강함', '게이트의 출현과 대 헌터 시대의 개막.
지구를 멸망시킨 것은 인간도, 오크도, 드래곤도 아닌 엘프였다.', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000051', 'u0023', 'Y', '공작가의 검술 천재 ', '나도 특별한데, 내가 만든 성검은 더 특별하다.', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000052', 'u0024', 'Y', '무협 속 거지가 되었다', 'WFC 라이트급 챔피언. 그 꿈을 이루기 직전 나는 뜬금없이 거지소년A로 환생 했다. 이런 X같은 이야기가 또 있을까?',
        '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000053', 'u0025', 'Y', '보물의 목소리가 들려', '박물관 학예사 진호.

시험 탈락 후 벼락을 맞았는데, 돌연 보물의 목소리가 들린다?

[뭘 꼬나보냐?]', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000054', 'u0026', 'Y', '타자 끝, 투수 시작', '비참한 순간에 겪은 회귀.
새로운 삶에서는 투수의 길을 걷는다.', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000055', 'u0027', 'Y', '범생이가 조상을 수집함', '조상의 힘으로 강해지는 괴작 RPG.
그곳에 처박힌 내 신분은 족보 없는 범생이였다.', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000056', 'u0028', 'Y', '협상가의 영지', '판타지 세계! 생존을 위해 협상의 기술을 발휘하고, 권력을 탐하다!
중세 판타지 세계를 배경으로 하는 이계진입, 영지 경영, 전쟁 정복물입니다.', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000057', 'u0029', 'Y', '마도문명 고려에서 부활하다', '마도 신성고려제국의 탄생!
이제 신시대의 대세는 마법이다.
전세계를 포탈로 연결하니, 모든 길이 남경으로 통한다.', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000058', 'u0030', 'Y', '바이올린의 신', '슈만, 파가니니, 모차르트, 바흐

이 세상 어떤 음악가든, 그의 경험은 내 것이 된다.', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000059', 'u0002', 'Y', '신들의 킹근갓켓', '제우스 :번개 팝니다 그리스 직거래 가능.
마호메트: 각종 생활 필수품 팝니다.
대천사 미카엘 : 신성 속성 개당 500골드에 부여. 4개이상 할인

"이거 실화인가?"', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000060', 'u0003', 'Y', '사후세계에 어서오세요', '죽음. 그 이후 세계에 대하여.

지구에서의 삶은 첫 번째 페이지.
이제 당신의 책에 기록될 두 번째 이야기를 써내려갑니다.', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000061', 'u0004', 'Y', '유럽 심시티', '고대 로마시대 유럽에 떨어진 김우진, 어떻게든 로마의 침공을 대비하고 살아남아야한다... ', '2021Q1', '경로1', 0,
        'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000062', 'u0005', 'Y', '초밥 말고 레벨업!', '억울하게 죽임 당한 40대 가장 ‘김초식’의 인생 2회차 Story
이번 삶에서 그는 초밥 말면서 레벨 업 한다!!

십수년을 개처럼 일만했다.
오너의 딸과 결혼한 운좋은 싸가지 밑에서.', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000063', 'u0006', 'Y', '내가 김두환이다', '이 나라의 정점에 올라간다.
그리고 대한민국의 초대 대통령이되겠다.
미친놈이 될지라도.', '2021Q1', '경로1', 0, 'Y');
INSERT INTO COMPET_INFO (COMPET_NUM, MEM_NUM,  COMPET_PAPER_YN, NOV_TITLE, NOV_INFO, COMPET_SSN, COMPET_NOV_IMG_LOCATION,
                         SCORE, COMPET_ACT_YN)
VALUES ('cpt000064', 'u0007', 'Y', '비타민이 신선함', '비타민, 칼슘, 오메가-3, 프로폴리스, 글루코사민......

그 모두가 레벨업 재료다', '2021Q1', '경로1', 0, 'Y');

COMMIT;

------------COMPET_DETAIL

CREATE TABLE COMPET_DETAIL
(
    CHAPTER_NUM NUMBER,
    COMPET_NUM  VARCHAR2(15) REFERENCES COMPET_INFO(COMPET_NUM),
    NOV_CONTENT VARCHAR2(1000) NOT NULL,
    CONSTRAINT PK_COMPET_DETAIL PRIMARY KEY (CHAPTER_NUM, COMPET_NUM)
);
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000001', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000001', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000001', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000001', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000001', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000002', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000002', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000002', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000002', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000002', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000003', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000003', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000003', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000003', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000003', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000004', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000004', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000004', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000004', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000004', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000005', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000005', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000005', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000005', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000005', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000006', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000006', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000006', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000006', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000006', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000007', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000007', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000007', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000007', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000007', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000008', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000008', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000008', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000008', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000008', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000009', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000009', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000009', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000009', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000009', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000010', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000010', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000010', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000010', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000010', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000011', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000011', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000011', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000011', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000011', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000012', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000012', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000012', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000012', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000012', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000013', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000013', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000013', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000013', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000013', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000014', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000014', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000014', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000014', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000014', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000015', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000015', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000015', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000015', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000015', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000016', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000016', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000016', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000016', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000016', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000017', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000017', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000017', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000017', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000017', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000018', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000018', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000018', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000018', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000018', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000019', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000019', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000019', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000019', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000019', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000020', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000020', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000020', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000020', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000020', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000021', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000021', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000021', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000021', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000021', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000022', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000022', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000022', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000022', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000022', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000023', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000023', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000023', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000023', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000023', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000024', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000024', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000024', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000024', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000024', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000025', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000025', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000025', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000025', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000025', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000026', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000026', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000026', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000026', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000026', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000027', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000027', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000027', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000027', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000027', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000028', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000028', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000028', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000028', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000028', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000029', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000029', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000029', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000029', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000029', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000030', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000030', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000030', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000030', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000030', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000031', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000031', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000031', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000031', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000031', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000032', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000032', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000032', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000032', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000032', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000033', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000033', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000033', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000033', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000033', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000034', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000034', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000034', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000034', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000034', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000035', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000035', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000035', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000035', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000035', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000036', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000036', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000036', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000036', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000036', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000037', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000037', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000037', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000037', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000037', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000038', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000038', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000038', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000038', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000038', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000039', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000039', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000039', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000039', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000039', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000040', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000040', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000040', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000040', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000040', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000041', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000041', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000041', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000041', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000041', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000042', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000042', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000042', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000042', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000042', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000043', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000043', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000043', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000043', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000043', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000044', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000044', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000044', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000044', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000044', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000045', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000045', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000045', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000045', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000045', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000046', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000046', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000046', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000046', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000046', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000047', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000047', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000047', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000047', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000047', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000048', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000048', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000048', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000048', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000048', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000049', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000049', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000049', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000049', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000049', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000050', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000050', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000050', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000050', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000050', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000051', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000051', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000051', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000051', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000051', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000052', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000052', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000052', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000052', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000052', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000053', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000053', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000053', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000053', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000053', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000054', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000054', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000054', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000054', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000054', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000055', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000055', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000055', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000055', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000055', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000056', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000056', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000056', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000056', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000056', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000057', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000057', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000057', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000057', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000057', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000058', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000058', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000058', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000058', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000058', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000059', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000059', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000059', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000059', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000059', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000060', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000060', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000060', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000060', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000060', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000061', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000061', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000061', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000061', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000061', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000062', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000062', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000062', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000062', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000062', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000063', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000063', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000063', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000063', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000063', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (1, 'cpt000064', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (2, 'cpt000064', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (3, 'cpt000064', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (4, 'cpt000064', '내용');
INSERT INTO COMPET_DETAIL (CHAPTER_NUM, COMPET_NUM, NOV_CONTENT)
VALUES (5, 'cpt000064', '내용');

COMMIT;

----------COMPET_FIXTURE

CREATE TABLE "COMPET_FIXTURE"
(
    "FIXTURE_NUM"  VARCHAR2(50) NOT NULL PRIMARY KEY,
    "COMPET_NUM"   VARCHAR2(15) NULL REFERENCES COMPET_INFO(COMPET_NUM),
    "FIXTURE_STAT" NUMBER NULL
);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('1-1','cpt000001',8);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('1-2','cpt000002',4);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('1-3','cpt000003',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('1-4','cpt000004',8);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('1-5','cpt000005',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('1-6','cpt000006',1);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('1-7','cpt000007',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('1-8','cpt000008',2);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('1-9','cpt000009',8);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('1-10','cpt000010',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('1-11','cpt000011',4);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('1-12','cpt000012',8);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('1-13','cpt000013',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('1-14','cpt000014',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('1-15','cpt000015',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('1-16','cpt000016',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('2-1','cpt000017',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('2-2','cpt000018',8);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('2-3','cpt000019',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('2-4','cpt000020',4);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('2-5','cpt000021',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('2-6','cpt000022',8);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('2-7','cpt000023',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('2-8','cpt000024',4);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('2-9','cpt000025',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('2-10','cpt000026',2);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('2-11','cpt000027',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('2-12','cpt000028',8);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('2-13','cpt000029',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('2-14','cpt000030',1);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('2-15','cpt000031',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('2-16','cpt000032',8);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('3-1','cpt000033',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('3-2','cpt000034',8);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('3-3','cpt000035',8);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('3-4','cpt000036',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('3-5','cpt000037',8);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('3-6','cpt000038',4);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('3-7','cpt000039',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('3-8','cpt000040',1);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('3-9','cpt000041',8);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('3-10','cpt000042',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('3-11','cpt000043',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('3-12','cpt000044',4);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('3-13','cpt000045',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('3-14','cpt000046',2);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('3-15','cpt000047',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('3-16','cpt000048',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('4-1','cpt000049',8);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('4-2','cpt000050',8);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('4-3','cpt000051',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('4-4','cpt000052',8);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('4-5','cpt000053',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('4-6','cpt000054',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('4-7','cpt000055',8);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('4-8','cpt000056',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('4-9','cpt000057',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('4-10','cpt000058',1);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('4-11','cpt000059',2);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('4-12','cpt000060',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('4-13','cpt000061',4);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('4-14','cpt000062',16);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('4-15','cpt000063',4);
Insert into COMPET_FIXTURE (FIXTURE_NUM,COMPET_NUM,FIXTURE_STAT) values ('4-16','cpt000064',16);

COMMIT;
----------------GENRE_CATEGORY

CREATE TABLE GENRE_CATEGORY
(
    CATEGORY_CODE VARCHAR2(5) PRIMARY KEY,
    CATEGORY_NAME VARCHAR2(16) NOT NULL UNIQUE
);

INSERT INTO GENRE_CATEGORY (CATEGORY_CODE, CATEGORY_NAME)
VALUES ('MF', '현대판타지');
INSERT INTO GENRE_CATEGORY (CATEGORY_CODE, CATEGORY_NAME)
VALUES ('F', '판타지');
INSERT INTO GENRE_CATEGORY (CATEGORY_CODE, CATEGORY_NAME)
VALUES ('OF', '무협');
INSERT INTO GENRE_CATEGORY (CATEGORY_CODE, CATEGORY_NAME)
VALUES ('ROM', '로맨스');
INSERT INTO GENRE_CATEGORY (CATEGORY_CODE, CATEGORY_NAME)
VALUES ('SPO', '스포츠');
INSERT INTO GENRE_CATEGORY (CATEGORY_CODE, CATEGORY_NAME)
VALUES ('FH', '대체역사');

COMMIT;





----------WEB_NOV_INFO

CREATE TABLE WEB_NOV_INFO
(
    WEB_NOV_NUM           VARCHAR2(10) PRIMARY KEY,
    CATEGORY_CODE         VARCHAR2(5) REFERENCES GENRE_CATEGORY (CATEGORY_CODE),
    WEB_NOV_TITLE         VARCHAR2(40),
    WEB_NOV_AUTHOR        VARCHAR2(40),
    CHAP_PER_COIN         NUMBER,
    WEB_NOV_PUBLISHER     VARCHAR2(26),
    WEB_NOV_INFORM        VARCHAR2(1200),
    WEB_NOV_IMG_LOCATION  VARCHAR2(100),
    DAY_OF_WEEK           VARCHAR2(3) CHECK (DAY_OF_WEEK IN ('MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN', 'NON')),
    WEB_NOV_OPEN_OR_CLOSE CHAR(2) DEFAULT 'Y',
    CHECK (WEB_NOV_OPEN_OR_CLOSE IN ('Y', 'N')),
    FINISHED_OR_NOT       CHAR(2) DEFAULT 'N',
    CHECK (FINISHED_OR_NOT IN ('Y', 'N'))
);
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00001', 'MF', '내 아들은 총잡이', '원빈', 1, '미디어그룹', '피치 못할 사정으로 총잡이 삶을 접어야 했던 베테랑 권총잡이 박찬영.', '사진경로1', 'MON', 'N ',
        'N ');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00002', 'F', '이혼 후 재혼', '인생3회차', 1, '미디어그룹', '그런 그가 아들을 낳았는데, 총잡는 모습이….금 이빨 몇 개냐??', '사진경로2', 'MON', 'N ',
        'N ');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00003', 'F', '미술천재가 한국으로', '잘못된탄생', 1, '문학동네', '한국에서 천재가 태어나게 되는데…
그러나…주입식교육으로 인해 힘들어하는 그림천재', '사진경로3', 'MON', 'N ', 'N ');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00004', 'MF', '신들린닥터', '노마취수술', 1, '다산북스', '의학계의 떠오르는 샛별의 등장
의학계를 뒤집어 놓은게 있엇으니… 그것은 마취 없는 수술의 시작…', '사진경로4', 'TUE', 'N ', 'N ');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00005', 'OF', '스타용병 이영호', '나는아이언', 1, '다산북스', '게임의 인기로 인해 유저들이 늘어나면서
게임에 관심없던 이영호라는 소년이…방배중에서...게임을 시작하는데', '사진경로5', 'TUE', 'Y ', 'N ');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00006', 'ROM', '인간은 연약해', '코로나19', 1, '게임북스', '대한민국 전성기로 보였던2019년…
예상치 못한 병이 찾아오기 시작한다!!', '사진경로6', 'TUE', 'N ', 'N ');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00007', 'ROM', '아웃사이드 인', '피셀', 1, '넥서스', '인사이드 아웃의 후속작!', '사진경로7', 'WED', 'N ', 'N ');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00008', 'SPO', '0살부터미적분', '전공은경영', 1, '미디어그룹', '2살에 덧셈뺄셈…5살에..삼각함수…
8살에 대학 미적분을 푸는 천재의 등장….', '사진경로8', 'WED', 'Y ', 'N ');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00009', 'F', '귀머거리의전설', '베토벤', 1, '김영사', '1800년 르네상스 시대에 유럽에서 음악 천재가 태어나다
그러나..그는 얼마 못가 귀머거리가 되는데..', '사진경로9', 'WED', 'N ', 'Y ');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00010', 'FH', '짝귀의삶', '빈센트반고흐', 1, '미디어그룹', '타짜의 세계에서….
밑장빼다간 손모가지가 날아가는 사건이 비일비재하는데', '사진경로10', 'THU', 'N ', 'N ');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00011', 'ROM', '금수저 백수생활', '김밥은헤븐', 1, '문학동네', 'N그룹 금수저로 태어난 K씨는…
자신이 금수저라는 사실을 숨기고 지내는데', '사진경로11', 'THU', 'N ', 'N ');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00012', 'FH', '신입사원이재용', '삼성1인자', 1, '미디어그룹', 'S그룹의 예비 후계자…
회사를 알기위해 신입사원으로 위장해서 들어가면서..', '사진경로12', 'THU', 'Y ', 'N ');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00013', 'FH', '슬기로운개발생활', '야근은선택이아닌필수', 1, '게임북스', '개발자의 길을 걷게다던 P씨의 개발 이야기', '사진경로13', 'FRI', 'N ', 'N ');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00014', 'MF', '천생개발자', 'HTML은언어다', 1, '게임북스', '어렸을 때부터 장난감보단 코드 짜는 것에 흥미와 관심을 보였던 l씨
성인이 되어 유명회사에 입사하게 되는데', '사진경로14', 'FRI', 'N ', 'N ');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00015', 'SPO', '재벌가늦등이', '금수저라이프', 1, '넥서스', '대한민국 5대 재벌가의 집안에서 늦등이가 탄생했다
그러면서 경영권자리에 첫 째가 눈독이 오르는데', '사진경로15', 'FRI', 'Y ', 'Y ');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00016', 'F', '메카닉이되었다', '마린파이어뱃', 1, '창비', '바이오닉계에서 전설이었던 M씨가
상대 계열사인 메카닉계로 떠나게 된다!', '사진경로16', 'SAT', 'N ', 'N ');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00017', 'MF', '축구황제가되기까지', '마이클조던', 1, '넥서스', '가난한 집안에서 태어났지만, 축구 능력 만큼은 우수했던 청년
우연치 않게 구단주를 만나게 되는데', '사진경로17', 'SAT', 'N ', 'Y ');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00018', 'F', '황제의자리', '요환과페이커', 1, '문학동네', '하늘아래 두 개의 태양은 존재 하지 않는 법!!
황제의 자리를 놓고 벌여지는 숨막히는 티키타가의 스토리!', '사진경로18', 'SAT', 'N ', 'N ');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00019', 'F', '공대생의삶', '아이작뉴턴', 1, '게임북스', '사과…영어로는 APPLE…
그러나 그의 눈에는 사과가 아닌 다른 것이 보였다!?!?', '사진경로19', 'SUN', 'N ', 'N ');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00020', 'OF', '사랑의치유사', '아웃사이더', 1, '문학동네', '유명 랩퍼로 한 때 인기를 날렸던 O씨
어느새 음악치유사가 되가는 이야기', '사진경로20', 'SUN', 'N ', 'N ');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00021', 'OF', '지구는돈다', '갈릴레이갈릴레오', 1, '문학동네', '먼 옛날, 지구가 평평하다고 생각했던 시기에
악동이 태어났으니….', '사진경로21', 'SUN', 'N ', 'N ');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00022', 'F', '삼국지 밖으로 가자', '중한한중', 1, '김영사', '고대 시대, 세 나라의 치열한 전투 이야기가 시작된다', '사진경로22', 'NON', 'N ', 'Y ');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00023', 'F', '분열하고 싶은 자', '제법좁은강', 1, '김영사', '자아분열에 대해서 고뇌하던 유명 철학가가 직접  쓴 분열 이야기', '사진경로23', 'NON', 'N ',
        'Y ');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00024', 'OF', '포이즌 퀸', '유지권', 1, '문학동네', '독보다 강하고, 곰 같은 여우가 되겠다던 한 여왕의 삶의 이야기', '사진경로24', 'NON', 'N ', 'Y ');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00025', 'FH', '거지에서 고수까지', '요비비요', 1, '창비', '매일 취준의 늪에 빠져살던 백수가
지나가다 우연치 않게 바둑을 보게 되면서', '사진경로25', 'NON', 'N ', 'Y ');
INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00026', 'SPO', '리멤버 더 에이지', '중금하르방', 1, '창비', '나이를 잊고 사는 나라에
나이의 개념이 들어오면서 사람들이 혼란을 겪게 되는데', '사진경로26', 'NON', 'N ', 'Y ');

INSERT INTO WEB_NOV_INFO (WEB_NOV_NUM, CATEGORY_CODE, WEB_NOV_TITLE, WEB_NOV_AUTHOR, CHAP_PER_COIN, WEB_NOV_PUBLISHER,
                          WEB_NOV_INFORM, WEB_NOV_IMG_LOCATION, DAY_OF_WEEK, WEB_NOV_OPEN_OR_CLOSE, FINISHED_OR_NOT)
VALUES ('wn00027', 'SPO', 'test', 'test', 1, 'test', 'test', '사진경로27', 'NON', 'N ', 'Y ');

COMMIT;

---------------- WEB_NOV_DETAIL


CREATE TABLE WEB_NOV_DETAIL
(
    WEB_NOV_NUM     VARCHAR2(10) REFERENCES WEB_NOV_INFO (WEB_NOV_NUM) NOT NULL,
    CHAPTER_NUM     NUMBER,
    PAY_OR_NOT      CHAR(2) CHECK (PAY_OR_NOT IN ('Y', 'N')),
    WEB_NOV_CONTENT VARCHAR2(2000) NOT NULL,
    CONSTRAINT PK_WEB_NOV_DETAIL PRIMARY KEY (WEB_NOV_NUM, CHAPTER_NUM)
);

INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00001', 1, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00001', 2, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00001', 3, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00001', 4, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00001', 5, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00001', 6, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00001', 7, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00001', 8, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00001', 9, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00001', 10, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00001', 11, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00001', 12, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00002', 1, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00002', 2, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00002', 3, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00002', 4, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00002', 5, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00002', 6, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00002', 7, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00002', 8, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00002', 9, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00002', 10, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00003', 1, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00003', 2, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00003', 3, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00003', 4, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00003', 5, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00003', 6, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00003', 7, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00003', 8, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00003', 9, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00003', 10, 'N ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00004', 1, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00004', 2, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00004', 3, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00004', 4, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00004', 5, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00004', 6, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00004', 7, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00004', 8, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00004', 9, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00004', 10, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00005', 1, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00005', 2, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00005', 3, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00005', 4, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00005', 5, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00005', 6, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00005', 7, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00005', 8, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00006', 1, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00006', 2, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00006', 3, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00006', 4, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00006', 5, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00006', 6, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00006', 7, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00007', 1, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00007', 2, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00007', 3, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00007', 4, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00007', 5, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00007', 6, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00008', 1, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00008', 2, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00008', 3, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00008', 4, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00008', 5, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00008', 6, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00009', 1, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00009', 2, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00009', 3, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00009', 4, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00009', 5, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00010', 1, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00010', 2, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00010', 3, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00010', 4, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00010', 5, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00011', 1, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00011', 2, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00011', 3, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00011', 4, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00011', 5, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00012', 1, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00012', 2, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00012', 3, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00012', 4, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00012', 5, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00013', 1, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00013', 2, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00013', 3, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00013', 4, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00013', 5, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00014', 1, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00014', 2, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00014', 3, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00014', 4, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00014', 5, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00015', 1, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00015', 2, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00015', 3, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00015', 4, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00015', 5, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00016', 1, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00016', 2, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00016', 3, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00016', 4, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00016', 5, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00017', 1, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00017', 2, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00017', 3, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00017', 4, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00017', 5, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00018', 6, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00018', 1, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00018', 2, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00018', 3, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00018', 4, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00018', 5, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00019', 1, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00019', 2, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00019', 3, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00019', 4, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00019', 5, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00020', 1, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00020', 2, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00020', 3, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00020', 4, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00020', 5, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00021', 1, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00021', 2, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00021', 3, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00021', 4, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00021', 5, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00022', 1, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00022', 2, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00022', 3, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00022', 4, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00022', 5, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00023', 1, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00023', 2, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00023', 3, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00023', 4, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00023', 5, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00023', 6, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00024', 1, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00024', 2, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00024', 3, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00024', 4, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00024', 5, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00025', 1, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00025', 2, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00025', 3, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00025', 4, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00026', 1, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00026', 2, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00026', 3, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00026', 4, 'Y ', '웹소설 내용');
INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00026', 5, 'Y ', '웹소설 내용');



INSERT INTO WEB_NOV_DETAIL (WEB_NOV_NUM, CHAPTER_NUM, PAY_OR_NOT, WEB_NOV_CONTENT)
VALUES ('wn00027', 1, 'Y ', '웹소설 내용');


COMMIT;
-------------WEB_NOV_REPLY

CREATE TABLE WEB_NOV_REPLY
(
    REPLY_NUM     VARCHAR2(14) PRIMARY KEY,
    WEB_NOV_NUM   VARCHAR2(10) REFERENCES WEB_NOV_INFO (WEB_NOV_NUM),
    REPLY_DATE    DATE,
    MEM_NUM VARCHAR2(15) REFERENCES MEM_INFO(MEM_NUM),
    REPLY_CONTENT VARCHAR2(600)
);
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr1', 'wn00001', TO_DATE('19/06/11', 'RR/MM/DD'), 'u0005', '총을 정말 능수능란하게쏘네요!!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr2', 'wn00010', TO_DATE('19/06/13', 'RR/MM/DD'), 'u0003', '작가명과 작가작품이….ㅋㅋㅋ');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr3', 'wn00005', TO_DATE('19/06/20', 'RR/MM/DD'), 'u0003', '게임 잘하면 형님 아닙니까');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr4', 'wn00008', TO_DATE('19/07/10', 'RR/MM/DD'), 'u0006', '너무 재밌게 보고 있어요!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr5', 'wn00014', TO_DATE('19/08/15', 'RR/MM/DD'), 'u0004', '다음 연재는 언제 나오죠?');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr6', 'wn00001', TO_DATE('19/08/18', 'RR/MM/DD'), 'u0012', '코로나19 꺼져라!!!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr7', 'wn00001', TO_DATE('19/09/05', 'RR/MM/DD'), 'u0009', '노잼 작품….공짜여서 본다');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr8', 'wn00017', TO_DATE('19/10/26', 'RR/MM/DD'), 'u0004', '에어 조던 ㄷㄷ');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr9', 'wn00017', TO_DATE('19/11/07', 'RR/MM/DD'), 'u0010', '발암소설 하차합니다. 발로 써도 이거보다 잘쓸듯.');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr10', 'wn00013', TO_DATE('19/11/09', 'RR/MM/DD'), 'u0004', '이 소설 보면서 개발의 꿈을 키우고 있어요');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr11', 'wn00012', TO_DATE('19/11/13', 'RR/MM/DD'), 'u0003', '의외로 전개가 신박해요!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr12', 'wn00013', TO_DATE('19/11/17', 'RR/MM/DD'), 'u0010', '재미가 있어요~');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr13', 'wn00011', TO_DATE('19/11/21', 'RR/MM/DD'), 'u0008', '다음 작을 기다리고 있어요');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr14', 'wn00009', TO_DATE('19/11/23', 'RR/MM/DD'), 'u0007', '귀머거리의 삶을 잘 표현해요~');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr15', 'wn00008', TO_DATE('19/12/01', 'RR/MM/DD'), 'u0008', '재미 없음…. 돈 왜냄');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr16', 'wn00008', TO_DATE('19/12/17', 'RR/MM/DD'), 'u0012', '위에 분 신고좀요!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr17', 'wn00019', TO_DATE('19/12/17', 'RR/MM/DD'), 'u0007', '저도 같은 공대생이라 공감가요!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr18', 'wn00021', TO_DATE('19/12/23', 'RR/MM/DD'), 'u0016', '지구도 돌고 저도 돌고,…');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr19', 'wn00003', TO_DATE('19/12/26', 'RR/MM/DD'), 'u0017', '씁쓸한 현실이네요…');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr20', 'wn00026', TO_DATE('20/01/07', 'RR/MM/DD'), 'u0018', '완결작 나와서 다봤어요!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr21', 'wn00025', TO_DATE('20/02/05', 'RR/MM/DD'), 'u0019', '밤새는 줄도 모르게 완작 봤네요!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr22', 'wn00019', TO_DATE('20/03/06', 'RR/MM/DD'), 'u0020', '응 난 미대생~~');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr23', 'wn00020', TO_DATE('20/03/15', 'RR/MM/DD'), 'u0002', '저는 코더의 치유사!!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr24', 'wn00022', TO_DATE('20/03/15', 'RR/MM/DD'), 'u0003', '삼국지 리얼 꿀잼!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr25', 'wn00023', TO_DATE('20/04/16', 'RR/MM/DD'), 'u0004', '철학적이라 이해하기가…');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr26', 'wn00014', TO_DATE('20/05/06', 'RR/MM/DD'), 'u0010', '전 힘들어요 ㅠㅠ');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr27', 'wn00015', TO_DATE('20/06/08', 'RR/MM/DD'), 'u0011', '저는 그냥 늦둥이…ㅎ');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr28', 'wn00012', TO_DATE('20/06/09', 'RR/MM/DD'), 'u0025', '재용아 나도 신입인데 다르다??');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr29', 'wn00021', TO_DATE('20/06/13', 'RR/MM/DD'), 'u0026', '호호호호호');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr30', 'wn00018', TO_DATE('20/06/16', 'RR/MM/DD'), 'u0027', '두 개의 태양은 없지 응 없지!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr31', 'wn00016', TO_DATE('20/06/23', 'RR/MM/DD'), 'u0028', '스팀팩!!!!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr32', 'wn00015', TO_DATE('20/06/27', 'RR/MM/DD'), 'u0028', '돈 플렉스~');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr33', 'wn00023', TO_DATE('20/07/01', 'RR/MM/DD'), 'u0029', '완작 좋아요!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr34', 'wn00002', TO_DATE('20/07/03', 'RR/MM/DD'), 'u0030', '막장의 끝이구먼!!');
INSERT INTO WEB_NOV_REPLY (REPLY_NUM, WEB_NOV_NUM, REPLY_DATE, MEM_NUM, REPLY_CONTENT)
VALUES ('wr35', 'wn00004', TO_DATE('20/07/05', 'RR/MM/DD'), 'u0017', '닥터…닥터 스트렌지….도루마무…');

COMMIT;


-----------------

DROP TABLE ACCUM_REPORT;

CREATE TABLE ACCUM_REPORT
(
    REPLY_NUM        VARCHAR2(15)     NOT NULL PRIMARY KEY REFERENCES WEB_NOV_REPLY (REPLY_NUM),
    ACCUM_REPORT_NUM NUMBER DEFAULT 0 NOT NULL
);
INSERT INTO ACCUM_REPORT (REPLY_NUM, ACCUM_REPORT_NUM)
VALUES ('wr1', 2);
INSERT INTO ACCUM_REPORT (REPLY_NUM, ACCUM_REPORT_NUM)
VALUES ('wr3', 0);
INSERT INTO ACCUM_REPORT (REPLY_NUM, ACCUM_REPORT_NUM)
VALUES ('wr4', 5);
INSERT INTO ACCUM_REPORT (REPLY_NUM, ACCUM_REPORT_NUM)
VALUES ('wr7', 10);
INSERT INTO ACCUM_REPORT (REPLY_NUM, ACCUM_REPORT_NUM)
VALUES ('wr9', 12);
INSERT INTO ACCUM_REPORT (REPLY_NUM, ACCUM_REPORT_NUM)
VALUES ('wr2', 6);
INSERT INTO ACCUM_REPORT (REPLY_NUM, ACCUM_REPORT_NUM)
VALUES ('wr5', 0);
INSERT INTO ACCUM_REPORT (REPLY_NUM, ACCUM_REPORT_NUM)
VALUES ('wr6', 0);
INSERT INTO ACCUM_REPORT (REPLY_NUM, ACCUM_REPORT_NUM)
VALUES ('wr15', 5);

COMMIT;

-------------WISH_LIST


CREATE TABLE WISH_LIST
(
    WEB_NOV_NUM VARCHAR2(8) REFERENCES WEB_NOV_INFO (WEB_NOV_NUM),
    MEM_NUM     VARCHAR2(14) REFERENCES MEM_INFO (MEM_NUM)
);
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM)
VALUES ('wn00001', 'u0002');
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM)
VALUES ('wn00004', 'u0009');
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM)
VALUES ('wn00006', 'u0004');
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM)
VALUES ('wn00008', 'u0010');
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM)
VALUES ('wn00005', 'u0004');
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM)
VALUES ('wn00010', 'u0008');
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM)
VALUES ('wn00011', 'u0007');
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM)
VALUES ('wn00001', 'u0005');
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM)
VALUES ('wn00002', 'u0005');
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM)
VALUES ('wn00003', 'u0015');
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM)
VALUES ('wn00009', 'u0015');
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM)
VALUES ('wn00010', 'u0019');
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM)
VALUES ('wn00023', 'u0008');
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM)
VALUES ('wn00021', 'u0008');
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM)
VALUES ('wn00021', 'u0020');
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM)
VALUES ('wn00019', 'u0021');
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM)
VALUES ('wn00006', 'u0022');
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM)
VALUES ('wn00009', 'u0003');
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM)
VALUES ('wn00010', 'u0004');
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM)
VALUES ('wn00011', 'u0005');
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM)
VALUES ('wn00012', 'u0006');
INSERT INTO WISH_LIST (WEB_NOV_NUM, MEM_NUM)
VALUES ('wn00022', 'u0007');

COMMIT;


---------QNA

CREATE TABLE QNA (
	POST_NUM NUMBER	NOT NULL PRIMARY KEY,
	MEM_NUM	VARCHAR2(15) NOT NULL REFERENCES MEM_INFO(MEM_NUM),
	QNA_TITLE VARCHAR2(100) NOT NULL,
	QNA_OPEN_YN	CHAR(2)	DEFAULT 'Y' NOT NULL CHECK(QNA_OPEN_YN IN ('Y', 'N')),
	QNA_ANSWER_YN CHAR(2) DEFAULT 'N' NOT NULL CHECK(QNA_ANSWER_YN IN ('Y', 'N')),
	QNA_DATE DATE NOT NULL,
    QNA_CONTENT VARCHAR2(4000) NOT NULL
);

Insert into QNA (POST_NUM,MEM_NUM,QNA_TITLE,QNA_OPEN_YN,QNA_ANSWER_YN,QNA_DATE,QNA_CONTENT) values (1,'u0007','1회 공모전 상금 수령 관련 문의드립니다','Y ','Y ',to_date('20/01/15','RR/MM/DD'),'상금 수령시 제세공과금이 있는지 궁금합니다. 5회 이후의 분량에 대한 수익 분배는 어떻게 되는지도 알고 싶어요.');
Insert into QNA (POST_NUM,MEM_NUM,QNA_TITLE,QNA_OPEN_YN,QNA_ANSWER_YN,QNA_DATE,QNA_CONTENT) values (2,'u0030','질문) 코인 무료로 얻을 수 있는 방법','Y ','Y ',to_date('20/02/03','RR/MM/DD'),'코인을 다 썼어요. 혹시 무료로 코인 얻을 수 있는 방법이 있나요?? 다른데는 기다리면 무료 같은게 있던데 여긴 없나요???');
Insert into QNA (POST_NUM,MEM_NUM,QNA_TITLE,QNA_OPEN_YN,QNA_ANSWER_YN,QNA_DATE,QNA_CONTENT) values (3,'u0020','예약구매 했는데 단행본 배송은 언제부터 시작되나요?','Y ','Y ',to_date('20/03/05','RR/MM/DD'),'전지적 독자시점 단행본을 신청했는데 배송관련한 기능이 아직 준비중이네요. 단행본 출시는 4월로 알고 있는데 언제쯤 받을 수 있을까요.');
Insert into QNA (POST_NUM,MEM_NUM,QNA_TITLE,QNA_OPEN_YN,QNA_ANSWER_YN,QNA_DATE,QNA_CONTENT) values (4,'u0021','아진짜~~사진 억케올림','Y ','Y ',to_date('20/04/02','RR/MM/DD'),'방법~ 알려주^^');
Insert into QNA (POST_NUM,MEM_NUM,QNA_TITLE,QNA_OPEN_YN,QNA_ANSWER_YN,QNA_DATE,QNA_CONTENT) values (5,'u0027','선물함 기능은 없나요??','N ','Y ',to_date('20/05/02','RR/MM/DD'),'카카오페이지와 조아라에는 선물함이 있었는데 여기는 없나보네요? 고객 혜택 서비스가 없나요?');
Insert into QNA (POST_NUM,MEM_NUM,QNA_TITLE,QNA_OPEN_YN,QNA_ANSWER_YN,QNA_DATE,QNA_CONTENT) values (6,'u0012','와 진짜 재밌는데 다봐서 볼께 없네요. 업뎃 언제되죠?_?','Y ','Y ',to_date('20/06/04','RR/MM/DD'),'와 넘 재밌어서 밤새서 다 봐버렸네요. 다른 사이트는 유료라서 기다리고 있는데 혹시 여기 업뎃이 느린 이유가 있어요? 빨리 올려주면 좋겠는데 ');
Insert into QNA (POST_NUM,MEM_NUM,QNA_TITLE,QNA_OPEN_YN,QNA_ANSWER_YN,QNA_DATE,QNA_CONTENT) values (7,'u0006','신고 몇 회 누적되면 블라인드 되나요?','Y ','Y ',to_date('20/07/15','RR/MM/DD'),'신고당할만한 댓글이 아닌데 신고를 5개나 받았습니다. 개수가 누적되면 처리하는 것인지, 운영자분들이 처리하는 것인지 알려주세요.');
Insert into QNA (POST_NUM,MEM_NUM,QNA_TITLE,QNA_OPEN_YN,QNA_ANSWER_YN,QNA_DATE,QNA_CONTENT) values (8,'u0010','공모전 결과가 궁금한데요 차단 좀 풀어주시죠','N ','Y ',to_date('20/11/15','RR/MM/DD'),'제가 뭐 심한 말 한 것도 아니고 팩트만 말했는데 이게 왜 차단? 그리고 공모전 제출한거 업데이트 못해서 떨어지면 책임지실겁니까?');
Insert into QNA (POST_NUM,MEM_NUM,QNA_TITLE,QNA_OPEN_YN,QNA_ANSWER_YN,QNA_DATE,QNA_CONTENT) values (9,'u0009','탈퇴시 제출했던 공모작품은 어떻게 되나요','N ','N ',to_date('20/12/15','RR/MM/DD'),'다른 플랫폼에 독점 계약하게 되면서 해당 사이트는 탈퇴하려 합니다. 이럴 경우 기존에 공모전 제출됐던 작품도 삭제하고 싶은데 절차가 어떻게 되나요.');
Insert into QNA (POST_NUM,MEM_NUM,QNA_TITLE,QNA_OPEN_YN,QNA_ANSWER_YN,QNA_DATE,QNA_CONTENT) values (10,'u0026','배너 디자인 공모전은 없나요???','Y ','Y ',to_date('20/01/01','RR/MM/DD'),'제가 요새 포토샵과 피그마에 푹 빠졌는데 배너 디자인 공모전이 열리면 꼭 참가해보고 싶네요. 계획하고 계신게 있으시다면 일정을 알고 싶습니다.');


CREATE TABLE "QNA_REPLY" (
	"REPLY_NUM" NUMBER NOT NULL PRIMARY KEY,
	"POST_NUM" NUMBER NOT NULL REFERENCES QNA(POST_NUM),
	"REPLY_DATE" DATE NOT NULL,
	"REPLY_ID" VARCHAR2(30) NOT NULL,
	"REPLY_CONTENT" VARCHAR2(700) NOT NULL
);

Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (1,1,to_date('20/01/15','RR/MM/DD'),'manager01','안녕하세요~ sjkim님! 당신의 첫번째 책 FirstBook 관리자입니다. 문의주신 상금은 제세공과금이 별도로 부과되며 별도로 계좌를 공지해드릴 예정입니다. 아울러 상금 수령은 sjkim님이 원하시는 계좌와 신분증 사본을 저희쪽에 보내주시면 서류 검토후 계좌 입금해 드릴 예정입니다. ^^');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (2,1,to_date('20/01/16','RR/MM/DD'),'sjkim','아… 그렇군요! 답변 감사합니다 얼른 보낼께요 ㅎㅎㅎ');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (3,2,to_date('20/02/03','RR/MM/DD'),'manager01','안녕하세요~jspark님! 당신의 첫번째 책 FirstBook 관리자입니다. 아쉽게도 저희 서비스는 별도의 코인 제공이 불가능한 점 양해부탁드립니다. 다만 일주일에 한번씩 위클리 코인 서비스를 운영중에 있으니 아주 잠시, 며칠만 기다려주시면 마이페이지에서 코인을 수령하실 수 있으십니다. 다시한번 저희 서비스를 이용해주셔서 감사드립니다 ^^');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (4,2,to_date('20/02/04','RR/MM/DD'),'jspark','아쉽네요!! 좀만 더 참아보죠 뭐 ㅋㅋㅋ 아 다음편 보고 싶다!!!');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (5,3,to_date('20/03/05','RR/MM/DD'),'manager01','안녕하세요~ coffeecanu님! 당신의 첫번째 책 FirstBook 관리자입니다. 문의하신 단행본 배송은 현재 서비스 준비중에 있습니다! 사이트 상에서 확인하시면 더욱 좋으실텐데 아쉬우시죠 ㅠㅜ 배송이 완료되면 문자나 쪽지등으로 별도의 연락을 드릴 예정입니다. ');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (6,3,to_date('20/03/06','RR/MM/DD'),'coffeecanu','친절한 답변 감사합니다. 커피 한잔 하시고 오늘도 여유로운 하루 되세요.');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (7,4,to_date('20/04/02','RR/MM/DD'),'manager01','안녕하세요~ cjim님! 당신의 첫번째 책 FirstBook 관리자입니다. 게시판 하단에 있는 파일 첨부 기능을 사용하시면 됩니다. 키보드의 CTRL키를 누르고 여러 개를 선택하시면 한번에 여러 사진을 올리실 수도 있습니다.');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (8,4,to_date('20/04/02','RR/MM/DD'),'cjim','이야~고맙다!!!!!~~글만~~~죽어라고~~ 올릴뻔~~키키키~!!! 고맙다…………^^~~~ 사랑한다~~~~………………!!!');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (9,5,to_date('20/05/02','RR/MM/DD'),'manager01','안녕하세요~ neson님! 당신의 첫번째 책 FirstBook 관리자입니다. 안타깝게도 저희는 별도의 선물함 기능은 없습니다만, 통합적으로 코인제도를 운영중에 있습니다! 마이페이지에서 위클리 코인을 기다려서 꼭 눌러주시면 무료로 소설 감상이 가능합니다. ^^');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (10,5,to_date('20/05/03','RR/MM/DD'),'neson','위클리 코인 좋네요~ ㅎㅎ 답변 감사합니당');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (11,6,to_date('20/06/05','RR/MM/DD'),'manager01','안녕하세요~ scyang님! 당신의 첫번째 책 FirstBook 관리자입니다. 저희 서비스를 사랑해주셔서 진심으로 감사드립니다!! FirsBook은 작가님들과 계약한 출판사, 에이전시에서 소설을 받아 업데이트하는 2차 플랫폼인 점을 알려드리고 싶습니다. 문피아나 조아라에 비하면 업데이트가 느리지만 그만큼 양질의 소설을 공급해드리려 노력하고 있으며, 공모전을 통해 신인 작가들 작품도 많이 게시중에 있습니다. 조금만 기다려주시면 금새 새로운 소설들이 업데이트 되니 양해를 부탁드리겠습니다 ^^');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (12,7,to_date('20/07/15','RR/MM/DD'),'manager01','안녕하세요~ jmchun님! 당신의 첫번째 책 FirstBook 관리자입니다. 신고가 많이 누적되어 심려끼쳐드린 점 죄송하게 생각합니다. 신고에 대한 블라인드는 회원들의 재량으로 20회 누적시 이루어지지만, 차단 여부는 관리자 판단하에 이뤄집니다. 0살부터미적분에 달으신 해당 댓글은 차단과 무관한 것으로 판단되니 너무 염려 마시길 바랍니다. 향후 신고제도를 더욱 엄격히 보완하면 이런 불편한 점도 없어지실 겁니다. 조금만 기다려주세요 ^^');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (13,8,to_date('20/11/15','RR/MM/DD'),'manager01','안녕하세요~ shkim님! 당신의 첫번째 책 FirstBook 관리자입니다. 안타깝게도 회원님의 차단 기간(30일) 동안은 별도의 서비스 이용이 불가능하십니다. 공모전 결과나 수상시에 제공되는 상금 등에 대한 부분은 별도로 통지 가능한 부분이라 이 부분 양해 부탁드리겠습니다.');
Insert into QNA_REPLY (REPLY_NUM,POST_NUM,REPLY_DATE,REPLY_ID,REPLY_CONTENT) values (14,10,to_date('20/01/02','RR/MM/DD'),'manager01','안녕하세요~ tlkim님! 당신의 첫번째 책 FirstBook 관리자입니다. 마침 배너 디자인 공모전이 계획 중에 있습니다. 2021년 상반기에 시작될 예정이니 조금만 기다려주세면 곧 공지사항이 올라올겁니다. 궁금하신 사항이 해결되셨길 바랍니다.');

------FAQ

CREATE TABLE "FAQ" (
	"POST_NUM"	NUMBER NOT NULL PRIMARY KEY,
	"FAQ_POST_TITLE" VARCHAR2(300) NOT NULL,
	"FAQ_POST_CONTENT" VARCHAR2(1200) NOT NULL
);

Insert into FAQ (POST_NUM,FAQ_POST_TITLE,FAQ_POST_CONTENT) values (1,'구매만 하고 열람하지 않았는데 환불이 가능한가요?','열람하지 않았더라도 코인을 사용해서 구매하는 시점으로부터 환불은 불가능합니다. 단 , 웹소설 구매나 단행본 구매 이전에 코인은 환불이 가능합니다.');
Insert into FAQ (POST_NUM,FAQ_POST_TITLE,FAQ_POST_CONTENT) values (2,'무료로 소설을 볼 수 있는 방법도 있나요?','네 가능합니다. 마이페이지에서 일주일에 한번 위클리 코인을 모아서 소설을 감상하실 수 있습니다.');
Insert into FAQ (POST_NUM,FAQ_POST_TITLE,FAQ_POST_CONTENT) values (3,'일괄구매하는 방법이 알고 싶습니다.','일괄구매는 웹소설 페이지에서 가능합니다. 구매를 원하는 화수를 선택한 후 결제를 하시면 최소 1편에서 전편을 일괄 구매하실 수 있습니다.');
Insert into FAQ (POST_NUM,FAQ_POST_TITLE,FAQ_POST_CONTENT) values (4,'악플을 다는 유저를 신고하고 싶어요. 신고절차는 어떻게 되나요.','댓글상 우측에 위치한 신고버튼을 눌러서 신고가 가능합니다. 누적회수가 20회를 넘어가면 댓글은 블라인드 처리되며 관리자의 검토 후 차단 여부가 결정됩니다. 단 무고한 신고에 대해서는 신고자 또한 처벌이 되니 유의하시기 바랍니다.');
Insert into FAQ (POST_NUM,FAQ_POST_TITLE,FAQ_POST_CONTENT) values (5,'작품과 작가 등록은 어떻게 하나요?','FirstBook은 이미 계약한 작가들의 작품이 올라오는 2차플랫폼이며, 이외 신인 작가들의 작품은 공모전에서 보실 수 있습니다. 작가들이 곧바로 업로드하는 기능은 아직 제공되고 있지 않으며, 공모전의 경우도 저희쪽에서 서류 검토 후 전달해주신 파일을 업로드하는 형태로 이루어집니다. 작가 등록은 별도로 있지 않으며 회원 가입으로 가능하십니다. ');
Insert into FAQ (POST_NUM,FAQ_POST_TITLE,FAQ_POST_CONTENT) values (6,'코인을 선물하고 싶어요. ','아직까지 코인 선물 기능은 지원되고 있지 않습니다만 향후 추가 검토중인 기능 중 하나입니다. 감사합니다.');
Insert into FAQ (POST_NUM,FAQ_POST_TITLE,FAQ_POST_CONTENT) values (7,'작가분과 얘기하고 싶은 게 있는데 쪽지 기능은 없나요? ','쪽지 기능은 저희 서비스에서 아직 제공하고 있지 않습니다. 향후 추가 검토중인 기능이니 조금만 기다려주시기 바랍니다.');
Insert into FAQ (POST_NUM,FAQ_POST_TITLE,FAQ_POST_CONTENT) values (8,'구매 내역을 확인하고 싶은데 어떻게 하면될까요?','구매내역은 마이페이지 좌측 상단의 결제 내역에서 보실 수 있습니다. 또한 구매하신 소설은 마이페이지의 ''내 서재''에서 찾아보실 수 있습니다.');
Insert into FAQ (POST_NUM,FAQ_POST_TITLE,FAQ_POST_CONTENT) values (9,'공모전에 출품하고 싶습니다. 일정은 어디서 확인하나요? ','공모전은 페이지 상단 공모전 버튼을 클릭하여 확인해보실 수 있으며, 공모전 일정은 공모전 페이지와 공지사항에서 알려드릴 예정입니다. 2020년 10월 4분기 이후로 매년분기마다 공모전이 진행되고 있습니다.');
Insert into FAQ (POST_NUM,FAQ_POST_TITLE,FAQ_POST_CONTENT) values (10,'탈퇴는 어떻게 하나요?','회원 탈퇴는 마이페이지에서 가능합니다. 탈퇴시 보유한 코인은 자동 환불되지 않으니 환불 이후 탈퇴하시는 것을 권고드립니다. 또한 보유한 서재 또한 초기화되니 탈퇴에 앞서 신중하게 판단하시기 바랍니다.');

----

CREATE TABLE "NOTICE" (
	"NOTICE_NUM" NUMBER	NOT NULL,
	"NOTICE_DATE" DATE NOT NULL,
	"NOTICE_NAME" VARCHAR2(40) NOT NULL,
	"NOTICE_VIEW_COUNT"	NUMBER NOT NULL,
	"NOTICE_CONTENT" VARCHAR2(2000) NULL
    );
