--ex03_select.sql
/*
SQL > Query(질의)

SELECT문
- DML, DQL
- SQL은 SELECT로 시작해서 SELECT로 끝난다.
- CRUD중 R(READ)의 역할

[WITH <Sub Query>]
SELECT column_list
FROM table_name
[WHERE search_condition]
[GROUP BY group_by_expression]
[HAVING search_condition]
[ORDER BY order_expresstion [ASC|DESC]];

##생략 가능한 부분 다 빼고 남은 덩어리
SELECT column_list          -- 2. 원하는 컬럼을 지정해서 가져와줘.
FROM table_name;            -- 1. 데이터 소스. 어떤 테이블로부터 데이터를 가져와주세요.

## * > 모든 데이터 가져와

각 절의 순서
- 
*/

SELECT * FROM tblType;

-- 테이블 구조?? > 스키마(scheme)
desc employees;

--11개의 데이터, 107명의 직원리스트
SELECT * FROM employees;
SELECT first_name FROM employees;

select * from tblAddressBook;
select * from tblComedian;
select * from tblCountry;
select * from tblDiary;
select * from tblHousekeeping;
select * from tblInsa;
select * from tblMen;
select * from tblWomen;
select * from tblSalary;
select * from tblTodo;
--select * from tblName;
select * from tblZoo;
select * from zipcode;



--단일 컬럼
SELECT first FROM tblComedian;
SELECT nick FROM tblComedian;

--전부
SELECT * FROM tblComedian;
SELECT first, last, gender, height, weight, nick FROM tblComedian;

--다중 컬럼 : 컬럼 순서는 자유롭게
SELECT first, last FROM tblComedian;        --재석  유
SELECT last, first FROM tblComedian;        --유  재석 

--동일 컬럼 반복 > 굳이 쓰진 않음
SELECT last, last FROM tblComedian;


--스타일1
SELECT last, first FROM tblComedian;

--스타일2
SELECT last, first 
FROM tblComedian;

--스타일3
SELECT last, first 
    FROM tblComedian;

--스타일4
SELECT 
    last, first 
FROM 
    tblComedian;
    
--오류 : ORA-00942: table or view does not exist
--SELECT last, first FROM tblomedian;

--오류 : ORA-00904: "FIST": invalid identifier
--SELECT last, fist FROM tblComedian;
