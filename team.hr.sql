--------------------------------------------------------------------------------------------------------
--C02.1
SELECT 
   cn.courseName AS "과정명", 
   c.courseStartDate AS "과정 시작일", 
   c.courseEndDate AS "과정 종료일", 
   s.subject AS "과목명", 
   cs.courseSubjectStartDate AS "과목 시작일", 
   cs.couseSubjectEndDate AS "과목 종료일",         --courseEndDate(X), couseEndDate(O) 
   cr.room_seq AS "강의실", 
   t.textBook AS "교재명"
FROM tblCourse c
INNER JOIN tblCourseRoom cr ON c.room_seq = cr.room_seq
INNER JOIN tblCourseStatus ccs ON c.courseStatus_seq = ccs.courseStatus_seq
INNER JOIN tblcourseName cn ON c.courseName_seq = cn.courseName_seq
INNER JOIN tblCourseSubject cs ON c.course_seq = cs.course_seq
   INNER JOIN tblTextbook t ON cs.textBook_seq = t.textBook_seq
   INNER JOIN tblSubjectAvailability sa ON cs.subjectAvailability_seq = sa.subjectAvailability_seq
      INNER JOIN tblSubject s ON sa.subject_seq = s.subject_seq
ORDER BY 1 DESC;
--------------------------------------------------------------------------------------------------------
--C02.2
SELECT 
	s.studentName  AS "학생명", 
	s.studentTel AS "전화번호", 
	c.courseStartDate AS "등록일", 
	cs.completeState AS "수료여부",
    1 || '회' AS "수강신청 횟수"           --..이거 맞아 진짜?
FROM tblCourseReg cr
INNER JOIN tblStudent s ON cr.student_seq = s.student_seq
INNER JOIN tblCompleteState cs ON cs.completeState_seq = cr.completeState_seq
INNER JOIN tblCourse c ON c.course_seq = cr.course_seq
ORDER BY s.studentName ASC;
--------------------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------------------
--C03.1
SELECT 
	s.subject_seq AS 과목번호, 
	cn.courseName AS 과정명, 
	c.courseStartDate AS "과정 시작일", 
	c.courseEndDate AS "과정 종료일", 
	s.subject AS 과목명, 
	cs.courseSubjectStartDate AS "과목 시작일", 
	cs.couseSubjectEndDate AS "과목 종료일",			--courseEndDate(X), couseEndDate(O) 
	cr.room_seq || '강의실' AS "강의실", 
	t.textBook AS "교재명",
	p.attendPoint AS "출결배점", 
	p.wPoint AS "필기배점", 
	p.pPoint AS "실기배점"
FROM tblCourse c
INNER JOIN tblCourseRoom cr ON c.room_seq = cr.room_seq
INNER JOIN tblCourseStatus ccs ON c.courseStatus_seq = ccs.courseStatus_seq
INNER JOIN tblcourseName cn ON c.courseName_seq = cn.courseName_seq
INNER JOIN tblCourseSubject cs ON c.course_seq = cs.course_seq
	INNER JOIN tblTextbook t ON cs.textBook_seq = t.textBook_seq
	INNER JOIN tblSubjectAvailability sa ON cs.subjectAvailability_seq = sa.subjectAvailability_seq
		INNER JOIN tblSubject s ON sa.subject_seq = s.subject_seq
	INNER JOIN tblPoint p ON cs.courseSubject_seq = p.courseSubject_seq
ORDER BY 3 ASC;
--------------------------------------------------------------------------------------------------------
--C03.2

--------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------
--C04.1
SELECT 
	s.subject_seq AS 과목번호, 
	cn.courseName AS 과정명, 
	c.courseStartDate AS "과정 시작일", 
	c.courseEndDate AS "과정 종료일", 
	s.subject AS 과목명, 
	cs.courseSubjectStartDate AS "과목 시작일", 
	cs.couseSubjectEndDate AS "과목 종료일",			--courseEndDate(X), couseEndDate(O) 
	cr.room_seq || '강의실' AS "강의실", 
	t.textBook AS "교재명",
	p.attendPoint AS "출결배점", 
	p.wPoint AS "필기배점", 
	p.pPoint AS "실기배점",
	CASE
		WHEN attendScore is not NULL AND wScore is not NULL AND pScore is not NULL THEN 'Y'
		ELSE 'N'
	END AS "성적 등록 여부"
FROM tblCourse c
INNER JOIN tblCourseRoom cr ON c.room_seq = cr.room_seq
INNER JOIN tblCourseStatus ccs ON c.courseStatus_seq = ccs.courseStatus_seq
INNER JOIN tblcourseName cn ON c.courseName_seq = cn.courseName_seq
INNER JOIN tblCourseSubject cs ON c.course_seq = cs.course_seq
	INNER JOIN tblTextbook t ON cs.textBook_seq = t.textBook_seq
	INNER JOIN tblSubjectAvailability sa ON cs.subjectAvailability_seq = sa.subjectAvailability_seq
		INNER JOIN tblSubject s ON sa.subject_seq = s.subject_seq
	INNER JOIN tblPoint p ON p.courseSubject_seq = cs.courseSubject_seq
		INNER JOIN tblAllScore a ON a.pointNum = p.pointNum
ORDER BY 1 ASC;

--C04.2
SELECT
	s.studentName AS "교육생 이름",
	s.studentTel AS "전화번호",
	cs.completeState AS "수료여부",
	a.attendScore AS "출석점수",
	a.wScore AS "필기성적",
	a.pScore AS "실기성적"
FROM tblStudent s
INNER JOIN tblAllScore a ON s.student_seq = a.student_seq
INNER JOIN tblCourseReg cr ON s.student_seq = cr.student_seq
	INNER JOIN tblCompleteState cs ON cs.completeState_seq = cr.completeState_seq
ORDER BY 1 ASC;

--C04.3


--------------------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------------------
--C05.1
SELECT 
	t.teacherName AS "이름", 
	t.teacherTel AS "전화번호",
	cn.courseName AS "과정명",
	s.subject AS "과목명",
	cs.courseSubjectStartDate AS "과목 시작일",
	cs.couseSubjectEndDate AS "과목 종료일"
FROM tblcourseSubject cs
INNER JOIN tblcourse c ON c.course_seq = cs.course_seq
	INNER JOIN tblCourseName cn ON cn.courseName_seq = c.courseName_seq
INNER JOIN tblSubjectAvailability sa ON sa.subjectAvailability_seq = cs.subjectAvailability_seq
	INNER JOIN tblSubject s ON s.subject_seq = sa.subject_seq
	INNER JOIN tblTeacher t ON t.teacher_seq = sa.teacher_seq
WHERE t.teacher_seq = 1
ORDER BY cs.courseSubjectStartDate asc;

--C05.2
SELECT
	s.student_seq AS "학생번호",
	s.studentName AS "학생 이름",
	a.attendDate AS "출결 날짜",
	a.attendStartTime AS "등원시간",
	a.attendEndTime AS "하원시간",
	tas.attendState AS "출결상태"	
FROM tblAttend a 
INNER JOIN tblAttendState tas ON tas.attendState_seq = a.attendState_seq
INNER JOIN tblStudent s ON s.student_seq = a.student_seq
where a.attendStartTime is null
ORDER BY s.studentName ASC;

--C05.3
SELECT
	s.student_seq AS "학생번호",
	s.studentName AS "학생 이름",
	a.attendDate AS "출결 날짜",
	a.attendStartTime AS "등원시간",
	a.attendEndTime AS "하원시간",
	tas.attendState AS "출결상태"	
FROM tblAttend a 
INNER JOIN tblAttendState tas ON tas.attendState_seq = a.attendState_seq
INNER JOIN tblStudent s ON s.student_seq = a.student_seq
WHERE a.attendDate  > to_date('23/08/15', 'RRRR/MM/DD')  -- = to_date('23/08/14', 'RRRR/MM/DD')
ORDER BY s.studentName, a.attendDate ASC;

--C05.4
SELECT
	s.studentName AS "학생 이름",
	a.attendDate AS "출결 날짜",
	a.attendStartTime AS "등원시간",
	a.attendEndTime AS "하원시간",
	tas.attendState AS "출결상태"	
FROM tblAttend a 
INNER JOIN tblAttendState tas ON tas.attendState_seq = a.attendState_seq
INNER JOIN tblStudent s ON s.student_seq = a.student_seq
WHERE s.student_seq = 337
ORDER BY a.attendDate ASC;

--C05.5
SELECT
	s.student_seq AS "학생번호",
	s.studentName AS "학생 이름",
	a.attendDate AS "출결 날짜",
	a.attendStartTime AS "등원시간",
	a.attendEndTime AS "하원시간",
	tas.attendState AS "출결상태"	
FROM tblAttend a 
INNER JOIN tblAttendState tas ON tas.attendState_seq = a.attendState_seq
INNER JOIN tblStudent s ON s.student_seq = a.student_seq
WHERE s.student_seq = 498 AND a.attendDate  > to_date('23/08/15', 'RRRR/MM/DD')
ORDER BY s.studentName, a.attendDate ASC;
--------------------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------------------
--C06.1
SELECT courseStatus FROM tblCourseStatus;

SELECT 
	DISTINCT cn.courseName AS "과정명",
	c.courseStartDate AS "과정 시작일",
	c.courseEndDate AS "과정 종료일",
	cr.completeDate AS "수료일",
	cs.courseStatus AS "과정 진행상태"
FROM tblCourse c
INNER JOIN tblCourseReg cr ON c.course_seq = cr.course_seq
INNER JOIN tblCourseName cn ON cn.courseName_seq = c.courseName_seq
INNER JOIN tblCourseStatus cs ON cs.courseStatus_seq = c.courseStatus_seq
WHERE cs.courseStatus = '강의 종료';

--C06.2
SELECT courseName FROM tblcourseName;

SELECT
	s.studentName AS "학생명",
	cn.courseName AS "과정명",
	cr.completedate AS "수료일",
	cs.completeState AS "수료여부"
FROM tblcourseReg cr
INNER JOIN tblStudent s ON s.student_seq = cr.student_seq
INNER JOIN tblCompleteState cs ON cs.completeState_seq = cr.completeState_seq
INNER JOIN tblCourse c ON c.course_seq = cr.course_seq
	INNER JOIN tblCourseName cn ON cn.courseName_seq = c.courseName_seq
WHERE completeState = '수료';

--C06.3
SELECT 
	s.studentName AS "학생명",
	cname.courseName AS "과정명",
	cs.courseStatus AS "과정진행상태",
	cr.completedate AS "수료일",
	cn.certifyName AS "자격증",
	we.workSpace AS "이전 근무처",
	we.workStartDate AS "근무 시작일",
	we.worrEndDate AS "근무 종료일",		--workEndDate > worrEndDate
	em.companyName AS "취업기업명",
	em.hireDate AS "취업일",
	hd.hopeDutyfield AS "취업 희망 분야",
	ha.hopeArea AS "희망지역",
	hd.hopeSalary AS "희망급여"
FROM tblStudent s
INNER JOIN tblCourseReg cr ON s.student_seq = cr.student_seq
	INNER JOIN tblCourse c ON c.course_seq = cr.course_seq
		INNER JOIN tblCourseStatus cs ON cs.courseStatus_seq = c.courseStatus_seq
		INNER JOIN tblCourseName cname ON cname.courseName_seq = c.courseName_seq
INNER JOIN tblCertify cf ON s.student_seq = cf.student_seq
	INNER JOIN tblCertifyName cn ON cn.certifyName_seq = cf.ceritifyName_seq		--cf.certifyName_seq > ceritifyName_seq
INNER JOIN tblWorkExperienceRel wer ON s.student_seq = wer.student_seq
	INNER JOIN tblWorkExperience we ON we.workExperience_seq = wer.workExperience_seq
INNER JOIN tblEmployment em ON s.student_seq = em.student_seq
INNER JOIN tblHopeDuty hd ON s.student_seq = hd.student_seq
	INNER JOIN tblHopeAreaRel har ON hd.hopeDuty_seq = har.hopeDuty_seq
	INNER JOIN tblHopeArea ha ON ha.hopeArea_seq = har.hopeArea_seq
ORDER BY s.studentName ASC;
--------------------------------------------------------------------------------------------------------


select * from tblWorkExperience;

SELECT 
	s.studentName AS "학생명",
	cname.courseName AS "과정명",
	cs.courseStatus AS "과정진행상태",
	cr.completedate AS "수료일",
	cn.certifyName AS "자격증",
	we.workSpace AS "이전 근무처",
	we.workStartDate AS "근무 시작일",
	we.worrEndDate AS "근무 종료일",
	em.companyName AS "취업기업명",
	em.hireDate AS "취업일",
	hd.hopeDutyfield AS "취업 희망 분야",
	ha.hopeArea AS "희망지역",
	hd.hopeSalary AS "희망급여"
FROM tblStudent s
INNER JOIN tblCourseReg cr ON s.student_seq = cr.student_seq
	INNER JOIN tblCourse c ON c.course_seq = cr.course_seq
		INNER JOIN tblCourseStatus cs ON cs.courseStatus_seq = c.courseStatus_seq
		INNER JOIN tblCourseName cname ON cname.courseName_seq = c.courseName_seq
INNER JOIN tblCertify cf ON s.student_seq = cf.student_seq
	INNER JOIN tblCertifyName cn ON cn.certifyName_seq = cf.ceritifyName_seq		--cf.certifyName_seq > ceritifyName_seq
INNER JOIN tblWorkExperienceRel wer ON s.student_seq = wer.student_seq
	INNER JOIN tblWorkExperience we ON we.workExperience_seq = wer.workExperience_seq
INNER JOIN tblEmployment em ON s.student_seq = em.student_seq
INNER JOIN tblHopeDuty hd ON s.student_seq = hd.student_seq
	INNER JOIN tblHopeAreaRel har ON hd.hopeDuty_seq = har.hopeDuty_seq
	INNER JOIN tblHopeArea ha ON ha.hopeArea_seq = har.hopeArea_seq;


--------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------
--PLSQL

--서버 ON
set serveroutput on;

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


INSERT INTO tblAllScore(allScore_seq, student_seq, attendScore, wScore, pScore) 
VALUES (SELECT max(allScore_seq) + 1, 337, 50, 20, 30);

UPDATE tblAllScore 
SET 
	attendScore = 30,
	wScore = 50,
	pScore = 20
WHERE student_seq = 337;