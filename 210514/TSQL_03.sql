-- ���ڿ� �Լ� -- �ſ��߿�!!
SELECT ASCII('A'), CHAR(66);
SELECT UNICODE('��'), NCHAR(44032);


-- ���ڿ� ����
SELECT CONCAT('SQL ', 'SERVER ', 2019) AS [NAME];	-- ����ȯ �ʿ� X
SELECT 'SQL '+'SERVER '+ CAST(2019 AS varchar);		-- ����ȯ �ʿ�

-- �ܾ� ������ġ
SELECT CHARINDEX('world','Hello world!');			-- c# java python ���ڿ� 0���� ����
													-- DB 1���� ����

-- LEFT, RIGHT, SUBSTRING, LEN, LOWER, UPPER, LTRIM, RTRIM
DECLARE @STR VARCHAR(20);
SET @STR = 'SQL Server 2019';
SELECT LEFT(@STR,3), RIGHT(@STR,4);

SELECT SUBSTRING('���ѹα�����!', 5,2);

SELECT LEN('Hello World!');
SELECT LEN('���ѹα�����!');

SELECT LOWER('hELLO wORLD!');
SELECT UPPER('hELLO wORLD!');

-- �����̽� ���� �Լ�
SELECT LTRIM('      SQL   '), RTRIM('      SQL   '),TRIM('      SQL   ');

-- REPLACE
SELECT REPLACE('SQL Server 2019', 'Server','����');

-- STR
SELECT STR(3.141592);
SELECT STR(45);

-- FORMAT
SELECT FORMAT(GETDATE(), 'yyyy/MM/dd hh:mm:ss');
SELECT FORMAT(GETDATE(), 'MM/dd/yyyy hh:mm:ss');
