--ex13_ddl.sql
/*
[DDL]
- 데이터 정의어
- 데이터 베이스 객체를 생성 /수정/삭제 한다.
- 데이터베이스 객체 > 테이블, 뷰, 인덱스, 프로시저, 트리거, 제약사항, 시노닙 등…
- CREATE, ALTER. DROP
*/

/*
테이블 정의하기 > 스키마 정의하기 > 컬럼(속성) 정의하기 > 컬럼의 이름, 자료형, 제약을 정의
CREATE table 테이블명
( 
	컬럼 정의, 
	컬럼 정의,
	컬럼 정의,
	컬럼명 자료형(길이),
	컬럼명 자료형(길이) NULL **제약사항**
);
*/

/*
### 제약사항(Constraint)
- 해당 컬럼에 들어갈 데이터(값)에 대한 조건
    1. 조건을 만족하면 > 대입
    2. 조건을 불만족하면 > 에러 발생
- 유효성 검사 도구
- 데이터 무결성을 보장하기 위한 도구(***)
    - NOT NULL
        - 해당 컬럼이 반드시 값을 가져야 한다
        - 해당 컬럼에 값이 없으면 에러가 발생
        - 필수값!
    - PRIMARY KEY(PK)
    - FOREIGN KEY(FK)
    - UNIQUE
    - CHECK
    - DEFAULT
*/

-- 메모테이블
CREATE TABLE tblMemo
(
	--컬럼명 자료형(길이) NULL 제약사항
	seq number(3) NULL,			--메모번호
	name varchar2(30) NULL,		--작성자
	memo varchar2(1000) NULL,	--메모
	regdate DATE NULL			--작성날짜
);

--데이터 확인
SELECT * FROM tblMemo;
--데이터 생성
INSERT INTO tblMemo (seq, name, memo, regdate) VALUES (1, '홍길동', '메모입니다', sysdate);
INSERT INTO tblMemo (seq, name, memo, regdate) VALUES (2, '아무개', NULL, sysdate);
INSERT INTO tblMemo (seq, name, memo, regdate) VALUES (3, null, null, null);
INSERT INTO tblMemo (seq, name, memo, regdate) VALUES (null, null, null, null);
