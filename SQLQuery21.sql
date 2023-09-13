create schema test_db;

CREATE PROCEDURE test_db.testing AS
BEGIN
create table

CREATE PROCEDURE test_db.testing
    @LastName nvarchar(50),   
    @FirstName nvarchar(50)   
AS   

    --SET NOCOUNT ON;  
    SELECT FirstName, LastName --Department  
    FROM test_db.testing ; 
    --WHERE FirstName = @FirstName AND LastName = @LastName;
    --AND EndDate IS NULL;  
GO  

EXEC test_db.testing;
/*
CREATE ALTER  PROCEDURE test_db.test
    @LastName nvarchar(50),   
    @FirstName nvarchar(50)   
    AS
    BEGIN
        insert into test_db.test(LastName,FirstName)values('Dhana sekar','Hema')
		('sekar','vathi');
    END



CREATE PROCEDURE test_db.Employee
(
 @FirstName nvarchar(50)
,@LastName nvarchar(50)
,@Email nvarchar(50)
,@PhoneNo nvarchar(20)
,@Salary money
)
AS
BEGIN
	INSERT INTO test_db.Employee
           (FirstName
           ,LastName
           ,Email
           ,PhoneNo
           ,Salary)
    VALUES
	(
		@FirstName
		,@LastName
		,@Email
		,@PhoneNo
		,@Salary
	)
 END


 EXEC test_db.Employee
@FirstName ='Swati'  
,@LastName = 'Karia'
,@Email = 'swatik@test.com'
,@PhoneNo = '6657890980'
,@Salary = 300000
*/

-- Create Employee Table
CREATE TABLE test_db.Employee
(
  ID INT PRIMARY KEY,
  Name VARCHAR(50),
  Gender VARCHAR(50),
  DOB DATETIME,
  DeptID INT
)
GO
select * from test_db.Employee

-- Populate the Employee Table with test data
INSERT INTO test_db.Employee (ID,Name,Gender,DOB,DeptID)VALUES(1, 'Pranaya', 'Male','1996-02-29 10:53:27.060', 1),
(2, 'Priyanka', 'Female','1995-05-25 10:53:27.060', 2),
(3, 'Anurag', 'Male','1995-04-19 10:53:27.060', 2),
(4, 'Preety', 'Female','1996-03-17 10:53:27.060', 3),
(5, 'Sambit', 'Male','1997-01-15 10:53:27.060', 1),
(6, 'Hina', 'Female','1995-07-12 10:53:27.060', 2);


CREATE PROCEDURE Emp
AS
BEGIN
SELECT * FROM test_db.Employee
END
EXEC Emp

CREATE PROCEDURE spEmployee
As
BEGIN
  SELECT Name,Gender, DOB FROM Employee
END
-- How to change the body of a stored procedure
-- User Alter procedure to change the body
ALTER PROCEDURE test_db.Emp
AS
BEGIN
  SELECT Name, Gender, DOB 
  FROM test_db.Employee
  ORDER BY Name
END
EXEC test_db.Emp   --->EXEC WITH PROCEDURE NAME....https://dotnettutorials.net/lesson/sql-server-stored-procedure/#google_vignette

/*

ALTER PROCEDURE spAddTwoNumbers(@no1 INT, @no2 INT)
AS
BEGIN
  DECLARE @Result INT
  SET @Result = @no1 + @no2
  PRINT 'RESULT IS: '+ CAST(@Result AS VARCHAR)
END
GO
-- Calling the procedure:
EXECUTE spAddTwoNumbers 10, 20
-- OR 
EXECUTE spAddTwoNumbers @no1=10, @no2=20
-- OR calling the procedure by declaring two variables as shown below
DECLARE @no1 INT, @no2 INt
SET @no1 = 10
SET @no2 = 20
EXECUTE spAddTwoNumbers @no1, @no2


CREATE PROCEDURE spGetEmployeesByGenderAndDepartment
  @Gender VARCHAR(20),
  @DeptID INT
AS
BEGIN
  SELECT Name, Gender, DOB, DeptID 
  FROM Employee
  WHERE Gender = @Gender AND DeptID = @DeptID
END
GO

*/

create schema test;
ALTER PROCEDURE TEST.ADDTWONO(@N1 INT ,@N2 INT)
AS
BEGIN
  DECLARE  @RES INT
  SET @RES=@N1+@N2  ----Msg 208, Level 16, State 6, Procedure ADDTWONO, Line 1 [Batch Start Line 145]
                       --Invalid object name 'TEST.ADDTWONO'.
END
GO
sp_helptext procedureName ---> Retrieve procedure code