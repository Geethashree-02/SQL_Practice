Create function StringReverse(@inputstring varchar(max))  
returns varchar(max)   
AS  
BEGIN  
  DECLARE @i int,   
          @Result varchar(max)  
  SET @Result=''  
  SET @i = 1  
  WHILE @i <= LEN(@inputstring)  
  BEGIN  
    SET @Result = SUBSTRING(@inputstring,@i,1) + @Result  
    SET @i=@i + 1  
  END  
  RETURN @Result 
END

SELECT StringReverse;
create view Student.V_Sports_Detail
as 
select a.RegisterID, a.FirstName, a.LastName, c.sportname from [Student].[Student_Master] a
inner join [Student].[Student_Sports_Detail] b on a.RegisterID = b.RegisterID
inner join [Student].[Sports_Master] c on b.sportid = c.sportid

    CREATE TABLE STD_LTABLE
    (
    ID INT PRIMARY KEY,
    FNAME VARCHAR(25),
    LNAME VARCHAR (25),
    AGE INT,
    GENDER VARCHAR(5),
    CLASS VARCHAR(25),
	SECTION VARCHAR (10),
	SPORT_ID INT 
    );

	SELECT * FROM STD_LTABLE;

	CREATE TABLE SPORT_LTABLE
	(
	SP_ID INT FOREIGN KEY REFERENCES STD_LTABLE(SPORT_ID),
	SP_NAME VARCHAR(25) PRIMARY KEY,
	SP_HEAD_OFFICE VARCHAR(30)
	)

	CREATE TABLE SPORT_MAS
	(
	SP_ID INT FOREIGN KEY REFERENCES STD_MASTER(SPORT_ID),
	SP_NAME VARCHAR(25),
	SP_HEAD_OFFICE VARCHAR(30),

	INSERT INTO SPORT_TABLE(SP_ID,SP_NAME,SP_HEAD_OFFICE)VALUES(101,'WRESTLING','TIRUCHENGODE'),
	(102,'TENNIS','TRICHY'),
	(103,'ARCHERY','SALEM'),
	(104,'HOCKEY','ERODE'),
	(105,'SWIMMING','NAMAKKAL'),
	(106,'GYMNASTIC','COIMBATORE'),
	(107,'BADMINTON','CHENNAI'),
	(108,'BOXING','THENI'),
	(109,'RUNNING','KERALA'),
	(110,'VOLLEY BALL','KARUR');


