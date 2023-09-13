--https://dotnettutorials.net/lesson/sql-server-stored-procedure/#google_vignette
-- Create a Procedure
CREATE PROC spAddTwoNumbers
AS
BEGIN 
END
GO

CREATE PROCEDURE spAddTwoNumbers(@no1 INT, @no2 INT)
AS
BEGIN
  DECLARE @Result INT
  SET @Result = @no1 + @no2
  --PRINT 'RESULT IS: '+ CAST(@Result AS VARCHAR)
  PRINT @RESULT
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