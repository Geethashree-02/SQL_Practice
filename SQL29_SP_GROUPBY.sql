create proc sp_ 

select *  from  STD.STUDENT;

select std_percentage,count(STD_PERCENTAGE) from std.STUDENT group by STD_PERCENTAGE;

SELECT STD_PERCENTAGE 

SELECT * FROM STD.STUDENT WHERE AGE=(SELECT MAX(AGE)FROM STD.STUDENT WHERE AGE IN (SELECT COUNT(*),AGE FROM STD.STUDENT GROUP BY AGE HAVING COUNT(AGE)>1 ORDER BY AGE));

SELECT * FROM STD.STUDENT WHERE AGE=(SELECT MAX(AGE)FROM STD.STUDENT )--WHERE AGE IN (SELECT COUNT(*),AGE FROM STD.STUDENT GROUP BY AGE HAVING COUNT(AGE)>1 ORDER BY AGE));


SELECT * FROM STD.STUDENT WHERE AGE=(SELECT MAX(AGE)FROM STD.STUDENT )

SELECT COUNT(*),AGE FROM STD.STUDENT GROUP BY AGE HAVING COUNT(AGE)>=1 ORDER BY AGE;

SELECT * FROM STD.STUDENT;

select count(*),age from std.STUDENT group by age;

ALTER PROCEDURE spadd
(@num1 INT,
@num2 INT)
--declare @result int;
AS
BEGIN
     DECLARE @result VARCHAR(25);
     SET @result=@num1+@num2;
     PRINT(@result);

     SELECT *
     FROM STD.STUDENT
     WHERE AGE IN 
     (SELECT MAX(AGE)
     FROM STD.STUDENT);
END;
GO

--declare @result int;
EXEC spadd @num1=8,@num2=5;

EXEC spadd 155,18;

SELECT * FROM STD.STUDENT;

SELECT FNAME FROM STD.STUDENT WHERE DEPARTMENT IN (SELECT AGE,COUNT(DEPARTMENT) FROM STD.STUDENT GROUP BY AGE)GROUP BY FNAME;
SELECT STD_PERCENTAGE FROM STD.STUDENT IN (SELECT(STD_PERCENTAGE)FROM STD.STUDENT);

SELECT * FROM STD.STUDENT WHERE =(SELECT MAX(AGE) FROM STD.STUDENT);  --> ERROR(Incorrect syntax near '='.)

SELECT * FROM STD.STUDENT WHERE AGE = (SELECT MAX(AGE) FROM STD.STUDENT); 

SELECT FNAME,LNAME,AGE,DEPARTMENT FROM STD.STUDENT WHERE AGE IN (SELECT MAX(AGE) FROM STD.STUDENT)GROUP BY FNAME,LNAME,AGE,DEPARTMENT;

SELECT * FROM 
