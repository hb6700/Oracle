--EX29_PLSQL_2.sql
/*
저장 프로시저
1. 저장 프로시저
2. 저장 함수(*)

저장함수(Stored Function) > 함수(Function)
- 저장프로시저와 거의 동일
- 반환값이 반드시 존재 > out 파라미터를 말하는 게 아니라 return문을 사용한다
- out파라미터를 사용 금지 > 대신 return문을 사용
- in 파라미터는 사용한다.
- 이런 특성때문에 호출하는 구문이 조금 다르다.(***)
*/
--num1 + num2 : 합 구하기
--ver1)프로시저
CREATE OR REPLACE PROCEDURE procSum(
	num1 in number,
	num2 in number,
	presult OUT number
)
IS
BEGIN
	presult := num1 + num2;
END procSum;

--ver2)함수
CREATE OR REPLACE FUNCTION fnSum(
	num1 in number,
	num2 in NUMBER
	--presult out number : out을 사용하면 함수의 고유 특성이 사라진다. 프로시저와 동일
) RETURN number
IS
BEGIN
	--presult := num1 + num2;
	RETURN num1 + num2;
END fnSum;

--실행
SET serveroutput ON;		--한번만

DECLARE
	vresult NUMBER;
BEGIN
	procSum(10, 20, vresult);
	dbms_output.put_line(vresult);

	vresult := fnSum(10, 20);
	dbms_output.put_line(vresult);
END;

----------------------------------------------------------------------------------------------------
--프로시저 : PL/SQL 전용 > 업무 절차 모듈화
--함수 : ANSI-SQL 보조
SELECT name, basicpay, sudang, fnSum(basicpay, sudang) sum FROM tblinsa;

--이름 부서 직원 성별
--프로시저
SELECT name, buseo, jikwi, CASE WHEN substr(ssn, 8, 1) = '1' THEN '남자' WHEN substr(ssn, 8, 1) = '2' THEN '여자' END AS gender, fnGender(ssn) AS gender2 FROM tblinsa;
--함수
CREATE OR REPLACE FUNCTION fnGender(pssn varchar2) RETURN varchar2
IS
BEGIN
	RETURN CASE WHEN substr(pssn, 8, 1) = '1' THEN '남자' WHEN substr(pssn, 8, 1) = '2' THEN '여자' END;
END fnGender;

SELECT name, buseo, jikwi, fnGender(ssn) AS gender FROM tblinsa;
----------------------------------------------------------------------------------------------------
/*
프로시저
1. 프로시저
2. 함수
3. 트리거

트리거(Trigger)
- 프로시저의 한 종류
- 개발자의 호출이 아닌, 미리 지정한 특정 사건이 발생하면 시스템이 자동으로 실행하는 프로시저
- 예약(사건) > 사건 발생 > 프로시저 호출
- 특정 테이블 지정 > 지정 테이블 오라클 감시 > 사건발생 : INSERT UPDATE DELETE > 미리 준비해놓은 프로시저 호출

트리거 구문
CREATE OR REPLACE trigger 트리거명 before|after insert|update|delete on 테이블명 [for each row]
declare 선언부;
begin 구현부;
exception 예외처리부;
end;
*/

--tblinsa : 직원 삭제
CREATE OR REPLACE TRIGGER trginsa
	BEFORE 				--삭제가 발생하기 직전에 아래의 구현부를 먼저 실행해라
	DELETE 				--삭제가 발생하는지 감시
	ON tblinsa			--tblinsa 인사테이블에서
BEGIN
	dbms_output.put_line(to_char(sysdate, 'hh24:mi:ss') || '트리거가 실행되었습니다.');
	--월요일에는 퇴사가 불가능
	IF to_char(sysdate, 'dy') = '월' THEN 
		--강제로 에러 발생
		--throw new exception() > java error
		--에러번호 -20001 ~ -29999 
		raise_application_array(-20001, '월요일은 퇴사가 안대지');
	END IF;
END trgInsa;

--트리거는 실행시 바로 동작하므로 동작을 중지하고 싶으면 DROP으로 트리거 삭제

SELECT * FROM tblinsa;
--김종서(1010) 삭제
DELETE FROM tblinsa WHERE num = 1010;
--ORA-02292: integrity constraint (HR.SYS_C007143) violated - child record found : 자식테이블 어딘가에서 참조 중
DELETE FROM tblBonus;
COMMIT;
ROLLBACK;	--
----------------------------------------------------------------------------------------------------
SELECT * FROM tabs;
SELECT * FROM tbldiary;
--로그 기록
CREATE TABLE tblLogDiary(
	seq NUMBER PRIMARY KEY,
	message varchar2(1000) NOT NULL,
	regdate DATE DEFAULT sysdate NOT null
);

CREATE SEQUENCE seqLogDiary;

CREATE OR REPLACE TRIGGER trgDiary
	AFTER
	INSERT OR UPDATE OR DELETE
	ON tblDiary
DECLARE
	vmessage varchar2(1000);
BEGIN
--	dbms_output.put_line(to_char(sysdate, 'hh24:mi:ss')||'트리거');
	IF inserting THEN
		--dbms_output.put_line('추가');
		vmessage := '새로운 항목이 추가되었습니다.';
	ELSIF updating THEN
		--dbms_output.put_line('수정');
		vmessage := '새로운 항목이 수정되었습니다.';
	ELSIF deleting THEN
		--dbms_output.put_line('삭제');
		vmessage := '새로운 항목이 삭제되었습니다.';
	END IF;

	INSERT INTO tbllogdiary VALUES(seqLogDiary.nextVal, vmessage, DEFAULT);	

END trDiary;

INSERT INTO tbldiary VALUES (11, '프로시저를 공부했다.', '흐림', sysdate);
UPDATE tbldiary SET subject = '프로시저를 복습했다.' WHERE seq = 11;
DELETE FROM tbldiary WHERE seq = 11;

SELECT * FROM tbllogdiary;
----------------------------------------------------------------------------------------------------
/*
[for each row]
1. 생략
	- 문장(Query)단위 트리거 (Table level trigger
	- 사건에 적용된 행의 갯수 무관 > 트리거 딱 1회 호출
	- 적용된 레코드의 정보는 중요하지 않은 경우 +  사건 자체가 중요한 경우
2. 사용
	- 행(Recode) 단위 트리거
	- 사건에 적용된 행의 개수만큼 > 트리거가 호출됨
	- 적용된 레코드의 정보가 중요한 경우 사건 자체보다...
	- 상관관계를 사용한다. > 일종의 가상 레코드(:old, :new)
	
	insert
	- :new > 방금 추가된 행
	
	update
	- :old > 수정되기 바로 전의 행 참조
	- :new > 수정후
	
	delete
	- :old > 삭제하기 전 행
*/
CREATE OR REPLACE TRIGGER trgMen
	AFTER 
	DELETE 
	ON tblmen
	FOR EACH row
BEGIN
	dbms_output.put_line('레코드를 삭제했습니다.'|| :old.name);
END trgMen;

ROLLBACK;

SELECT * FROM tblMen;

DELETE FROM tblMen WHERE name = '홍길동';		--1명 삭제
DELETE FROM tblMen WHERE age < 25;				--3명 삭제 > 트리거 1회 실행	

INSERT INTO tblmen VALUES ('홍길동', 25, 180, 70, '장도연');
INSERT INTO tblmen VALUES ('아무개', 22, 175, NULL, '이세영');
INSERT INTO tblmen VALUES ('하하하', 27, NULL, 80, NULL);
INSERT INTO tblmen VALUES ('무명씨', 21, 177, 72, NULL);
INSERT INTO tblmen VALUES ('정형돈', 28, NULL, 92, NULL);
INSERT INTO tblmen VALUES ('양세형', 22, 166, 55, '김민경');
INSERT INTO tblmen VALUES ('조세호', 24, 165, 58, '오나미');

CREATE OR REPLACE TRIGGER tblmen
	AFTER
	UPDATE 
	ON tblmen
	FOR EACH ROW
BEGIN
	dbms_output.put_line('레코드를 수정했습니다.' || :OLD.name);
	dbms_output.put_line('수정하기 전 나이 : ' || :old.age);
	dbms_output.put_line('수정하고 난 이유 : ' || :NEW.age);
END trgMen;

UPDATE tblMen SET age = age + 1 WHERE name = '홍길동';
UPDATE tvlmen SET age = age + 1;
----------------------------------------------------------------------------------------------------
--회사 : 프로젝트 담당
SELECT * FROM tblstaff;
SELECT * FROM tblProject;

--직원을 퇴사 > 퇴사 바로 직전 > 담당 프로젝트 체크 > 위임
CREATE OR REPLACE TRIGGER trgDeleteSTaff
	BEFORE			--3. 전에
	DELETE			--2. 퇴사
	ON tblstaff		--1. 직원 테이블에서
	FOR EACH ROW	--4. 해당 직원 정보
BEGIN
	--5. 위임 진행
	UPDATE tblProject SET staff_seq = 3 WHERE staff_seq = :OLD.seq;		--퇴사하는 직원의 번호
END trgDeleteStass;

SELECT * FROM tblstaff;
SELECT * FROM tblproject;

DELETE FROM tblstaff WHERE seq = 1;
----------------------------------------------------------------------------------------------------
--회원테이블, 게시판 테이블
--포인트 제도
--1. 글 작성 : 포인트 +100
--2. 글 삭제 : 포인트 -50

CREATE TABLE tblUser(
	id varchar2(30) PRIMARY KEY,
	point NUMBER DEFAULT 1000 NOT NULL
);

CREATE TABLE tblBoard(
	seq number PRIMARY KEY,
	subject varchar2(1000) NOT NULL,
	id varchar2(30) NOT NULL REFERENCES tbluser(id)
);

CREATE SEQUENCE seqBoard;

INSERT INTO tbluser VALUES ('hong', default);

--A. 글을 쓴다(삭제한다)
--B. 포인트를 누적(차감)한다

--case1. 하드코딩 ver.
--개발자가 직접 제어
--실수 > 일부 업무 누락;
--1.1 글쓰기
INSERT INTO tblBoard VALUES (seqBoard.nextVal, '게시판입니다.', 'hong');

--1.2 포인트 누적
UPDATE tbluser SET point = point + 100 WHERE id = 'hong';

--1.3 글 삭제
DELETE FROM tblboard WHERE seq = 1;

--1.4 포인트 삭제
UPDATE tbluser SET point = point - 50 WHERE id = 'hong';
SELECT * FROM tbluser;

--case2. 프로시저 ver.
--2.1 누적기능 프로시저 생성
CREATE OR REPLACE PROCEDURE procAddBoard(
	pid varchar2,
	psubject varchar2
)
IS
BEGIN
	--2.1.1 글쓰기
	INSERT INTO tblBoard VALUES (seqBoard.nextVal, psubject, pid);

	--2.1.2 포인트 누적
	UPDATE tbluser SET point = point + 100 WHERE id = pid;
END procAddBoard;

--2.2 삭제기능 프로시저 생성
CREATE OR REPLACE PROCEDURE procDeleteBoard(
	pseq number
)
IS
	vid varchar2(30);
BEGIN
	--2.2.1 삭제글의 작성자
	 SELECT id INTO vid FROM tblBoard WHERE seq = pseq;
	
	--2.2.2 글삭제
	DELETE FROM tblboard WHERE seq = pseq;

	--2.2.3 포인트 차감
	UPDATE tbluser SET point = point - 50 WHERE id = vid;
END procDeleteBoard;

--2.3
BEGIN
	procAddBoard('hong', '글을 작성합니다.');
END;

BEGIN
	procDeleteBoard(3);
END;


SELECT * FROM tbluser;		--
SELECT * FROM tblBoard;		--vid : 게시판 글 고유번호(?) 확인용

--case3. 트리거 ver.
CREATE OR REPLACE TRIGGER trgBoard
	AFTER
	INSERT OR DELETE
	ON tblBoard
	FOR EACH ROW
BEGIN
	IF inserting THEN 
		UPDATE tbluser SET point = point + 100 WHERE id = :NEW.id;
	ELSIF deleting THEN 
		DELETE tbluser SET point = point - 50 WHERE id = :OLD.id;
	END IF;
END trgBoard;

INSERT INTO tblBoard VALUES (seqBoard.nextVal, '또 다시 글을 씁니다.', 'hong');

DELETE FROM tblBoard WHERE seq = 5;
SELECT * FROM tbluser;
SELECT * FROM tblBoard;

COMMIT;