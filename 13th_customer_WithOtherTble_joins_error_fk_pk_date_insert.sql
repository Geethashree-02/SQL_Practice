	--https://www.geeksforgeeks.org/difference-between-git-and-github/

	CREATE TABLE COUNTRY_TABLE
	(
	CID INT,
	CNAME VARCHAR(25),
	PRIMARY KEY(CID,CNAME)
	);
	
	SELECT * FROM PRODUCTS;

	SELECT * FROM CATEGORY_LIST;

	SELECT * FROM COUNTRY_TABLE;

	-- EXEC sp_rename 'CATEGORY_LIST.COUNTRY_ID','COUNTRY_RID','COLUMN';

	-- EXEC sp_rename 'PRODUCTS.PRO_ID','PRODUCT_ID','COLUMN';

	 
     --i]    CREATE CUSTOMER TABLE(CUSTOMER_ID,CUSTOMER_DETAIL,COUNTRY_ID)   
     --      (CUSTOMER_ID),(CUSTOMER_DETAIL)--> CUS_NAME,ORDER_DATE,RECEIVED_DATE

    --ii]   PURCHASE TABLE  (CUS_ID,PRD_ID)

    --REQUIREMENT (TASK)

    --CUS_ID = CUS_DETAIL,PRD_INFO,CATEGORY_INFO,COUNTRY;

	CREATE TABLE CUSTOMER 
	(
	CUS_ID INT NOT NULL ,
	CUS_NAME VARCHAR(25),
	CUST_ORDERED_DATE DATE,
	CUS_RECEIVED__DATE DATE,
	COUNTRY_ID INT,
	PRIMARY KEY (CUS_ID)
	--FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
	--FOREIGN KEY (PRO_COUNTRY_ID) REFERENCES COUNTRY_TABLE(COUNTRY_ID)
	--PRO_COUNTRY_ID INT FOREIGN KEY REFERENCES COUNTRY_TABLE(COUNTRY_ID)
	);


	ALTER TABLE CUSTOMER ADD
	--CONSTRAINT FK
	FOREIGN KEY (COUNTRY_ID) REFERENCES COUNTRY_TABLE(COUNTRY_ID)

	SELECT * FROM COUNTRY_TABLE;

	ALTER TABLE CUSTOMER
    --ADD COUNTRY VARCHAR(25)
    --CONSTRAINT FK_Customer_Test_Drive 
    FOREIGN KEY  (COUNTRY_ID) 
    REFERENCES COUNTRY_TABLE(COUNTRY_ID)

	ALTER TABLE CUSTOMER
    ADD CONSTRAINT FK_customer
    FOREIGN KEY (COUNTRY_ID) REFERENCES COUNTRY_TABLE(COUNTRY_ID);

	ALTER TABLE CUSTOMER WITH CHECK ADD CONSTRAINT [FK] 
	FOREIGN KEY(COUNTRY_ID)
	REFERENCES COUNTRY_TABLE(COUNTRY_ID)
	YYYY-MM-DD

	INSERT INTO CUSTOMER(CUS_ID,CUS_NAME,CUST_ORDERED_DATE,CUS_RECEIVED__DATE,COUNTRY_ID)VALUES
	(1,'Ruby',DATE('12-4-2005'),DATE('23-3-2006'),91);  	

	INSERT INTO CUSTOMER(CUS_ID,CUS_NAME,CUST_ORDERED_DATE,CUS_RECEIVED__DATE,COUNTRY_ID)VALUES
	(2,'Ruby','12-4-2005','23-3-2006',91);

	INSERT INTO CUSTOMER(CUS_ID,CUS_NAME,CUST_ORDERED_DATE,CUS_RECEIVED__DATE,COUNTRY_ID)VALUES
	(2,'Ruby','12-4-2005','23-3-2006',91); --> CRT ANSR

	INSERT INTO CUSTOMER(CUS_ID,CUS_NAME,CUST_ORDERED_DATE,CUS_RECEIVED__DATE,COUNTRY_ID)VALUES
    (2,'Ruby','12-DEC-2005','23-JUN-2006',91);

    INSERT INTO CUSTOMER(CUS_ID,CUS_NAME,CUST_ORDERED_DATE,CUS_RECEIVED__DATE,COUNTRY_ID)VALUES
    (2,'Ruby','21-AUG-2020','21-SEPT-2020',91); -->Conversion failed when converting date and/or time from character string.


    INSERT INTO CUSTOMER(CUS_ID,CUS_NAME,CUST_ORDERED_DATE,CUS_RECEIVED__DATE,COUNTRY_ID)VALUES
    (2,'Ruby',21-AUG-2020,21-SEPT-2020,91);

	-- Msg 207, Level 16, State 1, Line 74
    -- Invalid column name 'AUG'.
    -- Msg 207, Level 16, State 1, Line 74
    -- Invalid column name 'SEPT'.

    INSERT INTO CUSTOMER(CUS_ID,CUS_NAME,CUST_ORDERED_DATE,CUS_RECEIVED__DATE,COUNTRY_ID)VALUES
    (2,'Ruby',21-AUG-2020,21-dec-2020,91);  


    INSERT INTO CUSTOMER(CUS_ID,CUS_NAME,CUST_ORDERED_DATE,CUS_RECEIVED__DATE,COUNTRY_ID)VALUES
    (2,'Ruby',12-4-2005,23-3-2006,91); 
    --Operand type clash: int is incompatible with date

    --INSERT INTO CUSTOMER(CUS_ID,CUS_NAME,CUST_ORDERED_DATE,CUS_RECEIVED__DATE,COUNTRY_ID)VALUES
    --(1,'Ruby',DATE(12-4-2005),DATE(23-3-2006),91);  

	INSERT INTO CUSTOMER(CUS_ID,CUS_NAME,CUST_ORDERED_DATE,CUS_RECEIVED__DATE,COUNTRY_ID)VALUES
	(2,'Ruby','12-4-2005','23-3-2006',91); --> CRT ANSR

	INSERT INTO CUSTOMER(CUS_ID,CUS_NAME,CUST_ORDERED_DATE,CUS_RECEIVED__DATE,COUNTRY_ID)VALUES
	(3,'Ruby','13-4-2005','23-5-2006',92); --> CRT ANSR..NOW ITS NOT RUNNING

	SELECT * FROM CUSTOMER;

	INSERT INTO CUSTOMER(CUS_ID,CUS_NAME,CUST_ORDERED_DATE,CUS_RECEIVED__DATE,COUNTRY_ID)VALUES
	(3,'Chitra','17-4-2005','18-5-2005',92);

	INSERT INTO CUSTOMER(CUS_ID,CUS_NAME,CUST_ORDERED_DATE,CUS_RECEIVED__DATE,COUNTRY_ID)VALUES
	(3,'Chitra','17-APR-2005','18-MAY-2005',92);

	INSERT INTO CUSTOMER(CUS_ID,CUS_NAME,CUST_ORDERED_DATE,CUS_RECEIVED__DATE,COUNTRY_ID)VALUES
	(4,'Ram','19-APR-2005','21-MAY-2005',92);  ---> crt one.. running

	--> y its not running ... what are the difference here having... what's the mistake..

	--> kalai mam have given task 

	-->  sir told to be strong in sp and date,time like this

	SELECT * FROM CUSTOMER
