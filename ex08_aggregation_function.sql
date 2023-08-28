-- ex08_aggregation_function.sql
/*
집계함수

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