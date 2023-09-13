/*ALTER PROCEDURE uspFindProductByModel (
    @model_year SMALLINT,
    @product_count INT OUTPUT
) AS
BEGIN
    SELECT 
        product_name,
        list_price
    FROM
        production.products
    WHERE
        model_year = @model_year;

    SELECT @product_count = @@ROWCOUNT;
END;    ONLINE   */

---------------------------------------------------            ------------------------------------------------------

SELECT * FROM WRK.WORKER

ALTER PROC spMain
AS
BEGIN
     

	 DECLARE @EMPLOYEE_NAME
	 VARCHAR(25);

     EXEC spGetNameById 5,
	 @EMPLOYEE_NAME 
	 OUT;

     PRINT 'spGetNameById' +
	 SPACE(1)+ @EMPLOYEE_NAME ;

     DECLARE @AGE
	 INT;

     EXEC spGetAgeByName 
	 'JAGATHIYA',@AGE 
	 OUT;

     PRINT 'spGetAgeByName' 
	 + SPACE(1) +
	 CAST(@AGE AS VARCHAR);

	 

END;
GO

EXEC spMain;
EXEC spGetAgeByName 'JAGATHIYA',@AGE OUT;

-------------------------------------------------------------------- spGetNameById        ------------------------------------------------------------------

ALTER PROC spGetNameById
@ID INT,
@NAME VARCHAR(25) OUT
AS
BEGIN
     SELECT @NAME=ENAME
	 FROM   WRK.WORKER
	 WHERE  EID=@ID;
END;
GO

DECLARE @EMPLOYEE_NAME VARCHAR(25);
EXEC spGetNameById 5,@EMPLOYEE_NAME OUT;
PRINT 'spGetNameById' + SPACE(1)+ @EMPLOYEE_NAME ;
------------------------------------------------------------ spGetAgeByName   ---------------------------------------------------------------------
CREATE PROC spGetAgeByName
@NAME VARCHAR(25),
@AGE INT OUT
AS
BEGIN
     SELECT @AGE=EAGE
     FROM   WRK.WORKER  
	 WHERE  ENAME=@NAME;
END;
GO

DECLARE @AGE INT;
EXEC spGetAgeByName 'JAGATHIYA',@AGE OUT;
PRINT 'spGetAgeByName' + CAST(@AGE AS VARCHAR);

-----------------------------------------------------              -----------------------------------------------------
SELECT * FROM STD.STUDENT;
SELECT * FROM WRK.WORKER;

SELECT * FROM WRK.WORKER  ORDER BY ENAME='JAGATHIYA';
SELECT * FROM WRK.WORKER WHERE ENAME='JAGATHIYA';

PROCEDURE SP_WORKER_MAIN
(
STEPS
1)PARAMETER -->ID
2)STORE FIRSTNAME IN VARIABLE V_FIRSTNAME
3)SP_SELECT_AGE_PARAMETER --->V_FIRSTNAME
4) STORE AGE NAME IN V_AGE
5)PRINT V_FIRSTNAME
6)PRINT V_AGE