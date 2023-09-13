create schema demo;
create table demo.emp(Id int,Name varchar(50))
INSERT into demo.emp(Id,Name)values(1,'Geetha'),
(2,'Kowsalya'),
(3,'Gowri'),
(4,'Nisha'),
(5,'Viswa'),
(6,'jai');

CREATE PROCEDURE Pro_Demo
AS
BEGIN
SELECT * FROM demo.emp;
END
EXEC Pro_Demo

ALTER PROC pro_demo
AS 
BEGIN
INSERT INTO demo.emp(id,Name)VALUES(7,'Durai')
select * from demo.emp
delete from demo.emp where id>=7
/*
1	Geetha
2	Kowsalya
3	Gowri                  if i deldte the 7th id in the procedure table means 
4	Nisha                     its only deleted in the emp table itself only
5	Viswa                         not delete in (pro_demo) procedure table (y?)how to delete 
6	jai */
END 
exec Pro_Demo
---------------------------------------------------------                --------------------------------------------------------------------
CREATE TABLE demo.tst(
ID INT not null  PRIMARY KEY,
Fname VARCHAR(25),
Age INT);

INSERT INTO demo.tst(ID,Fname,Age)
--------------------------------------------------------                    -------------------------------------------------------------
SELECT * INTO demo.dummy FROM demo.emp; 
select * from demo.dummy;

CREATE PROC pro_dummy
AS
BEGIN
SELECT * FROM demo.dummy
END

EXEC pro_dummy

ALTER PROC pro_dummy
AS
BEGIN
INSERT INTO demo.dummy(id,name)VALUES(7,'yazhu')
SELECT * FROM demo.dummy
END

------------------------------------------------------------                        --------------------------------------------------------------

ALTER PROC pro1_dummy               ----->(Invalid object name 'pro1_dummy')ERROR
AS                                  -----> without creating a store procedure we cannot use a alter procedure
BEGIN
INSERT INTO demo.dummy(id,name)VALUES(7,'yazhu')
END

EXEC pro_dummy
-------------------------------------------------               -------------------------------------------------------------
select * into demo.dummy1 from demo.emp

ALTER PROC pro2_dummy
AS
BEGIN
  SELECT * FROM demo.dummy1
  --INSERT INTO demo.dummy1(id,name)VALUES(7,'yazhu')  inpite of being in comment its working
  --INSERT INTO demo.dummy1(id,name)VALUES(8,'jency')  it is inserting values to the table
END

EXEC pro2_dummy
--------------------------------------------------               --------------------------------------------------------------------------------
ALTER PROC pro2_dummy
AS
BEGIN
  SELECT * FROM demo.dummy1
  INSERT INTO demo.dummy1(id,name)VALUES(11,'Harish')
END

EXEC pro2_dummy
----------------------------------------------------             ---------------------------------------------------------------------------------------
create table demo.testppr(
Id int not null primary key,
Fname varchar(25),
Lname varchar(25),
Tamil int,
English int);

ALTER PROCEDURE test
AS
BEGIN
 SELECT * FROM demo.testppr
 insert into demo.testppr(Id,Fname,Lname,Tamil,English)VALUES(1,'Geetha','Shree',85,96),
 (2,'Brinha','Shree',84,98),
 (3,'Durai','Kannan',75,96),
 (4,'Gowri','Shankar',95,90),
 (5,'Dawoodh','Ibrahim',80,96);
END

EXEC test
------------------------------------------------------------                  ---------------------------------------------------------------
ALTER PROCEDURE test
AS
BEGIN
 SELECT * FROM demo.testppr
 
END

EXEC test

/* (5 rows affected)
Msg 217, Level 16, State 1, Procedure test, Line 8 [Batch Start Line 114]
Maximum stored procedure, function, trigger, or view nesting level exceeded (limit 32).*/

---------------------------------------------------                 ---------------------------------------------------------------------------
CREATE PROC TEST1(@FNAME VARCHAR,@LNAME VARCHAR(50))
AS
BEGIN
 DECLARE @RESULT VARCHAR
 SET @RESULT=@FNAME+@LNAME
 PRINT'FULLNAME'+RESULT
END
GO

EXEC TEST1'GEETHA','SHREE'

ALTER PROC TEST1(@FNAME VARCHAR,@LNAME VARCHAR(50))
AS
BEGIN
 DECLARE @RESULT VARCHAR(100)
 SET @RESULT=@FNAME+@LNAME
 PRINT'FULLNAME'+@RESULT
END
GO


EXEC TEST1 @FNAME='GEETHA',@LNAME='SHREE'
------------------------------------------------------------                    ----------------------------------------------------------------
CREATE PROCEDURE TEST2(
@N1 INT,
@N2 INT)
AS
BEGIN
 DECLARE @RESULT INT
 SET @RESULT=@N1+@N2
 PRINT @RESULT INT
END
GO

EXEC @N1=5,@N2=7

/* Column, parameter, or variable #2: Cannot specify a column width on data type int. 
Column, parameter, or variable #2: Cannot specify a column width on data type int.
Msg 137, Level 15, State 2, Line 153
Must declare the scalar variable "@N1". */

--------------------------------------------     ------------------------------------
CREATE PROCEDURE spAddTwo(@no1 INT, @no2 INT)
AS
BEGIN
  DECLARE @Result INT
  SET @Result = @no1 + @no2
 -- PRINT 'RESULT IS: '+ CAST(@Result AS VARCHAR)

END
GO

ALTER PROC ADDTWO(@N1 INT ,@N2 INT)
AS
BEGIN
  DECLARE @RESULT INT
  SET @RESULT=@N1+@N2
  PRINT 'THE RESULT IS :' + CAST(@RESULT AS VARCHAR)
END
EXEC ADDTWO @N1=5,@N2=7;