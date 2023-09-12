--ex29_PLSQL_3.sql

/*
함수 return
1. 단일값O
2. 다중값X > cursor
프로시저 out parameter
1. 단일값(단일 레코드)
	a. numaber
	b. varchar2
	c. date
2. 다중값(다중 레코드)
	a. cursor
*/
CREATE OR REPLACE PROCEDURE procBuseo(
	pbuseo varchar2
)
IS 
	CURSOR vcursor
	IS 
	SELECT * FROM tblinsa WHERE buseo = pbuseo;

	vrow tblinsa%rowtype;
BEGIN	
	OPEN vcursor;
		loop
			FETCH vcursor INTO vrow;		--SELECT INTO
			EXIT WHEN vcursor%notfound;
		
			--업무
			dbms_output.put_line(vrow.name || ',' || vrow.buseo);
		end loop
	CLOSE vcursor;
END procBuseo;

SET serveroutput ON;

BEGIN
	procBuseo('영업부');
END

CREATE OR REPLACE PROCEDURE procBuseo(
	pbuseo in varchar2, pcursor out sys_refcursor   --커서의 자료형
)
IS
    --cursor vcursor is select..
BEGIN	
	OPEN pcursor
    for 
    select * from tblinsa where buseo = pbuseo;
END procBuseo;


declare
    vcursor sys_refcursor;      --커서 참조 변수
    vrow tblinsa%rowtype;
begin
    procbuseo('영업부', vcursor);
    loop
        fetch cursor into vrow;
        exit when vcursor%notfound;
        
        --업무
        dbms_output.put_line(vrow.name);        
    end loop;
end;

----------------------------------------------------------------------------------------
--프로시저 총 정리 >CRUD
--1. 추가작업(C)
create or replace procedure 추가작업(
    추가할 데이터 -> in 매개변수,
    추가할 데이터 -> in 매개변수,
    추가할 데이터 -> in 매개변수,     --원하는만큼
    성공 유무 반환 -> out 매개변수    --피드백(0, 1)
)
is
    내부 변수 선언
begin
     작업(insert + (select + update + delete))
exception
    when others then 예외처리
end;

select * from tbltodo;

--할 일 추가하기(C)
create or replace procedure procAddTodo(
    ptitle varchar2, presult out number
)
is
begin
    insert into tblTodo(seq, title, addDate, completedate) VALUES (seqTodo.nextVal, ptitle, sysdate, null);
    presult := 1;                       --성공
exception
    when others then presult := 0;      --실패
end procAddTodo;

create sequence seqTodo start with 25;

declare
    vresult number;
begin
    procAddTodo('새로운 할 일 입니다', vresult);
    dbms_output.put_line(vresult);
end;

select * from tblTodo;

--2. 수정작업(U)
create or replace procedure 수정작업(
    수정할 데이터 -> in 매개변수,
    수정할 데이터 -> in 매개변수,
    수정할 데이터 -> in 매개변수,     --원하는 개수
    식별자 -> in 매개변수,            --where절에 사용할 PK or 데이터
    성공 유무 반환 -> out 매개변수    --피드백(0, 1)
)
is
    내부 변수 선언
begin
    작업(update + (insert, update, delete, select))
exception 
    when others then 예외처리
end;

--할 일 수정하기(U) > completdate > 채우기 > 할 일 완료 처리하기
create or replace procedure procCompleteTodo(
    --pcompletedate date > 수정할 날짜 > 지금 > sysdate처리
    pseq in number,            --수정할 할 일 번호
    presult out number
)
is
begin
    update tblTodo set
    completedate = sysdate where seq = pseq;
    presult := 1;
exception
    when others then presult := 0;
end;

declare
    vresult number;
begin
    procCompleteTodo(25, vresult);
    dbms_output.put_line(vresult);
end;

select * from tbltodo;

--3. 삭제작업(D)
create or replace procedure 삭제작업(
    식별자 -> in 매개변수,
    성공유무 반환 -> out 매개변수
)
is
    내부 변수 선언
begin
    작업(delete + (insert, update, delete, select))
exception 
    when others then 예외처리
end;

--할 일 삭제하기
create or replace procedure procDeleteTodo(
    pseq in number,
    presult out number
)
is
begin
    delete from tbltodo where seq = pseq;
    presult := 1;
exception
    when others then
    presult := 0;
end;

declare
    vresult number;
begin
    procDeleteTodo(25, vresult);
    dbms_output.put_line(vresult);
end;

select * from tblTodo;

--4. 읽기 작업(R)
--조건 유/무, 반환 단일행/다중행, 단일컬럼/다중컬럼 등...

--한 일 개수
create or replace procedure 읽기작업(
    조건 데이터 -> in 매개변수
    단일 반환값 -> out 매개변수,
    다중 반환값 -> out 매개변수(커서)
)
is
    내부 변수 선언
begin
    작업(select + (insert, update, delete, select))
exception 
    when others then 예외처리
end;

--한 일 몇 개? 개수들 구하기
create or replace procedure procCountTodo(
    pcount1 out number,     --한 일
    pcount2 out number,     --안한 일
    pcount3 out number      --모든 일
)
is
begin
    select count(*) into pcount1 from tbltodo where completedate is not null;
    select count(*) into pcount2 from tbltodo where completedate is null;
    select count(*) into pcount3 from tbltodo;
exception
    when others then dbms_output.put_line('예외처리');
end procCountTodo;

declare
    vcount1 number;
    vcount2 number;
    vcount3 number;
begin
    procCountTodo(vcount1, vcount2, vcount3);
    dbms_output.put_line(vcount1);
    dbms_output.put_line(vcount2);
    dbms_output.put_line(vcount3);
end;

create or replace procedure procCountTodo(
    psel in number,         --선택(1:한 일, 2:안한 일  3:모든 일)
    pcount out number       -- 
)
is
begin
    if psel =1 then select count(*) into pcount from tbltodo where completedate is not null;
    elsif psel = 2 then select count(*) into pcount from tbltodo where completedate is null;
    elsif psel = 3 then select count(*) into pcount from tbltodo;
    end if;
exception
    when others then dbms_output.put_line('예외처리');
end procCountTodo;

declare
    vcount number;
begin
    procCountTodo(1, vcount);
    dbms_output.put_line(vcount);
end;

--번호 > 할 일 1개 반환
create or replace procedure procGetTodo(
    pseq in number,
    prow out tblTodo%rowType
)
is
begin
    select * into prow from tblTodo where seq = pseq;
exception
    when others then dbms_output.put_line('예외처리');
end;

declare
    vrow tblTodo%rowtype;
begin
    procGetTodo(1, vrow);
    dbms_output.put_line(vrow.title);
end;

--다중 레코드 반환
--1. 한 일 목록 반환
--2. 안한 일 목록 반환
--3. 모든 일 목록 반환
create or replace procedure procListTodo(
    psel in number, pcursor out sys_refcursor
)
is
begin
    if psel = 1 then
        open pcursor
        for 
        select * from tblTodo where completedate is not null;
    elsif psel = 2 then
        open pcursor
        for 
        select * from tblTodo where completedate is null;
    elsif pset = 3 then
        open pcursor
        for 
        seleft * from tbltodo;
    end if;
exception
    when others then dbms_output.put_line('예외처리');
end procListTodo;

declare
    vcursor sys_refcursor;
    vrow tblTodo%rowtype;
begin
    procListTodo(3, vcursor);
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        
        dbms_output.put_line(vrow.title || ', ' || vrow.completedate);
    end loop;
end;