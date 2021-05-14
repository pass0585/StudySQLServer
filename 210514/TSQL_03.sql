-- 문자열 함수 -- 매우중요!!
SELECT ASCII('A'), CHAR(66);
SELECT UNICODE('가'), NCHAR(44032);


-- 문자열 연결
SELECT CONCAT('SQL ', 'SERVER ', 2019) AS [NAME];	-- 형변환 필요 X
SELECT 'SQL '+'SERVER '+ CAST(2019 AS varchar);		-- 형변환 필요

-- 단어 시작위치
SELECT CHARINDEX('world','Hello world!');			-- c# java python 문자열 0부터 시작
													-- DB 1부터 시작

-- LEFT, RIGHT, SUBSTRING, LEN, LOWER, UPPER, LTRIM, RTRIM
DECLARE @STR VARCHAR(20);
SET @STR = 'SQL Server 2019';
SELECT LEFT(@STR,3), RIGHT(@STR,4);

SELECT SUBSTRING('대한민국만세!', 5,2);

SELECT LEN('Hello World!');
SELECT LEN('대한민국만세!');

SELECT LOWER('hELLO wORLD!');
SELECT UPPER('hELLO wORLD!');

-- 스페이스 제거 함수
SELECT LTRIM('      SQL   '), RTRIM('      SQL   '),TRIM('      SQL   ');

-- REPLACE
SELECT REPLACE('SQL Server 2019', 'Server','서버');

-- STR
SELECT STR(3.141592);
SELECT STR(45);

-- FORMAT
SELECT FORMAT(GETDATE(), 'yyyy/MM/dd hh:mm:ss');
SELECT FORMAT(GETDATE(), 'MM/dd/yyyy hh:mm:ss');
