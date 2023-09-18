--PLSQL

--서버 ON
set serveroutput on;

--[C2_1]
create or replace procedure procTeacherSchedule(sq in number)
as
begin
    for rec in(
		SELECT
			s.subject_seq AS "과목번호", 
			cn.courseName AS "과정명", 
			c.courseStartDate AS "과정 시작일", 
			c.courseEndDate AS "과정 종료일", 
			s.subject AS "과목명", 
			cs.courseSubjectStartDate AS "과목 시작일", 
			cs.couseSubjectEndDate AS "과목 종료일",         --courseEndDate(X), couseEndDate(O) 
			cr.room_seq AS "강의실", 
			t.textBook AS "교재명"
		from tblCourse c
		    INNER JOIN tblCourseRoom cr ON c.room_seq = cr.room_seq
		    INNER JOIN tblCourseStatus ccs ON c.courseStatus_seq = ccs.courseStatus_seq
		    INNER JOIN tblcourseName cn ON c.courseName_seq = cn.courseName_seq
		    INNER JOIN tblCourseSubject cs ON c.course_seq = cs.course_seq
		    INNER JOIN tblTextbook t ON cs.textBook_seq = t.textBook_seq
		    INNER JOIN tblSubjectAvailability sa ON cs.subjectAvailability_seq = sa.subjectAvailability_seq
		    INNER JOIN tblSubject s ON sa.subject_seq = s.subject_seq
		    WHERE s.subject_seq = sq
		    ORDER BY s.subject_seq DESC
	)
    loop
        dbms_output.put_line('과정명 : ' ||rec.과정명);
        dbms_output.put_line('과정 시작일 : ' || rec."과정 시작일");
        dbms_output.put_line('과정 종료일 : ' || rec."과정 종료일");
        dbms_output.put_line('과목명 : ' || rec."과목명");
        dbms_output.put_line('과목 시작일 : ' || rec."과목 시작일");
        dbms_output.put_line('과목 종료일 : ' || rec."과목 종료일");       
        dbms_output.put_line('강의실 : ' || rec."강의실");
        dbms_output.put_line('교재명 : ' || rec."교재명");
    end loop;                            
end procTeacherSchedule;

begin
    procTeacherSchedule(1);
end;

--[C2_2]