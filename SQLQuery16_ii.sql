create table pilot (
emp_num int,
pl_license varchar (3),
pl_ratings varchar (30),
pl_med_type int,
pl_med_date date,
pl_pt135_date date,
constraint PK_pilot primary key (emp_num)
)

insert into pilot(emp_num,pl_license,pl_ratings,pl_med_type,pl_med_date,pl_pt135_date)
values (101,'ATP','SEL/MEL/instr/CFII',1,'2023-5-15','2005-1-6');
insert into pilot(emp_num,pl_license,pl_ratings,pl_med_type,pl_med_date,pl_pt135_date)
values (104,'ATP','SEL/MEL/instr',1,10-5-2005,23-3-2006)
insert into pilot(emp_num,pl_license,pl_ratings,pl_med_type,pl_med_date,pl_pt135_date)
values (105,'COM','SEL/MEL/instr/CFI',2,25-2-2006,12-2-2005)
insert into pilot(emp_num,pl_license,pl_ratings,pl_med_type,pl_med_date,pl_pt135_date)
values (106,'COM','SEL/MEL/instr',2,02-4-2006,24-12-2005)
insert into pilot(emp_num,pl_license,pl_ratings,pl_med_type,pl_med_date,pl_pt135_date)
values (109,'COM','SEL/MEL/instr/CFII',1,14-4-2006,21-4-2006)

SELECT * FROM pilot

ALTER TABLE pilot ADD
ATDATE DATETIME;

insert into pilot(emp_num,pl_license,pl_ratings,pl_med_type,pl_med_date,pl_pt135_date)
values (102,'ATP','SEL/MEL/instr/CFII',2,'2023-5-16','2005-12-6 10:45:52 AM');

UPDATE PILOT SET ATDATE='2005-12-6 10:45:52 AM' WHERE EMP_NUM=101;

SELECT   CAST(VARCHAR(10),ATDATE,103))  FROM PILOT WHERE EMP_NUM=101;

SELECT CONVERT(VARCHAR(10),ATDATE,103)AS ATDATE FROM PILOT

SELECT CONVERT(VARCHAR(10),ATDATE,103)AS ATDATE FROM pilot
