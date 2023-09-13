select *into Movie_details from Theatre_Movie;
select*from Movie_details;
INSERT INTO Movie_details VALUES(008,'02.08.2023','10:52 AM','KANCHANA','HORROR',150,18)
UPDATE Movie_details
SET
time=DATEADD(MINUTE,Theatre_Id,time)
where CAST(time as time(0)) ='00:00:00'
select*from Movie_details;
FROM Setup, Contract_hist
INNER JOIN IB ON Contract_hist.[System No] = IB.System_ID
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;


SELECT 
    Movie_details
FROM 
    Movie_details date inner join Movie_details time ON
    join_predicate;  


