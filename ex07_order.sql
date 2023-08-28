-- ex07_order.sql
/*    
[WITH <Sub Query>]
SELECT column_list
FROM table_name
[WHERE search_condition]
[GROUP BY group_by_expression]
[HAVING search_condition]
[ORDER BY order_expression [ASC|DESC]];

 select 컬럼리스트		--3. 컬럼 지정(보고싶은 컬럼만 가져오기) > Projection
 from 테이블			--1. 테이블 지정
 where 조건				--2. 조건 지정(보고싶은 행만 가져오기) > Selection                                                                                                                                                                    
 order by 정렬기준;		--4. 순서대로
 
 oreder by 절
 - 원본테이블 정렬 X > 오라클 저장된 데이터 > 개발자 접근(X), 오라클 스스로 관리(O) 
 - 결과 테이블 정렬 O > 
 - order by 컬럼명[ASC|DESC]
 
 */

--1차 정렬 : 정렬 1번
--SELECT * FROM TBLINSA ORDER BY NAME ASC; -- ㄱ~ㅎ
SELECT * FROM TBLINSA ORDER BY NAME DESC;  -- ㅎ~ㄱ

SELECT * FROM TBLINSA ORDER BY BUSEO ASC;

--2차 정렬 : 
SELECT * FROM TBLINSA ORDER BY BUSEO ASC, JIKWI DESC;

--3차 정렬 : 
SELECT * FROM TBLINSA ORDER BY BUSEO ASC, JIKWI DESC, BASICPAY DESC;

--비교 > 숫자, 문자, 날짜 > 정렬
SELECT * FROM TBLINSA ORDER BY BASICPAY DESC;

SELECT * FROM TBLINSA ORDER BY NAME ASC;

SELECT * FROM TBLINSA ORDER BY IBSADATE DESC;

SELECT num, name, buseo, jikwi FROM TBLINSA ORDER BY 1;	--컬럼 리스트의 컬럼 순서(사용하지 마XXXXXXXXX)



-- 가공된 값의 정렬
-- 급여를 가장 많이 받는 직원 순으로 가져오시오
SELECT * FROM TBLINSA ORDER BY (BASICPAY + SUDANG) DESC;



--직위순으로 정렬 : 부장>과장>대리> 사워
SELECT 
	NAME, JIKWI,
	CASE 
		WHEN jikwin = '부장' THEN 4
		WHEN jikwin = '과장' THEN 3
		WHEN jikwin = '대리' THEN 2
		WHEN jikwin = '사원' THEN 1
	END 
FROM TBLINSA 
ORDER BY jikwi DESC 

SELECT 
	NAME, JIKWI,
	CASE 
		WHEN jikwin = '부장' THEN 4
		WHEN jikwin = '과장' THEN 3
		WHEN jikwin = '대리' THEN 2
		WHEN jikwin = '사원' THEN 1
	END JIKWISED
FROM TBLINSA 
ORDER BY JIKWISEQ 


SELECT 
	NAME, JIKWI,
	CASE 
		WHEN jikwin = '부장' THEN 4
		WHEN jikwin = '과장' THEN 3
		WHEN jikwin = '대리' THEN 2
		WHEN jikwin = '사원' THEN 1
	END DESC;
	
--직원 : 남자 > 여자 순으로
SELECT 
	NAME, SSN
	CASE
		WHEN snn LIKE '%-1%' THEN 1
		WHEN snn LIKE '%-2%' THEN 2
	END
FROM TBLINSA 

SELECT 
	name, ssn
FROM  TBLINSA 
	ORDER BY case
		WHEN snn LIKE '%-1%' THEN 1
		WHEN snn LIKE '%-2%' THEN 2
	END ASC;
	

-- 남자 직원만 가져오기
SELECT * FROM TBLINSA 
	WHERE CASE 
		WHEN ssn LIKE '%-1%' THEN 1
		WHEN ssn LIKE '%-2%' THEN 2
	END = 1;
	
SELECT * FROM TBLINSA 
	WHERE SSN LIKE '%-1%';
	

--case end는 컬럼이 들어갈 수 있느 곳에는 항상 들어갈 수 있다.