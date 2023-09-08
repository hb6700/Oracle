
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

create or replace procedure procTest(width number, height number default 10)
is
    vresult number;
begin
    vresult := width * height;
    dbms_output.put_line(vresult);
end procTest;

begin
--    procTest(10, 20); -- width(10), height(10) 
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

create or replace procedure procTest1 (pbuseo in varchar2, pnum out number)
is
begin
    select num into pnum from tblInsa
    where basicpay = (select max(basicpay) from tblInsa where buseo = pbuseo) AND buseo = pbuseo;
end procTest1;

DECLARE
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
    select count(*) into pcnt1 from tblInsa where city = (select city from tblInsa where num = pnum);      
    select count(*) into pcnt2 from tblInsa where jikwi = (select jikwi from tblInsa where num = pnum);
    select count(*) into pcnt3 from tblInsa where basicpay > (select basicpay from tblInsa where num = pnum);
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
            select s.seq
            from tblStaff s
            left outer join tblProject p
            on s.seq = p.staff_seq
            group by s.seq
            having count(p.staff_seq) = (
            	 select min(count(p.staff_seq))
                 from tblStaff s
                 left outer join tblProject p
                 on s.seq = p.staff_seq
                 group by s.seq
        	)
        )
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
