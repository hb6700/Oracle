-----------------------------------------------------------------------------------------------------

-- C02. 강의 스케줄 조회
-- 강의 스케줄은 강의 예정, 강의 중, 강의 종료로 구분해서 확인할 수 있어야 한다. 강의 진행 상태는 날짜를 기준으로 확인한다.

-- 1. 강의 스케줄 정보 조회
-- 과목번호, 과정명, 과정기간(시작 년월일, 끝 년월일), 강의실과 과목명, 과목기간(시작 년월일, 끝 년월일), 교재명, 교육생 등록 인원 
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

-- 2. 과정 등록 교육생 정보 조회
-- 교육생 정보(교육생 이름, 전화번호, 등록일, 수료 또는 중도탈락)
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

-----------------------------------------------------------------------------------------------------

-- C03. 배점 입출력
-- 특정 과목을 과목번호로 선택 시 출결 배점, 필기 배점, 실기 배점, 시험 날짜, 시험 문제를 입력할 수 있는 화면으로 연결되어야 한다.
-- 출결은 최소 20점 이상이어야 하고, 출결, 필기, 실기의 합은 100점이 되도록 한다.
-- 배점 등록이 안 된 과목인 경우는 과목 정보가 출력될 때 배점 부분은 null 값으로 출력한다.

-- 1. 강의를 마친 과목의 목록 조회
-- 과목번호, 과정명, 과정기간(시작 년월일, 끝 년월일), 강의실, 과목명, 과목기간(시작 년월일, 끝 년월일), 교재명, 출결, 필기, 실기 배점
SELECT 
   s.subject_seq AS "과목번호", 
   cn.courseName AS "과정명", 
   c.courseStartDate AS "과정 시작일", 
   c.courseEndDate AS "과정 종료일", 
   s.subject AS "과목명", 
   cs.courseSubjectStartDate AS "과목 시작일", 
   cs.couseSubjectEndDate AS "과목 종료일",         --courseEndDate(X), couseEndDate(O) 
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
   INNER JOIN tblPoint p ON p.courseSubject_seq = cs.courseSubject_seq
ORDER BY 3 ASC;

-- 2. 특정 과목 배점 정보 입력(★)
-- 출결, 필기, 실기
-- 시험 날짜, 시험 문제

--insert into tblCourse (course_seq, courseStartDate, courseEndDate, room_seq, courseStatus_seq,courseName_seq)
--    valuses ( 25, 23/09/20, 24/02/20, (select room_seq from tblCourseRoom) , (select courseName_seq from tblCourseName);
--과목번호 과목명 출결 필기 실기 배점 정보 시험날짜 시험문제
INSERT INTO tblCourseSubject(courseSubject_seq, subjectAvailability_seq, course_seq, courseSubjectStartDate, couseSubjectEndDate, textBook_seq)
VALUES (SELECT max(courseSubject_seq) +1, )

--출결 실기 필기 점수 <> 강좌과목번호랑 mapping
INSERT INTO tblPoint(pointNum, courseSubject_seq, attendPoint, wPoint, pPoint)
VALUES ((SELECT max(pointNum) + 1), (SELECT courseSubject_seq FROM tblCourseSubject), 50, 20, 30);

--UPDATE

-----------------------------------------------------------------------------------------------------

-- C04. 성적 입출력
-- 성적 등록 여부는 교육생 전체에 대해서 성적을 등록했는지의 여부를 출력한다.
-- 과정을 중도 탈락해서 성적 처리가 제외된 교육생이더라도 교육생 명단에는 출력되어야 한다. 중도 탈락 여부를 확인할 수 있도록 해야 한다.
-- 중도 탈락인 경우 중도탈락 날짜가 출력되도록 한다.
-- 중도 탈락 처리된 교육생의 성적인 경우 중도탈락 이후 날짜의 성적은 입력하지 않는다.

-- 1. 강의를 마친 과목의 목록 조회
-- 과목번호, 과정명, 과정기간(시작 년월일, 끝 년월일), 강의실, 과목명, 과목기간(시작 년월일, 끝 년월일), 교재명, 출결, 필기, 실기 배점, 성적 등록 여부
SELECT 
   s.subject_seq AS 과목번호, 
   cn.courseName AS 과정명, 
   c.courseStartDate AS "과정 시작일", 
   c.courseEndDate AS "과정 종료일", 
   s.subject AS 과목명, 
   cs.courseSubjectStartDate AS "과목 시작일", 
   cs.couseSubjectEndDate AS "과목 종료일",         --courseEndDate(X), couseEndDate(O) 
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

-- 2. 특정 과목의 성적 정보 조회
-- 교육생 정보(이름, 전화번호, 수료 또는 중도탈락) 및 성적이 출결, 필기, 실기 점수
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

-- 3. 특정 과목의 성적 정보 입력(★)
-- 해당 교육생의 시험 점수를 입력할 수 있어야 한다. 이때, 출결, 필기, 실기 점수
INSERT INTO tblAllScore(allScore_seq, student_seq, attendScore, wScore, pScore) 
VALUES (SELECT max(allScore_seq) + 1, 337, 50, 20, 30);

UPDATE tblAllScore 
SET 
	allscore_seq = 1,
	attendScore = 30,
	wScore = 50,
	pScore = 20
WHERE student_seq = 337;

DELETE 

SELECT allScore_seq, student_seq, attendScore, wScore, pScore FROM tblAllScore;
-----------------------------------------------------------------------------------------------------

-- C05 출결 조회
-- 모든 출결 조회는 근태 상황을 구분할 수 있어야 한다.(정상, 지각, 조퇴, 외출, 병가, 기타) 

-- 1.  자신의 과정 목록 조회 - 특정 과정 선택시
-- 교사명 교사전화번호 과목번호(??) 
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

-- 2. 모든 일자의 모든 교육생에 대한 출결 정보를 출력
SELECT
	s.student_seq AS "학생번호",
	s.studentName AS "학생 이름",
	a.attendDate AS "출결 날짜",
	a.attendStartDate AS "등원시간",
	a.attendEndDate AS "하원시간",
	tas.attendState AS "출결상태"	
FROM tblAttend a 
INNER JOIN tblAttendState tas ON tas.attendState_seq = a.attendState_seq
INNER JOIN tblStudent s ON s.student_seq = a.student_seq
ORDER BY s.studentName ASC;

-- 3. 특정 기간별 출결 현황 조회
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

-- 4. 교육생 1명의 출결 현황 조회
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

-- 5. 특정 교육생의 특정 기간별 출결 현황 조회
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

--GROUP BY a.attendDate
--HAVING a.attendDate  > to_date('23/08/15', 'RRRR/MM/DD')

-----------------------------------------------------------------------------------------------------

-- C06 사후관리 기능
-- 교육생 수료를 완료하면 자동적으로 사후관리 테이블 생성(null)

-- 1. 수료가 완료된 과정 목록
-- 특정 과정 선택시
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

-- 2. 수료한 교육생 목록
-- 특정 교육생 선택
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


-- 3. 특정 교육생의 취업 정보 조회
-- 교육생의 과정정보, 학력, 경력사항, 자격증, 희망 근무 조건, 취업 현황
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














