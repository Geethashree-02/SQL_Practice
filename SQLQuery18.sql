select year('2023/08/21')
select MONTH('2023/08/21')
select DAY('2023/08/21')
select datename(weekday,'2023/08/21')
select datepart(weekday,'2023/08/21')
select ISDATE('2023/08/21')

create table sport
(
ID INT IDENTITY (101,1)PRIMARY KEY,
FNAME VARCHAR(50),
LNAME VARCHAR(50),
AGE INT,
SPORTS_NAME VARCHAR(50),
COMPETITON_DATE DATETIME
);

INSERT INTO SPORT (FNAME,LNAME,AGE,SPORTS_NAME,COMPETITON_DATE)VALUES
('Aakash', 'Yadav', 25, 'TENNIS','2023/01/18');

INSERT INTO SPORT (FNAME,LNAME,AGE,SPORTS_NAME,COMPETITON_DATE)VALUES
('Balwant','Singh', 23, 'Football','2023/12/02 8:30:15 AM'),
('Neeru','Sharma', 23, 'Boxing','2023/12/02 9:45:21 AM'),
('Pallavi','Singh', 23, 'Wrestling','2023/10/10 10:15:52 AM'),
('Rocky','Gupta', 23, 'Cricket','2023/12/02 11:18:20 AM');

UPDATE SPORT SET SPORTS_NAME='Tennis' where id=101

select * from sport 

SELECT COMPETITON_DATE FROM SPORT

select ID,FNAME,LNAME,AGE,SPORTS_NAME,COMPETITION_DATE, DATENAME(WEEKDAY,COMPETITION_DATE) FROM  SPORT;

SELECT DATENAME(WEEKDAY,COMPETITION_DATE) FROM sport

select FNAME,LNAME,AGE,SPORTS_NAME,COMPETITION_DATE  from  EDet  WHERE DATEPART(weekday,JDATE) BETWEEN 4 AND 7;

select ID,FNAME,LNAME,AGE,DATEPART(WEEKDAY,COMPETITON_DATE) from sport WHERE DATENAME(WEEKDAY,COMPETITON_DATE) BETWEEN 1 AND 7

SELECT * from sport where DATEPART(WEEKDAY,COMPETITON_DATE) between 0 and 7

select ID,FNAME,LNAME,AGE,SPORTS_NAME,COMPETITON_DATE,DATENAME(WEEKDAY,COMPETITON_DATE)AS CDAY FROM sport WHERE DATEPART(WEEKDAY,COMPETITON_DATE) BETWEEN 0 AND 7

SELECT ID,FNAME,LNAME,AGE,SPORTS_NAME,CONVERT(VARCHAR(10),COMPETITON_DATE,103)AS COMPETITION_DATE FROM sport

ALTER TABLE SPORT ADD
COMPETITION_DAY VARCHAR(50)

UPDATE SPORT SET AGE=
CASE ID
WHEN 102 THEN 18
WHEN 103 THEN 20
WHEN 104 THEN 27
WHEN 105 THEN 21
END
WHERE ID IN (102,103,104,105);

UPDATE SPORT SET COMPETITION_DAY=DATENAME(WEEKDAY,COMPETITON_DATE);

SELECT * from sport

select ID,FNAME,LNAME,AGE,SPORTS_NAME,COMPETITION_DAY,CONVERT(VARCHAR(10),COMPETITON_DATE,103) AS COMPETITION_DATE FROM sport 
WHERE DATEPART(WEEKDAY,COMPETITON_DATE) BETWEEN 0 AND 7 ---->MAIN QUERY

select ID,FNAME,LNAME,AGE,SPORTS_NAME,COMPETITION_DAY,CONVERT(VARCHAR(10),COMPETITON_DATE,103) AS COMPETITION_DATE FROM sport 
WHERE DATEPART(WEEKDAY,COMPETITON_DATE) BETWEEN 0 AND 7 
SELECT *  FROM SPORT ORDER BY FNAME DESC;

select ID,FNAME,LNAME,AGE,SPORTS_NAME,COMPETITION_DAY,CONVERT(VARCHAR(10),COMPETITON_DATE,103) AS COMPETITION_DATE FROM sport 
WHERE DATEPART(WEEKDAY,COMPETITON_DATE) BETWEEN 0 AND 7 OR ORDER BY FNAME DESC;

select ID,FNAME,LNAME,AGE,SPORTS_NAME,COMPETITION_DAY,CONVERT(VARCHAR(10),COMPETITON_DATE,103) 
AS COMPETITION_DATE FROM sport ORDER BY FNAME ASC;            ---------- USING ORDER BY


SELECT * FROM EDET
SELECT * FROM sport
SELECT * FROM EDATA


UPDATE SPORT SET ID=
CASE FNAME
WHEN 'AAKASH' THEN 1
WHEN 'BALWANT' THEN 2
WHEN 'NEERU' THEN 3
WHEN 'PALLAVI' THEN 4
WHEN 'ROCKY' THEN 5
END
WHERE ID IN ('AAKASH','BALWANT','NEERU','PALLAVI','ROCKY');  ------>  Cannot update identity column 'ID'.
UPDATE sport SET ID = IDENTITY(100,1);

set identity_insert SPORT OFF ---> Commands completed successfully. BUT I COULD NOT CHANGE  THE VALUE ANYMORE

CREATE TABLE EMPDATA(
EID INT PRIMARY KEY,
FNAME VARCHAR(15),
LNAME VARCHAR (15),
AGE INT,
ATDAY DATETIME);

INSERT INTO EMPDATA(EID,FNAME,LNAME,AGE,ATDAY)VALUES(101,'HARISH','KUMAR',22,GETDATE()),
(102,'DURAI','KANNAN',20,DATEADD(DAY,1,2023));

INSERT INTO EMPDATA(EID,FNAME,LNAME,AGE,ATDAY)VALUES
(103,'PRIYANKA','MOHAN',21,DATEADD(DAY,3,GETDATE())),
(104,'DAWOODH','IBRAHIM',23,DATEADD(DAY,4,GETDATE())),
(105,'VISWA','BHARATHI',20,DATEADD(DAY,5,GETDATE()));

SELECT * FROM EMPDATA

ALTER TABLE  EMPDATA ADD 
SELECT * FROM sport

---JOINING 2 TABLES ---

SELECT EMPDATA.EID,EMPDATA.FNAME,sport.SPORTS_NAME,CONVERT(VARCHAR(10),sport.COMPETITON_DATE,103)AS COMPETITON_DATE FROM EMPDATA JOIN SPORT ON EMPDATA.EID=SPORT.ID;

CREATE INDEX INDEX_DEMO
ON SPORT (ID,FNAME,LNAME,AGE,SPORTS_NAME,COMPETITION_DAY);  -->INDEX CREATE AIDUCHU... HOW TO USE IT

SELECT * FROM sport

--1)Find the difference between the total number of CITY entries in the table and
--the number of distinct CITY entries in the table.

--KEY CONSTRAINT(CHECK)--

ALTER TABLE SPORT
ADD CHECK (Age>=18);  -- IT IS RUNNING SUCCESSFULLY BUT NOT AFFECTS ON THE TABLE (Y?)

SELECT * FROM sport  -- 
select ID,FNAME,LNAME,AGE,SPORTS_NAME,COMPETITION_DAY,CONVERT(VARCHAR(10),COMPETITON_DATE,103) AS COMPETITION_DATE FROM sport 
WHERE DATEPART(WEEKDAY,COMPETITON_DATE) BETWEEN 0 AND 7 ---->MAIN QUERY

SELECT EMPDATA.EID,EMPDATA.FNAME,sport.SPORTS_NAME,CONVERT(VARCHAR(10),sport.COMPETITON_DATE,103)AS COMPETITON_DATE FROM EMPDATA JOIN SPORT ON EMPDATA.EID=SPORT.ID;

SELECT AGE FROM Customers
UNION
SELECT AGE FROM Suppliers
ORDER BY AGE;
