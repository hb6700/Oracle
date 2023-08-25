--ex02_datatype.sql
/*
관계형 데이터베이스
- 변수(x) > SQL 은 프로그래밍 언어가 아니다
- SQL > 대화형 언어 > DB와 대화를 목적으로 하는 언어
- 자료형 > 데이터 저장하는 규칙 > 테이블 정의할 때 사용 > 컬럼의 자료형

ANSI-SQL 자료형
- 오라클 자료형
1. 숫자형
    - 정수, 실수
    a. number(유효자리 : 38자리 이하의 숫자를 표현하는 자료형)
    - 12345678901234567890123456789012345678
    - 5~22byte
    - 1*10^-130~9.9999*10^125
    - 표현방법
        - number : 정수&실수
        - number(precision) : 전체 자릿수, 자동으로 정수형으로 나옴(반올림)
        - number(precision, scale) : 전체 자릿수(소수+정수자리 합), 소수 이하 자릿수    
2. 문자형
    [varchar vs varchar2]
    Q. varchar라고 안하고 varchar2가 된 이유?
    A. varchar라는 키워드를 진작에 사용중이었는데 기능을 덮어쓸 수 없어서
    
    [문자열 종류의 차이]
    - char vs nchar > n의 의미? :
    - char vs varchar > var의 의미? : 불변 vs 가변 > 저장공간의 차이
    
    1. char
        - 고정 자릿수 문자열 : 공간(컬럼)의 크기가 불변
        - char(n) : n자리 문자열, n(바이트)
        - char(n byte)
        - 최소 크기 : 1바이트
        - 최대 크기 : 2000바이트
    2. nchar
        - n(national) : 오라클 인코딩과 상관없이 해당 컬럼을  UTF-16으로 동작
        - nchar(n) : n자리 문자열, n(문자열)
        - 최소 글자 수 : 1자리
        - 최대 글자 수 : 1000자리
    3. varchar2
        - 가변 자릿수 문자열 : 공간(컬럼)의 크기가 가변
        - varchar2(n) : 최대 n자리 문자열, n(바이트)
        - varchar2(n byte)
        - 최소 자릿수 : 1
        - 최대 자릿수 : 4000
    4. nvarchar2
        - n(national) : 오라클 인코딩과 상관없이 해당 컬럼을  UTF-16으로 동작
        - 가변 자릿수 문자열 : 공간(컬럼)의 크기가 가변
        - nvarchar2(n) : 최대 n자리 문자열, n(문자 수)
        - 최소 자릿수 : 1자
        - 최대 자릿수 : 2000자
    5. clob, nclob
        - 대용량 텍스트 저장용
        - character large object
        - 최대 128TB까지 저장 가능
        - 참조형 >> 속도가 느림
    
    --------------------------------------------
    
    1. 고정 자릿수 문자열 : 주민등록번호, 전화번호 → char
    2. 가변 자릿수 문자열 : 주소, 자기소개 → varchar2
    
    --------------------------------------------
    
    고정/가변을 안가리고 → varchar2를 쓰기 시작함
    
    - 속도의 차이가 있었으나 현재로 오면서 속도의 차이가 줄어들어서 varchar2로만 쓰기 시작함
3. 날짜/시간형
    1. date
        - 년월일시분초
        - 7byte
        - 기원전 4712년 1월 1일 ~ 9999년 12월 31일
    2. timestamp
        - 년월일시분초 + 밀리초 + 나노초
    3. interval
        - 시간
        - 틱값 저장용
4. 이진 데이터형
    - 비 텍스트 데이터 : 이미지, 영상, 음악, 실행 파일, 압축 파일 등…
    - 잘 사용 안 함.
        
        > 게시판(첨부 파일), 회원 가입(사진) > 파일명 저장(문자열)
        > 
    1. blob(binary large of ???)
        - 최대 128TB
*/

/*
### 결론
1. 숫자 : number
2. 문자 : varchar2 + char
3. 날짜 : date

#자바
1. 숫자 : int + long, double, boolean
2. 문자열 : String
3. 날짜 : Calendar

오라클은 boolean이 없음 > 흐름 없고 제어문 필요 없고, if문, for문 다 안 씀

*/



--테이블 선언(생성)
/*
create table 테이블명(
    컬럼 선언,
    컬럼 선언,
    ...,
    컬럼명 자료형
);
*/

-- 식별자 > 타입 접두어 : 헝가리안 표기법

-- 테이블 생성
CREATE TABLE tblType(
    --[숫자형 컬럼 생성]
    --num number
    --num number(3)           -- 세자리까지만 가능 : -999 ~ 999
    --num number(4, 2)        -- ~99.99 ~ 99.99
    
    --[문자형 컬럼 생성]
    --txt char(10)              -- 최대 10 바이트까지의 문자열, 10뒤에 byte 생략된 형태  
    --txt char(10 char)         -- 최대 10글자까지의 문자열
    --txt varchar2(10)    
   
    --[char vs varchar2]
    --txt1 char(10), txt2 varchar2(10)
    
    --[날짜형 컬럼 생성]
    regdate date
);

-- 테이블 삭제
DROP TABLE tblType;

-- 테이블 데이터 추가
--insert into 테이블 (컬럼) values (값);
-- #숫자형
INSERT INTO tblType (num) VALUES (100);      --정수 리터럴
INSERT INTO tblType (num) VALUES (3.14);     --실수 리터럴
INSERT INTO tblType (num) VALUES (3.99);     --실수 리터럴, 반올림 > 4
INSERT INTO tblType (num) VALUES (1234);
INSERT INTO tblType (num) VALUES (999);
INSERT INTO tblType (num) VALUES (-999);


INSERT INTO tblType (num) VALUES (99.99);
INSERT INTO tblType (num) VALUES (-99.99);

INSERT INTO tblType (num) VALUES (1234567890);
INSERT INTO tblType (num) VALUES (12345678901234567890);
INSERT INTO tblType (num) VALUES (123456789012345678901234567890);
INSERT INTO tblType (num) VALUES (1234567890123456789012345678901234567890);
INSERT INTO tblType (num) VALUES (12345678901234567890123456789012345678901234567890);

/*
JAVA : Strong Type Language
SQL : Weak Type Language
*/

-- #문자형
INSERT INTO tblType (txt) VALUES (100);         -- 100(num) -> '100'(char)
INSERT INTO tblType (txt) VALUES ('100');
INSERT INTO tblType (txt) VALUES ('홍길동');     -- 문자 리터럴

--오라클 인코딩 > UTF-8 > 영어(1), 한글(3) > 10바이트
INSERT INTO tblType (txt) VALUES ('abcdabcdab');        --10바이트
--value too large for column "HR"."TBLTYPE"."TXT" (actual: 11, maximum: 10)
INSERT INTO tblType (txt) VALUES ('abcdabcdabc');       --11바이트
--value too large for column "HR"."TBLTYPE"."TXT" (actual: 19, maximum: 10)
INSERT INTO tblType (txt) VALUES ('홍길동입니다.');       --19바이트

INSERT INTO tblType (txt) VALUES ('홍길동');             --10바이트
INSERT INTO tblType (txt) VALUES ('홍길동님');           --11바이트

--char(10), varchar2(10)
--char : "abc       "
--varchar2 : "abc"
INSERT INTO tblType (txt1, txt2) VALUES ('abc', 'abc');

-- #날짜형
INSERT INTO tblType (regdate) VALUES ('2023-08-25');    --23/08/25


--데이터 가져오기 > 결과 테이블(Result Table), 결과 셋(ResultSet)
SELECT * FROM tblType;

commit;

--(*)오라클은 모든 식별자를 대문자로 저장한다.

/*
DB Client Tools
1. SQL Developer > 오라클 제공, 무료, 그럭저럭
2. SQL*Plus > 오라클 제공 , 무료, 오라클 설치될 때 같이 설치. CLI > 콘솔창에서
3. SQLGate
4. Orange
5. DBeaver
6. …
7. Toad
8. DataGrip(jetbrains)
*/