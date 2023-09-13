create database student;
create table std(
Reg_id int,
FirstName varchar(50),
LastName varchar(50),
City varchar(50));
insert into std(Reg_id,FirstName,LastName,City)values
(001,'Viswa','Bharathi','Salem'),
(002,'Lavanya','Mohan','Namakkal'),
(003,'Brindhashree','Ramamoorthy','Erode'),
(004,'Priyanka','Thiyagarajan','Salem'),
(005,'Priyanka','Krishanan','Namakkal');
select * from std;
select FirstName+LastName as FullName from std ;
select firstname,LastName from std order by LastName;
select * from std;
select * from std order by FirstName ASC;
ALTER TABLE STD ADD Department varchar(50);
update std set department=
case Reg_id
when 1 then 'BCA'
when 2 then 'CS'
when 3 then 'CS'
when 4 then 'CS'
when 5 then 'CS'
END
WHERE Reg_id IN (1,2,3,4,5);
UPDATE STD SET Department='CS'; 
create table sprorts(
SportId int,
PersonName varchar(50),
Game1 varchar(75),
Game2 varchar(75));
alter table sports
add department varchar(57);
drop PersonName from Sports;
alter table sports drop column PersonName;
select * from sports;
insert into sports(SportId,
Game1,Game2,Department)values
(215,'Swimming','Hockey','CS'),
(218,'Cricket','Tennis','CS'),
(219,'Football','Kabadi','CS'),
(220,'Running','Hockey','CS'),
(221,'Relay','Wrestler','CS');
select * from sports;
select * from std;
SELECT STD.FirstName+' '+STD.LastName as FullName,STD.City,SPORTS.GAME1,Sports.game2 from std join sports on std.department=sports.department;
SELECT STD.FirstName+' '+STD.LastName as FullName,STD.City,SPORTS.GAME1,Sports.game2 from std join sports on std.department=sports.department;
ALTER TABLE Reg_id AUTO_INCREMENT=100;
ALTER TABLE std AUTO_INCREMENT = 2; 
update sports set sportid= AUTOINCREMENT by 1 from sports;
ALTER TABLE sports
ADD sportid int NOT NULL AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE SPORTS DROP COLUMN SPORTID;
ALTER TABLE SPORTS ADD  Reg_id int;
Reg_id AUTOINCREMENT PRIMARY KEY,
ALTER TABLE sports Reg_id AUTO_INCREMENT=1;
Personid AUTOINCREMENT PRIMARY KEY
update sports set reg_id=
case Game1
when 'swimming' then 1
when 'cricket' then 2
when 'Football' then 3
when 'Running' then 4
when 'Relay' then 5
end
where Game1 in('swimming','cricket','Football','Running','Relay');
update std set department=
case Reg_id
when 1 then 'BCA'
when 2 then 'CS'
when 3 then 'CS'
when 4 then 'CS'
when 5 then 'CS'
END
WHERE Reg_id IN (1,2,3,4,5);
UPDATE STD SET Department='CS'; 
select * from sports;
select * from std;
select FirstName.std+' '+LastName.std as StudentName_List,Game1.sports,Game2.sports,city.std from std join sports on Reg_id.std=Reg_id.sports;
select std.FirstName+' '+std.LastName as StudentName_List,sports.Game1,sports.Game2,std.city from std join sports on Reg_id.std=Reg_id.sports;
select std.FirstName,std.LastName,sports.Game1,sports.Game2 from std inner join sports on Reg_id.std=Reg_id.sports;
SELECT std.Reg_id,STD.FirstName+' '+STD.LastName as FullNameList,STD.City,SPORTS.GAME1,Sports.game2 from std join sports on std.Reg_id=sports.Reg_id;
SELECT std.Reg_id,STD.FirstName+' '+STD.LastName as FullNameList,STD.City,SPORTS.GAME1,Sports.game2 from std inner join sports on std.Reg_id=sports.Reg_id;
SELECT std.Reg_id,STD.FirstName+' '+STD.LastName as FullNameList,STD.City,SPORTS.GAME1,Sports.game2 from std left join sports on std.Reg_id=sports.Reg_id;
SELECT std.Reg_id,STD.FirstName+' '+STD.LastName as FullNameList,STD.City,SPORTS.GAME1,Sports.game2 from std right join sports on std.Reg_id=sports.Reg_id;
SELECT std.Reg_id,STD.FirstName+' '+STD.LastName as FullNameList,STD.City,SPORTS.GAME1,Sports.game2 from std outer join sports on std.Reg_id=sports.Reg_id;
select * from sports;
select * from std;
SELECT std.Reg_id,STD.FirstName+' '+STD.LastName as FullNameList,STD.City,SPORTS.GAME1,Sports.game2 from std right join sports on std.Reg_id=sports.Reg_id;
SELECT std.Reg_id,STD.FirstName+' '+STD.LastName as FullNameList,STD.City,SPORTS.GAME1,Sports.game2 from std left join sports on std.Reg_id=sports.Reg_id;
alter table std drop column department 
alter table std drop column department 
SELECT std.Reg_id,STD.FirstName+' '+STD.LastName as FullNameList,STD.City,SPORTS.GAME1,Sports.game2 from std right join sports on std.Reg_id=sports.Reg_id where order by asc;
SELECT LTRIM(  ' JAVATPOINT','  ');  
SELECT REPLACE(firstName, 'v', 't') from std where Reg_id=1;
select UPPER(firstName) from std where Reg_id=3
select UPPER(FirstName,LastName) from std where Reg_id=3;
select upper(LastName)as LNAME from std;
select upper(*)as LNAME from std;