--ex06_column.sql

--컬럼리스트에서 할 수 있는 행동
--select 컬럼 리스트

-- 컬럼 명시
SELECT * FROM TBLINSA;
SELECT name, ssn FROM TBLINSA;

-- 연산
SELECT name || '님', basicpay * 2 FROM TBLINSA;

-- 상수
SELECT 100, '홍길동' FROM TBLINSA;

/*
distinct
Java Stream > list.stream().distinct().forEach() >> 중복값 제거
- 컬럼리스트에서 사용
- 중복값 제거
- distinct 컬럼명(X) > 컬럼 리스트(O)

*/

--TBLCOUNTRY 의 대륙종류 > 중복값 제거
SELECT DISTINCT CONTINENT FROM TBLCOUNTRY;

--tblInsa > 부서 종류 > 어떤 부서가 있니?
SELECT DISTINCT BUSEO FROM TBLINSA;
SELECT DISTINCT JIKWI FROM TBLINSA;

--중복값이 없는 컬럼에도 distinct 사용 가능 but 의미는 없음
SELECT DISTINCT NAME FROM TBLINSA;

-- 컬럼값 전체에 대한 중복값 제거로 동작
SELECT DISTINCT BUSEO, NAME FROM TBLINSA;		--중복 이름이 없으므로 distinct효과X
SELECT DISTINCT BUSEO, JIKWI FROM TBLINSA;		--부서와 직급이 겹치지 않는 23개의 리스트 출력


/*
case
- 대부분의 절에서 사용이 가능
- 조건문의 역할
- 조건을 만족하지 못하면 null을 반환(*************************)
*/

SELECT LAST || FIRST AS name, GENDER FROM TBLCOMEDIAN;

SELECT 
	LAST || FIRST AS name, 
	CASE 
		--when 조건 then 값
		WHEN GENDER = 'm' THEN '남자'
		WHEN GENDER = 'f' THEN '여자'
	END AS GENDER 
FROM TBLCOMEDIAN;

-- 
SELECT
	NAME, CONTINENT,
	CASE 
		WHEN CONTINENT = 'AS' THEN '아시아'
		WHEN CONTINENT = 'EU' THEN '유럽'
		WHEN CONTINENT = 'AF' THEN '아프리카'
		-- ELSE '기타'
		ELSE CONTINENT 
	END AS continentName	
FROM TBLCOUNTRY;

SELECT 
	LAST || FIRST AS name, weight, 
	CASE
		WHEN WEIGHT > 90 THEN '과체중'
		WHEN WEIGHT > 50 THEN '정상체중'
		ELSE '저체중'
	END AS state
FROM TBLCOMEDIAN;

SELECT 
	LAST || FIRST AS name, weight, 
	CASE
		WHEN WEIGHT >= 50 AND WEIGHT <= 90 THEN '정상체중'
		ELSE '주의체중'
	END AS state
FROM TBLCOMEDIAN;

SELECT 
	LAST || FIRST AS name, weight, 
	CASE
		WHEN WEIGHT BETWEEN 50 AND 90 THEN '정상체중'
		ELSE '주의체중'
	END AS state
FROM TBLCOMEDIAN;

SELECT * FROM tblcomedian;

SELECT 
	name, JIKWI,
	CASE 
		WHEN JIKWI = '과장' OR JIKWI = '부장' THEN '관리직'
		ELSE '생산직'
	END,
	CASE
		WHEN JIKWI in('과장','부장') THEN '관리직'
		ELSE '생산직'
	END
FROM TBLINSA;


SELECT 
	NAME, SUDANG,
	CASE 
		WHEN name LIKE '홍%' THEN 50000
		ELSE 0
	END + SUDANG 
FROM TBLINSA;

SELECT 
	 TITLE,
	 CASE 
	 	WHEN COMPLETEDATE IS NULL THEN '미완료'
	 	WHEN COMPLETEDATE IS NOT NULL THEN '완료'
	 END AS state
FROM TBLTODO;