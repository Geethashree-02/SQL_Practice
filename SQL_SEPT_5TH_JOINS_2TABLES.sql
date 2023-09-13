--  CREATE  STUDENT TABLE 

CREATE TABLE STD_DETAIL
(
ID INT,
FNAME VARCHAR(25),
LNAME VARCHAR (25),
AGE INT,
GENDER VARCHAR(5),
CLASS VARCHAR(25),
SECTION VARCHAR (10)
);

INSERT INTO STD_DETAIL 
(ID,FNAME,LNAME,AGE,GENDER,CLASS,SECTION
VALUES
(1,'GEETHA','SHREE',13,'F','VII','A'),
(2,'ARUNA','DANCY',13,'F','VII','B'),
(3,'SRI','LEKHA',14,'F','IX','C'),
(4,'SANJAY','RAMASAMY',15,'M','X','D'),
(5,'KISHORE','RAJAN',15,'M','X','A'),
(6,'RANGA','RAJAN',15,'M','X','A'),
(7,'AKIL','ESWARAN',16,'M','XI','NILL'),
(8,'PRIYA','DHARSHII',15,'F','X','B'),
(9,'HARI','DHARSHII',15,'F','X','C'),
(10,'AKIL','TANWEER',16,'M','IX','B'),
(11,'LAVANYA','MOHAN',13,'F','VII','C'),
(12,'NITHYA','VENKATESAN',16,'F','XI','B'),
(13,'RAM','KRISHNA',17,'M','XII',''),
(14,'PREM','KUMAR',15,'M','X','B'),
(15,'ANITHA','MOORTHY',14,'F','IX','B');

--DROP TABLE STUDENT;

INSERT INTO STD_DETAIL
(ID,FNAME,LNAME,AGE,GENDER,CLASS)
VALUES
(16,'SANTHOSH','KUMAR',13,'M','VIII');

SELECT * FROM STD_DETAIL;

SELECT * FROM SPORT

SELECT * FROM STD.STUDENT;

SELECT * FROM SPORT_DATA;

CREATE TABLE SPORT_DATA
(
ID INT,
SPORT_NAME VARCHAR(25),
EVENT_DATE DATE,
EVENT_AT VARCHAR(25)
);

INSERT INTO SPORT_DATA 
(ID,SPORT_NAME,EVENT_DATE,EVENT_AT)
VALUES
(1,'WRESTLING','12/DEC/2023','TIRUCHENGODE');

--IF I PUT THE EVENT_DATE IN THE DATETIME DATA TYPE IT SHOWS WITH THE TIMER ALSO.. BUT
--I NO NEED THE TIMER 

--1)HOW TO CAST THE DATE OR CONVERT THE DATE IF I MENTION IT AS DATETIME

INSERT INTO SPORT_DATA 
(ID,SPORT_NAME,EVENT_DATE,EVENT_AT)
VALUES
(2,'WRESTLING',(CONVERT('12/DEC/2023') AS DATE),'TIRUCHENGODE'); -- ITS NOT POSSIBLE

INSERT INTO SPORT_DATA 
(ID,SPORT_NAME,EVENT_DATE,EVENT_AT)
VALUES
(2,'WRESTLING','12/DEC/2023','TIRUCHENGODE');

--DROP TABLE SPORT_DATA;

--IF I MENTON THE DATATYPE AS DATETIME MENAS ITS SHOWING THE OUTPUT WITH THE TIMER ALSO..
--SO I DROP THE TABLE AND I ALTER THE DATATYPE AS DATE ONLY..

INSERT INTO SPORT_DATA (ID,SPORT_NAME,EVENT_DATE,EVENT_AT)VALUES
(1,'WRESTLING','2023/DEC/20','TIRUCHENGODE'),
(2,'BOXING','2022/JAN/24','ERODE'),
(3,'TENNIS','2023/JUN/21','NAMAKKAL'),
(4,'BADMINTON','2023/AUG/2','MADURAI');--> INTHA ORDER LA EVLO KUDUTHALU EDUTHUKUTHU BUT PALAYA ORDER LA KUDUTHA NO RESPONSE


INSERT INTO SPORT_DATA (ID,SPORT_NAME,EVENT_DATE,EVENT_AT)VALUES
(5,'VOLLEY BALL','13/JUN/2024','KARUR');

INSERT INTO SPORT_DATA (ID,SPORT_NAME,EVENT_DATE,EVENT_AT)VALUES
(6,'BASKET BALL','21/JUL/2024','ERODE'); --> HERE ITSELF I AM USING (DAY/MONTH/YR) THEN Y ITS SHOWING THE SAME ERROR

INSERT INTO SPORT_DATA (ID,SPORT_NAME,EVENT_DATE,EVENT_AT)VALUES
(7,'BASKETBALL','23/SEP/2023','CHENNAI');

INSERT INTO SPORT_DATA (ID,SPORT_NAME,EVENT_DATE,EVENT_AT)VALUES
(8,'ARCHERY','29/NOV/2023','TRICHY'),
(9,'GYMNASTIC','31/MAY/2023','COIMBATORE'),
(10,'RUNNING','10/MAR/2024','KERALA');


INSERT INTO SPORT_DATA (ID,SPORT_NAME,EVENT_DATE,EVENT_AT)VALUES
(1,'WRESTLING','12/DEC/2023','TIRUCHENGODE'),
(2,'BOXING','12/JAN/2024','ERODE'),
(3,'TENNIS','13/JUN/2024','NAMAKKAL'),
(4,'BADMINTON','17/AUG/2023','MADURAI'),
(5,'VOLLEY BALL','13/JUN/2024','KARUR'),
(6,'BASKET BALL','21/JUL/2024','ERODE'),
(7,'BASKETBALL','23/SEPT/2023','CHENNAI'),
(8,'ARCHERY','29/NOV/2023','TRICHY'),
(9,'GYMNASTIC','31/MAY/2023','COIMBATORE'),
(10,'RUNNING','10/MAR/2024','KERALA');

INSERT INTO SPORT_DATA (ID,SPORT_NAME,EVENT_DATE,EVENT_AT)VALUES
(11,'SWIMMING','12/FEB/2023','TIRUCHENGODE'),
(12,'HOCKEY','18/APR/2023','ERODE'),
(13,'WRESTLING','23/OCT/2024','COIMBATORE'),
(14,'ARCHERY','23/OCT/2024','SALEM'),
(15,'WRESTLING','23/OCT/2024','TIRUNELVELI');  --INGA MATU EPDI RN AGUTHU..


SELECT * FROM SPORT_DATA;

SELECT * FROM STD_DETAIL;

SELECT ID FROM SPORT_DATA
UNION ALL
SELECT ID FROM STD_DETAIL;

SELECT FNAME,LNAME, COUNT(AGE) 
FROM STD_DETAIL 
GROUP BY FNAME,LNAME; ---ORDER BY FNAME ASC;

SELECT AGE,COUNT(*)PEOPLE_SAME_AGE 
FROM STD_DETAIL 
GROUP BY AGE;

SELECT AGE,CLASS,COUNT(*)PEOPLE_SAME_AGE 
FROM STD_DETAIL 
GROUP BY AGE,CLASS;  


SELECT A.ID,A.FNAME,A.LNAME,B.SPORT_NAME
FROM STD_DETAIL A  
INNER JOIN  SPORT_DATA B
ON A.ID=B.ID;

SELECT A.ID,A.FNAME+A.LNAME 
AS NAME_LIST,B.SPORT_NAME
FROM STD_DETAIL A 
INNER JOIN  SPORT_DATA B
ON A.ID=B.ID;

SELECT A.ID,A.FNAME+A.LNAME 
AS NAME_LIST,B.SPORT_NAME
FROM STD_DETAIL A 
INNER JOIN  SPORT_DATA B
ON A.ID=B.ID;

SELECT EVENT_DATE,SPORT_NAME,
COUNT(*) FROM SPORT_DATA 
GROUP BY EVENT_DATE,SPORT_NAME;

SELECT SPORT_NAME,
COUNT(*)NO_OF_GAMES FROM SPORT_DATA 
GROUP BY SPORT_NAME ORDER BY NO_OF_GAMES ;

UPDATE SPORT_DATA SET SPORT_NAME='BASKET BALL' WHERE ID=7;

SELECT EVENT_DATE,
COUNT(*) FROM SPORT_DATA 
GROUP BY EVENT_DATE;

SELECT Weekday(Day,GETDATE());

SELECT WEEKDAY(getdate()) AS  WeekDay;

SELECT WEEKDAY ('2017-08-22') AS WeekDay_Value ;

--weekday varala..y

--CREATE FUNCTION sales.udfNetSale(
--    @quantity INT,
--    @list_price DEC(10,2),
--    @discount DEC(4,2)
--)
--RETURNS DEC(10,2)
--AS 
--BEGIN
--    RETURN @quantity * @list_price * (1 - @discount);
--END;

create function function_to_be_called(@username varchar(200))
returns varchar(100)
as.
begin.
declare @password varchar(200)
set @password=(select [password] from [User] where username =@username)
return @password.
end.

CREATE  function argst
    return int
    AS 
    BEGIN
       RETURN expression;
    END;