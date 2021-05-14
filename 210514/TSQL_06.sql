-- �ܺ�����
SELECT u.userID, u.name, b.prodName
     , u.addr, CONCAT(u.mobile1, u.mobile2) AS mobile
  FROM userTbl AS u
 INNER JOIN buyTbl AS b
    ON u.userID = b.userID
 ORDER BY u.userID

 -- ������ �ѹ��� �������� ���� ȸ���� ��ȸ
 SELECT u.userID, u.name
     , u.addr, CONCAT(u.mobile1, u.mobile2) AS mobile, b.prodName
  FROM userTbl AS u
  LEFT OUTER JOIN buyTbl AS b
    ON u.userID = b.userID
 WHERE b.prodName IS NULL
 ORDER BY u.userID;



SELECT u.userID, u.name
     , u.addr, CONCAT(u.mobile1, u.mobile2) AS mobile, b.prodName
  FROM userTbl AS u
 RIGHT OUTER JOIN buyTbl AS b
    ON u.userID = b.userID
 WHERE b.prodName IS NULL
 ORDER BY u.userID;

  
 -- �л�/���Ƹ�/�������� ���̺�
 -- OUTERJOIN
SELECT s.Stdid, s.StdName, s.Region 
     , r.ClubName, c.ClubRoom, r.RegDate
  FROM stdTbl AS s
 INNER JOIN reginfoTbl AS r
    ON s.Stdid = r.Stdid
 INNER JOIN clubTbl AS c
    ON r.ClubName = c.ClubName;


SELECT s.Stdid, s.StdName, s.Region 
     , r.ClubName, c.ClubRoom
  FROM stdTbl AS s
  LEFT OUTER JOIN reginfoTbl AS r
    ON s.Stdid = r.Stdid
  LEFT OUTER JOIN clubTbl AS c -- �� ��ü�� ����
    ON r.ClubName = c.ClubName


SELECT s.Stdid, s.StdName, s.Region
     , c.ClubName, c.ClubRoom
	 , r.RegDate
  FROM stdTbl AS s
 RIGHT OUTER JOIN reginfoTbl AS r
    ON s.Stdid = r.Stdid 
 RIGHT OUTER JOIN clubTbl AS c 
    ON r.ClubName = c.ClubName


