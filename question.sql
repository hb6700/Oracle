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

--★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
--5. 장급(부장,과장)의 평균 급여와 사원급(대리,사원)의 평균 급여의 차액? tblInsa > 1,150,320
SELECT * FROM tblinsa;
SELECT 
	avg(sum(basicpay)),
	avg(sum(basicpay))
	--avg(basicpay)-avg(basicpay)
FROM tblinsa 
WHERE
	jikwi IN ('부장', '과장'),
	jikwi IN ('대리', '사원');
	--jikwi IN ('부장', '과장') - jikwi IN ('대리', '사원');

SELECT
	avg(count(CASE
		WHEN basicpayjikwi IN ('부장', '과장')
	END))
	- avg(CASE
		WHEN jikwi IN ('대리', '사원')
	END
	)
FROM tblinsa;

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
SELECT 

-- 2. 전체 이름(first_name + last_name)이 가장 긴 사람은 몇글자? 가장 짧은 사람은 몇글자? 평균 몇글자?
--    > 컬럼 리스트 > 숫자 3개 컬럼

-- 3. last_name이 4자인 사람들의 first_name을 가져오기
--    > 컬럼 리스트 > first_name, last_name
--    > 정렬(first_name, 오름차순)


-- decode

-- 4. tblInsa. 부장 몇명? 과장 몇명? 대리 몇명? 사원 몇명?
SELECT * FROM tblinsa;

SELECT 
	count(CASE
		WHEN jikwi = '부장' THEN 1
	END) AS 부장, 
	count(CASE
		WHEN jikwi = '과장' THEN 1
	END) AS 과장,
	count(CASE
		WHEN jikwi = '대리' THEN 1
	END) AS 대리,
	count(CASE
		WHEN jikwi = '사원' THEN 1
	END) AS 사원
FROM tblinsa;

-- 5. tblInsa. 간부(부장, 과장) 몇명? 사원(대리, 사원) 몇명?



-- 6. tblInsa. 기획부, 영업부, 총무부, 개발부의 각각 평균 급여?

-- 7. tblInsa. 남자 직원 가장 나이가 많은 사람이 몇년도 태생? 여자 직원 가장 나이가 어린 사람이 몇년도 태생?





