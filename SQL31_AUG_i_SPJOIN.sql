--- firefly.adobe.com  

SELECT AGE,DEPARTMENT,
COUNT(DEPARTMENT)NMR_STUDENTS_IN_SAME_DEPT 
FROM STD.STUDENT 
GROUP BY DEPARTMENT,AGE 
HAVING COUNT(AGE)>=1;

select *
from std.STUDENT;

select city
from std.STUDENT;

select city 
from std.STUDENT 
where city='erode';

SELECT CITY FROM STD.STUDENT 
WHERE NOT CITY  ='ERODE';


SELECT CITY
FROM STD.STUDENT
WHERE NOT CITY  ='ERODE'
OR CITY='KUMARAPALAYAM';  --> BEFORE ENTERING THE VALUE I HAVE TO MENTION THE DATA TYPE

SELECT * 
FROM STD.STUDENT 
WHERE CITY LIKE '%M';  -->ENDS WITH M

SELECT * 
FROM STD.STUDENT 
WHERE CITY LIKE 'K%'; ---> STARTS WITH 

SP_HELPTEXT spGetNameById;  -- TO IDENTFY THE QUERY OF SP

--  CTRL + H = REPLACE 

--WHERE City LIKE '%a'
--WHERE CITY LIKE'%A' 

SELECT *
FROM STD.STUDENT;


SELECT CITY 
FROM STD.STUDENT 
WHERE city 
NOT LIKE '_U%'; 

SELECT CITY 
FROM STD.STUDENT 
WHERE city  
LIKE '__L%M';


SELECT CITY 
FROM STD.STUDENT 
WHERE city  
LIKE '__TL%R';


SELECT CITY 
FROM STD.STUDENT 
WHERE city  
LIKE '__TL%_';

-- Select all records where the first
-- letter of the City is an "a" or a "c" or an "s"

SELECT * 
FROM STD.STUDENT 
WHERE FNAME L
IKE '%[ACS]' 
ORDER BY AGE;


SELECT * 
FROM STD.STUDENT 
WHERE FNAME LIKE '[ACS]%'
ORDER BY AGE;


--Select all records where the first
--letter of the City starts with anything from an "a" to an "f".

SELECT * 
FROM STD.STUDENT
WHERE City LIKE '[a-f]%';

--Select all records where the first
--letter of the City is NOT an "a" or a "c" or an "f".

SELECT * 
FROM STD.STUDENT
WHERE FNAME LIKE '[!ACF]%';

--Use the IN operator to select all the records
-- where Country is NOT "Norway" and NOT "France".

SELECT * 
FROM STD.STUDENT
WHERE City NOT IN
('PATLUR', 'KUMARAPALAYAM')
ORDER BY FNAME;


SELECT * 
FROM STD.STUDENT
WHERE City 
IN('KANGEYAM', 'KUMARAPALAYAM');

                       ------------------   TABLES         ------------------------------

SELECT * FROM STUDENT;

SELECT * FROM OriEmp;

SELECT * FROM CUSTOMERS;
SELECT * FROM dummy;
SELECT * FROM dummy1;
SELECT * FROM EDATA;
SELECT * FROM EDet;
SELECT * FROM EDetails;
SELECT * FROM emp;
SELECT * FROM Emp_Det;
SELECT * FROM EMP3;
SELECT * FROM EMPDATA;
SELECT * FROM EmpDup;
SELECT * FROM Orders;
SELECT * FROM OriEmp;

ALTER PROC ForJoinQuery
AS
BEGIN
      SELECT * FROM STD.STUDENT;
	  SELECT * FROM Orders;

	  SELECT Orders.ORDERID,
	  STUDENT.FNAME,
	  STUDENT.LNAME ,
	  ORDERS.OrderNumber 
	  FROM STD.STUDENT 
	  INNER JOIN Orders 
	  ON Orders.ORDERID = STUDENT.ID;
END;
GO

EXEC ForJoinQuery

SELECT DEPARTMENT,
count(*) FROM STD.STUDENT
GROUP BY DEPARTMENT ;

SELECT a.DEPARTMENT,a.FNAME,
count(*)PEOPLE_IN_SAME_COURSE FROM STD.STUDENT a inner join PEOPLE_IN_SAME_COURSE b on a.DEPARTMENT=b.PEOPLE_IN_SAME_COURSE;
GROUP BY DEPARTMENT,FNAME;
