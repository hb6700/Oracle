--ex11_casting_function.sql
/*
### 형변환 함수
ex) (int)num
1. to_char(숫자) : 숫자 > 문자
2. to_char(날짜) : 날짜 > 문자 **
3. to_number(문자) : 문자 > 숫자
4. to_date(문자) : 문자 > 날짜 *
*/

-----------------------------------------------------------------------------------

/*
### to_char(숫자 [, 형식문자열])
형식문자열 생략 가능
*/

SELECT
	weight,					--숫자형(우측정렬)
	to_char(weight),		--문자형(좌측정렬)
	LENGTH(to_char(weight)),--문자열 함수
	length(weight),			--weight > (암시적형변환) > 문자열
	substr(weight, 1, 1),	--몸무게 1자리 부터 1개의 문자열 반환 : 십의 자리 반환
	weight || 'kg',			
	to_char(weight || 'kg')	
FROM tblcomedian;

--1. 9 : 숫자 1개를 문자 1개로 바꾸는 역할. 빈자리를 스페이스로 치환. > %5d
--2. 0 : 숫자 1개를 문자 1개로 바꾸는 역할. 빈자리를 0으로 치환 > %05d
SELECT
	weight,
	'@' || to_char(weight) ||'@',
	'@' || to_char(weight, '99999') ||'@',		--@    64@
	'@' || to_char(-weight, '99999') ||'@',		--@   -64@
	'@' || to_char(weight, '00000') ||'@',		--@ 00064@
	'@' || to_char(-weight, '00000') ||'@'		--@-00064@
FROM tblcomedian;

--3. $ :  통화 기호 표현($)
--4. L :  통화 기호 표현(Locale : 지역설정)
SELECT
	100,						--100
	'$' || 100,					--$100
	to_char(100, '$999'),		-- $100
--	to_char(100, '999달러'),	--오류
	100 || '달러',
	to_char(100, 'L999')
FROM dual;

--5. . :  소숫점
--6. , :  천 단위 표기
SELECT
	1234567.89,
	to_char(1234567.89),					--%,d
	ltrim(to_char(567.89, '9,999,999.9')),	--%,d
	to_char(2341234567.89 , '9,999,999.9')	--##################
FROM dual;

------------------------------------------------------------------------------------------

/*
### to_char(날짜)
- 날짜 > 문자
- char to_char(컬럼, 형식문자열)
*/

SELECT sysdate FROM dual;
SELECT to_char(sysdate) FROM dual;			--X
-----------------------------------------------------------------
SELECT to_char(sysdate, 'yyyy') FROM dual;		--년(4자리)
SELECT to_char(sysdate, 'yy') FROM dual;		--년(2자리)
SELECT to_char(sysdate, 'month') FROM dual;		--월(풀네임)
SELECT to_char(sysdate, 'mon') FROM dual;		--월(약어)
SELECT to_char(sysdate, 'mm') FROM dual;		--월(2자리)
SELECT to_char(sysdate, 'day') FROM dual;		--요일(풀네임)
SELECT to_char(sysdate, 'dy') FROM dual;		--요일(약어)
SELECT to_char(sysdate, 'ddd') FROM dual;		--일(올해의 몇 일)
SELECT to_char(sysdate, 'dd') FROM dual;		--일(이번달의 몇 일)
SELECT to_char(sysdate, 'd') FROM dual;			--일(이번주의 몇 일 : 요일의 숫자 버전)
SELECT to_char(sysdate, 'hh') FROM dual;		--시간(12시간 체계)
SELECT to_char(sysdate, 'hh24') FROM dual;		--시간(24시간 체계)
SELECT to_char(sysdate, 'mi') FROM dual;		--분
SELECT to_char(sysdate, 'ss') FROM dual;		--초
SELECT to_char(sysdate, 'am') FROM dual;		--오전/오후
SELECT to_char(sysdate, 'pm') FROM dual;		--오전/오후
-----------------------------------------------------------------
--암기!
SELECT
	sysdate,									--2023-08-29 14:48:40.000
	to_char(sysdate, 'yyyy-mm-dd'),				--2023-08-29
	to_char(sysdate, 'hh24 : mi : ss'),			--14 : 48 : 40
	to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),	--2023-08-29 14:48:40
	to_char(sysdate, 'day am hh:mi:ss')			--화요일 오후 02:48:40
FROM dual;

-----------------------------------------------------------------

SELECT
	name,
	to_char(ibsadate, 'yyyy-mm-dd') AS ibsadate,
	to_char(ibsadate, 'day') AS DAY,
	CASE
		WHEN to_char(ibsadate, 'd') IN ('1', '7') THEN '휴일'
		ELSE '평일'
	END	AS "평일/휴일"
FROM tblinsa;

--요일별 입사 인원수?
SELECT
	count(CASE
		WHEN to_char(ibsadate, 'd') = '1' THEN 1
	END) AS 일요일,
	count(decode(to_char(ibsadate, 'd'), '2', 1)) AS 월요일,
	count(decode(to_char(ibsadate, 'd'), '3', 1)) AS 화요일,
	count(decode(to_char(ibsadate, 'd'), '4', 1)) AS 수요일,
	count(decode(to_char(ibsadate, 'd'), '5', 1)) AS 목요일,
	count(decode(to_char(ibsadate, 'd'), '6', 1)) AS 금요일,
	count(decode(to_char(ibsadate, 'd'), '7', 1)) AS 토요일
FROM tblinsa;


--SQL에는 날짜 상수(리터럴)이 없다.
--입사 날짜 > 2000년 이후
SELECT * FROM tblinsa WHERE ibsadate >= '2000-01-01';		--날짜상수(리터럴)(X), 문자열(O) > 암시적 형변환

--입사 날짜 > 2000년
SELECT * FROM tblinsa WHERE ibsadate >= '2000-01-01' AND ibsadate <= '2000-12-31';						--동작은 하는데 틀림 >> (X)
--SELECT * FROM tblinsa WHERE ibsadate >= '2000-01-01 00:00:00' AND ibsadate <= '2000-12-31 23:59:59';	--ORA-01861: literal does not match format string
SELECT * FROM tblinsa WHERE to_char(ibsadate, 'yyyy') = '2000';	

---------------------------------------------------------------------------

--number to_number(문자)

SELECT
	'123',					--문자열
	to_number('123'),		--숫자열
	'123' * 2,				--246 : 암시적 형변환이 일어남 
	to_number('123') * 2	--246 : 숫자열
FROM dual;

--------------------------------------------------------------------------

--to_date(문자, 형식문자열)

SELECT
	'2023-08-29',							--자료형? : 문자 문자 vs 날짜
	to_date('2023-08-29'),					--날짜형
	to_date('2023-08-29', 'yyyy-mm-dd'),	--형식문자열 추가
	to_date('20230829'),
	to_date('20230829', 'yyyymmdd'),
	to_date('2023/08/29'),
	to_date('2023/08/29', 'yyyy-mm-dd'),
	--to_date('2023년 08월 29일'),
	--to_date('2023-08-29 15:28:29'),		--ORA-01861: literal does not match format string
	to_date('2023-08-29 15:28:29', 'yyyy-mm-dd hh24:mi:ss')
FROM dual;

SELECT * FROM tblinsa WHERE 
	ibsadate >= to_date('2000-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss') AND 
	ibsadate <= to_date('2000-12-31 23:59:59', 'yyyy-mm-dd hh24:mi:ss');