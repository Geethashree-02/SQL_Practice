create database Employee;
create table Emp_Det(
Emp_id int,
Emp_Name varchar(40),
Emp_Age int,
Experience int,
);
ALTER TABLE Emp_Dept RENAME COLUMN Emp_id to Wor_ID;
USE Employee
GO
EXEC SP_RENAME 'Emp_Dept.Emp_id', 'Wor_ID', 'COLUMN'
GO
insert into Emp_Det values(101,'Kavitha',25,5),
(101,'Rose',25,5),
(101,'sharan',25,5);
select*from Emp_Det;
update Emp_Det set Emp_id=
case Emp_Name
when 'Kavitha' then 100
when 'Rose' then 101
when 'sharan' then 102
end 
where Emp_Name IN ('Kavitha','Rose','sharan');
select * from Emp_Det;
UPDATE Emp_det set Emp_Age=
case Emp_id
when 100 then 21
when 101 then 23
when 102 then 32
end 
where Emp_id in (100,101,102);
Update Emp_Det set Experience=
case Emp_Age
when 21 then 3
when 23 then 25
when 32 then 9
end 
where Emp_Age in (21,25,32);
update Emp_Det set Experience=25 where Emp_Age=23;
select *from Emp_Det;
update Emp_Det set Experience=25;
update Emp_Det set Experience=
case Emp_id 
when 100 then 3
when 101 then 52
when 102 then 9
end
 where Emp_id in (100,101,102);
 select * from Emp_DET;
 UPDATE Emp_Det set Emp_name='kowsalya',emp_age=22,experience=5 where Emp_id=101;
 ALTER TABLE Emp_Det ADD (Address varchar(42); 
 alter database Employee modify Name=oriens_Employee;
 ALTER DATABASE Employee MODIFY NAME = [BOSEVIKRAM_Deleted]
 ALTER DATABASE Employee MODIFY NAME = oriens_Emp;
 alter table Emp_Det rename 'Emp_id' to 'Work_id';
 ALTER TABLE Emp_Det
ADD Address varchar;
update Emp_det set Address=
case workers_id
when 101 then '55/5,Tambaram,chennai,630045.'
when 102 then ' '
when 103 then 'Trichy'
end
where workers_id in (101,102,103);
ALTER TABLE Emp_Det
modify Address TEXT;
DELETE FROM Emp_Det where Address='NULL' ;
SELECT * FROM Emp_Det;
ALTER TABLE Emp_Det 
drop column Address;
ALTER TABLE Emp_Det 
ADD Emp_Address varchar(150);
alter table Emp_Det
drop column Address;
alter table Emp_Det add address varchar(42);
update Emp_det set Address=
case workers_id
when 100 then '55/5,Tambaram,chennai,630045.'
when 101 then ' '
when 102 then 'Trichy'
end
where workers_id in (101,102,103);
update Emp_Det set address='55/5,Tambaram,chennai,630045.' where workers_id=100;
ALTER TABLE Emp_Det ADD 
JOINING_DATE DATETIME;
UPDATE Emp_Det SET JOINING_DATE=GETDATE();
SELECT*FROM Emp_Det;
select *into EDetails from Emp_Det;
select *from EDetails;
create table BookingSlot(
Ticket_id int,
Slot_timing datetime,
Movie_Name varchar(20),
Movie_Genre varchar(23),
Ticket_price decimal(4,2),
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
SELECT*FROM Emp_Det;
SELECT*FROM Slot;
select Emp_Det.workers_id, Slot.Ticket_id, Emp_Det.Emp_Name, Slot.Movie_Name from Emp_Det  join Slot on Emp_Det.workers_id=Slot.Ticket_id;
select Emp_Det.workers_id, Slot.Ticket_id, Emp_Det.Emp_Name, Slot.Movie_Name from Emp_Det LEFT JOIN Slot on Emp_Det.workers_id=Slot.Ticket_id;
select Emp_Det.workers_id, Slot.Ticket_id, Emp_Det.Emp_Name, Slot.Movie_Name from Emp_Det INNER JOIN Slot on Emp_Det.workers_id=Slot.Ticket_id;
select Emp_Det.workers_id, Slot.Ticket_id, Emp_Det.Emp_Name, Slot.Movie_Name from Emp_Det RIGHT JOIN Slot on Emp_Det.workers_id=Slot.Ticket_id;
select Emp_Det.workers_id, Slot.Ticket_id, Emp_Det.Emp_Name, Slot.Movie_Name from Emp_Det FULL JOIN Slot on Emp_Det.workers_id=Slot.Ticket_id;
select Emp_Det.workers_id, Slot.Ticket_id, Emp_Det.Emp_Name, Slot.Movie_Name from Emp_Det CROSS JOIN Slot on Emp_Det.workers_id=Slot.Ticket_id;

CREATE TABLE STUDENT(
Student_ID INT,
Stu_Name VARCHAR(50),
Stu_Subject_ID INT, 
Stu_Marks INT,
Stu_Age INT);
ALTER TABLE STUDENT DROP COLUMN Stu_Subject_ID;
INSERT INTO STUDENT(Student_ID,Stu_Name,Stu_Subject_ID,Stu_Marks,Stu_Age)VALUES
(101,'Akhil','BCA101',85,20),
(102,'Balram','BCA104',85,20),
(103,'Bheem','BCA101',85,20),
(104,'Chetan','BCA101',85,20),
(105,'Diksha','BCA104',99,20),
(106,'Raman','BCA105',88,19),
(107,'Sheetal','BCA103',98,22);
ALTER TABLE STUDENT ADD Stu_Subject_ID VARCHAR(50);
SELECT * FROM STUDENT;

/* ------------------JAVATPOINT----------------------------------*/

1)---Write a query to view the specific record of the table by using the WHERE clause.
SELECT Stu_Subject_ID,Stu_Name,Stu_Marks FROM STUDENT; ------->WRONG(BCOZ THEY ASK ONLY RECORD NOT A COLUMN)
SELECT *FROM STUDENT WHERE Student_ID=107;
SELECT * FROM STUDENT WHERE Stu_Age=20;
2)--The following query shows the Subject_Name of those subjects whose Subject_ID is BCA103 and BCA106
ALTER TABLE STUDENT ADD ('Subject_ID',INT) ,('Subject_Name', VARCHAR (50));
ALTER TABLE STUDENT
ADD column1 column1_definition;
ADD column2 column2_definition;
ADD column3 column3_definition;
ALTER TABLE STUDENT
ADD Subject_I INT,
 Subject_Name VARCHAR(100);
ALTER TABLE STUDENT DROP COLUMN Subject_ID;
SELECT *FROM STUDENT;
UPDATE STUDENT SET Subject_Name=
CASE Student_ID
WHEN 101 THEN 'C'
WHEN 102 THEN 'C++'
WHEN 103 THEN 'Principle of Management'
WHEN 104 THEN 'Core Java'
WHEN 105THEN 'Math'
WHEN 106 THEN 'Android'
END 
WHERE Student_ID in (101,102,103,104,105,106);
alter table student add Subject_ID varchar(50);
select * from STUDENT;
update student set Subject_Id=
case Student_ID 
when 101 then 'BCA101'
when 102 then 'BCA102'
when 103 then 'BCA103'
when 104 then 'BCA104'
when 105 then 'BCA105'
when 106 then 'BCA106'
when 107 then 'BCA107'
end
where Student_ID in (101,102,103,104,105,106,107);
select * from student where Stu_Subject_ID='BCA101' AND SUBJECT_ID='BCA101';
select * from STUDENT;
ALTER TABLE STUDENT ADD REMARK VARCHAR(50);

EXEC SP_RENAME 'STUDENT.REMARK','REMARKS'
EXEC SP_RENAME 'STUDENT.Stu_Name','SName'
SELECT NOW () from STUDENT;  
select *from Emp_Det where JOINING_DATE='2023-08-08'BETWEEN JOINING_DATE='2023-08-09';
UPDATE  Emp_Det set JOINING_DATE=GETDATE() where workers_id=102;
SELECT DATEDIFF(m, '2023-08-08', '2011/08/25') AS DateDiff;
