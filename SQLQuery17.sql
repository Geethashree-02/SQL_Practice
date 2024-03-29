create table EDet(
EMPID INT IDENTITY(1,1) PRIMARY KEY,
FNAME VARCHAR(50),
LNAME VARCHAR(50),
AGE INT,
JDATE DATE,
JDAY VARCHAR(25));

INSERT INTO EDet(FNAME,LNAME,AGE,JDATE,JDAY) VALUES
('BrindhaShree','Ramachandra',21,'2023/08/13','Sunday');
INSERT INTO EDet(FNAME,LNAME,AGE,JDATE,JDAY) VALUES
('Durai','Kannan',22,'2023/08/14','Monday'),
('Bharathan','Kandasamy',20,'2023/08/15','Tuesday'),
('Ramya','Ramachandra',21,'2023/08/16','Wednesday'),
('Prem','Kumar',25,'2023/08/17','Thursday'),
('Dhinesh','Kumar',22,'2023/08/18','Friday'),
('Nithin','Kumar',23,'2023/08/19','Saturday'),
('Harini','Santhosh',21,'2023/08/20','Sunday'),
('Arun','Kumar',20,'2023/08/21','Monday');------Operand type clash: int is incompatible with date when it is in without quotes in date

INSERT INTO EDet(FNAME,LNAME,AGE,JDATE,JDAY) VALUES
('BrindhaShree','Ramachandra',21,'13/08/2023','Sunday');-------'15-6-2005'  ---Conversion failed when converting date and/or time from character string.

INSERT INTO EDet(FNAME,LNAME,AGE,JDATE,JDAY) VALUES
('BrindhaShree','Ramachandra',21,'2023-5-15','Sunday');

alter table EDet add DOB  date ;
update EDet set DOB='2007-05-08' where EMPID=1       ------- Not able to store the value without quotes where i declare the datatype as date
SELECT * FROM EDet;

alter table EDet add DoFBirthOfStu  datetime ;

update EDet set DoFBirthOfStu=2006-05-08 where EMPID=1       ------ At here i declare the data type as datetime then only i can store the date without quotes

select FNAME,LNAME,AGE,JDATE,JDAY  from  EDet  WHERE DATEPART(weekday,JDATE) BETWEEN 4 AND 7  ----Range operator

SELECT * FROM EDET WHERE DATEPART(WEEKDAY,JDATE) IN (4,7)               ----------- 

SELECT * FROM EDet;

select FNAME,LNAME,AGE,JDATE,JDAY  from  EDet  WHERE DATEPART(weekday,JDATE) BETWEEN 4 AND 7

SELECT DATENAME(WEEKDAY,'2023/08/21')AS DATENAME       -------> MONDAY  --> IT SHOWS THE NAME OF THE DAY

SELECT DATEPART(weekday,'2023/08/21')AS DATEPART         -----> 2 = (MONDAY) HERE IT SHOWS THE NUMBER OF THE DAY 

SELECT EMPID,FNAME,LNAME,AGE,JDATE,JDAY,datepart(weekday,JDATE) as dayweekdt FROM EDet;

select *  from  EDet  WHERE DATEPART(weekday,JDATE) BETWEEN 4 AND 7

select *  from  EDet  WHERE DATEPART(weekday,JDATE) in (2,3,4,5)

SELECT  DATENAME(WEEKDAY, JDATE) AS ATNAME,DATEPART(WEEKDAY,JDATE)AS ATDATE FROM EDet

SELECT EMPID,FNAME,LNAME,AGE,JDATE,JDAY, DATENAME(WEEKDAY,JDAY)as ATDAY FROM EDet where DATEPART(WEEKDAY,JDATE)  between 1 and 7 --> AT HERE 
--> I AM ADDING 1 DAY TO JDATE INSTEAD OF THAT I AM ALSO EXPECTING THAT ADDING DATE WITH ITS DAY (HOW ?)

SELECT * FROM EDet;

select EMPID,FNAME,LNAME,AGE,JDATE,JDAY,DATEPART(WEEKDAY,JDATE) from EDet WHERE DATENAME(WEEKDAY,JDATE) BETWEEN 1 AND 7

select* from EDet WHERE DATEPART(WEEKDAY,JDATE) BETWEEN 1 AND 7             ---------------
               ----     |                                                    ------------ SAME TO SAME FUNCTION
               ----     |
select FNAME,LNAME,AGE,JDATE,JDAY  from  EDet  WHERE DATEPART(weekday,JDATE) BETWEEN 4 AND 7

SELECT * FROM EDET WHERE DATEADD

CREATE TABLE EDATA(
EID INT IDENTITY(1,1)PRIMARY KEY,
FNAME VARCHAR(15),
LNAME VARCHAR (15),
AGE INT,
ATDAY DATETIME);

INSERT INTO EDATA(EID,FNAME,LNAME,AGE,ATDAY)VALUES(101,'HARISH','KUMAR',22,GETDATE()),
(102,'DURAI','KANNAN',20,DATEADD(DAY,1,2023));

INSERT INTO EDATA(EID,FNAME,LNAME,AGE,ATDAY)VALUES
(103,'PRIYANKA','MOHAN',21,DATEADD(DAY,3,GETDATE())),
(104,'DAWOODH','IBRAHIM',23,DATEADD(DAY,4,GETDATE())),
(105,'VISWA','BHARATHI',20,DATEADD(DAY,5,GETDATE()));



UPDATE EDATA SET ATDAY=GETDATE() WHERE EID=1;
UPDATE EDATA SET ATDAY=DATEADD(DAY,1,GETDATE()) WHERE EID=2;
UPDATE EDATA SET ATDAY=DATEADD(DAY,2,GETDATE()) WHERE EID=2;

SELECT * FROM EDATA

SELECT * FROM EDATA WHERE DATEPART(WEEKDAY,ATDAY)  BETWEEN 1 AND 5;
INSERT INTO EDATA(FNAME,LNAME,AGE,ATDAY)VALUES
('JENCY','THILAGAVATHY',25,DATEADD(DAY,2,GETDATE()));

SELECT * FROM EDATA WHERE DATEPART(WEEKDAY,ATDAY) BETWEEN 1 AND 7

UPDATE EDATA SET ATDAY=
CASE EID 
WHEN 1 THEN GETDATE()
WHEN 2 THEN DATEADD(DAY,1,GETDATE())
WHEN 3 THEN DATEADD(DAY,2,GETDATE())
WHEN 4 THEN DATEADD(DAY,3,GETDATE())
WHEN 5 THEN DATEADD(DAY,4,GETDATE())
WHEN 6 THEN DATEADD(DAY,5,GETDATE())
END
WHERE EID IN (1,2,3,4,5,6)

SELECT * FROM EDATA

SELECT * FROM EDATA WHERE DATEPART(WEEKDAY,ATDAY) BETWEEN 0 AND 5

SELECT EID,FNAME,LNAME,AGE,CONVERT(VARCHAR(10),ATDAY,103)AS ATDATE, DATENAME(WEEKDAY,ATDAY)AS ATDAY FROM EDATA

select* from EDet WHERE DATEPART(WEEKDAY,JDATE) BETWEEN 4 AND 7 ;   

UPDATE EDET SET DoFBirthOfStu =
CASE EMPID
WHEN 1 THEN ' '
WHEN 2 THEN ' '
WHEN 3 THEN ' '
WHEN 4 THEN ' '
WHEN 5 THEN ' '
WHEN 6 THEN ' '
WHEN 7 THEN ' '
WHEN 8 THEN ' '
WHEN 9 THEN ' '
WHEN 10 THEN ' '
WHEN 11 THEN ' '
WHEN 12 THEN ' '
WHEN 13 THEN ' '
END 
WHERE EMPID IN (1,2,3,4,5,6,7,8,9,10,11,12,13);

SELECT  EMPID,FNAME,LNAME,AGE,JDATE,JDAY FROM EDet WHERE DATEPART(WEEKDAY,JDATE) BETWEEN 4 AND 7

SELECT * FROM EDATA

SELECT * FROM EDATA WHERE DATEPART(WEEKDAY,ATDAY) BETWEEN 0 AND 5

SELECT EID,FNAME,LNAME,AGE,CONVERT(VARCHAR(10),ATDAY,103)AS ATDATE, DATENAME(WEEKDAY,ATDAY)AS ATDAY FROM EDATA  

SELECT  EMPID,FNAME,LNAME,AGE,JDATE,JDAY FROM EDet WHERE DATEPART(WEEKDAY,JDATE) BETWEEN 4 AND 7 --> SIR YESTERDAY HAVE GIVEN TASK 

