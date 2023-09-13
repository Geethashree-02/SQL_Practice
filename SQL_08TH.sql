create table Slot(
Ticket_id int,
Slot_timing datetime,
Movie_Name varchar(20),
Movie_Genre varchar(23),
Guest_Total int
);
insert into Slot(Ticket_id,Slot_timing,Movie_Name,Movie_Genre,Guest_Total)VALUES
(001,'02.08.2023 10:52 AM','KANCHANA','HORROR',18);
insert into Slot(Ticket_id,Slot_timing,Movie_Name,Movie_Genre,Guest_Total)VALUES
(002,'03.08.2023 10:52 AM','KUMKI','FICTION',14),
(003,'04.08.2023 10:52 AM','KATHI','HORROR',24),
(004,'05.08.2023 10:52 AM','KAITHI','SCIENTIFIC',30),
(005,'06.08.2023 10:52 AM','PALANI','THRILLER',51),
(006,'07.08.2023 10:52 AM','VIDUTHALAI','DRAMA',50);        
SELECT *FROM Slot;
update Slot set Movie_Genre="PONNIYAN SELVAN"where Ticket_id=1;
ALTER TABLE Slot ADD 
Visitor_AGE int ,Visitor_Name varchar(51);
select * from Slot;
ALTER TABLE Slot
 MODIFY column Movie_Name varchar(40);
insert into Slot(Visitor_AGE,Visitor_Name)VALUES
(12,'GOWRI');
insert into Slot(Visitor_AGE,Visitor_Name)VALUES
(13,'NISHA'),
(14,'AMMU'),
(13,'KANNAN');
SELECT * FROM Slot;
UPDATE Slot
SET Ticket_id = 7
WHERE Visitor_AGE=12;
select * from Slot;
update Slot set Ticket_id=8 where Movie_Genre='NULL';
SELECT * FROM Slot; 
update Slot set Ticket_id=8 where Visitor_Name='AMMU';
SELECT * FROM Slot; 
update Slot set Ticket_id=9 where Visitor_Name='AMMU';
SELECT * FROM Slot; 
update Slot set Ticket_id=8 where Visitor_Name='NISHA';
SELECT * FROM Slot; 
/*UPDATE Slot
SET 10 
= CASE Ticket_id
WHEN Movie_Name THEN 'Ponniyan selvan'
WHEN Movie_Genre THEN 'Historical'
ELSE COLUMN_VALUE
END
WHERE Slot_timimg IN('Movie_Name', 'Movie_Genre');*/
insert into Slot(Slot_timing,Movie_Name,Movie_Genre,Guest_Total)values
('14.08.2023 01:23 PM','AMBIKAVATHI','Historical',15),
('12.08.2023 02:23 PM','Arundhathi','Horror',75),
('14.08.2023 01:23 PM','Seema raja','Drama',25);
delete from Slot where Ticket_id>=9;
select * from Slot;
delete from Slot where Visitor_Name='Kannan';
update Slot set Visitor_AGE=24 where Ticket_id=1;
ALTER TABLE Slot AUTO_INCREMENT=100;
select *into newSlot from Slot;
select * from newSlot;
ALTER TABLE Slot Visitor_AGE AUTO_INCREMENT=100;
update Slot set Visitor_AGE=25 
where Ticket_id=2;

update Slot set Visitor_AGE=25 
where Ticket_id=3;
update Slot set Visitor_AGE=26 
where Ticket_id=4;
update Slot set Visitor_AGE=25 
where Ticket_id=5;
select * from Slot;
UPDATE Slot
SET Visitor_AGE=21, Visitor_Name='jennifar'
where Ticket_id=6;
select *from Slot;
update Slot set Slot_timing=' ',Movie_Name='Barbie',Movie_Genre='Comedy',Guest_Total=15 where Visitor_Name='Gowri';
update Slot set Slot_timing=' ',Movie_Name='the pricess',Movie_Genre='Drama',Guest_Total=5 where Visitor_Name='NISHA';
UPDATE Slot
SET    Visitor_Name=
   CASE Ticket_id
        WHEN 1 THEN ' '
        WHEN 2 THEN 'GEETHA'
        WHEN 3 THEN 'ROCKY'
        WHEN 4 THEN ' '
        WHEN 5 THEN 'MADDY'
   END
WHERE  Ticket_id IN (1,2,3,4,5);
SELECT*FROM Slot;
 SELECT EOMONTH('2023-02-17') AS END_OF_MONTH;
 SELECT DateAdd(year, 2, 22/11/2017);
 SELECT Environ(1);
 CREATE TABLE Persons (
    Personid AUTOINCREMENT PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);
SELECT * FROM Slot
WHERE Movie_Name LIKE '[ka]%';
SELECT * FROM Slot
\****Use the IN operator to select all the records where Country is either "Norway" or "France".*\
SELECT * FROM Customers
WHERE Country IN('Norway','France');
SELECT * FROM Slot
WHERE Movie_Name IN('kanchana','kumki');
SELECT DISTINCT Movie_Genre FROM Slot;
SELECT * FROM Slot
SELECT COUNT(DISTINCT Movie_Genre) FROM Slot;
SELECT COUNT(Movie_Genre) FROM Slot;
select dateadd(year,5,'2017/08/25')as atdate;
select dateadd(year,5,getdate())
SELECT DATEADD(month, -2, '2017/08/25') AS DateAdd;
select dateadd(year,5,Slot_timing where ticket_id=1) from Slot;
SELECT DATEADD(DAY,-1,'2023/01/18') --21/09/2011
SELECT FORMAT(GETDATE(), 102);
select RTRIM(convert(varchar(50),slot_timing (15)))from Slot where ticket_id=3;