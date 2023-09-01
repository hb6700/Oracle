--ex23_alter.sql

/*
###DDL : 객체 조작
- CREATE : 객체 셍상
- ALTER : 객체 수정
- DROP : 객체 삭제

###DML : 데이터 조작
- INSERT : 데이터 생성
- UPDATE : 데이터 수정
- DELETE : 데이터 삭제

###테이블 수정하기
- 테이블 정의 수정 > 스키마 수정 > 컬럼 수정 > 컬럼명 or 자료형(길이) or 제약사항 등
- 되도록 테이블을 수정하는 상황을 발생시키면 안된다.

###테이블 수정해야 하는 상황 발생!!!
1. 테이블 삭제(DROP) > 테이블 DDL(CREATE))수정 > 수정된 DDL로 새롭게 테이블 생성
	a. 기존 테이블에 데이터가 없었을 경우 > 아무 문제 없음
	b. 기존 테이블에 데이터가 있었을 경우 > 미리 데이터 백업 > 테이블 삭제 > 수정된 테이블 다시 생성 > 데이터 복구
		- 개발 중에 사용
		- 공부할때도 많이 사용
		- 실제 서비스가 상용화 될때는 거의 불가능(서비스 운영중에는 거의 불가능한 방법)
2. ALTER 명령어 사용 > 기존 테이블의 구조 변경
	a. 기존 테이블에 데이터가 없었을 경우 > 아무 문제 없음
	b. 기존 테이블에 데이터가 있었을 경우 > 경우에 따라 비용 차이
		- 개발 중에 사용 가능
		- 공부 중에 사용 가능
		- 서비스 운영중에는 경우에 따라 가능하거나 불가능 하거나...

*/

-------------------------------------------------------------------------------------------------
DROP TABLE tblEdit;

CREATE TABLE tblEdit(seq NUMBER PRIMARY KEY, DATA varchar2(20) NOT NULL);

INSERT INTO tblEdit VALUES (1, '마우스');
INSERT INTO tblEdit VALUES (2, '키보드');
INSERT INTO tblEdit VALUES (3, '모니터');

SELECT * FROM tblEdit;
--------------------------------------------------------------------------------------------------
--case1. 새로운 컬럼을 추가하기
ALTER TABLE tblEdit ADD (price NUMBER);
SELECT * FROM tblEdit;

INSERT INTO tblEdit VALUES (1, '마우스', 1000, 1);
INSERT INTO tblEdit VALUES (2, '키보드', 2000, 1);
INSERT INTO tblEdit VALUES (3, '모니터', 3000, 2);

--ORA-01758: table must be empty to add mandatory (NOT NULL) column
ALTER TABLE tblEdit ADD (qty NUMBER NOT NULL);

ALTER TABLE tblEdit ADD(color varchar2(30) DEFAULT 'white' NOT NULL); 

DELETE FROM tbledit;
-------------------------------------------------------------------------------------------------
--case2. 컬럼 삭제하기 
ALTER TABLE tblEdit DROP COLUMN color;
SELECT * FROM tblEdit;
ALTER TABLE tblEdit DROP COLUMN qty;		
ALTER TABLE tblEdit DROP COLUMN seq;		--PK삭제 > 절대 금지
-------------------------------------------------------------------------------------------------
--case3. 컬럼 수정하기
SELECT * FROM tblEdit;

--ORA-12899: value too large for column "HR"."TBLEDIT"."DATA" (actual: 27, maximum: 20)
INSERT INTO tbledit VALUES (4, '애플 M2 맥북프로 2023');

--3.1 컬럼 길이 수정하기(확장/축소) > 확장은 용이하지만 축소는 크기 확인후 가능
ALTER TABLE tbledit MODIFY (DATA varchar2(100));
--ORA-01441: cannot decrease column length because some value is too big
ALTER TABLE tbledit MODIFY (DATA varchar2(20));

--3.2 컬럼의 제약사항 수정하기
ALTER TABLE tblEdit MODIFY (DATA varchar2(100) NULL);
INSERT INTO tbledit VALUES (5, null);
--ORA-02296: cannot enable (HR.) - null values found
ALTER TABLE tblEdit MODIFY (DATA varchar2(100) NOT NULL);

--3.3 컬럼의 자료형 바꾸기
--ORA-01439: column to be modified must be empty to change datatype
ALTER TABLE tblEdit MODIFY (DATA number);
ALTER TABLE tblEdit MODIFY (DATA varchar2(100));

DESC tblEdit;

DELETE FROM tblEdit;

SELECT * FROM tblEdit;

