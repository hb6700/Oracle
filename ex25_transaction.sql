--ex25_transaction.sql
/*


*/

CREATE TABLE tblTrans
AS 
SELECT name, buseo, jikwi FROM tblinsa where city = '서울';

SELECT * FROM tbltrans;
-- 우리가 하는 행동 > 시간 순으로 기억(***)

--로그인 직후(접속)  > 트랜잭션이 시작됨
--트랜잭션 > 모든 명령어(x) > insert update delete 명령어만 트랜잭션에 포함된다
-- INSERT, UPDATE, DELETE 작업 > 오라클 적용(X), 임시 메모리 적용(O)

DELETE FROM tblTrans WHERE name = '박문수';		--트랜잭션에 포함
SELECT * FROM tbltrans;							--트랜잭션과 무관

ROLLBACK;		--현재 트랜잭션에서 했던 모든 행동을 데이터베이스에 적용하지 말고 취소해라
SELECT * FROM tbltrans;							--트랜잭션과 무관

DELETE FROM tblTrans WHERE name = '박문수';		--트랜잭션에 포함
SELECT * FROM tbltrans;							--트랜잭션과 무관
COMMIT;			--현재 트랜잭션에서 했던 모든 행동을 데이터베이스에 적용한다.
SELECT * FROM tbltrans;							--트랜잭션과 무관

DELETE FROM tbltrans WHERE name = '김영년';
SELECT * FROM tblTrans;
COMMIT;

INSERT INTO tbltrans VALUES ('호호호', '기획부', '사원');
UPDATE tbltrans SET jikwi = 't 상무' WHERE name = '홍길동';
SELECT * FROM tbltrans;
DELETE FROM tbltrans WHERE name = '호호호';

/*
트랜잭션이 언제 시작해서 ~ 언제 끝나는지?
새로운 트랜잭선이 시작하는 시점
1. 클라이언트 접속 직후
2. commit 실행 직후 

현재 트랜잭션이 종료되는 시점
1. callback > 현재 트랜잭션을 종료 + DB에 반영
2. rollback > 현재 트랜잭션을 종료 + DB에 반영안함
3. 클라이언트 접속 종료
	a. 정상종료
		현재 트랜잭션에 아직 반영이 안 된 명렁어가 남아있은ㄴ데 어떻게? 질문 
	b. 비정상 종료
		메모리상(트랜잭션)의 모든 작업이 반영이 될만한 틈이 없이 강제 종료
		 rollback
4. DDL실행
	create, alter, drop > 실행 > 즉시 commit 실행
	DDL성격 > 구조 변경 > 데이터 영향 끼침 > 사전에 미리 저장(commit)
*/
UPDATE tbltrans SET jikwi = '상무' WHERE name = '홍길동';
SELECT * FROM tbltrans;
COMMIT;
SELECT TblbTrans;
UPDATE tbltrans SET jikwi = '부장' WHERE name = '홍길동';
COMMIT;

UPDATE tbltrans SET jikwi = '사장' WHERE name = '홍길동';
SELECT * FROM tbltrans;
--시퀀스 객체 생성
CREATE SEQUENCE seqTrans;		--현재 트랜잭션 COMMIT 동반
ROLLBACK;
SELECT * FROM tbltrans;

--savepoint 라벨;
COMMIT;
SELECT * FROM tbltrans;
INSERT INTO tbltrans VALUES ('후후후', '기획부', '직원');
SELECT * FROM tbltrans;
SAVEPOINT a;
DELETE FROM tbltrans WHERE name = '홍길동';
SAVEPOINT b;
UPDATE tbltrans SET buseo = '개발부' WHERE name = '후후후';
SELECT * FROM tbltrans;
ROLLBACK TO b;
SELECT * FROM tbltrans;
ROLLBACK TO a;
SELECT * FROM tbltrans;
ROLLBACK;
SELECT * FROM tbltrans;




