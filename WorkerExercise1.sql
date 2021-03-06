-- Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
Select
 * from Worker order by FIRST_NAME 
 asc;
 
 -- Q-12. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
 
 Select 
 * from Worker order by FIRST_NAME
 asc,
 DEPARTMENT desc;
 
 -- Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.
Select 
* from Worker
 where FIRST_NAME in ('Vipul','Satish');
 
 -- Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
 Select 
* from Worker
 where FIRST_NAME not in ('Vipul','Satish');
 
 --  Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.
Select 
* from Worker
 where DEPARTMENT like 'Admin%';
 
 
 -- Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.

Select 
* from Worker
 where FIRST_NAME like '%a%';

-- Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
Select 
* from Worker where
 FIRST_NAME like '%a';

-- Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
Select
 * from Worker where 
 FIRST_NAME like '_____h';
 
 -- Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000
 Select 
 * from Worker 
 where SALARY between 100000 and 500000;
 
 -- Q-20. Write an SQL query to print details of the Workers who have joined in Feb’2014.
 Select 
 * from
 Worker where year(JOINING_DATE) = 2014 and month(JOINING_DATE) = 2;


