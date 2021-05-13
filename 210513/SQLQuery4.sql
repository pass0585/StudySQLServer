INSERT INTO testTbl VALUES (1, '홍길동', '서울');
INSERT INTO testTbl (ID,userName, addr) VALUES( 2,'설현', '서울')
INSERT INTO testTbl (ID,userName)VALUES(3,'아이유');

SELECT * FROM testTbL;

--DELETE FROM testTbl

INSERT INTO testTbl (userID, name, birthYear, addr)
VALUES ('IU', '아이유',1993,'서울');

SELECT *FROM userTbl WHERE userID ='IU';

INSERT INTO userTbl (userID, name, birthYear, addr, height)
VALUES ('JJH','주지훈',1982,'신안',187);

SELECT * FROM userTbl;