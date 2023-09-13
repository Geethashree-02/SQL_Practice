create table Theatre_Movie3(
Theatre_Id int,
DateTime datetime,
Movie_Name varchar(20),
Movie_Genere varchar(30),
Guest_Total int,
Ticket_price decimal(2,00));
select * from Theatre_Movie3;
insert into Theatre_Movie(Theatre_Id,DateTime,Movie_Name,Movie_Genere,Guest_Total,Ticket_price)VALUES
(002,'02.08.2023 10:52 AM','KANCHANA','HORROR',150,18);
(003,'03.08.2023 10:52 AM','KUMKI','FICTION',120,14),
(004,'04.08.2023 10:52 AM','KATHI','HORROR',153,24),
(005,'05.08.2023 10:52 AM','KAITHI','SCIENTIFIC',140,30),
(006,'06.08.2023 10:52 AM','PALANI','THRILLER',15,51),
(007,'07.08.2023 10:52 AM','VIDUTHALAI','DRAMA',50,50);        
SELECT*FROM Theatre_Movie;

ALTER TABLE Theatre_Movie3
RENAME column DateTime  to Booking_date;
EXEC SP_rename 'DateTime','Booking_date','datetime';
alter table Theatre_Movie drop column Ticket_price;
SELECT*FROM Theatre_Movie;
SELECT*FROM Theatre_Movie3;
select *into Ticket_Booking from Theatre_Movie;
SELECT*FROM Ticket_Booking;
 alter table Theatre_Movie drop column time,date;
alter table Theatre_Movie add column Ticket_booking (datetime);
alter table Ticket_Booking add column TimeSlot (datetime);
ALTER TABLE Ticket_Booking RENAME COLUMN Ticket_price TO baz;
