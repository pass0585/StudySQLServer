-- GROUP BY
-- ���̵𺰷� ���� � ����� ��ȸ
SELECT userID, SUM(amount) AS ' �ѱ��Ű��� '
  FROM buyTbl
 GROUP BY userID;
 
SELECT userID, SUM(amount*price) AS '�ѱ��űݾ�'
  FROM buyTbl
 GROUP BY userID
 ORDER BY SUM(amount * price) DESC;

 SELECT SUM(amount*price) AS '�ѱ��űݾ�'
  FROM buyTbl;

--��ձ��űݾ�
SELECT AVG(price)AS'��ձ��űݾ�' FROM buyTbl;

-- ��������̺��� Ű�� ���� ū ����� ���� ���� ��� ��ȸ
SELECT * FROM userTbl
 ORDER BY height ASC;
 
SELECT * FROM userTbl
 ORDER BY height DESC;

SELECT name AS '�̸�', height AS[Ű] FROM userTbl
 WHERE height = (SELECT MAX(height) FROM userTbl)
	OR height = (SELECT MIN(height) FROM userTbl);

-- GROUP BY / HAVING
SELECT userID AS'�����ID'
	 , SUM( price * amount ) AS[�ѱ��űݾ�] 
  FROM buyTbl
 GROUP BY userID
HAVING SUM( price * amount ) >= 1000;

-- ���
-- ��ǰ�׷캰�� ����ڰ� �󸶸�ŭ ���Ÿ� �ߴ��� ��ȸ
SELECT groupName
	 , userID AS'�����ID'
	 , SUM( price * amount ) AS[�ѱ��űݾ�] 
  FROM buyTbl
 GROUP BY ROLLUP( userID, groupName );

SELECT groupName
	 , SUM( price * amount ) AS[�ѱ��űݾ�]
	 , GROUPING_ID(groupName) AS 'SUM'	-- 0 : ������ , 1 : �հ�
  FROM buyTbl
 GROUP BY ROLLUP( groupName );


