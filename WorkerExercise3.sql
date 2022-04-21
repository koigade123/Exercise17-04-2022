--  Q-31. Write an SQL query to show the current date and time.
SELECT CURDATE();

 
-- Q-32. Write an SQL query to show the top n (say 10) records of a table.

SELECT
 * FROM Worker
 ORDER BY Salary DESC LIMIT 10;
 
 -- Q-33. Write an SQL query to determine the nth (say n=5) highest salary from a table.


-- Q-34. Write an SQL query to determine the 5th highest salary without 

-- Q-35. Write an SQL query to fetch the list of employees with the same salary
Select distinct 
W.WORKER_ID, 
W.FIRST_NAME, 
W.Salary 
from Worker W, 
Worker W1 
where W.Salary = W1.Salary 
and W.WORKER_ID != W1.WORKER_ID;

-- Q-36. Write an SQL query to show the second highest salary from a table.
Select
 max(Salary) from Worker 
where Salary not in (Select max(Salary) from Worker);

 
-- Q-37. Write an SQL query to show one row twice in results from a table.
select 
FIRST_NAME, DEPARTMENT 
from worker W where W.DEPARTMENT='HR' 
union all 
select FIRST_NAME, DEPARTMENT from Worker W1 where W1.DEPARTMENT='HR';

-- Q-38. Write an SQL query to fetch intersecting records of two tables.



-- Q-39. Write an SQL query to fetch the first 50% records from a table.
SELECT *
FROM WORKER
WHERE WORKER_ID <= (SELECT count(WORKER_ID)/2 from Worker);

 
-- Q-40. Write an SQL query to fetch the departments that have less than five people in it
SELECT 
DEPARTMENT, 
COUNT(WORKER_ID) as 'Number of Workers'
 FROM Worker 
 GROUP BY DEPARTMENT HAVING COUNT(WORKER_ID) < 5;




