--INSURANCE.. GOLD SEAT...
--XL ... GITHUB PAAKANU

    INSERT INTO SPORT_DATA (ID,SPORT_NAME,EVENT_DATE,EVENT_AT)VALUES
    (1,'WRESTLING','2023-DEC-20','TIRUCHENGODE'),
    (2,'BOXING','2022-JAN-24','ERODE'),
    (3,'TENNIS','2023-JUN-21','NAMAKKAL'),
    (4,'BADMINTON','2023-AUG-2','MADURAI'),
    (5,'VOLLEY BALL','13-JUN-2024','KARUR'),
    (6,'BASKET BALL','21-JUL-2024','ERODE'),
    (7,'BASKET BALL','23-SEP-2023','CHENNAI'),
    (8,'ARCHERY','29-NOV-2023','TRICHY'),
    (9,'GYMNASTIC','31-MAY-2023','COIMBATORE'),
    (10,'RUNNING','10-MAR-2024','KERALA'),
    (11,'SWIMMING','12-FEB-2023','TIRUCHENGODE'),
    (12,'HOCKEY','18-APR-2023','ERODE'),
    (13,'WRESTLING','23-OCT-2024','COIMBATORE'),
    (14,'ARCHERY','23-OCT-2024','SALEM'),
    (15,'WRESTLING','23-OCT-2024','TIRUNELVELI');

    --truncate table sport_data;

     SELECT * FROM SPORT_DATA;

     SELECT * FROM STD_DETAIL;

     SELECT DATENAME(WEEKDAY,2024-06-13)

        ---------------------------------------------   CREATE PROCEDURE FOR USING JOINS QUERY    -----------------------------------------------------

     ALTER PROC SP_USING_JOINS
     AS
     BEGIN
	  
         --- DISPLAY ID,FNAME,SPORT_NAME,EVENT_DATE,WEEEKDAYS OF THE DATE

	     SELECT STD.ID,STD.FNAME + STD.LNAME NAME_LIST,
	     SPRT.SPORT_NAME,SPRT.EVENT_DATE  
	     FROM  STD_DETAIL AS STD 
	     INNER JOIN  SPORT_DATA AS SPRT
	     ON STD.ID=SPRT.ID;

 

    END;
    GO

      EXEC SP_USING_JOINS;

      --- DISPLAY FNAME,SPORT_NAME,EVENT_DATE,WEEEKDAYS OF THE DATE

	  SELECT STD.FNAME,SPRT.SPORT_NAME,
      SPRT.EVENT_DATE,DATENAME(WEEKDAY,EVENT_DATE)WEEKDAYS
      FROM STD_DETAIL  AS STD
      INNER JOIN SPORT_DATA AS SPRT
      ON STD.ID=SPRT.ID;

	  ----- I WANT TO DISPLAY THE DATE FROM THIS POINT TO THAT POINT ------ 

	  SELECT ID,SPORT_NAME,EVENT_DATE FROM (
	  SELECT STD.FNAME,SPRT.SPORT_NAME,
      SPRT.EVENT_DATE,DATENAME(WEEKDAY,EVENT_DATE)WEEKDAYS
      FROM STD_DETAIL  AS STD
      INNER JOIN SPORT_DATA AS SPRT
      ON STD.ID=SPRT.ID) ORDER BY SPORT_NAME ASC;



     --DISPLAY THE DATE FROM THIS POINT TO THAT POINT

	  SELECT STD.ID,STD.FNAME+STD.LNAME NAME_LIST,
	  SPRT.SPORT_NAME,SPRT.EVENT_DATE 
	  FROM SPORT_DATA  SPRT 
	  INNER JOIN STD_DETAIL STD 
	  ON STD.ID=SPRT.ID 
	  ORDER BY EVENT_DATE;

	  SELECT * FROM STD_DETAIL;

	  SELECT * FROM SPORT_DATA;

	   --SELECT ID,SPORT_NAME,EVENT_DATE FROM (
	   --SELECT STD.FNAME,SPRT.SPORT_NAME,
       --SPRT.EVENT_DATE,DATENAME(WEEKDAY,EVENT_DATE)WEEKDAYS
       --FROM STD_DETAIL  AS STD
       --INNER JOIN SPORT_DATA AS SPRT
       --ON STD.ID=SPRT.ID) ORDER BY SPORT_NAME ASC;

	  SELECT STD.ID,STD.FNAME+STD.LNAME NAME_LIST,
	  SPRT.SPORT_NAME,SPRT.EVENT_DATE,
	  DATENAME(WEEKDAY,SPRT.EVENT_DATE)EVENT_HELD_ON
	  FROM SPORT_DATA  SPRT 
	  INNER JOIN STD_DETAIL STD 
	  ON STD.ID=SPRT.ID 
	  ORDER BY EVENT_DATE;

	 -- SELECT UPPER(DATENAME(WEEKDAY,SPORT_DATA)) FROM SPORT_DATA;

	  SELECT UPPER(NAME) FROM STUDENTS;

	  SELECT * FROM STUDENTS;

    -------------------------  USE UPPER FUN TO DISPLAY THE OUTPUT IN CAPS LOCK    ------------------------------- 

      SELECT STD.ID,STD.FNAME+STD.LNAME NAME_LIST,
	  SPRT.SPORT_NAME,SPRT.EVENT_DATE,
	  UPPER(DATENAME(WEEKDAY,SPRT.EVENT_DATE))EVENT_HELD_ON
	  FROM SPORT_DATA  SPRT 
	  INNER JOIN STD_DETAIL STD 
	  ON STD.ID=SPRT.ID 
	  ORDER BY EVENT_DATE;

	  SELECT EVENT_DATE FROM SPORT_DATA ORDER BY ID; 

	  SELECT DEPARTMENT,AGE,STD_PERCENTAGE,
      COUNT(STD_PERCENTAGE)SAME_MARK 
      FROM STD.STUDENT
      GROUP BY DEPARTMENT,AGE,STD_PERCENTAGE  
      HAVING COUNT(STD_PERCENTAGE)>=1;


	  SELECT * FROM STD_DETAIL;

	  SELECT * FROM SPORT_DATA;

	  SELECT EVENT_DATE,DATENAME(WEEKDAY,EVENT_DATE) FROM SPORT_DATA GROUP BY EVENT_DATE ;
	  
	  -------------------------------------------        --------------------------------------------------------------------------------

	  SELECT  SPORT_NAME,DATENAME(WEEKDAY,EVENT_DATE)WEEKDAYS FROM SPORT_DATA GROUP BY EVENT_DATE,SPORT_NAME HAVING DATENAME(WEEKDAY,EVENT_DATE)='WEDNESDAY' ;
   
      --------- HERE 6 WEDNESDAY ARE PRESENT ..HOW SHOULD I MAKE TO PRESENT ALL THE COLUMN OF THE DATA  HERE ITSELF. ---------------------


	  --    ==============================    CREATE PROC FOR ADDITION     ========================================================

	  CREATE PROC ADD2NUMBERS
	  (
	  @NUM1 INT,
	  @NUM2 INT
	  )
	  AS
	  BEGIN
	        DECLARE @RESULT INT;
			SET @RESULT =  @NUM1+@NUM2;
			PRINT @RESULT;
	  END;
	  

	  DECLARE @ANWER INT
      EXEC ADD2NUMBERS @NUM1=1,@NUM2=2;

             --===============================            ========================================--

Create function fnGetEmpFullName
(
 @FirstName varchar(50),
 @LastName varchar(50)
)
returns varchar(101)
As
Begin return (Select @FirstName + ' '+ @LastName);
end 

SELECT fnGetEmpFullName('GEETHA','SHREE')AS FULLNAME;

--========================================     ===========================================================

CREATE FUNCTION udfNet_Sales(  
    @quantity INT,  
    @price DEC(10,2),  
    @discount DEC(3,2)  
)  
RETURNS DEC(10,2)  
AS   
BEGIN  
    RETURN @quantity * @price * (1 - @discount);  
END; 

SELECT udfNet_Sales;
EXEC udfNet_Sales;

SELECT Employee.udfNet_Sales(25, 500, 0.2) AS net_sales; 

      --=====================================                   ===========================================

CREATE FUNCTION 