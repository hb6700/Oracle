--ex14_sequence.sql
/*
### 시퀀스(sequence)

- 데이터베이스 객체 중 하나
- 오라클 전용 객체(다른 DBMS 제품에는 없음)
- 일련번호를 생성하는 객체(**)
- (주로)식별자 (일련번호)를 만드는데 사용한다. pk값으로 사용한다

시퀀스 객체 생성하기

- CREATE sequence 시퀀스명;

시퀀스 객체 삭제하기

- DROP sequence 시퀀스명;

시퀀스 객체 사용하기(함수)

- 시퀀스객체.nextVal
- 시퀀스객체.currVal

시퀀스 객체 생성하기
CREATE SEQUENCE 시퀀스명;
CREATE SEQUENCE 시퀀스명 
				increment by n		-- 증감치(양수/음수)
				start with n		-- 
				maxvalue n			-- 
				minvalue n			-- 
				cycle 				-- 
				cache n;			-- 
*/

CREATE SEQUENCE seqNum;
SELECT seqNum.nextVal FROM dual;			--일련번호 생성
DROP SEQUENCE seqNum;

DROP SEQUENCE seqMemo;
CREATE SEQUENCE seqMemo;

DELETE FROM tblmemo;
DROP TABLE tblmemo;
CREATE TABLE tblMemo
(
	seq number(3) PRIMARY KEY,			--메모번호(PK)
	name varchar2(30) DEFAULT '익명',	--작성자
	memo varchar2(1000),				--메모
	regdate DATE DEFAULT sysdate		--작성날짜
);
--INSERT INTO tblmemo(seq, name, memo, regdate) VALUES (1, '홍길동', '메모입니다', sysdate);
INSERT INTO tblmemo(seq, name, memo, regdate) VALUES (seqMemo.nextVal, '홍길동', '메모입니다', sysdate);
SELECT * FROM tblmemo;

--쇼핑몰 > 상품번호 > ABC10102
SELECT 'A' || seqNum.nextVal FROM dual;

--nextVal 호출하면 나오게 될 숫자를 반환 > 확인용
--Queue, stack > pop() > peek()
SELECT seqNum.currVal FROM dual;	--nextVal 호출하면 나오게 될 숫자를 반환
--ORA-08002: sequence SEQNUM.CURRVAL is not yet defined in this SESSION
--currVal는 최소 1번 이상의 nextVal를 호출해야 사용이 가능하다.
SELECT seqNum.nextVal FROM dual;
---------------------------------------------------------------------------
DROP SEQUENCE seqTest;

CREATE SEQUENCE seqTest 
--				INCREMENT BY 2
--				START WITH 10
--				MAXVALUE 10
--				CYCLE
				CACHE 20;
				
SELECT seqTest.nextVal FROM dual;			--1, 2, 3, 4, 5, 6, 21

DROP SEQUENCE seqtest;
CREATE SEQUENCE seqtest START WITH 7;

--작업관리자 > 세부정보 > oracle.exe 종료
--SQL Error [12505] [66000]: Listener refused the connection with the following error:
--ORA-12505, TNS:listener does not currently know of SID given in connect descriptor
SELECT * FROM tblinsa;



