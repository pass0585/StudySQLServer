-- GROUP BY
-- 아이디별로 물건 몇개 샀는지 조회
SELECT userID, SUM(amount) AS ' 총구매갯수 '
  FROM buyTbl
 GROUP BY userID;
 
SELECT userID, SUM(amount*price) AS '총구매금액'
  FROM buyTbl
 GROUP BY userID
 ORDER BY SUM(amount * price) DESC;

 SELECT SUM(amount*price) AS '총구매금액'
  FROM buyTbl;

--평균구매금액
SELECT AVG(price)AS'평균구매금액' FROM buyTbl;

-- 사용자테이블에서 키가 가장 큰 사람과 가장 작은 사람 조회
SELECT * FROM userTbl
 ORDER BY height ASC;
 
SELECT * FROM userTbl
 ORDER BY height DESC;

SELECT name AS '이름', height AS[키] FROM userTbl
 WHERE height = (SELECT MAX(height) FROM userTbl)
	OR height = (SELECT MIN(height) FROM userTbl);

-- GROUP BY / HAVING
SELECT userID AS'사용자ID'
	 , SUM( price * amount ) AS[총구매금액] 
  FROM buyTbl
 GROUP BY userID
HAVING SUM( price * amount ) >= 1000;

-- 통계
-- 제품그룹별로 사용자가 얼마만큼 구매를 했는지 조회
SELECT groupName
	 , userID AS'사용자ID'
	 , SUM( price * amount ) AS[총구매금액] 
  FROM buyTbl
 GROUP BY ROLLUP( userID, groupName );

SELECT groupName
	 , SUM( price * amount ) AS[총구매금액]
	 , GROUPING_ID(groupName) AS 'SUM'	-- 0 : 데이터 , 1 : 합계
  FROM buyTbl
 GROUP BY ROLLUP( groupName );


