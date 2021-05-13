--UPDATE
--where 절을 빼먹지 말자
--트랜잭션 시작
BEGIN TRAN;

UPDATE testTbl
   SET userName = '박상섭'
 WHERE ID = 2;

UPDATE testTbl
   SET userName = '박상섭'
     , addr = '부산'
 WHERE ID=2;

SELECT * FROM testTbl;

COMMIT;
ROLLBACK; 

TRUNCATE TABLE testTbl; -- 데이터 전부를 삭제하고-- 1부터 다시 시작
