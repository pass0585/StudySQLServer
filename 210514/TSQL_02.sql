-- �ý����Լ�(SQL������ �⺻���� �������ִ� �Լ���)
SELECT CAST(AVG(CAST(amount AS float)) AS decimal(4,3)) FROM buyTbl;

SELECT AVG(CONVERT(FLOAT, amount)) FROM buyTbl;

SELECT PARSE('3.14' AS int);		-- ���� // ���ܹ߻��ϸ� ������ ������ ����
SELECT TRY_PARSE('3.14' AS int);	-- ����X // ����ȯ���ϸ� NULL ����ü ������ ����

-- HEIGHT SMALLINT --> VARCHAR, CHAR ����ȯ
SELECT name, CAST(height AS VARCHAR) + ' cm' FROM userTbl
 WHERE height IS NULL;				-- NULL���� is �� ��// is <-> is not

SELECT PARSE('2021�� 5�� 14�� 10�� 27��' AS DATETIME);
SELECT PARSE('2021-05-14 10:27:10' AS DATETIME);
-- YYYY-MM-DD HH:min:ss

SELECT GETDATE();					-- INSERT ���� ����Ͻú��� ���� ���� ���!

SELECT @@VERSION;					-- �ý��� ���� ( @@___ )

SELECT YEAR(GETDATE()) AS '����⵵';	-- ��¥ �� �ð��Լ�
SELECT MONTH(GETDATE()) AS '�����';
SELECT DAY(GETDATE()) AS '����';

-- ��ġ�Լ�
SELECT ABS(-100);			-- ���밪
SELECT ROUND(3.141592, 2);	-- �ݿø�
SELECT FLOOR(RAND()*100);	-- ������ (RAND �� �Ҽ����� ����) (FLOOR �� ����)

-- ���Լ�
SELECT IIF( 100 > 200, '��','����');		-- �߿�! ( CASE ~ WHEN ~ THEN )