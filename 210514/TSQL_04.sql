-- 순위함수

SELECT ROW_NUMBER() OVER(ORDER BY height DESC) AS '키순위'
	 , name, height, addr
  FROM userTbl
 WHERE height is not null; 

SELECT RANK() OVER(ORDER BY height DESC) AS '키순위'
     , name, height, addr
  FROM userTbl
 WHERE height is not null; 

 SELECT DENSE_RANK() OVER(ORDER BY height DESC) AS '키순위'
     , name, height, addr
  FROM userTbl
 WHERE height is not null; 

 -- 지역별
 SELECT ROW_NUMBER() OVER(PARTITION BY addr ORDER BY height DESC) AS '키순위'
	 , name, height, addr
  FROM userTbl
 WHERE height is not null; 



SELECT RANK() OVER(ORDER BY SUM(price *amount) DESC) AS '구매순위'
	 , TRIM(userID) AS userID, SUM(price *amount) AS '사용자별구매금액'
  FROM buyTbl
 GROUP BY userID
 ORDER BY SUM(price *amount) DESC
   FOR JSON AUTO;		--- FOR XML AUTO

DECLARE @myVar1 INT;
SET @myVar1 = 100;
SELECT @myVar1;