
--------------------------------------     PROCEDURE WITH PASSING ARGUMENTS    ----------------------------------------------- 

ALTER PROCEDURE SPORTS_TABLE
@SPRT_ID INT,
@SNAME VARCHAR(50)
AS
BEGIN
  PRINT 'SPORT_ID : '+ CAST(@SPRT_ID AS VARCHAR)+' , ' + 'STUD_NAME : ' +CAST(@SNAME AS VARCHAR);
END;
GO

EXEC SPORTS_TABLE 101,'RAMYA';


------------------------------------      CREATE TABLE          ---------------------------------------
CREATE SCHEMA WRK;

CREATE TABLE WRK.WORKER(
EID INT IDENTITY PRIMARY KEY,
ENAME VARCHAR(20),
EAGE INT,
ESALARY DECIMAL(4,2));         ---> HOW TO MODIFY SIZE OF THE SALARY COLUMN AS(8)

--CONVERT(ESALARY AS DECIMAL(8,2)FROM WRK.WORKER);

INSERT INTO WRK.WORKER (ENAME,EAGE,ESALARY)
VALUES('GEETHA',22,25000.00);

SELECT * FROM WRK.WORKER;

ALTER TABLE WRK.WORKER DROP COLUMN ESALARY ;
ALTER TABLE WRK.WORKER ADD CITY VARCHAR(25);

ALTER TABLE WRK.WORKER ADD ESALARY DECIMAL(8,2);

UPDATE WRK.WORKER SET CITY='NAMAKKAL' WHERE EID=2;

INSERT INTO WRK.WORKER (ENAME,EAGE,ESALARY,CITY)VALUES
('KAVIHA',21,26000.00,'SANKAKIRI'),
('YAZHINI',22,29000.00,'ERAYAMANGALAM'),
('ANU',23,30000.00,'PARAMATHI VELUR'),
('DURAI',21,27000.00,'KAALIPATTI'),
('JAGATHIYA',20,29000.00,'VATTUR');  --(WHY IT STARTS FROM EID=2)

-----------------------------------         PROCEDURE TABLE WITH WORKER'S TABLE          -----------------------------------------------

ALTER PROC SPORTS_TABLE

(@NAME VARCHAR(25),
@AGE INT,
@CITY VARCHAR(25))

AS
BEGIN 

 -- SELECT EID=@ID, ENAME=@NAME, EAGE=@AGE, CITY=@CITY FROM WRK.WORKER  WHERE EID=3;  ---- IN 2ND TABLE WHY IT DOES NOT  ADD (1	GOWRI	20	KUMARAPALAYAM)THIS VALUE
 -- UPDATE WRK.WORKER SET EID=@ID, ENAME=@NAME, EAGE=@AGE, CITY=@CITY FROM WRK.WORKER  WHERE EID=3;

    UPDATE WRK.WORKER 
	SET 
	ENAME=@NAME, EAGE=@AGE, CITY=@CITY
	FROM WRK.WORKER 
	WHERE EID=3;

   SELECT * FROM WRK.WORKER;

END;
GO

EXEC SPORTS_TABLE 'GOWRI',20,'KUMARAPALAYAM';   ---- ONLY ONE ROW IS DISPLAYING(Y)

SELECT * FROM WRK.WORKER;

------------------------------------------------   ADDING NEW COLUMN AND TRYING TO UPDATE THE VALUES  IN (SPORTS_TABLE) PROCEDURE    -------------------------------------------------------------

ALTER PROC WORKERS_TABLE
AS
BEGIN
   SELECT * FROM WRK.WORKER
   ORDER BY
   ENAME;

   ALTER TABLE 
   WRK.WORKER ADD 
   INDOOR_GAMES VARCHAR(50);

   UPDATE WRK.WORKER 
   SET INDOOR_GAMES=
   CASE EID
   WHEN 2 THEN 'CARROM BOARD'
   WHEN 3 THEN 'CHESS'
   WHEN 4 THEN ' '
   WHEN 5 THEN 'TABLE TENNIS'
   WHEN 6 THEN 'DICE'
   WHEN 7 THEN ' '
   END
   WHERE EID IN (2,3,4,5,6,7);


END;
GO

EXEC WORKERS_TABLE;

-------------------------------------------------------     NEW QUERY ON THEOLD NAME OF PROC TO UPDATE THE COLUMN VALUES OF INDOOR_GAMES       ---------------------------------------------------

ALTER PROC WORKERS_TABLE
AS
BEGIN
  SELECT * FROM WRK.WORKER;

  UPDATE WRK.WORKER 
   SET INDOOR_GAMES=
   CASE EID
   WHEN 2 THEN 'CARROM BOARD'
   WHEN 3 THEN 'CHESS'
   WHEN 4 THEN ' '
   WHEN 5 THEN 'TABLE TENNIS'
   WHEN 6 THEN 'DICE'
   WHEN 7 THEN 'TABLE TENNIS '
   END
   WHERE EID IN (2,3,4,5,6,7);              -- WHEN I CREATE A NEW ALTER PROCEDURE IT RUNS AND GIVES A OUTPUT WHHE I RUN TWICE

END;
GO

EXEC WORKERS_TABLE;

------------------------------------------------      ADDING TWO VALUES WITH THE HELP OF PASSING 2 ARGUMENTS      -----------------------------------------------------------  

ALTER PROC ADD_TWO_VALUES
(@VALUE1 INT,@VALUE2 INT)
AS
BEGIN
  DECLARE @ADDITION INT
  SET @ADDITION = @VALUE1 + @VALUE2;
  PRINT 'ADDITION : ' + CAST(@ADDITION AS VARCHAR)
END;
GO

EXEC ADD_TWO_VALUES 2,18;

-------------------------------------------------------------  TRYING TO EXECUTE THE MAIMUM OR MINIMUM SALARY BASED ON USER  ----------------------------------------------------------------------------

ALTER PROC SALARY_FILTER
@MINIMUM DECIMAL(8,2),@MAXIMUM DECIMAL(8,2)
AS
BEGIN
   
   --SET @MINIMUM = MIN (ESALARY);
   --SET @MAXIMUM = MAX (ESALARY);

   IF  @MINIMUM

     SELECT * FROM WRK.WORKER WHERE MIN(ESALARY);
   
   IF @MAXIMUM

     SELECT ENAME FROM WRK.WORKER WHERE MAX(ESALARY);
END;
GO

EXEC SALARY_FILTER @MINIMUM = MIN (ESALARY) FROM WRK.WORKER;

-----------------------------------------------------------        ---------------------------------            --------------------------------------------------------------------------

ALTER PROC SALARY_FILTER
@VALUE DECIMAL(8,2)
AS
BEGIN
   
   SET @VALUE = MIN (ESALARY);
   --SET @MAXIMUM = MAX (ESALARY);

   IF  @MINIMUM

     SELECT * FROM WRK.WORKER WHERE MIN(ESALARY);
   
   IF @MAXIMUM

     SELECT ENAME FROM WRK.WORKER WHERE MAX(ESALARY);
END;
GO

EXEC SALARY_FILTER @MINIMUM = MIN (ESALARY) FROM WRK.WORKER;

/*
IF (Expression )
BEGIN
  -- If the condition is TRUE then execute the following statement
  True Statements;
END
 
ELSE
BEGIN
   -- If the condition is False then execute the following statement
False Statements
END
*/


ALTER PROC SALARY_FILTER
IF (@ESALARY>=25000 )
BEGIN
  -- If the condition is TRUE then execute the following statement
  True Statements;
END
 
ELSE
BEGIN
   -- If the condition is False then execute the following statement
False Statements
END;
GO

EXEC SALARY_FILTER 

/*
DECLARE @StudentMarks INT= 91;
IF @StudentMarks >= 90
    PRINT 'Congratulations, You are in Merit list!!';
IF @StudentMarks >= 80 and @StudentMarks < 90
 PRINT 'Congratulations, You are in First division list!!';
  ELSE
    PRINT 'Failed, Try again ';
	*/
