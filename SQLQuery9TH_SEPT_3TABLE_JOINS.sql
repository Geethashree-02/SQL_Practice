    CREATE TABLE DUMMY_ST
    (
    ID INT,
    FNAME VARCHAR(25),
    LNAME VARCHAR (25),
    AGE INT,
    GENDER VARCHAR(5),
    CLASS VARCHAR(25),
	SECTION VARCHAR (10),
	SPORT_ID INT,
	CONSTRAINT PK_DUMMY_ST PRIMARY KEY (ID,SPORT_ID) ----> MORE THAN O PRIMARY KEY.. COMPOSITE KEY
    );

	INSERT INTO  DUMMY_ST
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

	SELECT * FROM DUMMY_ST;


	CREATE TABLE DUMMY_ST(
    ID INT,
    FNAME VARCHAR(25),
    LNAME VARCHAR (25),
    AGE INT,
    GENDER VARCHAR(5),
    CLASS VARCHAR(25),
	SECTION VARCHAR (10),
	SPORT_ID INT,
	CONSTRAINT PK_DUMMY_ST PRIMARY KEY (ID,SPORT_ID) ----> MORE THAN O PRIMARY KEY.. COMPOSITE KEY
    );
	---- STUDENT TABLE la primary key ah create pannita
    CREATE TABLE DUMMY_SP(
	SP_NAME VARCHAR(25) PRIMARY KEY,
	CONSTRAINT PK_DUMMY_SP FOREIGN KEY (SP_ID) REFERENCES DUMMY_ST(SPORT_ID),
	SP_HEAD_OFFICE VARCHAR(30)
	);


	
	-- student table la create panna primary key ah sport table la foreign key ah use pandra..
	--- but ennala create panna mudila (y)

	SELECT * FROM DUMMY_SP;

	CREATE TABLE SP_TABLE
	(
	SP_ID INT PRIMARY KEY,
	SP_NAME VARCHAR(50),
	SP_HEAD_OFFICE VARCHAR(50));

	INSERT INTO SP_TABLE(SP_ID,SP_NAME,SP_HEAD_OFFICE)VALUES(101,'WRESTLING','TIRUCHENGODE'),
	(102,'TENNIS','TRICHY'),
	(103,'ARCHERY','SALEM'),
	(104,'HOCKEY','ERODE'),
	(105,'SWIMMING','NAMAKKAL'),
	(106,'GYMNASTIC','COIMBATORE'),
	(107,'BADMINTON','CHENNAI'),
	(108,'BOXING','THENI'),
	(109,'RUNNING','KERALA'),
	(110,'VOLLEY BALL','KARUR');
	SELECT * FROM SP_TABLE;

	CREATE TABLE LFINAL(
	ID INT PRIMARY KEY,
	STID INT FOREIGN KEY REFERENCES STD_LTABLE(ID),
	SPR_ID INT FOREIGN KEY REFERENCES SP_TABLE(SP_ID));
	SELECT * FROM LFINAL;

	--DROP TABLE LFINAL;

	SELECT * FROM STD_LTABLE;

	SELECT * FROM SP_TABLE;

	SELECT * FROM LFINAL;

	INSERT INTO LFINAL(ID,STID,SPR_ID)VALUES
	(01,1,105),
	(02,1,107);

	UPDATE LFINAL SET STID=2 WHERE ID=2;

	SELECT * FROM SP_TABLE;

	SELECT * FROM LFINAL;

	--SELECT A.FNAME+A.LNAME NAME_LIST,B.SP_NAME FROM  STD_LTABLE A INNER JOIN SP_TABLE B ON A.SPORT_ID=B.SP_ID INNER
	--JOIN LFINAL C ON C.ID= B.SP_ID;

	CREATE VIEW STD_JOINS
	AS
	SELECT A.FNAME+A.LNAME NAME_LIST,B.SP_NAME FROM  STD_LTABLE A INNER JOIN SP_TABLE B ON A.SPORT_ID=B.SP_ID INNER
	JOIN LFINAL C ON C.STID = A.SPORT_ID;  --

	SELECT * FROM SP_TABLE;  --> HOW SHOULD I HAVE TO GIVE THE QUERY


	SELECT * FROM  STD_LTABLE;


	SELECT * FROM LFINAL;


	---> Y ITS NOT SHOW THE RESULT