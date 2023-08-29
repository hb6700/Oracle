-- ex08_aggregation_function.sql
/*
메서드(Method)
- 클래스 안에서 정의한 함수

함수(Function)
- 어딘가에 소속되어 있지 않고, 독립적으로 존재
1. 내장 함수(Built-in Function)
2. 사용자 정의 함수(User Function) > ANSI-SQL(X), PL/SQL(O)
*/

/*
집계함수
1. count
- 결과 테이블의 레코드 수를 반환한다
- number count(컬럼명)
- null값은 카운트에서 제외한다(*********)
*/

SELECT name, length(name) FROM TBLINSA;

-- tblcountry. 총 나라 몇개?
SELECT count(*) FROM tblCountry;				--14(모든 레코드, 일부 컬럼에 null 무관)
SELECT count(name) FROM tblCountry;				--14()
SELECT count(population) FROM tblCountry;		--13

SELECT * FROM  tblCountry;
SELECT name FROM tblcountry;


--모든 직원수
SELECT count(*) FROM tblinsa;				--60
--연락처가 있는 직원수?
SELECT count(tel) FROM tblinsa;				--57 : 전화번호 null제외 나머지 개수
--연락처가 없는 직원수?
SELECT count(*) - count(tel) FROM tblinsa;	--3


SELECT count(*) FROM tblinsa WHERE tel IS NOT NULL; 		--57
SELECT count(*) FROM tblinsa WHERE tel IS NULL;				--3

--tblinsa 어떤 부서가 있니?
SELECT DISTINCT buseo FROM tblinsa;							--개발부~홍보부
--tblinsa 부서 몇개야?
SELECT count(DISTINCT buseo) FROM tblinsa;					--7

--tbComedian 남자수? 여자수?
SELECT * FROM tblcomedian;
SELECT count(*) FROM tblcomedian WHERE gender = 'm';		--16
SELECT count(*) FROM tblcomedian WHERE gender = 'f';		--4

--남자수 + 여자수  > 1개의 테이블로 가져오시오. >. *****자주 사용되는 패턴
SELECT
	count(CASE
		WHEN gender = 'm' THEN 1
	END) AS 남자인원수,
	count(CASE
		WHEN gender = 'f' THEN 1
	END) AS 여자인원수
FROM tblcomedian;


--tblinsa. 기획부 몇명, 총무부 몇명? 개발부 몇명? 총인원 몇명? 나머지 몇명?
SELECT count(*) FROM tblinsa WHERE buseo = '기획부'; 		--7
SELECT count(*) FROM tblinsa WHERE buseo = '총무부'; 		--7
SELECT count(*) FROM tblinsa WHERE buseo = '개발부'; 		--14

SELECT
	count(CASE
		WHEN buseo = '기획부' THEN 'o'
	END) AS 기획부,
	count(CASE
		WHEN buseo = '총무부' THEN 'o'
	END) AS 총무부,
	count(CASE
		WHEN buseo = '개발부' THEN 'o'
	END) AS 개발부,
	count(*) AS  전체인원수,
	count(CASE
		WHEN buseo NOT IN ('기획부', '총무부', '개발부') THEN 'o'
	END) AS 나머지
FROM tblinsa;


/*
2. sum 
- 해당 컬럼의 합을 구한다
- number sum(컬럼명)
- 해당 컬럼 > 숫자형
*/

SELECT * FROM tblcomedian;
SELECT sum(height), sum(weight) FROM tblcomedian;
SELECT sum(first) FROM tblcomedian;			--ORA-01722: invalid NUMBER

SELECT
	sum(basicpay) AS "지출 급여 합",
	sum(sudang) AS "지출 수당 합",
	sum(basicpay) + sum(sudang) AS "총 지출",
	sum(basicpay + sudang) AS "총 지출"
FROM tblinsa;

SELECT sum(*) FROM tblinsa;					--ORA-00936: missing expression

/*
3. avg 
- 해당 컬럼의 평균값을 구한다
- number avg(컬럼명)
- 숫자형만 적용 가능
*/

-- tblinsa : 평균급여
SELECT sum(basicpay) / 60 FROM tblinsa;						--1,556,526.666~~~~
SELECT sum(basicpay) / count(*) FROM tblinsa;				--1556526
SELECT avg(basicpay) FROM tblinsa;							--1556526

-- tblCountry : 평균 인구수
SELECT avg(population) FROM tblcountry;						--15588
SELECT sum(population)/count(*) FROM tblcountry;			--14475
SELECT sum(population)/count(population) FROM tblcountry;	--15588
SELECT count(population), count(*) FROM tblcountry; 		--전체나라는 14, NULL값 1개

--회사 > 성과급 지급 > 출처 > 1팀
--1. 균등 지급 : 총지급액 / 모든 직원수 = sum() / count(*)
--2. 차등 지급 : 총 지급액 / 1팀직원수 = sum() / count(1팀) = avg()

SELECT avg(name) FROM tblinsa;					--ORA-01722: invalid number
SELECT avg(ibsadate) FROM tblinsa;				--ORA-00932: inconsistent datatypes: expected NUMBER got DATE


/*
4. max()
    - object max(컬럼명)
    - 최댓값 반환
5. min()
    - object min(컬럼명)
    - 최솟값 반환

- 숫자형, 문자형, 날짜형 모두 적용 가능
*/


SELECT max(sudang), min(sudang) FROM tblinsa;			--숫자형 : 220400, 102000
SELECT max(name), min(name) FROM tblinsa;				--문자형 : 황진이, 고순정
SELECT max(ibsadate), min(ibsadate) FROM tblinsa;		--날짜형 : 2005-09-26, 1995-02-23

SELECT
	count(*) AS 직원수,
	sum(basicpay) AS 총급여액,
	avg(basicpay) AS 평균급여,
	max(basicpay) AS 최고급여,
	min(basicpay) AS 최저급여
FROM tblinsa

--집계함수 사용시 주의점
SELECT count(*) FROM tblinsa;			--직원수
SELECT name FROM tblinsa;				--직원명

--요구사항) 직원들 이름과 총직원수를 동시에 가져오시오.
--1. ORA-00937: not a single-group group function
--컬럼리스트에서는 집계함수와 일반컬럼을 동시에 사용할 수 없다.
SELECT count(*), name FROM tblinsa;		--사용 금지

--요구사항) 평균 급여보다 더 많이 받는 직원들?
SELECT avg(basicpay) FROM tblinsa;		--1556526
SELECT * FROM tblinsa WHERE basicpay >= 1556526;
--2. ORA-00934: group function is not allowed here
--where절에는 집계함수를 사용할 수 없다.
--집계함수(집합), 컬럼(개인)
--where절 > 개개인(레코드)의 데이터를 접근해서 조건 겁색 > 집합값 호출 불가능
--집합데이터와 데이터를 비교할 수 없다...
SELECT * FROM tblinsa WHERE basicpay >= avg(basicpay);




















