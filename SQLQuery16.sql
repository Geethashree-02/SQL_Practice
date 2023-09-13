create schema testdb;
drop schema testdb from master; 
CREATE TABLE Persons (
    Personid int IDENTITY(1,1) PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);
select * from Persons
insert into Persons(LastName,FirstName,Age)values('Viswa','Bharathi',22),
('Jaishree','Varatharaj',21),
('Meghaa','Sathasivam',20),
('Lavanya','Mohan',23),
('Shankar','Perumal',19);
create schema testdb;
CREATE TABLE Per (
    Personid int IDENTITY(100,2) PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);
insert into Per(LastName,FirstName,Age)values('Viswa','Bharathi',22),
('Jaishree','Varatharaj',21),
('Meghaa','Sathasivam',20),
('Lavanya','Mohan',23),
('Shankar','Perumal',19);
select * from per

create schema person;
create schema Employee_Det;
Create table Emp
(
EmpID int identity(1,1)primary key,
FirstName varchar(50),
LastName varchar(50),
Age int,
PhnNo varchar(13)
);
insert into Emp
(FirstName,LastName,Age,PhnNo)values
('Viswa','Bharathi',22,'1236547890'),
('Jaishree','Varatharaj',21,'7894563210'),
('Meghaa','Sathasivam',20,'1236547898'),
('Lavanya','Mohan',23,'0154'),
('Shankar','Perumal',19,'5452765248');

select *  from Emp;
select upper(firstname+' '+lastname) as FullName from Emp;
select upper)as detail;  --------(?)--> i want hole column as uppercase(HOW)
select upper(EmpID,FirstName,LastName,Age,PhnNo)from Emp;
select convert(upper(firstname+' '+lastname)) as FullName from Emp;
ALTER TABLE EMP 
ADD JoinDate DATETIME;
UPDATE EMP SET JoinDate=
CASE EmpID
WHEN 1 THEN '2012/12/23'
WHEN 2 THEN '2022/5/1'
WHEN 3 THEN '2000/12/8'
WHEN 4 THEN '2023/11/17'
WHEN 5 THEN '2011/10/5'
END
WHERE EmpID IN (1,2,3,4,5);
select EmpID,FirstName,LastName,Age,PhnNo,JoinDate, DATENAME(WEEKDAY,JoinDate) as AtDay from EMP ;
select *  from Emp;
select EmpID,FirstName,LastName,Age,PhnNo,JoinDate, DATENAME(WEEKDAY,JoinDate) as AtDay from EMP ;
select *  from Emp;
select RTRIM(convert(varchar(50),JoinDate(15)))from Emp where EmpID=3;
select LTRIM(convert(varchar(50),JoinDate(154)))from Emp where EmpID=3;
select RTRIM(convert(varchar(50),JoinDate()))from Emp where EmpID=3;
SELECT CAST(JoinDate AS DATE)AS ATDate FROM Emp;
SELECT CAST(JoinDate AS DATE)AS ATDate FROM Emp;
SELECT CONVERT(DATE, datetime_column) FROM table_name;
SELECT Convert(JoinDate AS DATE)AS ATDate FROM Emp;
SELECT CAST(JoinDate AS varchar(25))AS ATtime FROM Emp;
select EmpID,FirstName,LastName,Age,PhnNo,cast(JoinDate as date)as atdate, DATENAME(WEEKDAY,JoinDate) as AtDay from EMP ;
select * into EmpDup from Emp;
select * from EmpDup
use schema Employee_Det;
Create table OriEmp
(
EmpID int identity(1,1)primary key,
FirstName varchar(50),
LastName varchar(50),
Age int,
JoiningDate varchar(50),
PhnNo varchar(13)
);
drop table OriEmp
insert into OriEmp(FirstName,LastName,Age,JoiningDate,PhnNo)values('BrindhaShree','Ramachandra',21,'2023/5/30 09:25:00 AM','9754821380'),
('Durai','Kannan',22,'2023/8/31 08:25:70 AM','9758821380'),
('Bharathan','Kandasamy',20,'2023/7/15 11:15:00 AM','9754822380'),
('Ramya','Ramachandra',21,'2023/5/30 09:25:00 AM','9754821380'),
('Harish','Kumar',25,'2023/11/10 10:07:17 AM','9254821380');
select * from OriEmp;
select cast(datename(weekday,joiningDate)as Atdate) from OriEmp;
SELECT CAST(joiningDate AS varchar(25))AS ATtime FROM OriEmp;
select (cast(datename(weekday,joiningdate)) from OriEmp;
select convert(joiningdate as datetime) from OriEmp;
select cast(joiningdate as datetime2) from OriEmp;
try_cast(joiningdate AS datetime) AS from OriEmp
 SELECT CONVERT(date, joiningdate, 23) from OriEmp;

 select EmpID,FirstName,LastName,Age,PhnNo,cast(JoinDate as date)as atdate, DATENAME(WEEKDAY,JoinDate) as AtDay from EMP

 select EmpID,FirstName,LastName,Age,PhnNo,cast(JoinDate as date)as atdate, DATENAME(WEEKDAY,JoinDate) as AtDay  where Atday='Wednesday'   from EMP

select cast where Atday='Wednesday' 
select datename(weekday,joinDate where joindate='saturday') as Weekdays from Emp;

select EmpID,FirstName,LastName,Age,PhnNo,cast(JoinDate as date)as atdate, DATENAME(WEEKDAY,JoinDate) as AtDay from EMP

select joindate where weekday=4 from  Emp

SELECT DATENAME(WEEKDAY, JOINDATE)AS WEEKDAY, JOINDATE WHERE WEEKDAY='WEDNESDAY' FROM EMP

create table EMP3
(
EMPID INT IDENTITY(1,1) PRIMARY KEY,
FNAME VARCHAR(50),
LNAME VARCHAR(50),
AGE INT,
JDATE DATETIME,
JDAY VARCHAR(25));
INSERT INTO EMP3(FNAME,LNAME,AGE,JDATE,JDAY) VALUES
('BrindhaShree','Ramachandra',21,'2023/08/13','Sunday'),
('Durai','Kannan',22,'2023/08/14','Monday'),
('Bharathan','Kandasamy',20,'2023/08/15','Tuesday'),
('Ramya','Ramachandra',21,'2023/08/16','Wednesday'),
('Prem','Kumar',25,'2023/08/17','Thursday'),
('Dhinesh','Kumar',22,'2023/08/18','Friday'),
('Nithin','Kumar',23,'2023/08/19','Saturday'),
('Harini','Santhosh',21,'2023/08/20','Sunday'),
('Arun','Kumar',20,'2023/08/21','Monday');

select * from EMP3 WHERE JDAY>='WEDNESDAY' BETWEEN JDAY='TUESDAY';
SELECT * FROM EMP3
select * from EMP3 WHERE JDAY<>'WEDNESDAY' 

select * from EMP3 WHERE JDAY BETWEEN'WEDNESDAY'

SELECT DATENAME(WEEKDAY,'2023/08/21')

SELECT JDate FROM EMP3('DAY', '13/08/2023', '21/08/2023')

select * from EMP3 where JDATE between '2023/08/16' and '2023/08/21'
select * from EMP3
select * from EMP3 where JDATE::date = '2023-8-15'



