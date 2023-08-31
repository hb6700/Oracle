--ex20_join.sql

/*
관계형 데이터베이스 시스템이 지양하는 것들 : 테이블 다시 수정해야 고쳐지는 것들 > 구조적인 문제!
1. 테이블에 기본키가 없는 상태 > 데이터 조작 곤란
2. null이 많은 상태의 테이블 > 공간낭비
3. 데이터가 중복되는 상태 > 공간낭비 + 데이터 조작 곤란
4. 하나의 속성값이 원자값이 아닌 상태 > 더이상 쪼개지지 않는 값을 넣어야 한다.
*/

----------------------------------------------------------------------------------------
--1. 
CREATE TABLE tblTest
(
	name varchar2(30) NOT NULL,
	age number(3) NOT NULL,
	nick varchar2(30) NOT NULL
);
--홍길동, 20, 강아지
--아무개, 22, 바보
--테스트, 20, 반장
--홍길동, 20, 강아지 > 발생(x), 조작(?)

--홍길동 별명 수정
UPDATE tblTest SET nick = '고양이' WHERE name = '강아지';		--식별 불가능

--홍길동 탈퇴
DELETE FROM tblTest WHERE name = '홍길동';						--식별 불가능

----------------------------------------------------------------------------------------
--2. 
CREATE TABLE tblTest
(
	name varchar2(30) PRIMARY KEY,
	age number(3) NOT NULL,
	nick varchar2(30) NOT NULL,
	hobby1 varchar2(100) NULL,
	hobby2 varchar2(100) NULL,
	hobby3 varchar2(100) NULL,
	...
	hobby8 varchar2(100) NULL
);

--홍길동, 20, 강아지, null, null, null, null, null, null, null, null
--아무개, 22, 고양이, 게임, null, null, null, null, null, null, null
--이순신, 24, 거북이, 수영, 활쏘기, null, null, null, null, null, null
--테스트, 25, 닭, 수영, 독서, 낮잠. 여행, 맛집, 공부, 코딩, 영화
-----------------------------------------------------------------------------------------------------------------------------
--3.

--직원 정보
--직원(번호, 직원명, 급여, 거주지, 담당프로젝트)
CREATE TABLE tblStaff(
	seq NUMBER PRIMARY KEY,				--직원번호(PK)
	name varchar2(30) NOT NULL,			--직원명
	salary NUMBER NOT NULL,				--급여
	address varchar2(300) NOT NULL,		--거주지
	project varchar2(300)				--담당프로젝트
);

INSERT INTO tblstaff (seq, name, salary, address, project) VALUES (1, '홍길동', 300, '서울시', '홍콩 수출');
INSERT INTO tblstaff (seq, name, salary, address, project) VALUES (2, '아무개', 250, '인천시', 'TV 광고');
INSERT INTO tblstaff (seq, name, salary, address, project) VALUES (3, '하하하', 350, '의정부시', '매출 분석');

SELECT * FROM tblstaff;

--'홍길동'에게 담당 프로젝트가 1건 추가 > '고객관리'
UPDATE tblstaff SET project = project + ', 고객관리' WHERE seq = 1;				--절대!!!!!금지

--신규데이터 추가(길동이 중복데이터 포함)
INSERT INTO tblstaff (seq, name, salary, address, project) VALUES (4, '홍길동', 300, '서울시', '고객 관리');
INSERT INTO tblstaff (seq, name, salary, address, project) VALUES (5, '호호호', 250, '서울시', '게시판 관리,회원 응대');

SELECT * FROM tblstaff;

--'TV 광고' > 담당자!! > 확인?
SELECT * FROM tblstaff WHERE project = 'TV 광고';

--'회원 응대' > 담당자!! > 확인?
--SELECT * FROM tblstaff WHERE project = '회원 응대';			--데이터 못찾음
SELECT * FROM tblstaff WHERE project LIKE '%회원 응대%';

--신규데이터 추가2(신입2 : 후후후)
INSERT INTO tblstaff (seq, name, salary, address, project) VALUES (6, '후후후', 250, '부산시', '불량 회원 응대');
SELECT * FROM tblstaff;
SELECT * FROM tblstaff WHERE project LIKE '%회원 응대%';		--호호호 찾는건데 후후후도 찾아짐

--'회원 응대' > '멤버 조치' 수정
UPDATE tblstaff SET project = '멤버 조치' WHERE project LIKE '%,회원응대%';
ROLLBACK;

--데이터 날리기(새롭게 시작해~)
DROP TABLE tblStaff;
-----------------------------------------------------------------------------------------------------------------------------
--직원 정보
--직원(번호(PK), 직원명, 급여, 거주지), 담당 프로젝트
--[부모테이블]
CREATE TABLE tblStaff(
	seq NUMBER PRIMARY KEY,				--직원번호(PK)
	name varchar2(30) NOT NULL,			--직원명
	salary NUMBER NOT NULL,				--급여
	address varchar2(300) NOT NULL		--거주지
);
--테이블 삭제
DROP TABLE tblStaff;

--프로젝트 정보 전용 테이블 생성
--[자식테이블]
CREATE TABLE tblProject(
	seq NUMBER PRIMARY KEY,									--프로젝트 번호(PK)
	project varchar2(100) NOT NULL,							--프로젝트명
	staff_seq NUMBER NOT NULL REFERENCES tblstaff(seq)		--담당 직원 번호(FK : 외래키) / 기존 : staff_seq NUMBER NOT NULL
);
--테이블 삭제
DROP TABLE tblProject;

INSERT INTO tblstaff (seq, name, salary, address) VALUES (1, '홍길동', 300, '서울시');
INSERT INTO tblstaff (seq, name, salary, address) VALUES (2, '아무개', 250, '인천시');
INSERT INTO tblstaff (seq, name, salary, address) VALUES (3, '하하하', 250, '부산시');
SELECT * FROM tblstaff;

INSERT INTO tblproject (seq, project, staff_seq) VALUES (1, '홍콩 수출', 1);			--홍길동	
INSERT INTO tblproject (seq, project, staff_seq) VALUES (2, 'TV 광고', 2);				--아무개	
INSERT INTO tblproject (seq, project, staff_seq) VALUES (3, '매출 분석', 3);			--하하하	
INSERT INTO tblproject (seq, project, staff_seq) VALUES (4, '노조 협상', 1);			--홍길동	
INSERT INTO tblproject (seq, project, staff_seq) VALUES (5, '대리점 분양', 2);			--아무개	
SELECT * FROM tblproject;

--'TV 광고' 담당자!!!!
--SELECT staff_seq FROM tblproject WHERE project = 'TV 광고';
SELECT * FROM tblstaff WHERE seq = (SELECT staff_seq FROM tblproject WHERE project = 'TV 광고');
-----------------------------------------------------------------------------------------------------------------------------
--A. 신입사원 입사 > 신규 프로젝트 담당
--A.1 신입사원 추가
INSERT INTO tblstaff (seq, name, salary, address) VALUES (4, '호호호', 250, '성남시');
--A.2 신규 프로젝트 추가
INSERT INTO tblproject (seq, project, staff_seq) VALUES (6, '자재 매입', 4);			--호호호
--A.3 신규 프로젝트 추가 > 에러(X) > 논리 오류!
INSERT INTO tblproject (seq, project, staff_seq) VALUES (7, '고객 유치권', 5);			--아무개	
SELECT * FROM tblstaff WHERE seq = (SELECT staff_seq FROM tblproject WHERE project = '고객 유치권');	--??이건 누가 했는뎅? >> CREATE TABLE의 staff_seq부분 제약사항 수정(FK)
-----------------------------------------------------------------------------------------------------------------------------
--B. '홍길동' 퇴사
--B.1 '홍길동' 삭제
DELETE FROM tblstaff WHERE seq = 1;
SELECT * FROM tblstaff WHERE seq = (SELECT staff_seq FROM tblproject WHERE project = '홍콩 수출');		--??누가 했는뎁숑?
INSERT INTO tblstaff (seq, name, salary, address) VALUES (1, '홍길동', 300, '서울시');					--길동 너 다시 컴백해
--B.2 '홍길동' 퇴사 >> 인수인계 해라(위임)
UPDATE tblProject SET staff_seq = 2 WHERE staff_seq = 1;												--인수인계(홍길동>>아무개)
--B.3 '홍길동' 삭제 >> 이제 진짜 잘가라
DELETE FROM tblstaff WHERE seq = 1;
SELECT * FROM tblstaff WHERE seq = (SELECT staff_seq FROM tblproject WHERE project = '홍콩 수출');		--길동이가 인수인계를 누구한테 했더라?
-----------------------------------------------------------------------------------------------------------------------------
--C. (FK)를 추가한 이후
--데이터 오류 방지
--{A번 반복}
INSERT INTO tblstaff (seq, name, salary, address) VALUES (4, '호호호', 250, '성남시');
INSERT INTO tblproject (seq, project, staff_seq) VALUES (6, '자재 매입', 4);						--호호호

--오류 : ORA-02291: integrity constraint (HR.SYS_C007196) violated - parent key not found
INSERT INTO tblproject (seq, project, staff_seq) VALUES (7, '고객 유치권', 5);						--니는 누구세여?

--{B번 반복}
--오류 : ORA-02292: integrity constraint (HR.SYS_C007196) violated - child record found
DELETE FROM tblstaff WHERE seq = 1;																	--니가 맡은건 인수인계 하고 나가세요(FK 참조되는 곳 수정해야 삭제 가능)

UPDATE tblProject SET staff_seq = 2 WHERE staff_seq = 1;											--인수인계(홍길동>>아무개)
DELETE FROM tblstaff WHERE seq = 1;																	--이제 나가세요

-- FK를 만들때는 참조될 테이블의 PK를 이용하자 - 사용자 부주의로 인한 실수 방지를 위해서(??)
-----------------------------------------------------------------------------------------------------------------------------
/*
***자식테이블보다 부모테이블이 먼저 발생한다.(테이블 생성, 레코드 생성)
*/
-----------------------------------------------------------------------------------------------------------------------------
-- DROP : 삭제
DROP table tblCustomer;
DROP table tblSales;
DROP table tblRent;
DROP table tblGenre;
DROP table tblVideo;
DROP table tblMember;
-----------------------------------------------------------------------------------------------------------------------------
-- CREATE : 테이블 생성
-- 고객 테이블
create table tblCustomer (
    seq number primary key,         --고객번호(PK)
    name varchar2(30) not null,     --고객명
    tel varchar2(15) not null,      --연락처
    address varchar2(100) not null  --주소
);

-- 판매내역 테이블
create table tblSales (
    seq number primary key,                             --판매번호(PK)
    item varchar2(50) not null,                         --제품명
    qty number not null,                                --판매수량
    regdate date default sysdate not null,              --판매날짜
    cseq number not null references tblCustomer(seq)    --판매한 고객번호(FK)
);

-- [비디오 대여점]
--1. 고객 테이블 
create table tblMember (
    seq number primary key,         --고객번호(PK)
    name varchar2(30) not null,     --고객명
    grade number(1) not null,       --고객등급(1,2,3)
    byear number(4) not null,       --생년
    tel varchar2(15) not null,      --연락처
    address varchar2(300) null,     --주소
    money number not null           --예치금
);

--2. 장르 테이블
create table tblGenre (
    seq number primary key,         --장르 번호(PK)
    name varchar2(30) not null,     --장르명
    price number not null,          --대여가격
    period number not null          --대여기간(일)
);

--3. 비디오 테이블 
create table tblVideo (
    seq number primary key,                         --비디오 번호(PK)
    name varchar2(100) not null,                    --비디오 제목
    qty number not null,                            --보유 수량
    company varchar2(50) null,                      --제작사
    director varchar2(50) null,                     --감독
    major varchar2(50) null,                        --주연배우
    genre number not null references tblGenre(seq)  --장르 번호(FK)
);

--4. 대여 테이블
create table tblRent (
    seq number primary key,                             --대여번호(PK)
    member number not null references tblMember(seq),   --회원번호(FK)
    video number not null references tblVideo(seq),     --비디오번호(FK)
    rentdate date default sysdate not null,             --대여시각
    retdate date null,                                  --반납시각
    remark varchar2(500) null                           --비고
);
-----------------------------------------------------------------------------------------------------------------------------
-- CREATE SEQUENCE : 시퀀스 생성
create sequence genreseq;
create sequence videoseq;
create sequence memberseq;
create sequence rentseq;
-----------------------------------------------------------------------------------------------------------------------------
-- INSERT : 데이터 생성
-- 고객 데이터
insert into tblcustomer (seq, name, tel, address) values (1, '홍길동', '010-1234-5678', '서울시');
insert into tblcustomer (seq, name, tel, address) values (2, '아무게', '010-3333-4444', '인천시');
insert into tblcustomer (seq, name, tel, address) values (3, '하하하', '010-5555-6666', '부산시');

-- 판매 데이터
insert into tblsales (seq, item, qty, cseq) values (1, '전화기', 1, 1);
insert into tblsales (seq, item, qty, cseq) values (2, '다이어리', 3, 2);
insert into tblsales (seq, item, qty, cseq) values (3, '노트', 10, 2);
insert into tblsales (seq, item, qty, cseq) values (4, '볼펜', 20, 3);
insert into tblsales (seq, item, qty, cseq) values (5, '지우개', 15, 3);
insert into tblsales (seq, item, qty, cseq) values (6, '마우스', 5, 1);
insert into tblsales (seq, item, qty, cseq) values (7, '키보드', 2, 3);
insert into tblsales (seq, item, qty, cseq) values (8, '모니터', 1, 2);
insert into tblsales (seq, item, qty, cseq) values (9, '선풍기', 2, 1);

-- 장르 데이터
INSERT INTO tblGenre VALUES (genreSeq.NEXTVAL, '액션',1500,2);
INSERT INTO tblGenre VALUES (genreSeq.NEXTVAL, '에로',1000,1);
INSERT INTO tblGenre VALUES (genreSeq.NEXTVAL, '어린이',1000,3);
INSERT INTO tblGenre VALUES (genreSeq.NEXTVAL, '코미디',2000,2);
INSERT INTO tblGenre VALUES (genreSeq.NEXTVAL, '멜로',2000,1);
INSERT INTO tblGenre VALUES (genreSeq.NEXTVAL, '기타',1800,2);

-- 비디오 데이터
INSERT INTO tblVideo (seq, Name, qty, Company, Director, Major, Genre) VALUES (videoSeq.NEXTVAL, '영구와 땡칠이',5,'영구필름','심영래','땡칠이',3);
INSERT INTO tblVideo (seq, Name, qty, Company, Director, Major, Genre) VALUES (videoSeq.NEXTVAL, '어쭈구리',5,'에로 프로덕션','김감독','박에로',2);
INSERT INTO tblVideo (seq, Name, qty, Company, Director, Major, Genre) VALUES (videoSeq.NEXTVAL, '털미네이터',3,'파라마운트','James','John',1);
INSERT INTO tblVideo (seq, Name, qty, Company, Director, Major, Genre) VALUES (videoSeq.NEXTVAL, '육복성',3,'대만영화사','홍군보','생룡',4);
INSERT INTO tblVideo (seq, Name, qty, Company, Director, Major, Genre) VALUES (videoSeq.NEXTVAL, '뽀뽀할까요',6,'뽀뽀사','박감독','최지후',5);
INSERT INTO tblVideo (seq, Name, qty, Company, Director, Major, Genre) VALUES (videoSeq.NEXTVAL, '우정과 영혼',2,'파라마운트','James','Mike',5);
INSERT INTO tblVideo (seq, Name, qty, Company, Director, Major, Genre) VALUES (videoSeq.NEXTVAL, '주라기 유원지',1,NULL,NULL,NULL,1);
INSERT INTO tblVideo (seq, Name, qty, Company, Director, Major, Genre) VALUES (videoSeq.NEXTVAL, '타이거 킹',4,'Walt','Kebin','Tiger',3);
INSERT INTO tblVideo (seq, Name, qty, Company, Director, Major, Genre) VALUES (videoSeq.NEXTVAL, '텔미 에브리 딩',10,'영구필름','강감독','심으나',5);
INSERT INTO tblVideo (seq, Name, qty, Company, Director, Major, Genre) VALUES (videoSeq.NEXTVAL, '동무',7,'부산필름','박감독','장동근',1);
INSERT INTO tblVideo (seq, Name, qty, Company, Director, Major, Genre) VALUES (videoSeq.NEXTVAL, '공동경쟁구역',2,'뽀뽀사','박감독','이병흔',1);

-- 회원 데이터
INSERT INTO tblMember (seq, Name,Grade,Byear,Tel,address,Money) VALUES (memberSeq.NEXTVAL, '김유신',1,1970,'123-4567','12-3번지 301호',10000);
INSERT INTO tblMember (seq, Name,Grade,Byear,Tel,address,Money) VALUES (memberSeq.NEXTVAL, '강감찬',1,1978,'111-1111','777-2번지 101호',0);
INSERT INTO tblMember (seq, Name,Grade,Byear,Tel,address,Money) VALUES (memberSeq.NEXTVAL, '유관순',1,1978,'222-2222','86-9번지',20000);
INSERT INTO tblMember (seq, Name,Grade,Byear,Tel,address,Money) VALUES (memberSeq.NEXTVAL, '이율곡',1,1982,'333-3333',NULL,15000);
INSERT INTO tblMember (seq, Name,Grade,Byear,Tel,address,Money) VALUES (memberSeq.NEXTVAL, '신숙주',1,1988,'444-4444','조선 APT 1012호',0);
INSERT INTO tblMember (seq, Name,Grade,Byear,Tel,address,Money) VALUES (memberSeq.NEXTVAL, '안중근',1,1981,'555-5555','대한빌라 102호',1000);
INSERT INTO tblMember (seq, Name,Grade,Byear,Tel,address,Money) VALUES (memberSeq.NEXTVAL, '윤봉길',1,1981,'666-6666','12-1번지',0);
INSERT INTO tblMember (seq, Name,Grade,Byear,Tel,address,Money) VALUES (memberSeq.NEXTVAL, '이순신',1,1981,'777-7777',NULL,1500);
INSERT INTO tblMember (seq, Name,Grade,Byear,Tel,address,Money) VALUES (memberSeq.NEXTVAL, '김부식',1,1981,'888-8888','73-6번지',-1000);
INSERT INTO tblMember (seq, Name,Grade,Byear,Tel,address,Money) VALUES (memberSeq.NEXTVAL, '박지원',1,1981,'999-9999','조선 APT 902호',1200);

-- 대여 데이터
INSERT INTO tblRent (seq, member, video, Rentdate, Retdate) VALUES (rentSeq.NEXTVAL, 1,1,'2007-01-01',NULL);
INSERT INTO tblRent (seq, member, video, Rentdate, Retdate) VALUES (rentSeq.NEXTVAL, 2,2,'2007-02-02','2001-02-03');
INSERT INTO tblRent (seq, member, video, Rentdate, Retdate) VALUES (rentSeq.NEXTVAL, 3,3,'2007-02-03',NULL);
INSERT INTO tblRent (seq, member, video, Rentdate, Retdate) VALUES (rentSeq.NEXTVAL, 4,3,'2007-02-04','2001-02-08');
INSERT INTO tblRent (seq, member, video, Rentdate, Retdate) VALUES (rentSeq.NEXTVAL, 5,5,'2007-02-05',NULL);
INSERT INTO tblRent (seq, member, video, Rentdate, Retdate) VALUES (rentSeq.NEXTVAL, 1,2,'2007-02-10',NULL);

-----------------------------------------------------------------------------------------------------------------------------
-- COMMIT
commit;
-----------------------------------------------------------------------------------------------------------------------------
--SELECT : 데이터 확인
select * from tblCustomer;
select * from tblSales;
select * from tblGenre;
select * from tblVideo;
select * from tblMember;
select * from tblRent;
-----------------------------------------------------------------------------------------------------------------------------

/*
조인(JOIN)
- (서로 관계를 맺은) 2개(1개)이상의 테이블을 1개의 결과셋으로 만드는 기술

조인의 종류
1. 단순 조인, CROSS JOIN
2. 내부 조인, INNER JOIN
3. 외부 조인, OUTER JOIN
4. 셀프 조인, SELF JOIN
5. 전체 외부 조인, FULL OUTER JOIN
*/

/*
1. 단순 조인, CROSS JOIN, 카티션곱(데카르트 곱) 
	- A테이블 X B테이블
	- 쓸모 없다. > 가치있는 행과 가치 없는 행이 뒤집어져 있어서	
	- 더미데이터(유효성 무관)
	- SELECT 컬럼리스트 FROM 테이블A CROSS JOIN 테이블B;
*/

SELECT * FROM tblcustomer;								--3명
SELECT * FROM tblsales;									--9건
SELECT * FROM tblcustomer CROSS JOIN tblsales;			--ANSI-SQL(추천)
SELECT * FROM tblcustomer, tblsales;					--oracle전용


/*
2. 내부 조인, INNER JOIN
	- 단순 조인에서 유효한 레코드만 추출한 조인
	- SELECT 컬럼리스트 FROM 테이블A INNER JOIN 테이블B ON 테이블A.PK = 테이블B.PK;

	[사용 예시]
	SELECT 컬럼리스트 
	FROM 테이블A 
	INNER JOIN 테이블B 
	ON 테이블A.PK = 테이블B.PK;
*/

--CROSS JOIN : 24개의 데이터
SELECT *
FROM tblstaff
CROSS JOIN tblproject;

--INNER JOIN : 6개의 데이터
SELECT tblstaff.seq, tblstaff.name, tblProject.seq, tblProject.project
FROM tblstaff
INNER JOIN tblproject
ON tblstaff.seq = tblProject.staff_seq
ORDER BY tblstaff.seq;

--SELECT seq, name, seq, project							--ORA-00918: column ambiguously defined
--SELECT tblstaff.seq, name, tblProject.seq, project		--해결방안

--ORDER BY seq												--ORA-00918: column ambiguously defined
--ORDER BY tblstaff.seq										--해결방안


-- INNER JOIN 수정
SELECT tblstaff.seq, tblstaff.name, tblProject.seq, tblProject.project			--2
FROM tblstaff INNER JOIN tblproject ON tblstaff.seq = tblProject.staff_seq		--1
ORDER BY tblstaff.seq;															--3

--SQL의 별칭은 개명 -> 기존 이름 으로 호출 불가(해당 문단?에서만) 
--조인 > 테이블 별칭 자주 사용
SELECT s.seq, s.name, p.seq, p.project
FROM tblstaff s
INNER JOIN tblproject p
ON s.seq = p.staff_seq
ORDER BY s.seq;

-----------------------------------------------------------------------------------------------------------------------------
--고객 테이블, 판매 테이블
SELECT c.name AS 고객명, s.item AS 제품명, s.qty AS 개수
FROM tblcustomer c
INNER JOIN tblSales s
ON c.seq = s.cseq;
-----------------------------------------------------------------------------------------------------------------------------
SELECT * FROM tblMen;
SELECT * FROM tblWomen;

SELECT m.name, m.age, m.height, m.weight, w.name, w.age, w.height, w.weight 
FROM tblMen m
INNER JOIN tblWomen w
ON m.name = w.couple;
-----------------------------------------------------------------------------------------------------------------------------
SELECT *
FROM tblstaff st
INNER JOIN tblsales sa
ON st.seq = sa.cseq;
-----------------------------------------------------------------------------------------------------------------------------
--고객명(tblCustomer) + 판매물품명(tblSales) > 가져오시오
--1. 구역
SELECT c.name AS 고객명, s.item AS 물품명
FROM tblcustomer c
INNER JOIN tblsales s
ON c.seq = s.cseq;
--2. 서브쿼리 : 상관 서브 쿼리
	-- 메인쿼리 > 자식 테이블
	-- 상관 서브 쿼리 > 부모 테이블
SELECT item AS 물품명, (SELECT name FROM tblCustomer WHERE seq = tblsales.cseq) AS 고객명
FROM tblsales;
-----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------



