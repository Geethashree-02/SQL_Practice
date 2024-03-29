
 
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

	SELECT * FROM SPORT_DATA;

    SELECT * FROM STD_DETAIL;

	--YESTERDAY I DID JOIN QUERY IN TRANSACTION TABLE.. BUT THE ACTUAL TASK IS TO TAKE VALUE FROM THE MASTER TABLE 

	--==================================            =====================================

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

	SELECT * FROM JOIN_STD_SPRT;

	--=========================        =======================================================

	CREATE TABLE SPORTS_MASTER
	(
	SPORT_ID INT,
	SPORT_NAME VARCHAR(25),
	SPORT_HEAD_OFFICE VARCHAR(30)
	);

	--INSERT INTO SPORTS_MASTER(SPORT_ID,SPORT_NAME,SPORT_HEAD_OFFICE)VALUES(1,'WRESTLING','TIRUCHENGODE');---
	--INSERT INTO SPORTS_MASTER(SPORT_ID,SPORT_NAME,SPORT_HEAD_OFFICE)VALUES(2,'TENNIS','TIRUCHENGODE');
	--INSERT INTO SPORTS_MASTER(SPORT_ID,SPORT_NAME,SPORT_HEAD_OFFICE)VALUES(3,'WEIGHT LIFTING','TIRUCHENGODE');

	SELECT * FROM SPORTS_MASTER;
	
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


    SELECT * FROM STD_DETAIL;

    SELECT * FROM SPORTS_MASTER;

	SELECT * FROM JOIN_STD_SPRT;

	SELECT A.ID,A.FNAME+' '+A.LNAME
	AS NAME_LIST,B.PREFERENCE_SPORT
	FROM STD_DETAIL AS A 
	INNER JOIN JOIN_STD_SPRT 
	AS B ON A.ID=B.ID; 

	SELECT A.ID,A.FNAME+' '+A.LNAME 
	AS NAME_LIST,B.PREFERENCE_SPORT 
	FROM STD_DETAIL AS A 
	INNER JOIN JOIN_STD_SPRT 
	AS B ON A.ID=B.ID 
	INNER JOIN D.PREFERENCE_SPORT  
	on JOIN_STD_SPRT.JOIN_STD_SPRT = STD_DETAIL.ID; 

     SELECT STD_DETAIL.ID,STD_DETAIL.FNAME+' '+
	 STD_DETAIL.LNAME AS NAME_LIST,B.PREFERENCE_SPORT 
	 FROM STD_DETAIL AS A 
	 INNER JOIN JOIN_STD_SPRT 
	 AS B ON A.ID=B.ID; 


    --SELECT
    --product_item.item_name,
    --product_category.category_name
    --supplier.supplier_name
    --FROM product_category
    --INNER JOIN product_item ON product_category.id = product_item.category_id
    --INNER JOIN supplier ON product_item.supplier_id = supplier.id;

     SELECT A.FNAME,B.SPORT_NAME 
	 FROM STD_DETAIL A 
	 INNER JOIN SPORTS_MASTER B 
	 ON A.ID=B.SPORT_ID
     INNER JOIN JOIN_STD_SPRT.PREFERENCE_SPORT 
	 ON SPORTS_MASTER.SPORT_ID=JOIN_STD_SPRT.ID;

     SELECT A.FNAME,B.SPORT_NAME 
	 FROM STD_DETAIL A 
	 INNER JOIN SPORTS_MASTER B ON 
	 A.ID=B.SPORT_ID
     INNER JOIN JOIN_STD_SPRT.PREFERENCE_SPORT 
	 ON SPORTS_MASTER.SPORT_ID=JOIN_STD_SPRT.ID;

     SELECT * FROM STD_DETAIL;

     SELECT * FROM SPORTS_MASTER;

	 SELECT * FROM JOIN_STD_SPRT;

	 SELECT A.FNAME,B.SPORT_NAME 
	 FROM STD_DETAIL A 
	 INNER JOIN SPORTS_MASTER B 
	 ON A.ID=B.SPORT_ID 
     C.PREFERENCE_SPORT 
	 INNER JOIN JOIN_STD_SPRT C 
	 ON B.SPORT_ID=C.ID;

	 SELECT STD_DETAIL.FNAME,SPORTS_MASTER.SPORT_NAME 
	 FROM STD_DETAIL  
	 INNER JOIN SPORTS_MASTER  
	 ON STD_DETAIL.ID=SPORTS_MASTER.SPORT_ID 
	 INNER JOIN JOIN_STD_SPRT.PREFERENCE_SPORT  
	 ON JOIN_STD_SPRT.ID =SPORTS_MASTER.SPORT_ID;

   --  SELECT
   --  student.first_name,
   --  student.last_name,
   --  course.name
   --  FROM student
   --  JOIN student_course
   --  ON student.id = student_course.student_id
   --  JOIN course
  --   ON course.id = student_course.course_id;

       SELECT STD_DETAIL.FNAME,SPORTS_MASTER.SPORT_NAME 
	   FROM STD_DETAIL  
	   INNER JOIN SPORTS_MASTER  
	   ON STD_DETAIL.ID=SPORTS_MASTER.SPORT_ID 
	   INNER JOIN
       JOIN_STD_SPRT  
	   ON JOIN_STD_SPRT.ID =SPORTS_MASTER.SPORT_ID;

	   SELECT * FROM STD_DETAIL 
	   INNER JOIN SPORTS_MASTER 
	   ON STD_DETAIL.ID=SPORTS_MASTER.SPORT_ID 
	   INNER JOIN JOIN_STD_SPRT 
	   ON JOIN_STD_SPRT.STUDENT_ID=SPORTS_MASTER.SPORT_ID;

	   SELECT * FROM SPORTS_MASTER;

	  -- GEETHA   -  2 -   TENNIS     (WRESTLING)
	  -- ARUNA    - 10 -  VOLLEY BALL (TENNIS)
	  -- SRILEKHA - 3  -  SWIMMING    (ARCHERY)
