----------------------------------------------------------------------
--2.1 강의 스케줄 조회(강의 진행 여부 포함)
BEGIN
    procTeacherSchedule(1);
END;

--2.2 교육생 정보조회(수료 여부 포함)
BEGIN
	procStudentInfo(1);
END;
----------------------------------------------------------------------
--3.1 강의를 마친 과목의 목록을 조회
BEGIN
    procCourseSubjectInfo(1);
END;

--3.2 특정 과목의 배점 정보를 입력
--동작1 : 출결점수가 20점 이하일 경우 
BEGIN
	procUpdatePoint(1, 10, 40, 50);
END;
--동작2 : 세 배점의 합이 100이 아닐 경우
BEGIN
	procUpdatePoint(1, 21, 30, 50);
END;
--동작3 : 정상동작
BEGIN
    procUpdatePoint(1, 30, 20, 50);
END;
--정상 동작 이후 결과 확인 및 ROLLBACK
SELECT * FROM tblCourseSubject ORDER BY courseSubject_seq desc;
ROLLBACK;
----------------------------------------------------------------------
--4.1 강의를 마친 과목의 목록 + 성적등록 여부 조회
BEGIN
	procEndCourseScoreInfo(1);
END;

--4.2 특정 교욱생의 성적 조회
BEGIN
	procStudentScore(1);
END;

--4.3 특정 과목의 성적정보를 입력
BEGIN
	procUpdateScore(337, 121, 100, 30, 50);
END;
--정상 동작 이후 결과 확인 및 ROLLBACK
SELECT * FROM tblAllScore WHERE student_seq = 337 AND pointNum = 121;
ROLLBACK;
----------------------------------------------------------------------
--5.1 특정과정 선택시 자신의 과정 목록을 조회
BEGIN
	procTeacherCourseCheck(1);
END;

--5.2 모든 일자의 모든 교육생에 대한 출결 정보를 출력
BEGIN
	procStudentAllDateAttend(337);
END;

--5.3 특정 기간별 출결 현황 조회
BEGIN 
	procCheckAttend('23/08/15', 504);		--해당일부터 현재까지의 출결 현황조회(기준 시간, 학생번)
END;

--5.4 교육생 1명의 출결 현황 조회
BEGIN
	procStudentAttendInfo(337);
END;

--5.5 특정 교육생의 특정 기간별 출결 현황 조회

----------------------------------------------------------------------
--6.1 수료가 완료된 과정의 목록
BEGIN 
	procEndCourseInfo(1);
END;

--6.2 수료한 교육생 목록 - 특정교육생 선택
BEGIN
	procCompletionStudent(1);
END;

--6.3 특정 교육생의 취업정보 조회
--자격증X + 첫 취업
BEGIN
   procStudentHireInfo(1);
END;
--자격증X + 재취업
BEGIN
   procStudentHireInfo(2);
END;
--자격증2개 + 재취업 > (사X)
BEGIN
   procStudentHireInfo(4);
END;
----------------------------------------------------------------------