--ex19_subquery.sql
/*
subQuery(서브쿼리)
------------------
SQL
1. Main Query, 일반 쿼리
	- 하나의 문장 안에 하나의 SELECT,(INSERT, UPDATE, DELETE)로 되어있는 쿼리
2. Sub Query, 서브 쿼리(부속 질의)
	- 하나의 문장안에(SELECT, INSERT, UPDATE, DELETE)안에 또 다른 문장(SELECT)이 들어있는 쿼리
	- 하나의 SELECT안에 또 다른  SELECT문이 들어있는 쿼리
	- 삽입 위치 : SELECT절, FROM절, WHERE절, GROUP BY절, HAVING절, ORDER BY절
	- 컬럼(값)을 넣을 수 있는 장소면 서브쿼리가 들어갈 수 있다
*/

--------------------------------------------------------------------------------
--tblCountry : 인구수가 가장 많은 나라의 이름 > 중국
UPDATE tblcountry SET population = population + 100 WHERE name = '중국';

SELECT max(population) FROM tblcountry;						--120660
SELECT name FROM tblcountry WHERE population = 120660;		--중국

SELECT name FROM tblcountry WHERE population = max(population);		--X

SELECT name FROM tblcountry WHERE population = (SELECT max(population) FROM tblcountry);
--------------------------------------------------------------------------------
--tblComedian : 몸무게가 가장 많이 나가는 사람의 이름?
SELECT max(weight) FROM tblcomedian;
SELECT * FROM tblcomedian WHERE weight = 129;
--서브쿼리 적용
SELECT * FROM tblcomedian WHERE weight = (SELECT max(weight) FROM tblcomedian);
--------------------------------------------------------------------------------
--tblinsa : 평균급여보다 많이 받는 직원들
SELECT * FROM tblinsa WHERE basicpay >= (SELECT avg(basicpay) FROM tblinsa);

--남자(166)의 여자친구의 키?
SELECT * FROM tblmen;
SELECT * FROM tblwomen;

--SELECT * FROM tblwomen WHERE couple = '양세형'; 
SELECT * FROM tblwomen WHERE couple = (SELECT name FROM tblmen WHERE height = 166); 
--------------------------------------------------------------------------------
/*
서브쿼리 삽입 위치
1. 조건절 > 비교값으로 사용
	a. 반환값이 1행 1열 > 단일값 반환 > 상수취급 > 값 1개
	b. 반환값이 N행 1열 > 다중값 반환 > 열거형 비교 > IN 사용
	c. 반환값이 1행 N열 > 다중값 반환 > 그룹 비교 > N컬럼 : N컬럼
	d. 반환값이 N행 N열 > 다중값 반환 > 2+3 >  in + 그룹 비교
*/
--급여가 260만원 이상 받는 직원이 근무하는 부서의 직원 명단을 가져오시오
--SELECT
--	*
--FROM tblinsa
--WHERE buseo = (급여가 260만원 이상 받는 직원이 근무하는 부서);

--ORA-01427: single-row subquery returns more than one row
SELECT *
FROM tblinsa
WHERE buseo = (SELECT buseo FROM tblinsa WHERE basicpay >= 2600000);

--반환값이 N행 1열 > 다중값 반환 > 열거형 비교 > IN 사용
SELECT *
FROM tblinsa
WHERE buseo = '총무부' OR buseo = '기획부';

SELECT *
FROM tblinsa
WHERE buseo IN ('총무부', '기획부');

SELECT *
FROM tblinsa
WHERE buseo IN (SELECT buseo FROM tblinsa WHERE basicpay >= 2600000);

--------------------------------------------------------------------------------
--반환값이 1행 N열 > 다중값 반환
--'홍길동'과 같은 지역, 같은 부서인 직원 명단을 가져오시오(서울, 기획부)
SELECT * FROM tblinsa WHERE city = '서울' AND buseo = '기획부';

--1:1 비교 * 2 
SELECT * FROM tblinsa
WHERE city = (SELECT city FROM tblinsa WHERE name = '홍길동') AND buseo = (SELECT buseo FROM tblinsa WHERE name = '홍길동');

--ORA-00913: too many values
--2:2 비교 : 순서가 달라지면 안됨, 컬럼값 배치 동일하게
SELECT * FROM tblinsa WHERE (city, buseo) = (SELECT city, buseo FROM tblinsa WHERE name = '홍길동');

--------------------------------------------------------------------------------
--반환값이 N행 N열 > 다중값 반환
--급여가 260만원 이상 받은 직원과 같은 부서, 같은 지역 > 직원의 명단
SELECT
	*
FROM tblinsa
WHERE (buseo, city) IN (SELECT buseo, city FROM tblinsa WHERE basicpay >= 2600000);


--------------------------------------------------------------------------------

/*
서브쿼리 삽입 위치
1. 조건절 > 비교값으로 사용
	a. 반환값이 1행 1열 > 단일값 반환 > 상수취급 > 값 1개
	b. 반환값이 N행 1열 > 다중값 반환 > 열거형 비교 > IN 사용
	c. 반환값이 1행 N열 > 다중값 반환 > 그룹 비교 > N컬럼 : N컬럼
	d. 반환값이 N행 N열 > 다중값 반환 > 2+3 >  in + 그룹 비교
2. 컬럼리스트 > (출력값)으로 사용
	- 반드시 결과값이 1행 1열이어야 한다. > 스칼라 쿼리 > 원자값 반환
	a. 정적 쿼리 : 모든 행에 동일한 값을 반환
	b. 상관 서브 쿼리(***********) : 서브쿼리의 값과 바깥쪽 메인 쿼리의 값을 서로 연결.
*/

SELECT name, buseo, basicpay, (SELECT round(avg(basicpay)) FROM tblinsa) AS avg FROM tblinsa;

SELECT  name, buseo, basicpay, (SELECT jikwi from tblinsa) FROM tblinsa;								--X
SELECT  name, buseo, basicpay, (SELECT sudang from tblinsa) FROM tblinsa;								--X

SELECT  name, buseo, basicpay, (SELECT jikwi from tblinsa WHERE num = 1001) FROM tblinsa;
SELECT  name, buseo, basicpay, (SELECT sudang from tblinsa WHERE num = 1001) FROM tblinsa;

SELECT  name, buseo, basicpay, (SELECT jikwi, sudang from tblinsa WHERE num = 1001) FROM tblinsa;		--X
--------------------------------------------------------------------------------
SELECT name, buseo, basicpay, (SELECT round(avg(basicpay)) FROM tblinsa) AS avg FROM tblinsa;

SELECT name, buseo, basicpay, (SELECT round(avg(basicpay)) FROM tblinsa WHERE buseo = '기획부') AS avg FROM tblinsa;
SELECT name, buseo, basicpay, (SELECT round(avg(basicpay)) FROM tblinsa WHERE buseo = a.buseo) AS avg FROM tblinsa a;
--------------------------------------------------------------------------------
--남자(이름, 키, 몸무게) + 여자(이름, 키, 몸무게)
SELECT * FROM tblmen;
SELECT * FROM tblwomen;

SELECT
	name AS "남자 이름",
	height AS "남자 키",
	weight AS "여자 몸무게", 
	couple AS "여자 이름", 
	(SELECT height FROM tblwomen WHERE name = tblmen.couple) AS "여자 키",
	(SELECT height FROM tblwomen WHERE name = tblmen.couple) AS "여자 몸무게"
FROM tblmen;
--------------------------------------------------------------------------------

/*
서브쿼리 삽입 위치
1. 조건절 > 비교값으로 사용
	a. 반환값이 1행 1열 > 단일값 반환 > 상수취급 > 값 1개
	b. 반환값이 N행 1열 > 다중값 반환 > 열거형 비교 > IN 사용
	c. 반환값이 1행 N열 > 다중값 반환 > 그룹 비교 > N컬럼 : N컬럼
	d. 반환값이 N행 N열 > 다중값 반환 > 2+3 >  in + 그룹 비교
2. 컬럼리스트 > (출력값)으로 사용
	- 반드시 결과값이 1행 1열이어야 한다. > 슼랄라 쿼리 > 원자값 반환
	a. 정적 쿼리 : 모든 행에 ehddlfgks rkqtdmf qksghks 모든 행에 동일한 값을 반환
	b. 상관 서브 쿼리(***********) : 서브쿼리의 값과 바깥쪽 메인 쿼리의 값을 서로 연결.
3. FROM절에서 사용
	- 서브쿼리의 결과 테이블을 하나의 테이블이라고 생긱하고 메인 쿼리를 실행
	- 인라인 뷰(Inline View)
*/

SELECT * FROM (SELECT name, buseo FROM tblinsa);

--ORA-00904: "SSN": invalid identifier
SELECT name, substr(ssn, 1, 8)
FROM (SELECT name, substr(ssn, 1, 8) FROM tblinsa) ;

--인라인 뷰의 컬럼 별칭  > 바깥쪽 메인 쿼리에서 그대로 전달 + 사용
SELECT name, gender
FROM (SELECT name, substr(ssn, 1, 8) AS gender FROM tblinsa) ;
--------------------------------------------------------------------------------
--ORA-00960: ambiguous column naming in select list
--서브쿼리 사용사 거의 필수적으로 as를 사용하게 되는데 컬럼명이 중복되지 않도록 잘 해야함. + 한글사용 자제
SELECT name, height, weight, (SELECT height FROM tblwomen WHERE name = tblmen.couple) AS height2
FROM tblmen
ORDER BY height2;
--ORDER BY 여자키

