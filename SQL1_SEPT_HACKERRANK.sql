-------------------------------------          HACKERRANK    SQL QUESTIONS       ------------------------------------------------

--Query all columns for all American cities in the CITY table with 
--populations larger than 100000. The CountryCode for America is USA.

--The CITY table is described as follows:

SELECT * 
FROM CITY 
WHERE COUNTRYCODE = 'USA';


--Find the difference between the total number of CITY entries 
--in the table and the number of distinct CITY entries in the table.
--The STATION table is described as follows:

                        
COUNT(CITY)-
COUNT(DISTINCT(CITY));

--Query all columns for a city in CITY with the ID 1661.

--The CITY table is described as follows:

SELECT * 
FROM CITY 
WHERE ID = 1661;

--Query all attributes of every Japanese city
--in the CITY table. The COUNTRYCODE for Japan is JPN.

--The CITY table is described as follows:

SELECT * 
FROM CITY 
WHERE COUNTRYCODE = 'JPN';

--Query the two cities in STATION with the shortest 
--and longest CITY names, as well as their respective lengths
--(i.e.: number of characters in the name). If there is more than
--one smallest or largest city, choose the one that comes first
--when ordered alphabetically.The STATION table is described as follows:

SELECT CITY,
MIN(CITY)LEN_CITY 
FROM STD.STUDENT 
ORDER BY 1, CITY limit 1;

SELECT CITY
FROM STD.STUDENT



SELECT *
FROM STD.STUDENT

/*select min(city)
  from (
        select city, len(city) length_,
               max(len(city)) over() maxlen,
               min(len(city)) over() minlen
          from STD.STUDENT
       )
 where len in(minlen,maxlen)
 group by len */

--Write a query that prints a list 
--of employee names (i.e.: the name attribute) from 
--the Employee table in alphabetical order.

SELECT name 
FROM employee 
ORDER BY name;

--Query a list of CITY and STATE from the STATION table.
--The STATION table is described as follows:

SELECT city,
state FROM station;

--Query a list of CITY names from STATION 
--for cities that have an even ID number. Print the results in
--any order, but exclude duplicates from the answer.
--The STATION table is described as follows:

SELECT id,city
FROM STD.STUDENT WHERE 
id%2=0 --and distinct(city) 
ORDER BY id;

SELECT id,DISTINCT city 
from STD.STUDENT WHERE 
id%2=0 --and distinct(city) 
ORDER BY id;

SELECT DISTINCT city,
id from std.student 
ORDER BY id; 


SELECT ROW_NUMBER() 
OVER(ORDER BY city)ROW_NUM,
DISTINCT CITY FROM std.student; 

---- HERE ITSELF I DISPLAY ROW_NUM,CITY AND NO OF TIMES CITY REPEATED  ---------------------

SELECT DISTICT CITY FROM (ROW_NUMBER ()
OVER(ORDER BY city)ROW_NUM,
CITY,COUNT(*)AS NO_TIMES FROM std.student
GROUP BY CITY HAVING COUNT(*) >=1
ORDER BY CITY)AS t
WHERE ID = 1 ; 

SELECT distinct CITY, DENSE_RANK() OVER (ORDER BY  id) AS RowNum
FROM std.student ORDER BY CITY;
--WHERE id = 1;

/*SELECT
  CITY,
  ROW_NUMBER() OVER (window) row_number,
  RANK()       OVER (window) rank,
  DENSE_RANK() OVER (window) dense_rank
FROM STD.STUDENT
WINDOW window AS (ORDER BY CITY)
ORDER BY CITY*/


SELECT DISTINCT CITY,COUNT(*) from STD.STUDENT where id%2=0 GROUP BY CITY order by CITY;

SELECT DISTINCT CITY from STD.STUDENT where id%2=0 GROUP BY CITY order by CITY;


SELECT DISTINCT CITY FROM STD.STUDENT WHERE MOD(ID,2)=0 ORDER BY CITY ASC;    -- GITHUB   

--Query a list of CITY names from STATION for cities that have
--an even ID number. Print the results in any order, but exclude duplicates 
--from the answer.The STATION table is described as follows:

--https://github.com/chhayac/SQL-hackerrank-problems/blob/master/basic-select.md