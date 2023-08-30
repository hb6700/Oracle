--ex15_insert.sql
/*
### INSERT
- DML
- 테이블에 데이터를 추가하는 명령어

### INSERT구문
- INSERT INTO 테이블명(컬럼리스트) VALUES (값리스트);
*/

DROP TABLE tblMemo;         
         
CREATE TABLE tblMemo
(
   seq number(3) PRIMARY KEY,      				--메모번호(PK)
   name varchar2(30) DEFAULT '익명',      		--작성자(UQ)
   memo varchar2(1000),   						--메모(NN)
   regdate DATE DEFAULT sysdate NOT NULL		--작성날짜
);

DROP SEQUENCE seqmemo;
CREATE SEQUENCE seqmemo;
SELECT * FROM tblMemo;

-----------------------------------------------------------------------------------

/*
1. 표준 
- 원본테이블의 정의된 컬럼 순서대로 컬럼리스트와 값 리스트를 구성하는 방법
- 특별한 이유가 없으면 이 방식을 사용하는 것을 권장
*/
INSERT INTO tblMemo (seq, name, memo, regdate) VALUES (seqmemo.nextVal, '홍길동', '메모입니다.', sysdate);

-----------------------------------------------------------------------------------

/*
2. 컬럼리스트의 순서는 원본테이블과 상관 없다
- 컬럼리스트와 값리스트의 순서만 동일하면 된다. 
*/
INSERT INTO tblMemo (seq, memo, regdate, name) VALUES (seqmemo.nextVal, '메모입니다.', sysdate , '홍길동');

-----------------------------------------------------------------------------------

/*
3. ORA-00947: not enough values
*/
INSERT INTO tblMemo (seq, name, memo, regdate) VALUES (seqmemo.nextVal, '메모입니다.', sysdate);

-----------------------------------------------------------------------------------

/*
4. ORA-00913: too many values
*/
INSERT INTO tblMemo (seq, memo, regdate) VALUES (seqmemo.nextVal, '홍길동', '메모입니다.', sysdate);

-----------------------------------------------------------------------------------

/*
5. null 컬럼 조작
*/
-- 1. null상수
INSERT INTO tblMemo (seq, name, memo, regdate) VALUES (seqmemo.nextVal, '홍길동', NULL, sysdate);
-- 2. 컬럼 생략
INSERT INTO tblMemo (seq, name, regdate) VALUES (seqmemo.nextVal, '홍길동', sysdate);

-----------------------------------------------------------------------------------

/*
6. default 컬럼 조작
*/
-- 1. 컬럼 생략 > null 대입 > default 호출
INSERT INTO tblMemo (seq, memo, regdate) VALUES (seqmemo.nextVal, '메모입니다.', sysdate);
-- 2. null 상수 > null 대입(개발자의 의지 표현) > default 동작 안함
INSERT INTO tblMemo (seq, name, memo, regdate) VALUES (seqmemo.nextVal, NULL, '메모입니다.', sysdate);
-- 3. default 상수
INSERT INTO tblMemo (seq, name, memo, regdate) VALUES (seqmemo.nextVal, DEFAULT, '메모입니다.', sysdate);

SELECT * FROM tblmemo;

-----------------------------------------------------------------------------------

/*
7. 단축
- 컬럼리스트를 생략할 수 있다.
*/
INSERT INTO tblMemo VALUES (seqmemo.nextVal, '홍길동', '메모입니다.', sysdate);
--컬럼시트를 생략하면 테이블의 원본 컬럼 순서대로 값리스트를 작성해야 한다.
INSERT INTO tblMemo VALUES (seqmemo.nextVal, '메모입니다.', sysdate, '홍길동');
--null컬럼을 생략 불가능
INSERT INTO tblMemo VALUES (seqmemo.nextVal, '홍길동', sysdate);					--ORA-00947: not enough values
INSERT INTO tblMemo VALUES (seqmemo.nextVal, '홍길동', NULL, sysdate);				--O

--default 컬럼을 생략 불가능
INSERT INTO tblMemo VALUES (seqmemo.nextVal, '메모입니다.', sysdate);				--ORA-00947: not enough values
INSERT INTO tblMemo VALUES (seqmemo.nextVal, default, '메모입니다.', sysdate);		--O

-----------------------------------------------------------------------------------

/*
8. tblMemo 테이블 > 복사 > 새 테이블 생성(tblMemoCopy)
*/
CREATE TABLE tblMemoCopy
(
   seq number(3) PRIMARY KEY,      				--메모번호(PK)
   name varchar2(30) DEFAULT '익명',      		--작성자(UQ)
   memo varchar2(1000),   						--메모(NN)
   regdate DATE DEFAULT sysdate NOT NULL		--작성날짜
);

SELECT * FROM tblmemo;
SELECT * FROM tblmemocopy;
INSERT INTO tblmemocopy SELECT * FROM tblmemo;		--subQuery

-----------------------------------------------------------------------------------

/*
9. tblMemo 테이블 > 복사 > 새 테이블 생성(tblMemoCopy2)
-- 제약사항이 복사가 안된다.
-- 임시 테스트용으로만 사용 > 다량의 데이터, 임시데이터
*/
CREATE TABLE tblmemocopy2 AS SELECT * FROM tblmemo;
SELECT * FROM tblmemocopy2;

INSERT INTO tblMemocopy2 (seq, name, memo, regdate) VALUES (15, '홍길동', '메모입니다.', sysdate);

-----------------------------------------------------------------------------------