  -- FIRST LETTER MATU ENAKU CAPS LA VARANU.. (INITCAP) KUDUTHA WORK AGA MATINGUTHU 
   
    SELECT * FROM STD_DETAIL;

    SELECT * FROM SPORTS_MASTER;

	SELECT * FROM JOIN_STD_SPRT;

	--------===============================  FUNCTION DEMO   =====================================-------------------

    CREATE FUNCTION USERTYPE (@STRING)  
    RETURNS VARCHAR AS  
    BEGIN  
        SELECT  * FROM SPORTS_MASTER;
        RETURN  VARCHAR 
    END

    SELECT  INITCAP ('geethashree');

    SELECT initcap('paul anderson');

    --https://learnsql.com/blog/18-important-sql-functions-learn-2018/

	--------===============================  JOIN QUERY TO JOIN 3 TABLE   =====================================-------------------

	SELECT A.ID,A.FNAME+' '+A.LNAME
	AS NAME_LIST,B.PREFERENCE_SPORT
	FROM STD_DETAIL AS A 
	INNER JOIN JOIN_STD_SPRT 
	AS B ON A.ID=B.ID; 

	SELECT * FROM STD_DETAIL;

    SELECT * FROM SPORTS_MASTER;

	SELECT * FROM JOIN_STD_SPRT;

	SELECT STD_DETAIL.FNAME+STD_DETAIL.LNAME,SPORTS_MASTER.SPORT_NAME 
	FROM STD_DETAIL INNER JOIN SPORTS_MASTER 
	ON STD_DETAIL.ID=SPORTS_MASTER.SPORT_ID;

	SELECT * FROM STD_DETAIL;

    SELECT * FROM SPORTS_MASTER;

	SELECT * FROM JOIN_STD_SPRT;

	SELECT STD_DETAIL.FNAME+STD_DETAIL.LNAME NAME_LIST,SPORTS_MASTER.SPORT_NAME
	FROM ((STD_DETAIL INNER JOIN SPORTS_MASTER 
	ON STD_DETAIL.ID=SPORTS_MASTER.SPORT_ID)
	INNER JOIN JOIN_STD_SPRT 
	ON STD_DETAIL.ID=JOIN_STD_SPRT.PREFERENCE_SPORT);

  --------===============================  CLARIFY (DOUBT)   =====================================-------------------

    -- KALAI MAM TELLING THAT USE FOREIGN KEY TO JOIN THE TABLE..
	-- THEN ONLY IT WILL NOT TALKE MUCH SPACE ON THE SERVER (Y SHE TOLD LIKE THAT) 

	-- WHILE CREATING A THIRD TABLE HOW DO YOU JOIN THESE..(HER QUESTION)

	--------===============================  IMPLEMENTING FOREIGN KEY  =====================================-------------------

	CREATE TABLE JOIN_STD_SPRT
	(
	ID INT IDENTITY (1,1),
	STUDENT_ID INT,
	PREFERENCE_SPORT INT
	);

	INSERT INTO JOIN_STD_SPRT(STUDENT_ID,PREFERENCE_SPORT)VALUES(2,10),
	(3,5),
	(4,7),
	(5,8);

   --SELECT * FROM JOIN_STD_SPRT;

	CREATE TABLE SPORTS_MASTER
	(
	SPORT_ID INT,
	SPORT_NAME VARCHAR(25),
	SPORT_HEAD_OFFICE VARCHAR(30)
	);

	INSERT INTO SPORTS_MASTER(SPORT_ID,SPORT_NAME,SPORT_HEAD_OFFICE)VALUES(1,'WRESTLING','TIRUCHENGODE'),
	(2,'TENNIS','TRICHY'),
	(3,'ARCHERY','SALEM'),
	(4,'HOCKEY','ERODE'),
	(5,'SWIMMING','NAMAKKAL'),
	(6,'GYMNASTIC','COIMBATORE'),
	(7,'BADMINTON','CHENNAI'),
	(8,'BOXING','THENI'),
	(9,'RUNNING','KERALA'),
	(10,'VOLLEY BALL','KARUR');

	CREATE TABLE STD_DETAIL
    (
    ID INT,
    FNAME VARCHAR(25),
    LNAME VARCHAR (25),
    AGE INT,
    GENDER VARCHAR(5),
    CLASS VARCHAR(25),
    SECTION VARCHAR (10)
    );

	  
    INSERT INTO STD_DETAIL 
    (ID,FNAME,LNAME,AGE,GENDER,CLASS,SECTION)VALUES
    (1,'GEETHA','SHREE',13,'F','VII','A'),
    (2,'ARUNA','DANCY',13,'F','VII','B'),
    (3,'SRI','LEKHA',14,'F','IX','C'),
    (4,'SANJAY','RAMASAMY',15,'M','X','D'),
    (5,'KISHORE','RAJAN',15,'M','X','A'),
    (6,'RANGA','RAJAN',15,'M','X','A'),
    (7,'AKIL','ESWARAN',16,'M','XI','NILL'),
    (8,'PRIYA','DHARSHII',15,'F','X','B'),
    (9,'HARI','DHARSHII',15,'F','X','C'),
    (10,'AKIL','TANWEER',16,'M','IX','B'),
    (11,'LAVANYA','MOHAN',13,'F','VII','C'),
    (12,'NITHYA','VENKATESAN',16,'F','XI','B'),
    (13,'RAM','KRISHNA',17,'M','XII',''),
    (14,'PREM','KUMAR',15,'M','X','B'),
    (15,'ANITHA','MOORTHY',14,'F','IX','B');

	
	
	--DROP TABLE  STD_DETAIL;

	SELECT  *  FROM  STD_DETAIL;

	SELECT  *  FROM  SPORTS_MASTER;

	SELECT  *  FROM  JOIN_STD_SPRT;
    
	----========================================   STD_DETAIL (DEMO) PRACTISE  ================================-----------------

    CREATE TABLE STD_MASTER
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

	INSERT INTO STD_MASTER 
    (ID,FNAME,LNAME,AGE,GENDER,CLASS,SECTION,SPORT_NAME)VALUES
    (1,'Geetha','Shree',13,'F','VII','A','Wrestling'),
    (2,'Aruna','Dancy',13,'F','VII','B','Tennis'),
    (3,'Sri','Lekha',14,'F','IX','C','Archery'),
    (4,'Sanjay','Ramasamy',15,'M','X','D','Swimming'),
    (5,'Kishore','Rajan',15,'M','X','A','Hockey'),
    (6,'Ranga','Rajan',15,'M','X','A','Gymnastic'),
    (7,'Akil','Eswaran',16,'M','XI','Nill','Badminton'),
    (8,'Priya','Dharshii',15,'F','X','B','Boxing'),
    (9,'Hari','DharshiI',15,'F','X','C','Running'),
    (10,'Akil','Tanweer',16,'M','IX','B','Volley ball'),
    (11,'Lavanya','Mohan',13,'F','VII','C','Cricket'),
    (12,'Nithya','Venkatesan',16,'F','XI','B','Chess'),
    (13,'Ram','Krishna',17,'M','XII','','Carrom'),
    (14,'Prem','Kumar',15,'M','X','B','Marathon'),
    (15,'Anitha','Moorthy',14,'F','IX','B','Shettle corck');

	SELECT * FROM STD_MASTER;

	INSERT INTO STD_MASTER 
    (ID,FNAME,LNAME,AGE,GENDER,CLASS,SECTION,SPORT_ID)VALUES
    (1,'GEETHA','SHREE',13,'F','VII','A',101),
    (2,'ARUNA','DANCY',13,'F','VII','B',102),
    (3,'SRI','LEKHA',14,'F','IX','C',103),
    (4,'SANJAY','RAMASAMY',15,'M','X','D',104),
    (5,'KISHORE','RAJAN',15,'M','X','A',105),
    (6,'RANGA','RAJAN',15,'M','X','A',106),
    (7,'AKIL','ESWARAN',16,'M','XI','NILL',107),
    (8,'PRIYA','DHARSHII',15,'F','X','B',108),
    (9,'HARI','DHARSHII',15,'F','X','C',109),
    (10,'AKIL','TANWEER',16,'M','IX','B',110),
    (11,'LAVANYA','MOHAN',13,'F','VII','C',111),
    (12,'NITHYA','VENKATESAN',16,'F','XI','B',112),
    (13,'RAM','KRISHNA',17,'M','XII','',113),
    (14,'PREM','KUMAR',15,'M','X','B',114),
    (15,'ANITHA','MOORTHY',14,'F','IX','B',115);

	CREATE TABLE SPORT_MASTER
	(
	SP_REG_ID INT,
	SP_NAME VARCHAR(25),
	SP_HEAD_OFFICE VARCHAR(30),
	--SPORT_ID INT FOREIGN KEY REFERENCES ConstraintDemoParent(ID) STD_MASTER(SPORT_ID)
	SP_ID INT FOREIGN KEY REFERENCES STD_MASTER(SPORT_ID)
	CONSTRAINT fkMP_MEDICO FOREIGN KEY (DNIMedico) REFERENCES MEDICO (DNIMedico),
	);

	  ALTER TABLE STD_MASTER
      ADD CONSTRAINT fk_ST_MASTER
      FOREIGN KEY (city_id) REFERENCES city(id)

	CREATE TABLE ST_MASTER
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

	SELECT * FROM ST_MASTER;

	CREATE TABLE SPORT_MASTER
	(
	SP_REG_ID INT,
	SP_NAME VARCHAR(25),
	SP_HEAD_OFFICE VARCHAR(30),
	--SPORT_ID INT FOREIGN KEY REFERENCES ConstraintDemoParent(ID) STD_MASTER(SPORT_ID)
	--SP_ID INT FOREIGN KEY REFERENCES STD_MASTER(SPORT_ID)
	);


	  ALTER TABLE SPORT_MASTER
      ADD CONSTRAINT FK_STUDENT_SPORT_ID
      FOREIGN KEY (SP_ID) REFERENCES STD_MASTER(ID)

	  ALTER TABLE student
      ADD CONSTRAINT fk_student_city_id
      FOREIGN KEY (city_id) REFERENCES city(id)

	CREATE TABLE STD_MASTER
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

	CREATE TABLE USER1
	(
	 REG_ID INT,
	 SPID INT PRIMARY KEY,
	 FNAME VARCHAR(25)
	 )

	 
	CREATE TABLE USER2
	(
	 RE_ID INT,
	 SPORTID INT PRIMARY KEY,
	 DeptID INT  FOREIGN KEY REFERENCES  USER1(SPID)
	 --FNAME VARCHAR(25)
	 )

	 CREATE TABLE USER3
	(
	 RE_ID INT,
	 SPORTID INT PRIMARY KEY,
	 NUM INT  FOREIGN KEY REFERENCES  USER1(SPID)
	 --FNAME VARCHAR(25)
	 )

	 SELECT * FROM SPORTS_MASTER;
	 SELECT * FROM STD_MASTER;

      CREATE TABLE STUDENT_DATA
      (
      ID INT,
      FNAME VARCHAR(25),
      LNAME VARCHAR (25),
      AGE INT,
      GENDER VARCHAR(5),
      CLASS VARCHAR(25),
      SECTION VARCHAR (10)
      );

	  DROP TABLE STUDENT_DATA
	 
	INSERT INTO STD_MASTER 
    (ID,FNAME,LNAME,AGE,GENDER,CLASS,SECTION,SPORT_ID)VALUES
    (1,'GEETHA','SHREE',13,'F','VII','A',101),
    (2,'ARUNA','DANCY',13,'F','VII','B',102),
    (3,'SRI','LEKHA',14,'F','IX','C',103),
    (4,'SANJAY','RAMASAMY',15,'M','X','D',104),
    (5,'KISHORE','RAJAN',15,'M','X','A',105),
    (6,'RANGA','RAJAN',15,'M','X','A',106),
    (7,'AKIL','ESWARAN',16,'M','XI','NILL',107),
    (8,'PRIYA','DHARSHII',15,'F','X','B',108),
    (9,'HARI','DHARSHII',15,'F','X','C',109),
    (10,'AKIL','TANWEER',16,'M','IX','B',110),
    (11,'LAVANYA','MOHAN',13,'F','VII','C',111),
    (12,'NITHYA','VENKATESAN',16,'F','XI','B',112),
    (13,'RAM','KRISHNA',17,'M','XII','',113),
    (14,'PREM','KUMAR',15,'M','X','B',114),
    (15,'ANITHA','MOORTHY',14,'F','IX','B',115);

	SELECT * FROM STD_MASTER;

	------============================================      STARTS FROM    =================================================

	CREATE TABLE STD_MASTER
    (
    ID INT ,
    FNAME VARCHAR(25),
    LNAME VARCHAR (25),
    AGE INT,
    GENDER VARCHAR(5),
    CLASS VARCHAR(25),
	SECTION VARCHAR (10),
	SPORT_ID INT PRIMARY KEY 
    );
	--DROP TABLE STD_MASTER;

	CREATE TABLE SPORT_MAS
	(
	SP_ID INT FOREIGN KEY REFERENCES STD_MASTER(SPORT_ID),
	SP_NAME VARCHAR(25),
	SP_HEAD_OFFICE VARCHAR(30),
	--SPORT_ID INT FOREIGN KEY REFERENCES ConstraintDemoParent(ID) STD_MASTER(SPORT_ID)
	--SP_ID INT FOREIGN KEY REFERENCES STD_MASTER(SPORT_ID)
	--SP_ID INT FOREIGN KEY REFERENCES STD_MASTER(SPORT_ID)
	);

	--DROP TABLE SPORT_MAS;

	INSERT INTO SPORT_MAS(SP_ID,SP_NAME,SP_HEAD_OFFICE)VALUES(101,'WRESTLING','TIRUCHENGODE'),
	(102,'TENNIS','TRICHY'),
	(103,'ARCHERY','SALEM'),
	(104,'HOCKEY','ERODE'),
	(105,'SWIMMING','NAMAKKAL'),
	(106,'GYMNASTIC','COIMBATORE'),
	(107,'BADMINTON','CHENNAI'),
	(108,'BOXING','THENI'),
	(109,'RUNNING','KERALA'),
	(110,'VOLLEY BALL','KARUR');

	INSERT INTO SPORT_MAS(SP_NAME,SP_HEAD_OFFICE)VALUES('WRESTLING','TIRUCHENGODE'),
	('TENNIS','TRICHY'),
	('ARCHERY','SALEM'),
	('HOCKEY','ERODE'),
	('SWIMMING','NAMAKKAL'),
	('GYMNASTIC','COIMBATORE'),
	('BADMINTON','CHENNAI'),
	('BOXING','THENI'),
	('RUNNING','KERALA'),
	('VOLLEY BALL','KARUR');

	 SELECT * FROM JOIN_STD_SPRT;

	 SELECT * FROM STD_MASTER;

	 SELECT * FROM SPORT_MAS;

	 SELECT * FROM SPORT_MAS 
	 INNER JOIN STD_MASTER 
	 ON SPORT_MAS.SP_ID = STD_MASTER.SPORT_ID;

	 SELECT STD_MASTER.FNAME+STD_MASTER.LNAME NAME_LIST,
	 SPORT_MAS.SP_NAME 
	 FROM SPORT_MAS 
	 INNER JOIN STD_MASTER 
	 ON SPORT_MAS.SP_ID = STD_MASTER.SPORT_ID;

	 
	CREATE TABLE JOIN_STD_MAS
	(
	ID INT PRIMARY KEY ,
	STUDENT_ID INT FOREIGN KEY REFERENCES STD_MASTER(SPORT_ID),
	PREFERENCE_SPORT INT FOREIGN KEY REFERENCES SPORT_MAS(SP_ID)
	);

	INSERT INTO JOIN_STD_SPRT(STUDENT_ID,PREFERENCE_SPORT)VALUES(2,10),
	(3,5),
	(4,7),
	(5,8);




