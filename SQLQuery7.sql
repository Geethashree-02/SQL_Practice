create table Class(
SReg int,
SName varchar(25),
SAge int,
SPresentDate datetime,
S_10th_percentage int,
S_11th_percentage int
);
insert into Class(SReg,SName,SAge,SPresentDate,S_10th_percentage,
S_11th_percentage)values
(001,'Arun',16,'12.8.2023 9:30 AM',89,95);
select* from Class;
alter table Class to Dep;
update Class set Sreg=010,SAge=17 where SName='ARUN';
ALTER TABLE//----------->?
ALTER TABLE NAME,RENAME COLUMN,MODIFY THE VALUES,HAVE TO DO/