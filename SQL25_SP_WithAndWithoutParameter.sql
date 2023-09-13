CREATE PROCEDURE spGetResult
  @No1 INT,
  @No2 INT,
  @Result INT OUTPUT
AS
BEGIN
  SET @Result = @No1 + @No2
END
-- To Execute Procedure
DECLARE @Result INT
EXECUTE spGetResult 10, 20, @Result OUT
PRINT @Result

-----------------------------------------------------------------------------------------------
ALTER PROCEDURE spGetResult
  @No1 INT,
  @No2 INT,
  @Result INT OUTPUT
AS
BEGIN
  SET @Result = @No1 + @No2;  
END;
GO
-- To Execute Procedure

DECLARE @Result INT   ---> ITS HELPS TO STORE THE VALUE AFTER COMPILING.
EXECUTE spGetResult 10, 20, @Result OUT;  --> IF I GAVE OUT AT THERE IT WILL GIVE A RESULT. BIT IF DONT GIVE OUT MEANS ITS JUST COMPILING ONLY(WHY)
PRINT @Result;

----------------------------------------------------     JUST DECALRING VARIABLE TO DIPLAY THE DATA                -------------------------------------------------------------

ALTER PROCEDURE spGetResult
  @No1 INT,
  @No2 INT,
  @Result INT OUTPUT
AS
BEGIN
  SET @Result = @No1 + @No2;  
  SET @V_Answer=@Result;
END;
GO
-- To Execute Procedure

DECLARE @V_Answer INT  
EXECUTE spGetResult 10, 20, @V_Answer OUT;  
PRINT @V_Answer;

------------------------------------------------------------- DISPALYING THE OUTPOUT WITH THE HELP OF  ANOTHER VARIABLE  -------------------------------------------------------------------------


ALTER PROCEDURE spGetResult
  @No1 INT,
  @No2 INT,
  @Result INT OUTPUT
AS
BEGIN
  SET @Result = @No1 + @No2;  
END;
GO
-- To Execute Procedure

DECLARE @V_Answer INT  
EXECUTE spGetResult 10, 20, @V_Answer OUT;  
PRINT 'ADDITION OF TWO NUMBER IS :'+ CAST(@V_Answer as varchar(50));

---------------------------------------------------                   --------------------------------------------------------------
SELECT * FROM EMPDUP

SELECT * FROM EMPDATA

SELECT * FROM SPORT

SELECT * FROM STUDENTS;

-----------------------------------------------------                     --------------------------------------------------------------------
CREATE SCHEMA STD;

CREATE TABLE STD.STUDENT(
ID INT NOT NULL,
FNAME VARCHAR(25),
LNAME VARCHAR(25),
AGE INT,
DEPARTMENT VARCHAR(25),
STD_PERCENTAGE INT,
CITY VARCHAR(25));

INSERT INTO STD.STUDENT(ID,FNAME,LNAME,AGE,DEPARTMENT,STD_PERCENTAGE,CITY)VALUES
(1,'GEETHA','SHREE',22,'COMPUTER SCIENCE',82,'PALLIPALAYAM'),
(2,'BRINDHA','SHREE',20,'COMPUTER SCIENCE',85,'ERODE'),
(3,'YAZHINI','KANDASAMY',21,'ARTIFICIAL INTELLIGENCE',82,'ERAYAMANGALAM'),
(4,'DAWOODH','IBRAHIM',20,'COMPUTER SCIENCE',66,'SOLASIRAMANI'),
(5,'GOWRI','SHANKAR',23,'COMPUTER SCIENCE',98,'KUMARAPALAYAM'),
(6,'NETHAJI','SUNDARAM',25,'BIO TECHNOLOGY',77,'TIRUCHENGODE'),
(7,'JAGATHIYA','SATHASIVAM,',20,'INFORMATION TECHNOLOGY',60,'NAMAKKAL'),
(8,'MEGHAA','SRINIVASAN',21,'DATA SCIENCE',72,'ERODE'),
(9,'DURAI','KANNAN',23,'ENGLISH LITERATURE',62,'KARUNGALPALAYAM'),
(10,'BHARATHAN','DURAISAMY',22,'BIO TECHNOLOGY',52,'VATTUR'),
(11,'JENCY','THILAKAVATHI',24,'CHEMISTRY',81,'KAALIPATTI'),
(12,'LAVANYA','BHARATHAN',23,'PHYSICS',89,'PATLUR'),
(13,'SRINITHI','NITHIN',21,'BIO TECHNOLOGY',92,'JEDARPALAYAM'),
(13,'HEMA','DHANASEKAR',22,'INFORMATION TECHNOLOGY',89,'DHARAMPURAM'),
(14,'HARISH','KUMAR',25,'ENGLISH LITERATURE',86,'KANGEYAM'),
(15,'PRIYANKA','THIYAHARAJAN',22,'MATHEMATICS',87,'KALLAKURICHI'),
(16,'JENCY','THILAGAVATHY',21,'DATA SCIENCE',88,'GUINDY');

SELECT * FROM STD.STUDENT; 
UPDATE STD.STUDENT SET ID=
CASE FNAME
WHEN 'HEMA' THEN 14
WHEN 'HARISH' THEN 15
WHEN 'PRIYANKA' THEN 16
WHEN 'JENCY' THEN 17
END
WHERE FNAME IN ('HEMA','HARISH','PRIYANKA','JENCY');

UPDATE STD.STUDENT SET FNAME='RAVEENA' WHERE ID=11;

--------------------------------------------------------------------               -------------------------------------------------------------------
SELECT COUNT(ID),COUNT(AGE) FROM STD.STUDENT ORDER BY DEPARTMENT; 

-- Column "STD.STUDENT.DEPARTMENT" is invalid in the ORDER BY clause because it is not contained in either an aggregate function or the GROUP BY clause. --
--     [An aggregate function cannot be used directly in: an ORDER BY clause]

---------------------------------------------------------------------              --------------------------------------------------------------------
SELECT COUNT(ID) AS NO_OF_ID,ID,COUNT(AGE) AS NO_OF_PEOPLE,AGE, DEPARTMENT FROM  STD.STUDENT GROUP BY DEPARTMENT; 

SELECT COUNT(ID)  ,AGE, DEPARTMENT FROM  STD.STUDENT GROUP BY DEPARTMENT; 
SELECT COUNT(ID),DEPARTMENT,COUNT(AGE),AGE FROM STD.STUDENT WHERE DEPARTMENT='COMPUTER SCIENCE' GROUP BY ID;

--------------------------------------------------------------                             -----------------------------------------------------------------------------------
SELECT ID, COUNT(ID)AS NO_OF_ID,AGE,COUNT(AGE) AS NO_OF_PEOPLE FROM STD.STUDENT WHERE DEPARTMENT='COMPUTER SCIENCE'; 
--Column 'STD.STUDENT.ID' is invalid in the select list because it is not contained in either an aggregate function or the GROUP BY clause.
 
--------------------------------------------------------------                              ---------------------------------------------------------------------------------
SELECT COUNT(ID)AS NO_OF_ID,COUNT(AGE) AS NO_OF_PEOPLE FROM STD.STUDENT WHERE DEPARTMENT='COMPUTER SCIENCE';