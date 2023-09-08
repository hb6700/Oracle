--ex29_plsql.sql
/*
PL/SQL
- Oracle’s Procedural Language extension to SQL
- 기존의 ANSI-SQL + 절차지향 언어 기능 추가
- ANSI-SQL의 확장팩(변수, 제어흐름(제어문), 객체(메소드) 정의)

Procedure(프로시저)
- 메서드, 함수 등…
- 순서가 있는 명령어의 집합
- 모든 PL/SQL 구문은 프로시저 내에서만 작성/동작이 가능하다.
- 프로시저가 아닌 영역 > ANSI-SQL영역

프로시저 종류
1. 익명 프로시저
    - 1회용 코드 작성용
2. 실명 프로시저
    - 데이터베이스 삭제
    - 저장용
    - 재호출

PL/SQL 프로시저 구조
1. 4개의 블럭(키워드)으로 구성(DECLARE BEGIN EXCEPTION END)
    - DECLARE : 선언부
        - 프로시저 내에서 사용할 변수, 객체 등을 선언하는 영역
        - 생략 가능
    - BEGIN ~ END: 실행부 or 구현부
        - END와 항상 같이 쓰임
        - 구현된 코드를 가지는 영역(메서드의 body 영역)
        - 생략 불가능
        - 구현된 코드 → ANSI-SQL + PL/SQL(연산, 제어 등)
    - EXCEPTION : 예외처리부
        - 생략 가능
        - catch역할, 3번영역 try 역할

PL/SQL 자료형
- ANSI-SQL와 동일

PL/SQL 연산자
- ANSI-SQL과 동일
- 대입연산자가 다름
    - ANSI-SQL 대입 연산자
        > UPDATE table set column = ‘값’;
    - PL/SQL 대입 연산자
        > 변수 := ‘값’;

변수 선언하기
- 변수명 자료형 [NOT NULL] [default 값];
*/

----------------------------------------------------------------
--출력값 출력여부 선택기능(on/off)
set serveroutput on;        -- 현재 세션에서만 유효(접속해제 > 초기화)
set serverout on;
set serveroutput off;

--익명 프로시저 생성
declare
    num number;
    name varchar2(30);
    today date;
begin
    num := 10;
    dbms_output.put_line(num);     --syso
    name := '홍길동';
    dbms_output.put_line(name); 
    today := sysdate;
    dbms_output.put_line(today);
end;

declare
    num1 number;
    num2 number;
    num3 number := 30;
    num4 number default 40;
    num5 number not null := 50;     --declare 블럭에서 초기화를 해야한다.(구현부X)
begin
    dbms_output.put_line(num1);     --null
    num2 := 20;
    dbms_output.put_line(num2);
    dbms_output.put_line(num3);
    num4 := 400;
    dbms_output.put_line(num4);
    num5 := 50;
    dbms_output.put_line(num5);    
end;

--SELECT결과를 담는 용도(***************)
--SELECT into 절(PL/SEQ)
declare
    vbuseo varchar2(15);
begin
    vbuseo := select buseo from tblinsa where name = '홍길동';
--    select buseo into vbuseo from tblinsa where name = '홍길동';
    dbms_output.put_line(vbuseo);
--    select buseo into tblinsa where name = '홍길동';
--    dbms_output.put_line(vbuseo);    
end;


begin
-- PL/SQL 프로시저 안에서는 순수한 select문은 절대 올 수 없다
-- PL/SQP 프로시저 안에서는 select into 문만 사용할 수 있다
    select buseo from tblinsa where name = '홍길동';
end;

--성과급 받는 직원
create table tblName(
    name varchar2(15)
);

insert into tblname(name) values((select name from tblinsa where buseo = '개발부' and jikwi = '부장'));

declare
    vname varchar2(15);
begin
    --1. 개발부 + 부장 > select > name
    select name into vname from tblinsa where buseo = '개발부' and jikwi = '부장';
    
    --2. tblname > name > insert
    insert into tblname (name) values (vname);
end;

select * from tblname;


--into 사용시
--1. 컬럼의 개수와 변수의 개수 일치
--2. 컬럼의 순서와 변수의 순서 일치
--3. 컬럼과 변수의 자료형 일치
declare
    vname varchar2(15);
    vbuseo varchar2(15);
    vjikwi varchar2(15);
    vbasicpay number;
begin 
    --select name into vname, buseo into vbuseo, jikwi into vjikwi, basicpay into vbasicpay from tblinsa where num = 1001;
    
    select name, buseo, jikwi, basicpay 
    into vname, vbuseo, vjikwi, vbasicpay 
    from tblinsa where num = 1001;
    
    dbms_output.put_line(vname);
    dbms_output.put_line(vbuseo);
    dbms_output.put_line(vjikwi);
    dbms_output.put_line(vbasicpay);
end;


/*
타입 참조
%type
- 사용하는 테이블의 특정 컬럼값의 스키마를 알아내서 변수에 적용
- 복사되는 정보
    - 자료형 
    - 길이
- 컬럼 1개 참조
%rowtype
- 행 전체 참조(여러 개의 컬럼을 한 번에 참조)
- %type의 집합형
- 레코드 전체(여러 개 컬럼)을 하나의 변수에 저장 가능

*/
desc tblinsa;

declare
    --vbuseo varchar2(15);
    vbuseo tblinsa.buseo%type;    
begin
    select buseo into vbuseo from tblinsa where name = '홍길동';
    dbms_output.put_line(vbuseo);
end;



declare
    vname tblinsa.name%type;
    vbuseo tblinsa.buseo%type;
    vjikwi tblinsa.jikwi%type;
    vbasicpay tblinsa.basicpay%type;
begin 
    select name, buseo, jikwi, basicpay 
    into vname, vbuseo, vjikwi, vbasicpay 
    from tblinsa where num = 1001;
    
    dbms_output.put_line(vname);
    dbms_output.put_line(vbuseo);
    dbms_output.put_line(vjikwi);
    dbms_output.put_line(vbasicpay);
end;

--직원 중 일부에게 보너스 지급(급여 * 1.5) > 내역 저장(테이블 생성 포함)
create table tblBonus(
    seq number primary key,
    num number(5) not null references tblinsa(num),        --직원번호(fK)
    bonus number not null
);

declare
    vnum tblinsa.num%type;
    vbasicpay tblinsa.basicpay%type;
begin
    --대상
    select num, basicpay into vnum, vbasicpay 
    from tblinsa 
    where city = '서울' and jikwi = '부장' and buseo = '영업부';
    --급여(1.5배 추가)
    insert into tblBonus(seq, num, bonus)
    values((select nvl(max(seq), 0) + 1 from tblbonus), vnum, vbasicpay*1.5);            --괄호 주의  : 서브쿼리
end;

select * from tblbonus;

select * from tblbonus b
inner join tblinsa i on i.num = b.num;


-------------------------------------------------------------------------------
select * from tblmen;
select * from tblwomen;

--무명씨 : tblmen -> tblwomen
--1. 무명씨 정보 확인
select * from tblmen; --정보 확인
--2. 변수 확인해서 값을 women테이블에 insert
--3. men테이블에서 삭제 : delete

declare
    vname tblmen.name%type;
    vage tblmen.age%type;
    vheight tblmen.height%type;
    vweight tblmen.weight%type;
    vcouple tblmen.couple%type;
begin
    select name, age, height, weight, couple 
    into vname, vage, vheight, vweight, vcouple
    from tblmen
    where name = '무명씨';
    
    insert into tblwomen(name, age, height, weight, couple)
    values(vname, vage, vheight, vweight, vcouple);
    
    delete from tblmen where name = vname;
end;

-----------------------------------------------------------------------
-- 타입참조의 또 다른 형태 : %rowtype
declare
    vrow tblMen%rowtype;        --vrow : tblMen의 레코드 1개(모든 컬럼값)을 저장할 수 있는 변수
begin
    select * into vrow from tblmen where name = '정형돈';
    
    dbms_output.put_line(vrow.name);
    dbms_output.put_line(vrow.age);
    dbms_output.put_line(vrow.height);
    dbms_output.put_line(vrow.weight);
    dbms_output.put_line(vrow.couple);
    
    insert into tblwomen(name, age, height, weight, couple)
    values(vrow.name, vrow.age, vrow.height, vrow.weight, vrow.couple);
    
    delete from tblmen where name = vrow.name;
end;

select * from tblwomen;

-----------------------------------------------------------------------------------------------------------------------------
/*
제어문
1. 조건문
2. 반복문
3. 분기문
*/

declare 
    vnum number := -10;
begin
    if vnum > 0 then 
        dbms_output.put_line('양수');
    else
        dbms_output.put_line('음수');
    end if;
end;

declare 
    vnum number := 10;
begin
    if vnum > 0 then 
        dbms_output.put_line('양수');
    elsif vnum < 0 then
        dbms_output.put_line('음수');
    else
        dbms_output.put_line('0');
    end if;
end;

-----------
--tblinsa. 남자/여자 > 다른 업무
declare
    vgender char(1);
begin
    select substr(ssn, 8, 1) into vgender from tblinsa where num = 1035;
    
    if vgender = '1' then 
        dbms_output.put_line('남자 직원');
    elsif vgendde = '2' then
        dbms_output.put_line('여자 직원');
    end if;
end;


--직원 1명 선택(num) 보너스 지급
--직급별 차등지급
--과장 부장 : basicpay * 1.5
--대리 사원 : basicpay * 2.0

declare
    vnum tblinsa.num%type;
    vjikwi tblinsa.jikwi%type;
    vbasicpay tblinsa.basicpay%type;
    vbonus number;
begin
    --대상 : 1040
    select num, jikwi, basicpay into vnum, vjikwi, vbasicpay 
    from tblinsa where num = 1040;
    
    --jikwi별 보너스 차등지급
    if vjikwi = '부장' or vjikwi = '과장' then
        vbonus := vbasicpay * 1.5; 
    elsif vjikwi in ('대리', '사원') then
        vbonus := vbasicpay * 2.0;
    end if;
    
    insert into tblBonus(seq, num, bonus)
    values((select nvl(max(seq), 0) + 1 from tblbonus), vnum, vbonus);
end;

select * from tblbonus;

select * from tblbonus b
inner join tblinsa i on i.num = b.num;

-------
/*
case문
- ANSI-SQL의 case문과 거의 유사
- 자바의 switch문, 다중 if문
*/

declare
    vcontinent tblcountry.continent%type;
    vresult varchar2(30);
begin
    select continent into vcontinent from tblcountry where name = '영국';
--    if vcontinent = 'AS' then
--        vresult := '아시아';
--    elsif vcontinent = 'EU' then
--        vresult := '유럽';
--    elsif vcontinent = 'AF' then
--        vresult := '아프리카';
--    else
--        vresult := '기타';
--    end if;
--    dbms_output.put_line(vresult);
    
--    case
--        when vcontinent = 'AS' then vresult := '아시아';
--        when vcontinent = 'EU' then vresult := '유럽';
--        when vcontinent = 'AF' then vresult := '아프리카';
--        else vresult := '기타';
--    end case;
--    dbms_output.put_line(vresult);
    
    case vcontinent
        when 'AS' then vresult := '아시아';
        when 'EU' then vresult := '유럽';
        when 'AF' then vresult := '아프리카';
        else vresult := '기타';
    end case;
    dbms_output.put_line(vresult);
end;

----------------------------------------------------------------------

/*
반복문
1. loop() : 단순 반복
2. for loop() : 횟수 반복(자바 > for), loop 기반
3. while loop() : 조건 반복(자바 > while), loop 기반
*/
--무한루프 : buffer overflow, limit of 1000000 bytes
declare
    vnum number := 1;
begin 
    loop
        dbms_output.put_line(vnum);
        vnum := vnum + 1;
        exit when vnum > 10;        --조건부 브레이크
    end loop;
end;

create table tblLoop(
    seq number primary key,
    data varchar2(100) not null
);

create sequence seqLoop;

-- 데이터 X 1000건 추가
-- data > '항목1', '항목2', ... , '항목1000'

declare
    vnum number := 1;
begin
    loop
        insert into tblLoop values (seqLoop.nextVal, '항목' || vnum);
        vnum := vnum + 1;
        exit when vnum > 1000;
    end loop;
end;

select * from tblLoop;

--for loop()
/*
향상된 for문
- foreach문
- for in

for(int n : list){
}

for(int n in list){
}
*/
begin 
    for i in 1..10 loop
        dbms_output.put_line(i);
    end loop;
end; 

--구구단 > 테이블에 저장
create table tblGugudan(
    dan number NOT NULL,
    num number NOT NULL,
    result number NOT NULL,
    constraint tblgugudan_dan_num_pk primary key(dan, num)      --복합키(Composite Key)
);

drop table tblGugudan;

create table tblGugudan(
    dan number NOT NULL,
    num number NOT NULL,
    result number NOT NULL
);

alter table tblGugudan add constraint tblgugudan_dan_num_pk primary key(dan, num);

begin
    for dan in 2..9 loop
        for num in 1..9 loop
            insert into tblgugudan (dan, num, result) values (dan, num, dan*num);
        end loop;
    end loop;
end;

select * from tblgugudan;

--reverse : 루프를 반대로
begin 
    for i in reverse 1..10 loop
        dbms_output.put_line(i);
    end loop;
end; 

--while loop()
--그냥 loop 사용 시
declare
    vnum number := 1;
begin 
    loop
        dbms_output.put_line(vnum);
        vnun := vnum + 1;
        exit when wnum > 10;
    end loop;
end; 

--while loop 사용 시
declare
    vnum number := 1;
begin 
    while vnum <= 10 loop
        dbms_output.put_line(vnum);
        vnum := vnum + 1;
    end loop;
end;

/*
select > 결과셋 > PL/SQL변수 대입
1. select into
    - 결과셋의 레코드가 1개일 때만 사용이 가능하다.
2. curser
    - 결과셋의 레코드가 N개일 때 사용한다.
    - 루프 사용

declare
    변수 선언;
    커서 선언;      --결과셋 참조 객체
begin
    커서 열기;
        loop
            데이터 접근(루프 1회전 > 레코드 1개) <- 커서 사용
        end loop;
    커서 닫기;
end;
*/

declare
    vname tblinsa.name%type;
begin
    --ORA-01422: exact fetch returns more than requested number of rows
    select name into vname from tblinsa;        -- where num = 1001
    dbms_output.put_line(vname);
end;

--뭔가 비슷 > 근데 기능도 비슷
create view vview as select문;       --java
cursor vcursor is select문;          --oracle

declare
    cursor vcursor is select name from tblinsa;
    vname tblinsa.name%type;
begin
    open vcursor;       --커서 열기 > select 실행 > 결과셋을 커서가 참조
--        fetch vcursor into vname;    --select into 역할
--        dbms_output.put_line(vname);
--        fetch vcursor into vname;    --select into 역할
--        dbms_output.put_line(vname);
        
--        for i in 1..60 loop
--            fetch vcursor into vname;    --select into 역할
--            dbms_output.put_line(vname);        
--        end loop;
        
        loop
            fetch vcursor into vname;
            exit when vcursor%notfound;     --bool
            dbms_output.put_line(vname);
        end loop;
    close vcursor;
end;


--기획부 > 이름 직위 급여 > 출력
declare
    cursor vcursor is select name, jikwi, basicpay from tblinsa where buseo = '기획부';
    vname tblinsa.name%type;
    vjikwi tblinsa.jikwi%type;
    vbasicpay tblinsa.basicpay%type;
begin
    open vcursor;
        loop
            fetch vcursor into vname, vjikwi, vbasicpay;        --레코드(행 전부)가져오기
            exit when vcursor%notfound;
            
            --업무 > 기획부 직원 한사람씩 접근..
            dbms_output.put_line(vname || ',' || vjikwi || ',' || vbasicpay);
        end loop;
    close vcursor;
end;

--문제. tblBonus(과부 > * 1.5 / 대 사 > * 2.0)
select * from tblbonus;
select * from tblinsa;

declare
    cursor vcursor is select num, jikwi, basicpay from tblinsa; 
    vnum tblinsa.num%type;
    vjikwi tblinsa.jikwi%type;
    vbasicpay tblinsa.basicpay%type;
    vbonus number;
begin
    open vcursor;
        loop
            fetch vcursor into vnum, vjikwi, vbasicpay;        --레코드(행 전부)가져오기
            exit when vcursor%notfound;
            --jikwi별 보너스 차등지급
            if vjikwi in ('부장', '과장') then
                vbonus := vbasicpay * 1.5; 
            elsif vjikwi in ('대리', '사원') then
                vbonus := vbasicpay * 2.0;
            end if;
            
            insert into tblBonus(seq, num, bonus)
            values((select nvl(max(seq), 0) + 1 from tblbonus), vnum, vbonus);
        end loop;
    close vcursor;
end;

select i.name, i.jikwi, i.basicpay, b.bonus from tblbonus b
inner join tblinsa i on i.num = b.num;

---------------------------------------------------------------------------------------------
--커서 탐색
--1. 커서 + loop > 정석
--2. 커서 + for loop > 간결

declare
    cursor vcursor is select * from tblinsa;
    --vrow 
begin
    for vrow in vcursor loop        --fetch into + vrow 선언 + exit loop
--        fetch into
--        exit when vcursor%notfound
        dbms_output.put_line(vrow.name);
    end loop;
end;


declare
    cursor vcursor is select * from tblinsa;
begin
    for vrow in vcursor loop        --fetch into + vrow 선언 + exit loop
        dbms_output.put_line(vrow.name);
    end loop;
end;

--예외처리 :exception
-- 실행부에서(begin - end) 발생하는 예외를 처리하는 블럭 > exception 블럭
declare
    vname varchar2(5);      --ORA-06502: PL/SQL: numeric or value error: character string buffer too small
begin
    --try
    dbms_output.put_line('하나');
    select name into vname from tblinsa where num = 1001;
    dbms_output.put_line('둘');
    dbms_output.put_line(vname);
exception
    --catch
    when others then dbms_output.put_line('예외처리');
end;

-- 예외발생 > DB저장
create table tblLog(
    seq number primary key,                     --PK
    code varchar2(7) not null check (code in ('A001', 'B001', 'B002', 'C001')),         --에러 상태 코드
    message varchar2(1000) not null,            --에러 메시지
    regdate date default sysdate not null       --에러 발생 시각
);                              
create sequence seqlog;

declare
    vcnt number;
    vname tblinsa.name%type;
begin
    select count(*) into vcnt from tblcountry;-- where name = '태국';
    dbms_output.put_line(100/vcnt);

    select name into vname from tblinsa where num = 1000;
    dbms_output.put_line(vname);
    
exception
    when zero_divide then dbms_output.put_line('0으로나누기');
    insert into tblLog values(seqlog.nextVal, 'B001','가져온 레코드가 없습니다.', default);
    when no_data_found then dbms_output.put_line('데이터 없음');
    insert into tblLog values(seqlog.nextVal, 'A001','직원이 존재하지 않습니다.', default);
    when others then dbms_output.put_line('나머지 예외');
    insert into tblLog values(seqlog.nextVal, 'C001','기타 예외가 발생했습니다.', default);
end;

select * from tblLog;

--익명 프로시저

------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------


/*

  	명령어 실행 > 처리 과정
  	
	1. ANSI-SQL
	2. 익명 프로시저
		a. 클라이언트 > 구문 작성(select)
		b. 실행(Ctrl + Enter)
		c. 명령어를 오라클 서버에 전달
		d. 서버가 명령어를 수신
		e. 구문 분석(파싱) + 문법 검사
		f. 컴파일
		g. 실행(select)
		h. 결과셋 도출
		i. 결과셋을 클라이언트에게 반환
		j. 결과셋을 화면에 출력
		
	2. 다시 실행
		a ~ j 다시 반복
		- 한번 실행했던 명령어를 다시 실행 > 위의 모든 과정을 처음부터 끝까지 다시 실행한다.
		- 첫번째 실행 비용 = 다시 실행 비용
		
	
	3. 실명 프로시저
		a. 클라이언트 > 구문 작성(create)
		b. 실행(Ctrl + Enter)
		c. 명령어를 오라클 서버에 전달
		d. 서버가 명령어를 수신
		e. 구문 분석(파싱) + 문법 검사
		f. 컴파일
		g. 실행
		h. 오라클 서버 > 프로시저 생성 > 저장(****)
		i. 완료
		
		a. 클라이언트 > 구문 작성(호출)
		b. 실행(Ctrl + Enter)
		c. 명령어를 오라클 서버에 전달
		d. 서버가 명령어를 수신
		e. 구문 분석(파싱) + 문법 검사
		f. 컴파일
		g. 실행 > 프로시저 실행
		
	4. 다시 실행
		a. 클라이언트 > 구문 작성(호출)
		b. 실행(Ctrl + Enter)
		c. 명령어를 오라클 서버에 전달
		d. 서버가 명령어를 수신
		e. 구문 분석(파싱) + 문법 검사
		f. 컴파일
		g. 실행 > 프로시저 실행
  
*/

SELECT * FROM tblInsa;


/*

	프로시저
	1. 익명 프로시저
		- 1회용
	
	2. 실명 프로시저
		- 재사용
		- 오라클에 저장
	
	
	실명 프로시저
	- 저장 프로시저(Stored Procedure)
	1. 저장 프로시저, Stored Procedure
		- 매개변수 / 반환값 구성 > 자유
	2. 저장 함수, Stored Function
		- 매개변수 / 반환값 구성 > 필수
	

	익명 프로시저 선언
	
	[declare
		변수 선언;
		커서 선언;]
	begin
		구현부;
	[exception
		예외처리;]
	end;
	
	
	
	저장 프로시저 선언
	
	create [or replace] procedure 프로시저명
	is(as)
	   [변수 선언;
		커서 선언;]
	begin
		구현부;
	[exception
		예외처리;]
	end;


*/

-- 즉시 실행
DECLARE
	vnum NUMBER;
BEGIN
	vnum := 100;
	dbms_output.put_line(vnum);
END;


-- 저장 프로시저
CREATE OR REPLACE PROCEDURE procTest
IS 
	vnum NUMBER;
BEGIN
	vnum := 100;
	dbms_output.put_line(vnum);
END;

-- 저장 프로시저를 호출하는 방법
BEGIN
	procTest; --프로시저 호출
END;



-- 저장 프로시저 = 메서드
-- 매개변수 + 반환값

-- 1. 매개변수가 있는 프로시저
CREATE OR REPLACE procedure procTest(pnum number) --매개변수
is
    vresult number; --일반변수
begin
    
    vresult := pnum * 2;
    dbms_output.put_line(vresult);
    
end procTest;

set serveroutput on;

begin
    -- PL/SQL 영역
    procTest(100);
    procTest(200);
    procTest(300);
end;


-- 무슨 영역?
-- ANSI-SQL 영역
select * from tblInsa;

execute procTest(400);
exec procTest(500);
call procTest(600);





create or replace procedure procTest(
    width number, 
    height number
)
is
    vresult number;
    vnum number;
begin
    vresult := width * height;
    dbms_output.put_line(vresult);
end procTest;

begin
    procTest(10, 20);
end;



-- *** 프로시저 매개변수는 길이와 not null 표현은 불가능하다.
create or replace procedure procTest (
    name varchar2
)
is --변수 선언이 없어도 반드시 기재
begin
    
    dbms_output.put_line('안녕하세요. ' || name || '님');
    
end procTest;

begin
    procTest('홍길동');
end;






create or replace procedure procTest(
    width number , 
    height number default 10
)
is
    vresult number;
begin
    vresult := width * height;
    dbms_output.put_line(vresult);
end procTest;

begin
    --procTest(10, 20); -- width(10), height(10) 
    procTest(10);     -- width(10), height(10-default)
end;











/*
    
    매개변수 모드
    - 매개변수가 값을 전달하는 방식
    - Call by Value > 매개변수 > 값을 넘기는 방식(값형 인자)
    - Call by Reference > 매개변수 > 참조값(주소)을 넘기는 방식(참조형 인자)
    
    1. in 모드 > 기본
    2. out 모드
    3. in out 모드(X)

*/

create or replace procedure procTest (
    pnum1 in number,    -- in parameter //인자값
    pnum2 in number,
    presult out number,  -- out parameter //반환값 역할
    presult2 out number, -- 반환값
    presult3 out number  -- 반환값
)
is
begin
    presult := pnum1 + pnum2;
    presult2 := pnum1 - pnum2;
    presult3 := pnum1 * pnum2;
end procTest;


declare
    vnum number;
    vnum2 number;
    vnum3 number;
begin
    procTest(10, 20, vnum, vnum2, vnum3);
    dbms_output.put_line(vnum);
    dbms_output.put_line(vnum2);
    dbms_output.put_line(vnum3);
end;



-- 문제
-- 1. 부서 전달(인자) > 해당 부서의 직원 중 급여를 가장 많이 사람의 번호 반환(out) > 출력
--    in 1개 + out 1개

-- 2. 직원 번호 전달(인자) > 같은 지역에 사는 직원수?, 같은 직위가 직원수? 해당 직원보다 급여를
--    더 많이 받는 직원수? 반환
--    in 1개 + out 3개

create or replace procedure procTest1 (
    pbuseo in varchar2,
    pnum out number
)
is
begin

    select num into pnum from tblInsa
        where basicpay = (select max(basicpay) from tblInsa where buseo = pbuseo)
                and buseo = pbuseo;

end procTest1;


declare
    vnum number; --out 에게 넘길 변수
begin
    procTest1('영업부', vnum);
    dbms_output.put_line(vnum);
end;




create or replace procedure procTest2 (
    pnum in number, --직원 번호
    pcnt1 out number,
    pcnt2 out number,
    pcnt3 out number
)   
is
begin

    select count(*) into pcnt1 from tblInsa 
        where city = (select city from tblInsa where num = pnum);
        
    select count(*) into pcnt2 from tblInsa 
        where jikwi = (select jikwi from tblInsa where num = pnum);

    select count(*) into pcnt3 from tblInsa 
        where basicpay > (select basicpay from tblInsa where num = pnum);        

end procTest2;


declare
    vcnt1 number;
    vcnt2 number;
    vcnt3 number;
begin
    procTest2(1023, vcnt1, vcnt2, vcnt3);
    dbms_output.put_line(vcnt1);
    dbms_output.put_line(vcnt2);
    dbms_output.put_line(vcnt3);
end;

select * from tblInsa where num = 1023;



declare
    vnum number;
    vcnt1 number;
    vcnt2 number;
    vcnt3 number;
begin
    
    procTest1('개발부', vnum);

    procTest2(vnum, vcnt1, vcnt2, vcnt3);
    
    dbms_output.put_line(vcnt1);
    dbms_output.put_line(vcnt2);
    dbms_output.put_line(vcnt3);
end;







select * from tblStaff;
select * from tblProject;

delete from tblStaff;
delete from tblProject;

INSERT INTO tblStaff (seq, name, salary, address) VALUES (1, '홍길동', 300, '서울시');
INSERT INTO tblStaff (seq, name, salary, address) VALUES (2, '아무개', 250, '인천시');
INSERT INTO tblStaff (seq, name, salary, address) VALUES (3, '하하하', 250, '부산시');

INSERT INTO tblProject (seq, project, staff_seq) VALUES (1, '홍콩 수출', 1); --홍길동
INSERT INTO tblProject (seq, project, staff_seq) VALUES (2, 'TV 광고', 2); --아무개
INSERT INTO tblProject (seq, project, staff_seq) VALUES (3, '매출 분석', 3); --하하하
INSERT INTO tblProject (seq, project, staff_seq) VALUES (4, '노조 협상', 1); --홍길동
INSERT INTO tblProject (seq, project, staff_seq) VALUES (5, '대리점 분양', 2); --아무개

commit;



-- 직원 퇴사 프로시저, procDeleteStaff
-- 1. 퇴사 직원 > 담당 프로젝트 유무 확인?
-- 2. 담당 프로젝트 존재 > 위임
-- 3. 퇴사 직원 삭제

create or replace procedure procDeleteStaff (
    pseq number,            --퇴사할 직원번호
    pstaff number,          --위임받을 직원번호
    presult out number      --성공(1) or 실패(0) > 피드백
)
is
    vcnt number; --퇴사 직원의 담당 프로젝트 개수
begin
    
    --1. 퇴사 직원의 담당 프로젝트가 있는지?
    select count(*) into vcnt from tblProject where staff_seq = pseq;
    
    --2. 조건 > 위임 유무 결정
    if vcnt > 0 then
        --3. 위임
        update tblProject set staff_seq = pstaff where staff_seq = pseq;
    else
        --3. 아무것도 안함
        null; -- 이 조건의 else절에서는 아무것도 하지 마시오!! > 개발자의 의도 표현
    end if;
    
    --4. 퇴사
    delete from tblStaff where seq = pseq;
    
    --5. 피드백 > 성공
    presult := 1;

exception
    when others then
        presult := 0;
    
end procDeleteStaff;



declare
    vresult number;
begin
    
    procDeleteStaff(1, 2, vresult);
    
    if vresult = 1 then
        dbms_output.put_line('퇴사 성공');
    else
        dbms_output.put_line('퇴사 실패');
    end if;
    
end;


select * from tblStaff;
select * from tblProject;

insert into tblStaff values (4, '호호호', 200, '서울시');


-- 위임받을 직원 > 현재 프로젝트를 가장 적게 담당 직원에게 자동으로 위임
-- 동률 > rownum = 1
create or replace procedure procDeleteStaff (
    pseq number,            --퇴사할 직원번호
    presult out number      --성공(1) or 실패(0) > 피드백
)
is
    vcnt number; --퇴사 직원의 담당 프로젝트 개수
    vstaff_seq number; --담당 프로젝트가 가장 적은 직원 번호
begin
    
    --1. 퇴사 직원의 담당 프로젝트가 있는지?
    select count(*) into vcnt from tblProject where staff_seq = pseq;
    
    --2. 조건 > 위임 유무 결정
    if vcnt > 0 then
    
        --2.5 적게 맡고 있는 직원 번호?
        select seq into vstaff_seq from (
            select 
                s.seq
            from tblStaff s
                left outer join tblProject p
                    on s.seq = p.staff_seq
                        group by s.seq
                            having count(p.staff_seq) = (select                                                             
                                                                min(count(p.staff_seq))
                                                            from tblStaff s
                                                                left outer join tblProject p
                                                                    on s.seq = p.staff_seq
                                                                        group by s.seq))
                                                                         where rownum = 1;
    
        --3. 위임
        update tblProject set staff_seq = vstaff_seq where staff_seq = pseq;
    else
        --3. 아무것도 안함
        null; -- 이 조건의 else절에서는 아무것도 하지 마시오!! > 개발자의 의도 표현
    end if;
    
    --4. 퇴사
    delete from tblStaff where seq = pseq;
    
    --5. 피드백 > 성공
    presult := 1;

exception
    when others then
        presult := 0;
    
end procDeleteStaff;


-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------



--실명 프로시저

create table tblstaff(
    seq number primary key,
    name 
);


select * from tblstaff;
select * from tblproject;

delete from tblstaff;
delete from tblproject;

INSERT INTO tblStaff (seq, name, salary, address) VALUES (1, '홍길동', 300, '서울시');
INSERT INTO tblStaff (seq, name, salary, address) VALUES (2, '아무개', 250, '인천시');
INSERT INTO tblStaff (seq, name, salary, address) VALUES (3, '하하하', 250, '부산시');

INSERT INTO tblProject (seq, project, staff_seq) VALUES (1, '홍콩 수출', 1); --홍길동
INSERT INTO tblProject (seq, project, staff_seq) VALUES (2, 'TV 광고', 2); --아무개
INSERT INTO tblProject (seq, project, staff_seq) VALUES (3, '매출 분석', 3); --하하하
INSERT INTO tblProject (seq, project, staff_seq) VALUES (4, '노조 협상', 1); --홍길동
INSERT INTO tblProject (seq, project, staff_seq) VALUES (5, '대리점 분양', 2); --아무개

commit;



-- 직원 퇴사 프로시저, procDeleteStaff
-- 1. 퇴사 직원이 담당하고 있는 프로젝트 유무 확인
-- 2. 담당 프로젝트 존재하면 위임
-- 3. 퇴사 직원 삭제

create or replace procedure procDeleteStaff (
    pseq number,        -- 퇴사할 직원번호
    pstaff number,      -- 위임받을 직원번호
    presult out number  -- 성공(1) or 실패(0) 반환   
)
is
    vcnt number;    --퇴사 직원의 담당 프로젝트 개수

begin
    select count(*) into vcnt from tblProject where staff_seq = pseq;
    --2. 조건 > 위임 유무결정
    if vcnt > 0 then
        --3. 위임
        update tblProject set staff_seq = pstaff where staff_seq = pseq;
    else 
        --3. 아무것도 안함
        null;           --이 조건의 else절에서는 아무것도 하지 마시오!! 개발자의 의도를 표현한 문장
    end if;
    
    --4. 퇴사
    delete from tblstaff where seq = pseq;
    
    --5. 피드백 성공
    presult := 1;
exception
    when others then presult :=0;
    
end procDeleteStaff;


declare
    vresult number;
begin
    procDeleteStaff(1, 2, vresult);
    if vresult = 1 then dbms_output.put_line('퇴사 성공');
    else dbms_output.put_line('퇴사 실패');
    end if;
end;


--위임받을 직원 > 현재 프로젝트를 가장 적게 담당한 직원에게 자동으로 위임
--동률 : rownum := 1 

insert into tblStaff (seq, name, salary, address) VALUES (4, '호호호', 200, '서울시');

create or replace procedure procDeleteStaff (
    pseq number,        -- 퇴사할 직원번호
    presult out number  -- 성공(1) or 실패(0) 반환   
)
is
    vcnt number;    --퇴사 직원의 담당 프로젝트 개수

begin
    select count(*) into vcnt from tblProject where staff_seq = pseq;
    --2. 조건 > 위임 유무결정
    if vcnt > 0 then
        --2.5 위임 맡게 될 직원 번호 추출
        select seq from(
            select staff_seq, count(p.staff_seq)
            from tblStaff s
            left outer join tblProject p
            on s.seq = p.staff_seq
            group by s.seq
            having count(p.staff_seq) 
                := (select min(count(p.staff_seq)) 
                    from tblStaff s
                    left outer join tblProject p
                    on s.seq = p.staff_seq
                    group by s.seq))
        where rownum = 1;
        
        
               
        --3. 위임
        update tblProject set staff_seq = pstaff where staff_seq = pseq;
    else 
        --3. 아무것도 안함
        null;           --이 조건의 else절에서는 아무것도 하지 마시오!! 개발자의 의도를 표현한 문장
    end if;
    
    --4. 퇴사
    delete from tblstaff where seq = pseq;
    
    --5. 피드백 성공
    presult := 1;
exception
    when others then presult :=0;
    
end procDeleteStaff;
