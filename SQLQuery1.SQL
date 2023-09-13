alter VIEW [Brazil Customers] AS
SELECT FName, LName
FROM STD.STUDENT
WHERE City = 'pallipalayam';

SELECT * FROM [Brazil Customers];

 SELECT OrderID, Quantity,
CASE WHEN Quantity > 30 THEN 'The quantity is greater than 30'
WHEN Quantity = 30 THEN 'The quantity is 30'
ELSE 'The quantity is under 30'
END AS QuantityText
FROM OrderDetails;


CREATE TABLE EMP(
EID INT,
FNAME VARCHAR(25),
LNAME VARCHAR(25),
EMAIL VARCHAR(50),
JOB VARCHAR(15),
HIRE_DATE DATETIME,

SELECT * FROM Slot;
SELECT * FROM PASSING_ARGS;

SELECT 