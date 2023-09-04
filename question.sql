-- [문제1]

-- 요구사항.001.tblCountry
-- 모든 행과 모든 컬럼을 가져오시오.
SELECT * FROM TBLCOUNTRY;

-- 요구사항.002.tblCountry
-- 국가명과 수도명을 가져오시오.
SELECT name, capital FROM TBLCOUNTRY;

-- 요구사항.003.tblCountry
-- 아래와 같이 가져오시오
-- [국가명]    [수도명]   [인구수]   [면적]    [대륙] <- 컬럼명(alias)
-- 대한민국   서울        4403       101       AS     <- 데이터
SELECT name AS 국가명, capital AS 수도명, population AS 인구수, area AS 면적, continent AS 대륙 FROM TBLCOUNTRY;

--요구사항.004.tblCountry
--아래와 같이 가져오시오
-- [국가정보] <- 컬럼명
-- 국가명: 대한민국, 수도명: 서울, 인구수: 4403   <- 데이터
SELECT name AS 국가명, capital AS 수도명, population AS 인구수 FROM TBLCOUNTRY 국가정보;

--요구사항.005
--아래와 같이 가져오시오.employees
-- [이름]                 [이메일]                 [연락처]            [급여]
-- Steven King	        SKING@gmail.com	515.123.4567	   $24000
SELECT * FROM EMPLOYEES;
SELECT FIRST_NAME || ' ' || LAST_NAME AS 이름, email || '@gmail.com' AS 이메일, PHONE_NUMBER AS 연락처, '$'||salary AS 급여 FROM EMPLOYEES;  

--요구사항.006.tblCountry
--면적(area)이 100이하인 국가의 이름과 면적을 가져오시오.
SELECT name, area FROM TBLCOUNTRY WHERE area <=100;

--요구사항.007.tblCountry
--아시아와 유럽 대륙에 속한 나라를 가져오시오.
SELECT * FROM TBLCOUNTRY WHERE CONTINENT = 'AS' OR CONTINENT = 'EU';


--요구사항.008.employees
--직업(job_id)이 프로그래머(it_prog)인 직원의 이름(풀네임)과 연락처 가져오시오.
SELECT * FROM EMPLOYEES;
SELECT FIRST_NAME || ' ' || LAST_NAME AS 이름, PHONE_NUMBER AS 연락처, JOB_ID FROM EMPLOYEES WHERE JOB_ID = 'IT_PROG';


--요구사항.009.employees
--last_name이 'Grant'인 직원의 이름, 연락처, 고용날짜를 가져오시오.
SELECT * FROM EMPLOYEES;
SELECT FIRST_NAME || ' ' || LAST_NAME AS 이름, PHONE_NUMBER AS 연락처, HIRE_DATE AS 고용날짜 FROM EMPLOYEES WHERE LAST_NAME = 'Grant';


--요구사항.010.employees
--특정 매니저(manager_id: 120)이 관리하는 직원의 이름, 급여, 연락처를 가져오시오.
SELECT * FROM EMPLOYEES;
SELECT FIRST_NAME || ' ' || LAST_NAME AS 이름, SALARY AS 급여, PHONE_NUMBER AS 연락처 FROM EMPLOYEES WHERE MANAGER_ID = 120;

--요구사항.011.employees
--특정 부서(60, 80, 100)에 속한 직원들의 이름, 연락처, 이메일, 부서ID 가져오시오.
SELECT * FROM EMPLOYEES;
SELECT FIRST_NAME || ' ' || LAST_NAME AS 이름, PHONE_NUMBER AS 연락처, email || '@gmail.com' AS 이메일 FROM EMPLOYEES WHERE DEPARTMENT_ID IN(60, 80, 100);

--요구사항.012.tblInsa
--기획부 직원들 가져오시오.
SELECT * FROM TBLINSA;
SELECT * FROM TBLINSA WHERE BUSEO = '기획부';

--요구사항.013.tblInsa
--서울에 있는 직원들 중 직위가 부장인 사람의 이름, 직위, 전화번호 가져오시오.
SELECT * FROM TBLINSA;
SELECT NAME AS 이름, JIKWI AS 직위, TEL AS 전화번호 FROM TBLINSA WHERE CITY = '서울' AND JIKWI = '부장';

--요구사항.014.tblInsa
--기본급여 + 수당 합쳐서 150만원 이상인 직원 중 서울에 직원만 가져오시오.
SELECT * FROM TBLINSA;
SELECT * FROM TBLINSA WHERE BASICPAY + SUDANG >= 1500000 AND CITY = '서울'; 

--요구사항.015.tblInsa
--수당이 15만원 이하인 직원 중 직위가 사원, 대리만 가져오시오.
SELECT * FROM TBLINSA;
SELECT * FROM TBLINSA WHERE SUDANG <= 150000 AND JIKWI IN ('사원', '대리');

--요구사항.016.tblInsa
--수당을 제외한 기본 연봉이 2천만원 이상, 서울, 직위 과장(부장)만 가져오시오.
SELECT * FROM TBLINSA;
SELECT * FROM TBLINSA WHERE (BASICPAY * 12) >= 20000000 AND CITY = '서울' AND JIKWI IN ('과장', '부장');

--요구사항.017.tblCountry
--국가명 'O국'인 나라를 가져오시오.
SELECT * FROM TBLCOUNTRY;
SELECT * FROM TBLCOUNTRY WHERE NAME LIKE '_국';

--요구사항.018.employees
--연락처가 515로 시작하는 직원들 가져오시오.
SELECT * FROM EMPLOYEES;
SELECT * FROM EMPLOYEES WHERE PHONE_NUMBER LIKE '515%';
    
--요구사항.019.employees
--직업 ID가 SA로 시작하는 직원들 가져오시오.
SELECT * FROM EMPLOYEES;
SELECT * FROM EMPLOYEES WHERE JOB_ID LIKE 'SA%';

--요구사항.020.employees
--first_name에 'de'가 들어간 직원들 가져오시오.
SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE '%de%';

--요구사항.021.tblInsa
--남자 직원만 가져오시오.
SELECT * FROM TBLINSA;
SELECT * FROM TBLINSA WHERE SSN LIKE '%-1%';

-- 요구사항.022.tblInsa
--여자 직원만 가져오시오.   
SELECT * FROM TBLINSA WHERE SSN LIKE '%-2%';

--요구사항.023.tblInsa
--여름에(7,8,9월) 태어난 직원들 가져오시오.
SELECT * FROM TBLINSA WHERE SSN LIKE '__07%' OR SSN LIKE '__08%' OR SSN LIKE '__09%';

--요구사항.024.tblInsa
--서울, 인천에 사는 김씨만 가져오시오.
SELECT * FROM TBLINSA ; 
SELECT * FROM TBLINSA WHERE CITY IN ('서울', '인천') AND NAME LIKE '김%';

--요구사항.025.tblInsa
--영업부/총무부/개발부 직원 중 사원급(사원/대리) 중에 010을 사용하는 직원들을 가져오시오.
SELECT * FROM TBLINSA WHERE BUSEO IN ('영업부', '총무부', '개발부') AND JIKWI IN ('사원', '대리') AND TEL LIKE '010%';

--요구사항.026.tblInsa
--서울/인천/경기에 살고 입사일이 2008~2010년 사이인 직원들을 가져오시오.
SELECT * FROM TBLINSA WHERE CITY IN ('서울', '인천', '경기') AND IBSADATE BETWEEN '2008-01-01' AND '2010-12-31'


--요구사항.027.employees
--부서가 아직 배정 안된 직원들을 가져오시오. (department_id가 없는 직원)
SELECT * FROM EMPLOYEES;
SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID IS NULL;


--------------------------------------------------------------------------------------------------------------------------------------

-- [문제2]
-- distinct

--요구사항.001.employees
--직업이 어떤것들이 있는지 가져오시오. > job_id
SELECT DISTINCT job_id FROM employees;

--요구사항.002.employees
--고용일이 2002~2004년 사이인 직원들은 어느 부서에 근무합니까? > hire_date + department_id
SELECT * FROM employees;
SELECT DISTINCT manager_id FROM employees WHERE hire_date BETWEEN '2002-01-01' AND '2004-12-31';

--요구사항.003.employees
--급여가 5000불 이상인 직원들은 담당 매니저가 누구? > manager_id
SELECT DISTINCT manager_id FROM employees WHERE salary >= 5000;

--요구사항.004.tblInsa
--남자 직원 + 80년대생들의 직급은 뭡니까? > ssn + jikwi
SELECT * FROM tblinsa;
SELECT DISTINCT jikwi FROM tblinsa WHERE ssn LIKE '%-1%' AND ssn LIKE '8%'; 

--요구사항.005.tblInsa
--수당 20만원 넘는 직원들은 어디 삽니까? > sudang + city   
SELECT * FROM tblinsa;
SELECT DISTINCT city FROM tblinsa WHERE sudang > 200000;

--요구사항.006.tblInsa
--연락처가 아직 없는 직원은 어느 부서입니까? > null + buseo
SELECT * FROM tblinsa;
SELECT DISTINCT buseo FROM tblinsa WHERE tel IS NULL; 

----------------------------------------------------------------------------------------------

-- 문제03.sql
-- 집계함수 > count()


-- 1. tblCountry. 아시아(AS)와 유럽(EU)에 속한 나라의 개수?? -> 7개
SELECT * FROM tblcountry;
SELECT count(name) FROM tblcountry WHERE continent IN ('AS', 'EU');

-- 2. 인구수가 7000 ~ 20000 사이인 나라의 개수?? -> 2개
SELECT * FROM tblcountry;
SELECT count(name) FROM tblcountry WHERE population BETWEEN 7000 AND 20000;

-- 3. hr.employees. job_id > 'IT_PROG' 중에서 급여가 5000불이 넘는 직원이 몇명? -> 2명
SELECT * FROM employees;
SELECT count(employee_id) FROM employees WHERE salary >= 5000 AND job_id = 'IT_PROG';

-- 4. tblInsa. tel. 010을 안쓰는 사람은 몇명?(연락처가 없는 사람은 제외) -> 42명
SELECT * FROM tblinsa;
SELECT count(num) FROM tblinsa;								-- 60
SELECT count(num) FROM tblinsa WHERE tel IS null;			-- 3
SELECT count(num) FROM tblinsa WHERE tel LIKE '010%';		-- 15

SELECT count(num) FROM tblinsa WHERE tel NOT LIKE '010%';	-- 42


-- 5. city. 서울, 경기, 인천 -> 그 외의 지역 인원수? -> 18명
SELECT * FROM tblinsa;
SELECT count(num) FROM tblinsa;
SELECT count(num) FROM tblinsa WHERE city NOT IN ('서울', '경기', '인천');

-- 6. 여름태생(7~9월) + 여자 직원 총 몇명? -> 7명
SELECT * FROM tblinsa;
SELECT count(num) FROM tblinsa WHERE (ssn LIKE '__07%' OR ssn LIKE '__08%' OR ssn LIKE '__09%') AND ssn LIKE '%-2%';

-- 7. 개발부 + 직위별 인원수? -> 부장 ?명, 과장 ?명, 대리 ?명, 사원 ?명
SELECT * FROM tblinsa;

SELECT
	count(CASE
		WHEN buseo = '개발부' AND jikwi = '부장' THEN 1
	END) AS 부장,
	count(CASE
		WHEN buseo = '개발부' AND jikwi = '과장' THEN 1
	END) AS 과장,
	count(CASE
		WHEN buseo = '개발부' AND jikwi = '대리' THEN 1
	END) AS 대리,
	count(CASE
		WHEN buseo = '개발부' AND jikwi = '사원' THEN 1
	END) AS 사원
FROM tblinsa;

-------------------------------------------------------------------------------------------

-- 문제04.sql
-- 집계함수 > sum(), avg(), max(), min()

--sum()
--1. 유럽과 아프리카에 속한 나라의 인구 수 합? tblCountry > 14,198
SELECT * FROM tblcountry;
SELECT sum(population) FROM tblcountry WHERE continent IN ('EU', 'AF');

--2. 매니저(108)이 관리하고 있는 직원들의 급여 총합? hr.employees > 39,600
SELECT * FROM employees;
SELECT sum(salary) FROM employees WHERE manager_id = 108;
 
--3. 직업(ST_CLERK, SH_CLERK)을 가지는 직원들의 급여 합? hr.employees > 120,000
SELECT * FROM employees;
SELECT sum(salary) FROM employees WHERE job_id IN ('ST_CLERK', 'SH_CLERK'); 

--4. 서울에 있는 직원들의 급여 합(급여 + 수당)? tblInsa > 33,812,400
SELECT * FROM tblinsa;
SELECT sum(basicpay) + sum(sudang) FROM tblinsa WHERE city = '서울';

--5. 장급(부장+과장)들의 급여 합? tblInsa > 36,289,000
SELECT * FROM tblinsa;
SELECT sum(basicpay) FROM tblinsa WHERE jikwi IN ('부장', '과장'); 


--avg()
--1. 아시아에 속한 국가의 평균 인구수? tblCountry > 39,165
SELECT * FROM tblcountry;
SELECT avg(population) FROM tblcountry WHERE continent = 'AS';

--2. 이름(first_name)에 'AN'이 포함된 직원들의 평균 급여?(대소문자 구분없이) hr.employees > 6,270.4
SELECT * FROM employees;
SELECT avg(salary) FROM employees WHERE lower(first_name) LIKE '%an%';

--3. 장급(부장+과장)의 평균 급여? tblInsa > 2,419,266.66
SELECT * FROM tblinsa;
SELECT trunc(avg(basicpay), 2) FROM tblinsa WHERE jikwi IN ('부장', '과장');

--4. 사원급(대리+사원)의 평균 급여? tblInsa > 1,268,946.66
SELECT * FROM tblinsa;
SELECT trunc(avg(basicpay), 2) FROM tblinsa WHERE jikwi IN ('대리', '사원'); 

--5. 장급(부장,과장)의 평균 급여와 사원급(대리,사원)의 평균 급여의 차액? tblInsa > 1,150,320
SELECT * FROM tblinsa;
 
--SELECT round(avg(basicpay)) FROM tblinsa WHERE jikwi IN ('부장', '과장');
--SELECT round(avg(basicpay)) FROM tblinsa WHERE jikwi IN ('대리', '사원');
SELECT round(avg(CASE WHEN jikwi IN ('부장', '과장') THEN basicpay END)-avg(CASE WHEN jikwi IN ('대리', '사원') THEN basicpay END)) AS 장급 FROM tblinsa;


--max(),min()
--1. 면적이 가장 넓은 나라의 면적은? tblCountry > 959
SELECT * FROM tblcountry;
SELECT max(area) FROM tblcountry

--2. 급여(급여+수당)가 가장 적은 직원은 총 얼마를 받고 있는가? tblInsa > 988,000
SELECT * FROM tblinsa;
SELECT min(basicpay + sudang) FROM tblinsa;

-------------------------------------------------------------------------------------------------------

-- 문제05.sql
-- 정렬

-- employees
-- 1. 전체 이름(first_name + last_name)이 가장 긴 -> 짧은 사람 순으로 정렬해서 가져오기
--    > 컬럼 리스트 > fullname(first_name + last_name), length(fullname)
SELECT * FROM employees;

SELECT * FROM employees ORDER BY (length(first_name || last_name)) DESC;

-- 2. 전체 이름(first_name + last_name)이 가장 긴 사람은 몇글자? 가장 짧은 사람은 몇글자? 평균 몇글자?
--    > 컬럼 리스트 > 숫자 3개 컬럼
SELECT * FROM employees;

SELECT 
	max(length(first_name || last_name)) AS max,
	min(length(first_name || last_name)) AS min,
	avg(length(first_name || last_name)) AS avg
FROM employees;

-- 3. last_name이 4자인 사람들의 first_name을 가져오기
--    > 컬럼 리스트 > first_name, last_name
--    > 정렬(first_name, 오름차순)
SELECT * FROM employees;
SELECT length(last_name), (CASE WHEN length(last_name) = 4 THEN first_name END) AS "first_name(last_name : 4)" FROM employees;

-- decode
-- 4. tblInsa. 부장 몇명? 과장 몇명? 대리 몇명? 사원 몇명?
SELECT * FROM tblinsa;

SELECT
	count(decode(to_char(jikwi), '부장', 1)) AS 부장,
	count(decode(to_char(jikwi), '과장', 1)) AS 과장,
	count(decode(to_char(jikwi), '대리', 1)) AS 대리,
	count(decode(to_char(jikwi), '사원', 1)) AS 사원
FROM tblinsa;

--SELECT 
--	count(CASE
--		WHEN jikwi = '부장' THEN 1
--	END) AS 부장, 
--	count(CASE
--		WHEN jikwi = '과장' THEN 1
--	END) AS 과장,
--	count(CASE
--		WHEN jikwi = '대리' THEN 1
--	END) AS 대리,
--	count(CASE
--		WHEN jikwi = '사원' THEN 1
--	END) AS 사원
--FROM tblinsa;

-- 5. tblInsa. 간부(부장, 과장) 몇명? 사원(대리, 사원) 몇명?
--SELECT 
--	count(CASE WHEN jikwi IN ('부장', '과장') THEN 1 END) AS 간부, 
--	count(CASE WHEN jikwi IN ('대리', '사원') THEN 1 END) AS 사원
--FROM tblinsa;

SELECT
	count(decode(to_char(jikwi), '부장', 1, '과장', 1 )) AS 간부,
	count(decode(to_char(jikwi), '대리', 1, '사원', 1 )) AS 사원
FROM tblinsa;

-- 6. tblInsa. 기획부, 영업부, 총무부, 개발부의 각각 평균 급여?
SELECT * FROM tblinsa;

--SELECT round(avg(basicpay)) FROM tblinsa WHERE buseo = '기획부';
--SELECT round(avg(basicpay)) FROM tblinsa WHERE buseo = '영업부';
--SELECT round(avg(basicpay)) FROM tblinsa WHERE buseo = '총무부';
--SELECT round(avg(basicpay)) FROM tblinsa WHERE buseo = '개발부';

SELECT
	round(avg(CASE WHEN buseo = '기획부' THEN basicpay END)) AS 기획부,
	round(avg(CASE WHEN buseo = '영업부' THEN basicpay END)) AS 영업부,
	round(avg(CASE WHEN buseo = '총무부' THEN basicpay END)) AS 총무부,
	round(avg(CASE WHEN buseo = '개발부' THEN basicpay END)) AS 개발부
FROM tblinsa;


select
    count(decode(buseo, '기획부', 1)) as 기획부,
    count(decode(buseo, '영업부', 1)) as 영업부,
    count(decode(buseo, '총무부', 1)) as 총무부,
    count(decode(buseo, '개발부', 1)) as 개발부
from tblInsa;

select
    decode(buseo, '기획부', basicpay) as 기획부,
    decode(buseo, '영업부', basicpay) as 영업부,
    decode(buseo, '총무부', basicpay) as 총무부,
    decode(buseo, '개발부', basicpay) as 개발부
from tblInsa;

select
    round(avg(decode(buseo, '기획부', basicpay))) as 기획부,
    round(avg(decode(buseo, '영업부', basicpay))) as 영업부,
    round(avg(decode(buseo, '총무부', basicpay))) as 총무부,
    round(avg(decode(buseo, '개발부', basicpay))) as 개발부
from tblInsa;


-- 7. tblInsa. 남자 직원 가장 나이가 많은 사람이 몇년도 태생? 여자 직원 가장 나이가 어린 사람이 몇년도 태생?
SELECT * FROM tblinsa;

--SELECT
--	CASE WHEN min(substr(ssn, 1, 2)) THEN substr(ssn, 1, 2) END AS 나이많은남자	
--FROM tblinsa
--ORDER BY substr(ssn, 1, 2);

SELECT substr(ssn, 8, 1) FROM tblinsa;

SELECT
	CASE WHEN substr(ssn, 8, 1) = '1' THEN min(substr(ssn, 1, 2)) END AS 나이많은남자,
	min(substr(ssn, 1, 2)) AS 나이많은남자,
	max(substr(ssn, 1, 2)) AS 나이어린여자
FROM tblinsa;


SELECT
	min(substr(ssn, 1, 2)) AS 나이많은남자
FROM tblinsa
WHERE substr(ssn, 8, 1) = '1';


SELECT
	CASE
		WHEN substr(ssn, 8, 1) = '1' THEN min(substr(ssn, 1, 2))
	END
FROM tblinsa;


select
    '19' || min(decode(substr(ssn, 8, 1), '1', substr(ssn, 1, 2))),
    '19' || max(decode(substr(ssn, 8, 1), '2', substr(ssn, 1, 2)))
from tblInsa;

-------------------------------------------------------------------------------------------------------

--문제6.sql

--1. traffic_accident. 각 교통 수단 별(지하철, 철도, 항공기, 선박, 자동차) 발생한 총 교통 사고 발생 수, 총 사망자 수, 사건 당 평균 사망자 수를 가져오시오.
SELECT * FROM traffic_accident;
        
--2. tblZoo. 종류(family)별 평균 다리의 갯수를 가져오시오.
SELECT * FROM tblzoo;

SELECT family, round(avg(leg))
FROM tblzoo
GROUP BY family;

--3. tblZoo. 체온이 변온인 종류 중 아가미 호흡과 폐 호흡을 하는 종들의 갯수를 가져오시오.
SELECT * FROM tblzoo;

SELECT count(*) FROM tblzoo WHERE breath = 'lung' AND thermo = 'variable';	--변온, 폐 > 36
SELECT count(*) FROM tblzoo WHERE breath = 'gill' AND thermo = 'variable';	--변온, 아가미 > 30

SELECT
	breath AS 호흡종류,
	count(*) AS "종의 갯수"
FROM tblzoo
WHERE thermo = 'variable'
GROUP BY breath;

--4. tblZoo. 사이즈와 종류별로 그룹을 나누고 각 그룹의 갯수를 가져오시오.
SELECT * FROM tblzoo;

SELECT
	family,
	sizeof,
	count(*)
FROM tblzoo
GROUP BY (family, sizeof)
ORDER BY family;

--12. tblAddressBook. 관리자의 실수로 몇몇 사람들의 이메일 주소가 중복되었다. 중복된 이메일 주소만 가져오시오.
SELECT * FROM tbladdressbook;

SELECT
	*
FROM tbladdressbook


--15. tblAddressBook. 성씨별 인원수가 100명 이상 되는 성씨들을 가져오시오.
SELECT * FROM tbladdressbook;

--이거 실행하니까 데이터가 두배로 또 늘었음
--답안------------
SELECT
	substr(name, 1, 1) AS 성씨,
	count(*) AS 인원수
FROM tbladdressbook
GROUP BY substr(name, 1, 1)
HAVING count(*) > 100;

SELECT 
	buseo,
	count(*)
FROM tblinsa
GROUP BY buseo
HAVING count(*) > 10;

DELETE FROM tbladdressbook WHERE seq > 2000;
COMMIT;

SELECT substr(address, 1, instr(address, ' ') - 1) AS 시도, count(*) AS 인원수
FROM tbladdressbook
GROUP BY substr(address, 1, instr(address, ' ') -1)
ORDER BY 인원수 desc;

--17. tblAddressBook. 이메일이 스네이크 명명법으로 만들어진 사람들 중에서 여자이며, 20대이며, 키가 150~160cm 사이며, 고향이 서울 또는 인천인 사람들만 가져오시오.
SELECT * FROM tbladdressbook;

SELECT 
	name
FROM tbladdressbook
WHERE 

--20. tblAddressBook. '건물주'와 '건물주자제분'들의 거주지가 서울과 지방의 비율이 어떻게 되느냐?
SELECT * FROM tbladdressbook

SELECT
	count(job IN ('건물주', '건물주자제분'))
FROM tbladdressbook
WHERE job IN ('건물주', '건물주자제분')
GROUP BY 
	CASE
		WHEN substr(address, 1, instr(address, ' ') - 1) = '서울특별시' THEN 1
	END AS 서울,
	CASE
		WHEN substr(address, 1, instr(address, ' ') - 1) <> '서울특별시' THEN 1
	END AS 지방;

	


/*
select 컬럼리스트		--5. 컬럼 지정(보고싶은 컬럼만 가져오기)
from 테이블				--1. 테이블 지정
where 조건				--2. 조건 지정(레코드에 대한 조건 - 개인 조건 > 컬럼)
group by 기준			--3. 레코드(==행)끼리 그룹을 나눈다.
having 조건				--4. 조건 지정(그룹에 대한 조건 - 그룹 조건)
order by 정렬기준;		--6. 순서대로
*/

-------------------------------------------------------------------------------------------------------
--문제7.sql
--서브쿼리

--16. tblAddressBook. 남자 평균 나이보다 나이가 많은 서울 태생 + 직업을 가지고 있는 사람들을 가져오시오.


-- employees. 'Munich' 도시에 위치한 부서에 소속된 직원들 명단?


-- tblMan. tblWoman. 서로 짝이 있는 사람 중 남자와 여자의 정보를 모두 가져오시오.
--    [남자]        [남자키]   [남자몸무게]     [여자]    [여자키]   [여자몸무게]
--    홍길동         180       70              장도연     177        65
--    아무개         175       null            이세영     163        null
--    ..


-- tblAddressBook. 가장 많은 사람들이 가지고 있는 직업은 주로 어느 지역 태생(hometown)인가?


-- tblAddressBook. 이메일 도메인들 중 평균 아이디 길이가 가장 긴 이메일 사이트의 도메인은 무엇인가?


-- tblAddressBook. 평균 나이가 가장 많은 출신(hometown)들이 가지고 있는 직업 중 가장 많은 직업은?


-- tblAddressBook. 남자 평균 나이보다 나이가 많은 서울 태생 + 직업을 가지고 있는 사람들을 가져오시오.


-- tblAddressBook. 가장 나이가 많으면서 가장 몸무게가 많이 나가는 사람과 같은 직업을 가지는 사람들을 가져오시오.

-- tblAddressBook.  동명이인이 여러명 있습니다. 이 중 가장 인원수가 많은 동명이인(모든 이도윤)의 명단을 가져오시오.


-- tblAddressBook. 가장 사람이 많은 직업의(332명) 세대별 비율을 구하시오.
--    [10대]       [20대]       [30대]       [40대]
--    8.7%        30.7%        28.3%        32.2%


-------------------------------------------------------------------------------------------------------
--문제8(join).sql

-- tblStaff, tblProject. 현재 재직중인 모든 직원의 이름, 주소, 월급, 담당프로젝트명을 가져오시오.
SELECT * FROM tblstaff;
SELECT * FROM tblproject;

SELECT s.name, s.address, s.salary, p.project
FROM tblproject p
INNER JOIN tblstaff s
ON p.staff_seq = s.seq;
       
       
-- tblVideo, tblRent, tblMember. '뽀뽀할까요' 라는 비디오를 빌려간 회원의 이름은?
SELECT * FROM tblvideo;
SELECT * FROM tblrent;
SELECT * FROM tblmember;

SELECT m.name, v.name, r.rentdate 
FROM tblvideo v
INNER JOIN tblrent r ON v.seq = r.video
INNER JOIN tblmember m ON r.MEMBER = m.seq
WHERE v.name = '뽀뽀할까요';
    
    
-- tblStaff, tblProejct. 'TV 광고'을 담당한 직원의 월급은 얼마인가?
SELECT s.name, p.project, s.salary
FROM tblstaff s
INNER JOIN tblproject p ON s.seq = p.staff_seq
WHERE p.project = 'TV 광고';
    
    
-- tblVideo, tblRent, tblMember. '털미네이터' 비디오를 한번이라도 빌려갔던 회원들의 이름은?
SELECT * FROM tblvideo;
SELECT * FROM tblrent;
SELECT * FROM tblmember;

SELECT m.name, v.name, r.rentdate 
FROM tblvideo v
INNER JOIN tblrent r ON v.seq = r.video
INNER JOIN tblmember m ON r.MEMBER = m.seq
WHERE v.name = '털미네이터';

-- tblStaff, tblProject. 서울시에 사는 직원을 제외한 나머지 직원들의 이름, 월급, 담당프로젝트명을 가져오시오.
SELECT * FROM tblstaff;

SELECT *
FROM tblstaff s
INNER JOIN tblproject p ON s.seq = p.project
WHERE address <> '서울시';
    
    
-- tblCustomer, tblSales. 상품을 2개(단일상품) 이상 구매한 회원의 연락처, 이름, 구매상품명, 수량을 가져오시오.

                
                
-- tblVideo, tblRent, tblGenre. 모든 비디오 제목, 보유수량, 대여가격을 가져오시오.

                
-- tblVideo, tblRent, tblMember, tblGenre. 2022년 2월에 대여된 구매내역을 가져오시오. 회원명, 비디오명, 언제, 대여가격

        
-- tblVideo, tblRent, tblMember. 현재 반납을 안한 회원명과 비디오명, 대여날짜를 가져오시오.

    
    
-- employees, departments. 사원들의 이름, 부서번호, 부서명을 가져오시오.

        
        
-- employees, jobs. 사원들의 정보와 직업명을 가져오시오.

        
        
-- employees, jobs. 직무(job_id)별 최고급여(max_salary) 받는 사원 정보를 가져오시오.

        
    
    
-- departments, locations. 모든 부서와 각 부서가 위치하고 있는 도시의 이름을 가져오시오.

        
        
-- locations, countries. location_id 가 2900인 도시가 속한 국가 이름을 가져오시오.

            
            
-- employees. 급여를 12000 이상 받는 사원과 같은 부서에서 근무하는 사원들의 이름, 급여, 부서번호를 가져오시오.

        
        
-- employees, departments. locations.  'Seattle'에서(LOC) 근무하는 사원의 이름, Job_id, 부서번호, 부서이름을 가져오시오.

    
    
-- employees, departments. first_name이 'Jonathon'인 직원과 같은 부서에 근무하는 직원들 정보를 가져오시오.

    
-- employees, departments. 사원이름과 그 사원이 속한 부서의 부서명, 그리고 월급을 출력하는데 월급이 3000이상인 사원을 가져오시오.

            
            
-- employees, departments. 부서번호가 10번인 사원들의 부서번호, 부서이름, 사원이름, 월급을 가져오시오.

            
-- departments, job_history. 퇴사한 사원의 입사일, 퇴사일, 근무했던 부서 이름을 가져오시오.

        
        
-- employees. 사원번호와 사원이름, 그리고 그 사원을 관리하는 관리자의 사원번호와 사원이름을 출력하되 각각의 컬럼명을 '사원번호', '사원이름', '관리자번호', '관리자이름'으로 하여 가져오시오.

        
        
-- employees, jobs. 직책(Job Title)이 Sales Manager인 사원들의 입사년도와 입사년도(hire_date)별 평균 급여를 가져오시오. 년도를 기준으로 오름차순 정렬.




-- employees, departments. locations. 각 도시(city)에 있는 모든 부서 사원들의 평균급여가 가장 낮은 도시부터 도시명(city)과 평균연봉, 해당 도시의 사원수를 가져오시오. 단, 도시에 근 무하는 사원이 10명 이상인 곳은 제외하고 가져오시오.

            
            
-- employees, jobs, job_history. ‘Public  Accountant’의 직책(job_title)으로 과거에 근무한 적이 있는 모든 사원의 사번과 이름을 가져오시오. 현재 ‘Public Accountant’의 직책(job_title)으로 근무하는 사원은 고려 하지 말것.

    
    
-- employees, departments, locations. 커미션을 받는 모든 사람들의 first_name, last_name, 부서명, 지역 id, 도시명을 가져오시오.

    
    
-- employees. 자신의 매니저보다 먼저 고용된 사원들의 first_name, last_name, 고용일을 가져오시오.


------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 문제8.sql
-- rownum + group by

-- 1. tblInsa. 남자 급여(기본급+수당)을 (내림차순)순위대로 가져오시오. (이름, 부서, 직위, 급여, 순위 출력)
SELECT * FROM tblinsa;
SELECT name, buseo, jikwi, basicpay+sudang AS 급여, rownum
FROM tblinsa
WHERE substr(ssn, 8, 1) = '1'
ORDER BY basicpay+sudang DESC;

-- 2. tblInsa. 여자 급여(기본급+수당)을 (오름차순)순위대로 가져오시오. (이름, 부서, 직위, 급여, 순위 출력)
SELECT * FROM tblinsa;
SELECT name, buseo, jikwi, basicpay+sudang AS 급여, rownum
FROM tblinsa
WHERE substr(ssn, 8, 1) = '2'
ORDER BY basicpay+sudang ASC;

-- 3. tblInsa. 여자 인원수가 (가장 많은 부서 및 인원수) 가져오시오. ----
SELECT * FROM tblinsa;
SELECT buseo, count(*)
FROM tblinsa
WHERE substr(ssn, 8, 1) = '2'
GROUP BY buseo;


-- 4. tblInsa. 지역별 인원수 (내림차순)순위를 가져오시오.(city, 인원수)
SELECT * FROM tblinsa;
SELECT city, count(*) AS 인원수
FROM tblinsa
GROUP BY city
ORDER BY 인원수 desc;

-- 5. tblInsa. 부서별 인원수가 가장 많은 부서 및원수 출력.
SELECT * FROM tblinsa;
SELECT buseo, count(*) AS "부서별 인원수"
FROM tblinsa
GROUP BY buseo
ORDER BY "부서별 인원수" DESC;

-- 6. tblInsa. 남자 급여(기본급+수당)을 (내림차순) 3~5등까지 가져오시오. (이름, 부서, 직위, 급여, 순위 출력)
SELECT * FROM tblinsa;
SELECT name, buseo, jikwi, basicpay, rownum
FROM tblinsa;



-- 7. tblInsa. 입사일이 빠른 순서로 5순위까지만 가져오시오.


-- 8. tblhousekeeping. 지출 내역(가격 * 수량) 중 가장 많은 금액을 지출한 내역 3가지를 가져오시오.


-- 9. tblinsa. 평균 급여 2위인 부서에 속한 직원들을 가져오시오.


-- 10. tbltodo. 등록 후 가장 빠르게 완료한 할일을 순서대로 5개 가져오시오.


-- 11. tblinsa. 남자 직원 중에서 급여를 3번째로 많이 받는 직원과 9번째로 많이 받는 직원의 급여 차액은 얼마인가?


