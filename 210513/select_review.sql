-- 데이터 조회
SELECT */*all*/ FROM userTbl;

-- 데이터 조회 필터링
SELECT * FROM userTbl
WHERE userID = 'BBK';

SELECT * FROM userTbl
WHERE name = '조용필';

SELECT * FROM userTbl
WHERE name LIKE '김%';

SELECT * FROM userTBl
WHERE name LIKE '%용%';

SELECT userID, name, addr FROM userTbl
WHERE name LIKE '%용%';

-- 특정 테이블 레코드(데이터) 갯수확인
SELECT COUNT(*) FROM userTbl;

-- 사용자 테이블에서 키가 180이상이고  조회
-- 출생년도가 1970이후에 태어난 사람의
-- 아이디와 이름 키를 조회하세요
SELECT userID, name, height FROM userTbl
 WHERE height >= 180 AND birthYear > 1970;