-- ������ ��ȸ
SELECT */*all*/ FROM userTbl;

-- ������ ��ȸ ���͸�
SELECT * FROM userTbl
WHERE userID = 'BBK';

SELECT * FROM userTbl
WHERE name = '������';

SELECT * FROM userTbl
WHERE name LIKE '��%';

SELECT * FROM userTBl
WHERE name LIKE '%��%';

SELECT userID, name, addr FROM userTbl
WHERE name LIKE '%��%';

-- Ư�� ���̺� ���ڵ�(������) ����Ȯ��
SELECT COUNT(*) FROM userTbl;

-- ����� ���̺��� Ű�� 180�̻��̰�  ��ȸ
-- ����⵵�� 1970���Ŀ� �¾ �����
-- ���̵�� �̸� Ű�� ��ȸ�ϼ���
SELECT userID, name, height FROM userTbl
 WHERE height >= 180 AND birthYear > 1970;

 -- ����⵵�� (��������) �����ؼ� ��ȸ
 SELECT * FROM userTbl
  ORDER BY birthYear ASC; -- ASC <-> DESC

 -- SELECT INTO
 -- userTbl_New ���̺� ���� ( PK Ű������ �̻��� )
 SELECT * INTO userTbl_New FROM userTbl;
 
 SELECT * FROM userTbl_New;

SELECT userID, name, addr INTO userTbl_Backup2 FROM userTbl
WHERE addr = '����';

SELECT * FROM userTbl_Backup;
SELECT * FROM userTbl_Backup2;
