--ex22_union.sql

/*
관계대수 연산 
1. 셀렉션 > select where
2. 프로젝션 > select column
3. 조인
4. 합집합(union), 차집합(minus), 교집합(intersect) 

유니온(UNION)
	- 스키마가 동일한 결과값끼리만 가능

*/
---------------------------------------------------------------------------------------------------------------------------
--합집합(union)
(SELECT * FROM tblmen) UNION (SELECT * FROM tblwomen);
--ORA-01789: query block has incorrect number of result columns
SELECT * FROM tblstaff UNION SELECT * FROM tblinsa;				--X
--
SELECT name FROM tblstaff UNION SELECT name FROM tblinsa; 		--O
SELECT name, address FROM tblstaff UNION SELECT name, city FROM tblinsa;		--o
SELECT name, address, salary FROM tblstaff UNION SELECT name, city, basicpay FROM tblinsa;		--o

--어떤 회사 > 부서별 게시판
SELECT * FROM 영업부게시판;
SELECT * FROM 총무부게시판;
SELECT * FROM 개발부게시판;

-- 회장님 > 모든 부서의 게시판 글 > 한 번에 열람
SELECT * FROM 영업부게시판
UNION 
SELECT * FROM 총무부게시판
UNION
SELECT * FROM 개발부게시판;

--야구선수 > 공격수, 수비수
SELECT * FROM 공격수;
SELECT * FROM 수비수;

SELECT * FROM 공격수 UNION SELECT * FROM 수비수;

--SNS > 하나의 테이블 + 다량의 데이터
SELECT * FROM 게시판2020;
SELECT * FROM 게시판2021;
SELECT * FROM 게시판2022;
SELECT * FROM 게시판2023;

SELECT * FROM 게시판2020 UNION SELECT * FROM 게시판2021 UNION SELECT * FROM 게시판2022 UNION SELECT * FROM 게시판2023;
---------------------------------------------------------------------------------------------------------------------------
CREATE TABLE tblAAA(name varchar2(30) NOT null);
CREATE TABLE tblBBB(name varchar2(30) NOT null);

INSERT INTO tblAAA VALUES ('강아지');
INSERT INTO tblAAA VALUES ('고양이');
INSERT INTO tblAAA VALUES ('토끼');
INSERT INTO tblAAA VALUES ('거북이');
INSERT INTO tblAAA VALUES ('병아리');

INSERT INTO tblBBB VALUES ('강아지');
INSERT INTO tblBBB VALUES ('고양이');
INSERT INTO tblBBB VALUES ('호랑이');
INSERT INTO tblBBB VALUES ('사자');
INSERT INTO tblBBB VALUES ('코끼리');

---------------------------------------------------------------------------------------------------------------------------

--union > 수학의 집합 : 중복 제거
SELECT * FROM tblaaa UNION SELECT * FROM tblbbb;		--8개(강아지, 고양이 중복값 제거)
--union all
SELECT * FROM tblaaa UNION ALL SELECT * FROM tblbbb;	--10개(강아지, 고양이 중복값 포함)

---------------------------------------------------------------------------------------------------------------------------

--intersect : 교집합
SELECT * FROM tblaaa INTERSECT SELECT * FROM tblbbb;	--2개(강아지, 고양이)

---------------------------------------------------------------------------------------------------------------------------

--minus : 차집합(A - B)
SELECT * FROM tblaaa MINUS SELECT * FROM tblbbb;		--거북이 병아리 토끼
SELECT * FROM tblbbb MINUS SELECT * FROM tblaaa;		--사자 코끼리 호랑이

---------------------------------------------------------------------------------------------------------------------------
