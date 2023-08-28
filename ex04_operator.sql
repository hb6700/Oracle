-- ex04_operator.sql
/*
1. 산술 연산자
+, -, *, /
2. 문자열 연산자
+(x) > ||(o)
3. 비교 연산자
>, ≥, <, ≤
=(==), <>(≠)
논리값 반환 >  SQL에는  boolean이 없다 > 
명시적으로 표현이 불가능 > 조건이 필요한 상황에서만 내부적으로 사용 
4. 논리 연산자
and(&&), or(||), not(!)
5. 대입 연산자
=
컬럼 = 값(어떠한 값을 컬럼에 대입할 때)
UPDATE문에서만 사용
6. 3항 연산자 - X
7. 증감 연산자 - X
8. SQL연산자
in, between, like, is등...
*/

/*
select
insert update delete > 데이터베이스 바로 반영X, 자신의 메모리에 먼저 백업해놓고 최종 동작 마무리 이후 실제 데이터베이스에 반영(commit)
dbeaver에서 commit전까지는 insert한 값을 절대 확인할 수 없음
로컬에만 저장, 그것을 오라클 서버에 올리려면(다른 사람도 데이터 확인하기 위해) commit을 해야 함.

...어라? 근데 왜 DBeaver에서는 커밋 안해줘도 확인이 가능하니?
Auto-commit : 개발자가 commit명령을 실행하지 않더라도, insert/update/delete실행할 때 마다 자동으로 commit을 호출하는 기능
그러나 클라이언트 마다 설정이 제각각.
SQLDeveloper : Auto-commit(false)
DBeaver : Auto-commit(true)

auto-commit은 일단 끄는 것을 추천 > 데이터 롤백이 안돼서 그런거 아닐까... 
*/

--산술연산자
SELECT 
    population, 
    area, 
    population + area,
    population - area,
    population * area,
    population / area
FROM tblCountry;

-- 문자열 연산자
--ORA-01722: invalid number
SELECT name, couple, name+couple FROM tblMen;			--error
SELECT name, couple, name||couple FROM tblMen;

-- 비교 연산자
--ORA-00923: FROM keyword not found where expected
SELECT height, weight, height>weight FROM tblMen;		--error
SELECT height, weight FROM tblMen WHERE height>weight;

-- 
SELECT name, age FROM tblMen;					-- 이전 나이(한국식 나이)
--컬럼의 별칭(Alias)
--되도록 가공된 컬럼에 적용 : 함수 결과에 적용
--컬럼명이 식별자로 적합하지 않을때 사용 > 적합한 식별자로 수정
--식별자로 사용불가능한 상황을 억지로 적용할 때

SELECT 
	name AS 이름, 
	age, 
	age-1 AS 나이, 
	LENGTH(name) AS 여자친구,			--"여자 친구"
	name AS SELECT						
FROM tblMen;	-- 컬럼명(***)

--테이블 별칭(Alias)
--편하게 + 가독성 향상
SELECT * FROM tblMen t;

SELECT hr.tblMen.name, hr.tblMen.age, hr.tblMen.height, hr.tblMen.weight hr.tblMen.couple FROM hr.tblMen;
SELECT tblMen.name, tblMen.age, tblMen.height, tblMen.weight, tbl.couple FROM tblMen;

-- 각 절의 실행 순서
-- 2. select절
-- 1. from절

SELECT m.name, m.age, m.weight, m.couple FROM tblMen m;
-- SELECT tblMen.name, tblMen.age, tblMen.height, tblMen.weight, tbl.couple FROM tblMen m;


