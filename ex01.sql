-- select * from tabs;
/*
C:\\class\\code\\oracle\\필기.txt

Java
- 제품명
- 회사명 : 썬 > 오라클

Oracle Database
- 제품명
- 회사명

Database
- 데이터베이스 : 데이터 집합
- 관리, 운영, 보안의 목적 : 데이터베이스 관리 시스템

데이터베이스 관리 시스템
- Database Management System
- 오라클(DB + DBMS) > Q. DB, DBMS뭐 썼니? : 오라클

오라클 실행여부 확인

- 백그라운드 프로세스
    - 윈도우 : 서비스(Service)
    - 리눅스 : 데몬(Daemon)

오라클 실행/종료/상태확인 방법

- win + r > services.msc
1. OracleServiceXE : 데이터베이스
2. OracleXETNSListener : 리스너(클라이언트 도구와 연결)

SQL Developer
- 데이터베이스 클라이언트 툴
- 눈에 안보이는 오라클에 연결해서 조작하는 프로그램
- 개발자 ↔ 중계인(SQL Developer : 데이터베이스 클라이언트) ↔ 오라클(데이터베이스 서버)

저장>테스트>접속
편집 창 > 워크 시트 : 스크립트(스크립트 파일) > *.sql : ex01.sql

[localhost](http://localhost) + system
[localhost](http://localhost) > 현재 컴퓨터
[localhost](http://localhost) == 127.0.0.1(IP Address  : 루프백 , this)

system 작업 안함 : 권한이 너무 커서; > 실수, 보안

일반 계정 작업 : 특정 업무에 대한 권한 계정
학습용 계정 제공(=일반 계정) > 샘플데이터 hr

SQL(Structured Query Language)
- 구조화된 질의 언어
- 개발자(SQL Developer) ↔ SQL ↔ 오라클
- DBMS를 조작하기 위한 언어

오라클 + SQL
1. 데이터베이스 관리자, DBA
    - 모든 것
2. 데이터베이스 개발자(DB개발자)
    - 모든 것
3. 응용프로그램 개발자(자바 개발자)
    - 일부 사용
    
관계형 DBMS
1. Oracle
2. MS-SQL(Microsoft) : 기업용
3. MySQL > 무료, 기업용
4. MariaDB > 무료, 기업용
5. PostreSQL > 무료, 기업용
6. DB2 > IBM
7. SQLite > mobile

SQL
1. DBMS 제작사와 독립적이다
    - 모든 관계형 데이터베이스에서 공통적으로 사용하기 위해 만들어진 언어
    - DBMS제작사에서 SQL이라는 언어를 자신의 제품을 적용
2. 표준 SQL, ANSI-SQL
    - 모든 DBMS에 적용 가능한 SQL
3. 제조사별  SQL
    - 특정 DBMS에 적용 가능한 SQL
        oracle > PL/SQL
        MS-SQL > T-SQL

Oracle 수업 = ANSI-SQL(50~60%) +PL/SQL(20~30%) + 설계,기타(10%)

관계형 데이터베이스
- 데이터를 표 형식으로 저장/관리한다
- SQL을 사용한다.

ANSI-SQL

1. DDL
    - Data Definition Language
    - 데이터 정의어
    - 테이블, 뷰, 사용자, 인덱스 등의 데이터베이스 오브젝트를 생성/수정/삭제 하는 명령어
    - 구조를 생성/관리하는 명령어
        - CREATE : 생성
        - DROP : 삭제
        - ALTER : 수정
    - 사용자
        - 데이터베이스 관리자
        - 데이터베이스 담당자
        - 프로그래머(일부)
2. DML
    - Data Manipulation Language
    - 데이터 조작어
    - 데이터를 추가/수정/삭제/조회하는 명령어(CRUD)
        - SELECT : 조회(읽기) > R
        - INSERT : 추가(생성) > C
        - UPDATE : 수정 > U
        - DELETE : 삭제 > D
    - 사용빈도가 가장 높음
    - 사용자
        - 데이터베이스 관리자
        - 데이터베이스 담당자
        - 프로그래머(***************) > 이거 하려고 DB배우는거임
3. DCL
    - Data Control Language
    - 데이터 제어어
    - 계정관리, 보안관리, 트렌젝션 관리 등..
        - COMMIT
        - ROLLBACK
        - GRANT
        - REVOKE
    - 사용자
        - 데이터베이스 관리자
        - 데이터베이스 담당자
        - 프로그래머(일부)
4. DQL
    - Data Query Language
    - DML중에서 SELECT문을 따로 부르는 표현
5. TCL
    - Transaction Control Language
    - DCL중에서 COMMIT, ROLLBACK문을 따로 부르는 표현

오라클 인코딩
- 1.0~8i : EUC-KR
- 9i~현재 : UTF-8

*/

--문장단위로 실행 문장 블럭 잡고  ctrl + enter

--특정 계정의 비밀번호 바꾸기
--hr계정 비번 java1234로 변경
alter user hr identified by java1234;

--특정 계정의 활성화/비활성화
alter user hr account unlock;
--alter user 계정명 account lock;

-- SQL은 대소문자를 구분하지 않는다.
-- 파란색 : 키워드
-- 검은색 : 식별자
select * from tabs;
SELECT * FROM tabs;

--'JOBS' > 문자 상수 : 데이터는 대소문자를 구분한다.(*****)
select * from tabs where table_name = 'JOBS';
select * from tabs where table_name = 'jobs';

-- 키워드 : 대문자, 식별자 : 소문자
SELECT * FROM tabs;

--alt + '(작은따옴표) 소문자>대문자 변경해주는 단축어
SELECT * FROM tabs;

--DB Object 식별자 주의점 : 최대 30바이트까지(30자)
create table aaa(
    num number
);

create table aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa(
    num number
);

create table aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa(
    num number
);


