-- ex05_where.sql

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
 where 조건;			--2. 조건 지정(보고싶은 행만 가져오기) > Selection
 
 where절
 - 레코드(행)을 검색한다.
 - 원하는 행만 추출하는 역할                                                                                                                                                                       
 */

--컬럼 5, 레코드 14
SELECT * FROM TBLCOUNTRY;
SELECT name, capital FROM TBLCOUNTRY ;
SELECT name, capital FROM TBLCOUNTRY WHERE continent = 'AS';

SELECT * FROM TBLCOUNTRY WHERE name = '대한민국';
SELECT * FROM TBLCOUNTRY WHERE capital = '카이로';
SELECT * FROM TBLCOUNTRY WHERE population = '4405';
SELECT * FROM TBLCOUNTRY WHERE poprlation >= '4080';
SELECT * FROM TBLCOUNTRY WHERE CONTINENT = 'AS' OR CONTINENT = 'EU';
SELECT * FROM TBLCOUNTRY WHERE AREA >= 20 AND POPULATION<=10000;

-- tblComedian
SELECT * FROM TBLCOMEDIAN;
--1. 몸무게가 60kg 이상, 키가 170cm 미만인 사람을 가져오시오.
SELECT * FROM TBLCOMEDIAN WHERE height<170 AND weight>=60;
--2. 몸무게가 70kg이하인 여자만 가져오시오
SELECT * FROM TBLCOMEDIAN WHERE weight<=70 AND gender = 'f';

--tblInsa;
SELECT * FROM TBLINSA;
--3. 부서가 개발부이고 급여(basicpay)가 150만원 이상 받는 직원을 가져오시오
SELECT * FROM TBLINSA WHERE BUSEO = '개발부' AND BASICPAY = 1500000;
--4. 급여(basicpay) + 수당(sudang)을 합한 금액이 200만원 이상 받는 직원을 가져오시오
SELECT * FROM TBLINSA WHERE (BASICPAY + SUDANG) >= 2000000;

SELECT * FROM TBLINSA WHERE city = '서울';
SELECT * FROM TBLINSA WHERE 1 = 1;			-- 조건절에 반드시 컬럼이 포함되지 않아도 된다



/*
between
- where절에서 사용 > 조건으로 사용
- 컬럼명 between  최솟값  and 최댓값
- 범위조건
- 가독성(***)
- 최솟값, 최댓값 > 포함
*/
-- 1. 숫자형
SELECT * FROM TBLINSA WHERE BASICPAY >=1000000 AND BASICPAY <= 1200000;			-- 무난
--SELECT * FROM TBLINSA WHERE 1200000 >= BASICPAY AND BASICPAY >=1000000;
-->>between 사용()
SELECT * FROM TBLINSA WHERE BASICPAY  BETWEEN 1000000 AND 1200000;

--2. 문자형
SELECT * FROM TBLINSA WHERE NAME > '이순신';		--name.compareTo("이순신")
SELECT * FROM EMPLOYEES WHERE FIRST_NAME >= 'J' AND FIRST_NAME  <= 'L';
SELECT * FROM EMPLOYEES WHERE FIRST_NAME  BETWEEN 'J' AND 'L'

--3. 날자형
SELECT * FROM TBLINSA WHERE IBSADATE >= '2001-01-01';
SELECT  * FROM TBLINSA WHERE IBSADATE BETWEEN '2000-01-01' AND '2000-12-31)';   


/*
in
- where절에서 사용 > 조건으로 사용
- 열거형 조건
- 컬럼명 in(값, 값, 값)
- 가독성 향상
*/
--tblInsa : 개발부 + 총무부
SELECT * FROM TBLINSA WHERE BUSEO ='개발부' OR BUSEO = '총무부' OR BUSEO = '홍보부';
SELECT * FROM TBLINSA WHERE BUSEO IN ('개발부', '총무부', '홍보부');

--서울 or 인천 + 과장 or 부장 + 급여(250~300)
SELECT * FROM TBLINSA WHERE CITY IN ('서울', '인천') AND JIKWI IN ('과장', '부장') AND BASICPAY BETWEEN 2500000 AND 3000000;

--between, in > 사용 금지 -> 성능문제 : 비교연산자보다 느림


/*
like
- where절에서 사용 > 조건으로 사용
- 패턴 비교
- 컬럼명 like ‘패턴문자열’
- 정규 표현식의 초간단 버전
- 패턴 문자열의 구성요소
    - _ : 임의의 문자 1개
    - % : 임의의 문자 N개 출연(0부터 무한대(.^))
 */

-- 김OO
SELECT * FROM TBLINSA WHERE NAME LIKE'김__';
SELECT * FROM TBLINSA WHERE NAME LIKE'_길_';
SELECT * FROM TBLINSA WHERE NAME LIKE'__수';

SELECT * FROM EMPLOYEES WHERE FIRST_NAME  LIKE 's_______';
SELECT * FROM EMPLOYEES WHERE FIRST_NAME  LIKE 's_____';
SELECT * FROM EMPLOYEES WHERE FIRST_NAME  LIKE 's_________';

SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE 's%';

SELECT * FROM TBLINSA  WHERE name LIKE '김%';
SELECT * FROM TBLINSA  WHERE name LIKE '%길%';
SELECT * FROM TBLINSA  WHERE name LIKE '%수';

--771212-1022432
SELECT * FROM TBLINSA WHERE SSN LIKE '______-2______';
SELECT * FROM TBLINSA WHERE ssn LIKE '%-2%';


/*
Null 조건
- where 절에서 사용
- 컬럼명 is null
*/

-- String txt = null
-- if(txt == null){}
-- 인구수가 미기재된 나라
SELECT * FROM TBLCOUNTRY WHERE POPULATION = NULL;
SELECT * FROM TBLCOUNTRY WHERE POPULATION is NULL;			-- ***

-- 인구수가 기재된 나라
SELECT * FROM TBLCOUNTRY WHERE POPULATION <> NULL;
SELECT * FROM TBLCOUNTRY WHERE NOT population is NULL;
SELECT * FROM TBLCOUNTRY WHERE POPULATION IS NOT NULL;		-- ***

-- 연락처가 없는 직원
SELECT * FROM TBLINSA WHERE tel IS NULL;

--아직 실행하지 않은 일
SELECT * FROM TBLTODO WHERE COMPLETEDATE IS NULL;

-- 실행 완료한 일?
SELECT * FROM TBLTODO WHERE COMPLETEDATE IS NOT NULL;


-- 도서관 > 대여테이블(컬럼 : 대여날짜, 반납날자)
-- 아직 반납을 안 한 사람은?
SELECT * FROM 도서대여 WHERE 반납날짜 IS NULL;
--반납이 완료된 사람은?
SELECT * FROM 도서대여 WHERE 반납날짜 IS NOT NULL; 

/*
강의실 <-> 집
- 스크립트 파일(*.sql)
- 백업/복구
*/

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
SELECT * FROM TBLINSA WHERE SSN IN '__07%' OR SSN IN '__08%' OR SSN LIKE '__09%';

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


