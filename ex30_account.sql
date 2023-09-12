--ex30_account.sql
/*
사용자 관련
- DCL
- 계정 생성, 삭제 등 제어
- 리소스 제어 권한

현재 사용 계정
- system
- hr

프로젝트 -> 계정 생성

*/

SELECT * FROM tabs;		--현재 스키마(계정 : hr)에서 소유하고 있는 테이블 목록

/*
사용자 계정 생성하기
- 시스템 권한을 가지고 있는 계정만 가능하다 > 관리자급 > system
- 계정 생성 권한을 가지고 있는 일반 계정도 생성 가능 > X
- DB Object

- CREATE user 계정명 identified by 암호;		    //계정 생성
- ALTER user 계정명 identified by 암호;			//암호 생성
- ALTER user 계정명 account unlock;				//계정 잠금 해제
- ALTER user 계정명 account lock;				//계정 잠금 설정

- 새로 만든 계정 > 아무 권한이 없음(접속 권한도 없음)

사용자에게 권한을 부여하는 방법
- grant 권한명 to 유저명;

사용자에게 권한을 제거하는 방법
- revoke 권한명 from 유저명;

권한명?
1. 단일권한
- CREATE user
- DROP user
- DROP any table
- CREATE session
- CREATE table
- CREATE view
- CREATE sequence
- CREATE procedure
2. 권합 집합 > Role
- connect : 사용자가 DB 접속 + 기본적 행동
- resource : 테이블 등 객체 조작
- dba : 준관리자급 권한

*/

CREATE USER hong identified by java1234;		--계정 생성
--ORA-01031: insufficient privileges			--권한이 충분하지 않음

GRANT CREATE session to hong;                   --권한 주는 중(관리자:system)에서 실행

GRANT CREATE table to hong;                     --테이블 생성 권한 부여

REVOKE CREATE session from hong;                --현재 세션 소멸(??)
--hong 접속 해제하고 재접하면 오류 발생 -> 권한을 뺏겨서


--프로젝트 진행 > 프로젝트용 계정 생성 
CREATE user team identified by java1234;
GRANT connect, resource, dba to team;        --hr과 유사한 기능 구현 가능

ALTER user team account lock;
ALTER user team account unlock;


--안쓰면 삭제하셈
--ALTER user 계정명 identified by 암호;



------------------------------------------------
-- 과목 시험지
CREATE TABLE tblExam (
	exam_seq              NUMBER         PRIMARY KEY,               -- 시험지 번호
	examType             VARCHAR(255)  NOT NULL,                   -- 실기/필기
	examFile               VARCHAR(255)  NOT NULL,                   -- 시험문제파일
	courseSubject_seq   NUMBER         NOT NULL REFERENCES tblScore(courseSubject_seq)
);

select * from tblexam;

create table tblScore(   
  courseSubject_seq    Number  NOT NULL Primary key,
courseSubjectStartDate Number NOT NULL,
couseSubjectEndDate   Number NOT NULL
);

create sequence seqcourseSubject;
