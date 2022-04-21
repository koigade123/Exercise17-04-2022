
-- Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
Select 
FIRST_NAME AS WORKER_NAME 
from Worker;

-- Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case. 
Select 
upper(FIRST_NAME) 
from Worker;

-- Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
Select 
distinct DEPARTMENT
 from Worker;
 
 
 --  Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
 Select
 substring(FIRST_NAME,1,3) 
 from Worker;
 
   
-- Q-5. Write an SQL query to find the position of the alphabet (‘A’) in the first name column ‘Amitabh’ from Worker table.
Select 
INSTR(FIRST_NAME, BINARY'A') 
from Worker 
where FIRST_NAME = ‘Amitabh’ ;

-- 6.Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.

Select 
RTRIM(FIRST_NAME) 
from Worker;

-- Q-7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.
Select 
LTRIM(DEPARTMENT) 
from Worker;

-- Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
Select 
distinct length(DEPARTMENT) 
from Worker;

-- Q-9. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
Select 
REPLACE(FIRST_NAME,'a','A') 
from Worker;

-- Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker 
-- table into a single column COMPLETE_NAME. A space char should separate them
Select 
CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'COMPLETE_NAME'
 from Worker;