--ex17_delete.sql
/*
DELETE
- DML
- 원하는 행을 삭제하는 명령어

DELETE 구문
- DELETE [from] 테이블명 [where 절]
*/

COMMIT;
ROLLBACK;
---------------------------------------
-- 길동이 데이터 삭제 / 전체 데이터 삭제 + rollback
SELECT * FROM tblinsa;
DELETE FROM tblinsa WHERE num = 1001;
DELETE FROM tblinsa;
ROLLBACK;
---------------------------------------
