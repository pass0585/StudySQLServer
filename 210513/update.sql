--UPDATE
--where ���� ������ ����
--Ʈ����� ����
BEGIN TRAN;

UPDATE testTbl
   SET userName = '�ڻ�'
 WHERE ID = 2;

UPDATE testTbl
   SET userName = '�ڻ�'
     , addr = '�λ�'
 WHERE ID=2;

SELECT * FROM testTbl;

COMMIT;
ROLLBACK; 

TRUNCATE TABLE testTbl; -- ������ ���θ� �����ϰ�-- 1���� �ٽ� ����
