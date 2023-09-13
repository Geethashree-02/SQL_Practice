create table orders(
order_id int,
order_date datetime,
product varchar(150));
insert into orders(order_id,order_date,product)values
(001,GetDate(),'pen');
select * from orders;
select order_date from orders;
SELECT DATEDIFF(year,'2014-06-05','2016-08-05') AS DiffDate
SELECT DATEDIFF(YEAR,'2018-06-05','2014-08-05') AS DiffDate
SELECT DATEDIFF(day,'2014-08-05','2014-06-05') AS DiffDate
SELECT SYSDATETIME() AS SysDateTime;

SELECT CURRENT_TIMESTAMP;
SELECT GETDATE();
 SELECT GETUTCDATE();
 SELECT SYSDATETIME()
select DATEFROMPARTS(2023,12,25)as datefromparts;
select year ('2023/12/25')as year from orders where order_id=1;
select dateadd(year,2,'2023/05/15')as dateadd;
SELECT DATEADD(year, 1, '2017/08/25') AS currentdate;
SELECT order_id,order_date, DATEADD(year, 18, order_date) AS DateAdd FROM orders;
SELECT DATENAME(year, '2017/08/25') AS TODAYDATE;
ALTER TABLE orders ADD Client_Name varchar;
insert into orders(
order_id,
order_date,
product,Client_Name)values(002,GETDATE(),'pencil','Geetha');
alter table orders drop column Client_Name;
ALTER TABLE orders ADD Client_Name varchar(150);
select * from orders;
insert into orders(
order_id,product,Client_Name,order_date)values(5,GETDATE(),'pencil','Geetha');
insert into orders(
order_id,order_date,product,Client_Name)values(004,'16.01.2023 10:45 AM ','Eraser','kavitha'),
(005,'17.01.2023 10:47 AM' ,'paper','kowsalya'),
(006,'18.01.2023 11:25 PM','Scale','Nisha'),
(007,'19.01.2023 12:23 AM','Water bottle','Saran');
alter table orders drop column order_date; 
alter table orders add  order_date varchar(150);
alter table orders drop column order_date where order_date='NULL' and Client_Name='Null';
UPDATE orders set product=
case order_id
when 1 then 'Laptop'
when 2 then 'Mouse'
when 3 then 'Keyboard'
when 4 then 'Mobile'
END 
WHERE order_id in (1,2,3,4);
update orders set order_id=4 where order_date='A'
update orders set product= where order_date='A'
UPDATE orders set product=
case order_id
when 1 then 'Laptop'
when 2 then 'Mouse'
when 3 then 'Keyboard'
when 4 then 'Mobile'
END 
WHERE order_id in (1,2,3,4);
UPDATE orders set order_date=
case order_id
when 1 then '16.01.2023 10:45 AM '
when 2 then '17.01.2023 10:47 AM'
when 3 then '18.01.2023 11:25 PM'
when 4 then '19.01.2023 12:23 AM'
END 
WHERE order_id in (1,2,3,4);
select * from orders;
UPDATE orders set Client_Name=
case order_id
when 1 then 'Akil'
when 2 then 'Mouli'
when 3 then 'Jency'
when 4 then 'Priya'
END 
WHERE order_id in (1,2,3,4);
insert into orders(order_id,product,Client_Name,order_date)values(5,'Watch','Aathira',GETDATE());
update orders set order_date='11.09.2023 11:36 AM' where order_id=5;
select order_date from orders where order_date between '16.01.2023 11:45 AM ' and '19.01.2023 12:23 AM'
select *from Slot
select * from orders;
select order_date from orders where order_id=1
select cast(orders as time(0))
SELECT LTRIM(right(CONVERT(VARCHAR(20), order_date, 100), 10)) FROM orders WHERE order_id=1
select datepart(hour, datetime(16.01.2023 11:45 AM ))from orders;
select datepart(hour, getdate());
select datepart day, order_date where order_id=1 from orders;
SELECT DATENAME(hour, 16.01.2023 11:45 AM ) AS TODAYDATE;
select GETDATE()
select datepart(hour, getdate());
Select TRY_CONVERT(TIME, order_date)where order_id=1 from orders;
select * from orders;
SELECT convert(char(50), (order_date), 50) FROM orders
SELECT Client_Name,LTRIM(right(CONVERT(VARCHAR(50), order_date, 50), 10)) as attime FROM orders WHERE order_id=1
SELECT Client_Name,LTRIM(right(CONVERT(VARCHAR(50), order_date, 500), 20)) as attime FROM orders WHERE order_id=1
SELECT Client_Name,LTRIM(left(CONVERT(VARCHAR(50), order_date), 5)) as attime FROM orders WHERE order_id=1
SELECT Client_Name,LTRIM(right(CONVERT(VARCHAR(50), order_date), 10)) as attime FROM orders WHERE order_id=1
select * from orders;
select datepart(hour, '16.01.2023');
select DATEFROMPARTS(2023,12,25)as attime;
SELECT RTRIM('      SQL Tutorial      ') AS RightTrimmedString;
SELECT LTRIM('       SQL Tutorial         ') AS LeftTrimmedString;
SELECT CONVERT(DATENAME(year, '16.01.2023 11:45 AM')) AS TODAYDATE;
Select Format(cast('2016-03-03 23:59:59' as datetime));
SELECT CONVERT(VARCHAR, getdate(), 100);
SELECT CONVERT(VARCHAR(20),order_date,108) AS HourMinuteSecond from orders where order_id=1
select(convert(varchar(50),order_date,15))AS noticetime from orders where order_id=1
SELECT Client_Name,LTRIM(right(CONVERT(VARCHAR(50), order_date), 10)) as attime FROM orders WHERE order_id=1
select * from orders;
select datefromparts(16.01.2023)as attdate
SELECT convert(varchar(order_date)as atdate from orders where order_id=1  
[expiry_date] DATE NULL DEFAULT '9999-12-31'
Select Format(cast('2016-03-03 23:59:59' as datetime),'dd-MMM-yyyy hh:mm:ss','en-us'). ('hh:mm:ss' in Capital letters);
Select Format(cast('2016-03-03 23:59:59' as datetime),'dd-MMM-yyyy hh:mm:ss','en-us'). ('hh:mm:ss' in Capital letters
Select Format(cast('2016-03-03 23:59:59' as datetime),'dd-MMM-yyyy HH:mm:ss','en-us'). ('HH:mm:ss' in Capital letters)
Select Format(cast('2016-03-03 23:59:59' as datetime)) 
SELECT CAST('2017-08-25' AS datetime);

