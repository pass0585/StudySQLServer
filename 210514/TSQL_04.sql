-- �����Լ�

SELECT ROW_NUMBER() OVER(ORDER BY height DESC) AS 'Ű����'
	 , name, height, addr
  FROM userTbl
 WHERE height is not null; 

SELECT RANK() OVER(ORDER BY height DESC) AS 'Ű����'
     , name, height, addr
  FROM userTbl
 WHERE height is not null; 

 SELECT DENSE_RANK() OVER(ORDER BY height DESC) AS 'Ű����'
     , name, height, addr
  FROM userTbl
 WHERE height is not null; 

 -- ������
 SELECT ROW_NUMBER() OVER(PARTITION BY addr ORDER BY height DESC) AS 'Ű����'
	 , name, height, addr
  FROM userTbl
 WHERE height is not null; 



SELECT RANK() OVER(ORDER BY SUM(price *amount) DESC) AS '���ż���'
	 , TRIM(userID) AS userID, SUM(price *amount) AS '����ں����űݾ�'
  FROM buyTbl
 GROUP BY userID
 ORDER BY SUM(price *amount) DESC
   FOR JSON AUTO;		--- FOR XML AUTO

DECLARE @myVar1 INT;
SET @myVar1 = 100;
SELECT @myVar1;