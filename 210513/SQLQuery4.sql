INSERT INTO testTbl VALUES (1, 'ȫ�浿', '����');
INSERT INTO testTbl (ID,userName, addr) VALUES( 2,'����', '����')
INSERT INTO testTbl (ID,userName)VALUES(3,'������');

SELECT * FROM testTbL;

--DELETE FROM testTbl

INSERT INTO testTbl (userID, name, birthYear, addr)
VALUES ('IU', '������',1993,'����');

SELECT *FROM userTbl WHERE userID ='IU';

INSERT INTO userTbl (userID, name, birthYear, addr, height)
VALUES ('JJH','������',1982,'�ž�',187);

SELECT * FROM userTbl;