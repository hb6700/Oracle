--ex09_numerical_function.sql
/*
숫자함수(= 수학함수)
- Math.XXXX()
*/

SELECT * FROM dual;				--시스템 테이블 : 1행 1열 테이블
SELECT sysdate FROM tblinsa;	--sysdate : 현재시간

SELECT sysdate FROM tblinsa WHERE num = 1001;
SELECT sysdate FROM dual;

SELECT 1+1 FROM tblcomedian;
SELECT 1+1 FROM dual;

-----------------------------------------------------------------
/*
round()
- 반올림 함수
- number round(컬럼명) : 정수 반환
- number round(컬럼명, 소수이하 자릿수) : 실수 반환
*/

--round함수 : 반올림
SELECT
	3.5678,					--3.5678
	round(3.5678),			--4
	round(3.5678, 1),		--3.6
	round(3.5678, 2),		--3.57
	round(3.5678, 0)		--4
FROM dual;

--평균급여 : 소수점 잘라내기
SELECT avg(basicpay) FROM tblinsa;			--1556526.6666~~
SELECT round(avg(basicpay)) FROM tblinsa;	--1556527

-----------------------------------------------------------------

/*
floor(), trunc()
- 절삭함수
- 무조건 내림함수
- number floor(컬럼명) : 무조건 정수 반환
- number trunc(컬럼명) : 정수 반환
- number trunc(컬럼명, 소수이하 자릿수) : 실수 반환
*/ 

SELECT
	3.5678,					--3.5678
	floor(3.5678),			--3
	trunc(3.5678),			--3
	trunc(3.5678, 1),		--3.5
	trunc(3.5678, 2),		--3.56
	trunc(3.5678, 0)		--3
FROM dual;

-----------------------------------------------------------------

/*
ceil()
- 무조건 올림 함수
- 천장
- number ceil(컬럼명)
*/

SELECT
	3.14,				--3.14
	ceil(3.14)			--4
FROM dual;


-----------------------------------------------------------------

/*
mod()
- 나머지 함수
- number mod(피계수, 계수) 
*/

SELECT
	10 / 3,							--3.33~~~
	mod(10, 3) AS 나머지,			--정수 % 정수 : 1
	floor(MOD(10, 3)) AS 몫			--정수 / 정수 : 1
FROM dual;

-----------------------------------------------------------------

--abs : 절대값
--power : 제곱
--sqrt : 루트값
SELECT
	abs(10),abs(-10),						--10 , 10
	power(2, 2), power(2, 3), power(2, 4),	--4, 8, 16
	sqrt(4), sqrt(9), sqrt(16)				--2, 3, 4
FROM dual;


-----------------------------------------------------------------
