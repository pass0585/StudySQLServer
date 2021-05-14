SELECT ClubName, ClubRoom FROM clubTbl
UNION
SELECT ClubName, ClubRoom FROM clubTbl;

SELECT CAST(Id AS varchar), Stdid FROM reginfoTbl
UNION
SELECT ClubName, ClubRoom FROM clubTbl;

SELECT StdName, region FROM stdTbl
UNION ALL
SELECT StdName, Region From stdTbl

-- except
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
EXCEPT
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
WHERE mobile1 IS NOT NULL
-- INTERSECT / 뒤의 기준 만족하는 데이터만 출력
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
INTERSECT
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
WHERE mobile1 IS NOT NULL