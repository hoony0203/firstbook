

DROP TABLE WEB_NOV_DETAIL;

  CREATE TABLE WEB_NOV_DETAIL
   (
	WEB_NOV_NUM VARCHAR2(10) PRIMARY KEY REFERENCES WEB_NOV_INFO(WEB_NOV_NUM) NOT NULL,
	CHAPTER_NUM NUMBER,
	PAY_OR_NOT CHAR(2) CHECK(PAY_OR_NOT IN ('Y', 'N')),
	WEB_NOV_CONTENT VARCHAR2(2000) NOT NULL
   );

SELECT
WNI.WEB_NOV_NUM,
WNI.WEB_NOV_TITLE,
WNI.WEB_NOV_INFORM,
WND.WEB_NOV_NUM,
WND.CHAPTER_NUM
FROM WEB_NOV_INFO WNI
JOIN WEB_NOV_DETAIL WND on WNI.WEB_NOV_NUM = WND.WEB_NOV_NUM;

-------소설별 댓글

SELECT
WNI.WEB_NOV_TITLE
, WNI.WEB_NOV_AUTHOR
, WNR.MEM_NUM
/*, WNI.WEB_NOV_NUM
, WNR.WEB_NOV_NUM*/
, WNR.REPLY_CONTENT
, MI.MEM_ID
FROM WEB_NOV_INFO WNI
JOIN WEB_NOV_REPLY WNR ON (WNI.WEB_NOV_NUM = WNR.WEB_NOV_NUM)
JOIN MEM_INFO MI ON WNR.MEM_NUM = MI.MEM_NUM;


-----신고 누적

SELECT
WNI.WEB_NOV_TITLE
, WNI.WEB_NOV_AUTHOR
, WNR.MEM_NUM
, MI.MEM_ID
/*, WNI.WEB_NOV_NUM
, WNR.WEB_NOV_NUM*/
, WNR.REPLY_CONTENT
, AR.REPLY_NUM
, AR.ACCUM_REPORT_NUM
, WNR.REPLY_DATE
FROM WEB_NOV_INFO WNI
JOIN WEB_NOV_REPLY WNR ON (WNI.WEB_NOV_NUM = WNR.WEB_NOV_NUM)
JOIN ACCUM_REPORT AR ON (WNR.REPLY_NUM = AR.REPLY_NUM)
JOIN MEM_INFO MI ON WNR.MEM_NUM = MI.MEM_NUM;

SELECT
*
FROM ACCUM_REPORT;

SELECT
*
FROM MEM_INFO
WHERE MEM_NUM ='u0012';


------------WISH_LIST

SELECT
MI.MEM_NUM,
MI.MEM_NAME
, WL.WEB_NOV_NUM
, WNI.WEB_NOV_TITLE
FROM MEM_INFO MI
JOIN WISH_LIST WL ON MI.MEM_NUM = WL.MEM_NUM
JOIN WEB_NOV_INFO WNI ON WL.WEB_NOV_NUM = WNI.WEB_NOV_NUM;


---- 진출 현황

SELECT
DISTINCT (CI.NOV_TITLE)
, MI.MEM_ID
, CF.FIXTURE_STAT
, CD.COMPET_NUM
, CF.FIXTURE_NUM
FROM MEM_INFO MI
JOIN COMPET_INFO CI ON MI.MEM_NUM = CI.MEM_NUM
RIGHT JOIN COMPET_DETAIL CD ON CI.COMPET_NUM = CD.COMPET_NUM
JOIN COMPET_FIXTURE CF ON CI.COMPET_NUM = CF.COMPET_NUM
WHERE MEM_ID = 'shkim'
ORDER BY CF.FIXTURE_NUM;

DELETE COMPET_FIXTURE;


----

ALTER TABLE QNA_REPLY MODIFY REPLY_CONTENT VARCHAR2(700);