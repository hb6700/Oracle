--ex12_datetime_function.sql
/*
### 날짜 시간 함수
sysdate
- 현재 시스템의 시각을 반환
- Calendar.getInstance()
- date sysdate
*/

SELECT sysdate FROM dual;

/*
### 날짜 연산
1. 시각 - 시각 = 시간
2. 시각 + 시간 = 시각
3. 시각 - 시간 = 시각
*/

--1. 시각 - 시각 = 시간(일)
SELECT
	name,			--홍길동
	ibsadate,		--1998-10-11
	round(sysdate - ibsadate) AS 근무일수,					--회사 다닌지 : 9088.6~~(일)
	round((sysdate - ibsadate) / 365) AS 근무일수, 			--25년 > 사용금지
	round((sysdate - ibsadate) * 24) AS 근무시수, 			--218128
	round((sysdate - ibsadate) * 24 * 60) AS 근무분수, 		--13087666
	round((sysdate - ibsadate) * 24 * 60 * 60) AS 근무초수 	--785259952
FROM tblinsa;


SELECT
	title,
	adddate,
	completedate,
	-- ORA-00972: identifier is too long
	-- 오라클 > 식별자 최대 길이 > 30바이트(UTF-8)
	-- completedate - adddate AS "할 일을 실행하기까지 걸린 시간"
	round((completedate - adddate) * 24) AS 실행하기까지걸린시간 
FROM tbltodo
	WHERE completedate IS NOT null
	ORDER BY round((completedate - adddate) * 24) DESC; 

---------------------------------------------------------------------------------------------

/*
2. 시각 + 시간 = 시각
3. 시각 - 시간 = 시각
*/

SELECT
	sysdate,
	--시각 + 시간(일)
	sysdate + 100 AS "100일 뒤",
	--시각 - 시간(일)
	sysdate - 100 AS "100일 전",
	sysdate + (3/24) AS "3시간 후",
	sysdate - (5/24) AS "5시간 전",
	sysdate + (30/60/24) AS "30분 뒤"
FROM dual;


/*
시각 - 시각 = 시간(일)
	> 일 > 시 > 분 > 초 환산 가능
	> 일 > 월 > 년 > 환산 불가능

시각 + 시간(일) = 시각 
	> 일, 시, 분, 초 가능
	> 월, 일 불가능
*/
SELECT sysdate + 3 * 30 FROM dual;

-----------------------------------------------------
/*
### months_between()
- number months_between(date, date)
- 시각 - 시각 = 시간(월
*/

SELECT
	name,															--홍길동
	round(sysdate - ibsadate) AS "근무일수",						--9089
	round((sysdate - ibsadate) / 30) AS "근무월수",					--303
	round(months_between(sysdate, ibsadate)) AS "근무월수",			--299
	round(months_between(sysdate, ibsadate) / 12) AS "근무년수"		--25
FROM tblinsa;

/*
### add_months()
- date add_months(date, 시간)
- 시각 + 시간(월) = 시각
*/

SELECT
	sysdate,						--2023-08-29 16:20:42.000
	add_months(sysdate, 3),			--2023-11-29 16:20:42.000
	add_months(sysdate, -2),		--2023-06-29 16:20:42.000
	add_months(sysdate, 5*12)		--2028-08-29 16:20:42.000
FROM dual;

----------------------------------------------------
--요약
/*
1. 시각 - 시각
    1. 일, 시, 분, 초 > 연산자(-)
    2. 월, 년 > months_between()
2. 시각 +(-) 시간
    1. 일, 시, 분, 초 > 연산자(+, -)
    2. 월, 년 > add_months()
*/
----------------------------------------------------

SELECT
	sysdate,
	last_day(sysdate)		--해당날짜가 포함된 마지막 날짜 반환 : 해당 월이 몇일까지인데?
FROM dual;