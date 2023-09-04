--ex25_rank.sql

/*
순위 함수
- rownum기반으로 만들어진 함수
1. rank() over(order by 컬럼명[asc|desc])
2. dense_rank() over(order by 컬럼명[asc|desc])
3. row_number() over(order by 컬럼명[asc|desc])
*/

--tblinsa : 급여순으로 가져오시오  + 순위 표시 
SELECT name, buseo, basicpay, rownum 
FROM (SELECT name, buseo, basicpay FROM tblinsa ORDER BY pasicpay DESC);							--8, 9, 10

SELECT name, buseo, basicpay, rank() over(ORDER BY basicpay DESC) AS rnum FROM tblinsa;				--8, 8, 10
SELECT name, buseo, basicpay, dense_rank() over(ORDER BY basicpay DESC) AS rnum FROM tblinsa;		--8, 8, 9
SELECT name, buseo, basicpay, row_number() over(ORDER BY basicpay DESC) AS rnum FROM tblinsa;		--8, 9, 10

--급여 5등
SELECT * 
FROM(
	SELECT name, buseo, basicpay, 
	row_number() over(ORDER BY basicpay DESC) AS rnum FROM tblinsa) 
WHERE rnum = 5;

--순위 함수 + order by
--순위함수 + partition by + order by > 순위함수 + group by > 그룹별 순위 구하기
SELECT * FROM (SELECT name, buseo, basicpay, rank() over(PARTITION BY buseo ORDER BY basicpay desc) AS rnum FROM tblinsa) WHERE rnum = 1;

