SP_HELPTEXT SP_DemoPro;

ALTER PROCEDURE SP_DemoPro  
--(@NAME1 VARCHAR(25),@NAME2 VARCHAR (25))  
AS  
BEGIN  
  --DECLARE @FULLNAME VARCHAR(50)   
  --SET @FULLNAME =@NAME1 + @NAME2  
  --PRINT 'FULLNAME IS :'+ @FULLNAME  
  --SELECT ID,NAME,AGE FROM CUSTOMERS; 
    SELECT ID, NAME,AGE FROM STUDENTS INTERSECT SELECT ID, NAME, AGE FROM CUSTOMERS;  
    SELECT name, age, salary  
    FROM CUSTOMERS  
    ORDER BY salary;  
END;  
  
EXEC SP_DemoPro ;

CREATE TABLE STUDENTS(
ID INT NOT NULL, 
NAME VARCHAR(20) NOT NULL, 
SUBJECT VARCHAR(20) NOT NULL, 
AGE INT NOT NULL, 
PRIMARY KEY(ID)
);
INSERT INTO STUDENTS(ID, NAME, AGE, HOBBY) VALUES(1, 'kaushik', 26, 'Football');
INSERT INTO STUDENTS(ID, NAME, HOBBY, AGE) VALUES(2, 'Varun', 'Football', 26);
INSERT INTO STUDENTS(ID, NAME, HOBBY, AGE) VALUES(3, 'Surya', 'Cricket', 19);
INSERT INTO STUDENTS(ID, NAME, HOBBY, AGE) VALUES(4, 'Chaitali', 'Cricket', 25);
INSERT INTO STUDENTS(ID, NAME, HOBBY, AGE) VALUES(5, 'Hardik', 'Football', 26);
INSERT INTO STUDENTS(ID, NAME, HOBBY, AGE) VALUES(6, 'Dev', 'Cricket', 23);

SELECT * FROM STUDENTS INTERSECT SELECT * FROM CUSTOMERS;      --(Y ITS NOT GETTING THE RESULT)

--------------------------------------------                     ----------------------------------------------------------------

SELECT * FROM STUDENTS;

SELECT * FROM CUSTOMERS; 

SELECT ID, NAME,AGE FROM STUDENTS INTERSECT SELECT ID, NAME, AGE FROM CUSTOMERS;  ---INTERSECT


SELECT ID, NAME,AGE FROM STUDENTS UNION ALL SELECT ID, NAME, AGE FROM CUSTOMERS;   --UNION

---------------------------------------------       SP_DemoPro          ----------------------------------------------------------------------

ALTER PROC SP_DemoPro 
AS
BEGIN
  SELECT ID, NAME,AGE FROM STUDENTS INTERSECT SELECT ID, NAME, AGE FROM CUSTOMERS;
END;

EXEC SP_DemoPro;

-----------------------------------------        ADDING TWO VALUES                    ---------------------------------------------------------------------------

SELECT * FROM STUDENTS;

CREATE PROC ADD_TWO
(@NUM1 INT,@NUM2 INT)
AS
BEGIN
 DECLARE @ADD INT
 SET @ADD=@NUM1+@NUM2
 PRINT'ADDITION OF NUM1+NUM2 : '+ CAST(@ADD AS VARCHAR)
 SELECT ID,NAME FROM STUDENTS;
END;

EXEC ADD_TWO @NUM1=8,@NUM2=7;

---------------------------------------------           ADD OF 2 NUMBERS             -------------------------------------------

ALTER PROC ADD_TWO(@NUM1 INT,@NUM2 INT)
AS
BEGIN
  DECLARE @ADD INT
  SET @ADD=@NUM1+@NUM2
  PRINT'ADDITION OF NUM1+NUM2 : '+ CAST(@ADD AS VARCHAR)
END;

EXEC ADD_TWO @NUM1=5,@NUM2=7;

-------------------------------------------------        UPDATING CUSTOMERS  TABLE                 -----------------------------------------------------

ALTER PROC DISPLAY_DETAILS
(@AGE INT, @NAME VARCHAR(25))
AS
BEGIN
  UPDATE CUSTOMERS SET  AGE=@AGE,NAME=@NAME WHERE ID=5;
END;
 
EXEC DISPLAY_DETAILS @AGE=27,@NAME='Kowsalya';
SELECT * FROM CUSTOMERS;

-----------------------------------------------------     DISPLAY CUSTOMERS TABLE  IN PROC     ---------------------------------------------------------

ALTER PROC DISPLAY_DETAILS
AS
BEGIN
  SELECT ID,NAME,AGE FROM CUSTOMERS INTERSECT SELECT ID,NAME,AGE FROM STUDENTS;
  SELECT * FROM CUSTOMERS;
END;

EXEC DISPLAY_DETAILS;

-----------------------------------------------------     DISPLAY INTERSECT  IN PROC     ---------------------------------------------------------

ALTER PROC DISPLAY_DETAILS
AS
BEGIN
  SELECT ID,NAME,AGE FROM CUSTOMERS INTERSECT SELECT ID,NAME,AGE FROM STUDENTS;
  
END;

EXEC DISPLAY_DETAILS;

---------------------------------------------------------------     UPDATE FOR STUDENTS TABLE      ----------------------------------------------------------
ALTER PROC DISPLAY_DETAILS
--(@AGE INT, @NAME VARCHAR(25))
AS
BEGIN
  SELECT EOMONTH('2023-02-17') AS END_OF_MONTH;
END;
 
EXEC DISPLAY_DETAILS @AGE=28,@NAME='Kavitha';
SELECT * FROM STUDENTS;

--------------------------------------------------------              --------------------------------------------------------------

SELECT @@DATEFIRST AS RESULT;
SELECT EOMONTH('2023-02-17') AS END_OF_MONTH;

SELECT GETDATE() as 'TODAY_DATE', DATEPART(dw, SYSDATETIME()) AS 'TODAY';

-------------        https://www.tutorialspoint.com/sql/sql-date-functions-datefirst.htm           ---------------------

------------------------------   PASSING ARGS FOR THE PROC  ----------------------------------------------------------

CREATE PROC PASSING_ARGS
@HOBBY VARCHAR(20)
AS
BEGIN
 SELECT * FROM STUDENTS WHERE HOBBY=@HOBBY;
END;

EXEC @HOBBY='CRICKET'

/* Msg 137, Level 15, State 2, Line 147
Must declare the scalar variable "@HOBBY".  */


ALTER  PROC PASSING_ARGS
@AGE INT
AS
BEGIN
 SELECT * FROM STUDENTS WHERE AGE=@AGE;
END;

EXEC PASSING_ARGS @AGE=26;
------------------------                   UPDATING AGE FOR THE STUDENTS TABLE WHERER THE AGE IS 19                       -------------------

ALTER PROC PASSING_ARGS(@AGE INT)
AS
BEGIN
  UPDATE STUDENTS SET AGE=@AGE WHERE AGE=19;
END

EXEC PASSING_ARGS @AGE=25;
SELECT * FROM STUDENTS;

ALTER PROC PASSING_ARGS
AS
BEGIN
 SELECT * FROM STUDENTS
 SELECT * FROM STUDENTS WHERE NAME LIKE'K%';
END;
EXEC PASSING_ARGS;



