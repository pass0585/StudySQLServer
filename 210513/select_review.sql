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