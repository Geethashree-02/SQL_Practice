SELECT * FROM STD.STUDENT;

CREATE TABLE CompanyDet
(
ID INT,
FNAME VARCHAR(25),
LNAME VARCHAR (25),
DEPARTMENT VARCHAR(25),
JOINDATE DATE,
GENDER VARCHAR(5),
AGE INT,
EXPERIENCE INT,
EMAIL VARCHAR(50),
SALARY DECIMAL(8,2),
CITY VARCHAR(50))
;

INSERT INTO CompanyDet
(ID,FNAME,LNAME,DEPARTMENT,JOINDATE,GENDER,AGE,EXPERIENCE,EMAIL,SALARY,CITY)VALUES
(1,'ARUNA','RAM','ACCOUNTS','8.8.2020','F',21,5,'aruna1@gmail.com',15253.84,'CHENNAI');

SELECT * FROM CompanyDet;


INSERT INTO CompanyDet
(ID,FNAME,LNAME,DEPARTMENT,JOINDATE,GENDER,AGE,EXPERIENCE,EMAIL,SALARY,CITY)VALUES
(2,'ARUN','SAM','WEB DESIGNER','10.8.2021','M',25,3,'arun2@gmail.com',10253,'TRICHY');

INSERT INTO CompanyDet
(ID,FNAME,LNAME,DEPARTMENT,JOINDATE,GENDER,AGE,EXPERIENCE,EMAIL,SALARY,CITY)VALUES
(3,'AKASH','RAJ','SERVER ENGINEER','8.5.2020','M',23,2,'akash2@gmail.com',10553,'TIRUPPUR'),
(4,'ANBU','SELVAN','SOFTWARE ENGINEER','8.5.2021','M',23,2,'anbu3@gmail.com',11587,'CHENNAI');

INSERT INTO CompanyDet
(ID,FNAME,LNAME,DEPARTMENT,JOINDATE,GENDER,AGE,EXPERIENCE,EMAIL,SALARY,CITY)VALUES
(5,'KARTHI','SIVARAM','DATA WAREHOUSE ARCHITECT','8.5.2022','M',25,1,'karthi5@gmail.com',12153,'ERODE');

INSERT INTO CompanyDet
(ID,FNAME,LNAME,DEPARTMENT,JOINDATE,GENDER,AGE,EXPERIENCE,EMAIL,SALARY,CITY)VALUES
(6,'INDHU','RAJESH','DATA SCIENTIST','10.5.2022','F',48,15,'indhu5@gmail.com',12153,'NAMAKKAL');

INSERT INTO CompanyDet
(ID,FNAME,LNAME,DEPARTMENT,JOINDATE,GENDER,AGE,EXPERIENCE,EMAIL,SALARY,CITY)VALUES
(7,'NITHYA','KRISH','SERVER ENGINEER','8.12.2023','M',24,5,'nithya5@gmail.com',13153,'VELACHERRY');

INSERT INTO CompanyDet
(ID,FNAME,LNAME,DEPARTMENT,JOINDATE,GENDER,AGE,EXPERIENCE,EMAIL,SALARY,CITY)VALUES
(8,'KESAVAN','DURAI','BUSINESS ANALYST','11.1.2023','M',45,1,'karthi5@gmail.com',12153,'PUDUKOTTAI');

INSERT INTO CompanyDet
(ID,FNAME,LNAME,DEPARTMENT,JOINDATE,GENDER,AGE,EXPERIENCE,EMAIL,SALARY,CITY)VALUES
(9,'AMRITHA','SANJIV','DATA ANALYST','5.7.2022','F',25,1,'amritha02@gmail.com',17203,'CUDDALORE');

INSERT INTO CompanyDet
(ID,FNAME,LNAME,DEPARTMENT,JOINDATE,GENDER,AGE,EXPERIENCE,EMAIL,SALARY,CITY)VALUES
(10,'SATHYA','PRAKASH','DATABASE DESIGNER','8.5.2022','F',27,5,'sathya4@gmail.com',22153,'KARUR');


INSERT INTO CompanyDet
(ID,FNAME,LNAME,DEPARTMENT,JOINDATE,GENDER,AGE,EXPERIENCE,EMAIL,SALARY,CITY)VALUES
(11,'SANJAY','KUMAR','SERVER ENGINEER','2.7.2022','M',25,12,'sanjay88@gmail.com',90203,'PALANI');
 --- IF DATE IS MORE THENA 10 THEN IT SHOWS --msg 241, level 16, state 1, line 59 conversion failed when converting date and/or time from character string 

 SELECT * FROM CompanyDet;

 INSERT INTO CompanyDet
(ID,FNAME,LNAME,DEPARTMENT,JOINDATE,GENDER,AGE,EXPERIENCE,EMAIL,SALARY,CITY)VALUES
(11,'RAM','KUMAR','ACCOUNTANT','12.5.2022','M',25,12,'ram99@gmail.com',105482,'NAMAKKAL');

 INSERT INTO CompanyDet
(ID,FNAME,LNAME,DEPARTMENT,JOINDATE,GENDER,AGE,EXPERIENCE,EMAIL,SALARY,CITY)VALUES
(12,'RAM','KUMAR','ACCOUNTANT','12.5.2022','M',25,12,'ram99@gmail.com',105482,'NAMAKKAL');

UPDATE CompanyDet SET GENDER='F' WHERE ID=7;

 INSERT INTO CompanyDet
(ID,FNAME,LNAME,DEPARTMENT,JOINDATE,GENDER,AGE,EXPERIENCE,EMAIL,SALARY,CITY)VALUES
(13,'KISHORE','KHANTH','ACCOUNTANT','25.7.2018','M',28,17,'kishore7@gmail.com',175482,'TIRUNELVELI');

SELECT CITY FROM STD.STUDENT

UNION ALL

SELECT CITY FROM CompanyDet; 

----                  ---------------                      ------------

SELECT * FROM STD.STUDENT

UNION 

SELECT * FROM CompanyDet;

-- ONLY SELECTE COLUMS AH MATU THA UNION PANA MUDIUMAA... OVERALL AH ELLA TABLE AH UNIUN PANNA MUDIYATHA?...

 
SELECT STUDENT.ID,STUDENT.FNAME,STUDENT.LNAME,CompanyDet.SALARY  FROM STUDENT INNER JOIN CompanyDet ON  STUDENT.ID = CompanyDet.ID;

SELECT STUDENT.AGE,CompanyDet.SALARY  FROM STUDENT INNER JOIN CompanyDet ON  STUDENT.ID = CompanyDet.ID;

SELECT FNAME
FROM STUDENT
INNER JOIN STUDENT
ON CompanyDet.ID = STUDENT.ID;

SELECT * FROM CompanyDet;

ALTER PROC SP_USING_CompanyDet

AS
BEGIN
     --
	 SELECT EXPERIENCE, AGE,
	 COUNT(*)NO_OF_EXPERIENCED_PEOPLE
	 FROM CompanyDet 
	 GROUP BY EXPERIENCE,AGE
	 ORDER BY AGE;

	 SELECT EXPERIENCE, AGE,
	 COUNT(AGE)NO_OF_EXPERIENCED_PEOPLE
	 FROM CompanyDet 
	 GROUP BY EXPERIENCE,AGE
	 ORDER BY EXPERIENCE;

	 SELECT * FROM CompanyDet;

	  IF AGE > 21

	 BEGIN
	     SELECT AGE FROM CompanyDet;
	 END;

END;
GO

EXEC SP_USING_COMPANYDET;

SELECT * FROM CompanyDet;

SELECT ID,
FNAME+LNAME AS NAME,
AGE,DEPARTMENT,GENDER 
FROM CompanyDet 
ORDER BY DEPARTMENT ASC;

SELECT * FROM STUDENT;

SELECT CompanyDet.ID,STUDENT.Subject_Name FROM STUDENT INNER JOIN CompanyDet ON STUDENT.REG_ID=CompanyDet.ID;

SELECT CompanyDet.FNAME,STUDENT.Subject_Name FROM STUDENT INNER JOIN CompanyDet ON STUDENT.REG_ID=CompanyDet.ID;

CREATE PROC COMPANY
@AGE INT;

  IF AGE > 21

	 BEGIN
	     SELECT AGE FROM CompanyDet;
	 END;

GO

CREATE PROC SP_USER
   
DECLARE @Marks INT = 65 ;  
  
  IF @marks >= 45  
  BEGIN  
     PRINT 'Congratulations! You pass the Examination';  
  END 
---------------                    ---------------------

---------   JAVATPOINT    ------------------------------------------------

CREATE PROC SP_USER
DECLARE @Marks INT;  
SET @Marks = 65;  
IF @marks < 45  
BEGIN  
   PRINT 'Congratulations! You pass the Examination';  
END  
ELSE  
BEGIN  
   PRINT 'You are Failed! Better Luck Next Time';  
END 

EXEC SP_USER

 stored proc la if else use pannanu... joins use pannanu... 