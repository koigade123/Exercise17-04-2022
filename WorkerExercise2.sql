
-- Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.

SELECT 
COUNT(*) FROM worker
 WHERE DEPARTMENT = 'Admin';
 
 -- Q-22. Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.
 SELECT 
 CONCAT(FIRST_NAME, ' ', LAST_NAME) As Worker_Name, 
 Salary
FROM worker
WHERE WORKER_ID IN
(SELECT WORKER_ID FROM worker
WHERE Salary BETWEEN 50000 AND 100000;

-- Q-23. Write an SQL query to fetch the no. of workers for each department in the descending order.
SELECT 
DEPARTMENT, 
count(WORKER_ID) No_Of_Workers
FROM worker
GROUP BY DEPARTMENT
ORDER BY No_Of_Workers DESC;

-- Q-24. Write an SQL query to print details of the Workers who are also Managers.
SELECT
 DISTINCT W.FIRST_NAME, T.WORKER_TITLE
FROM Worker W
INNER JOIN Title T
ON W.WORKER_ID = T.WORKER_REF_ID
AND T.WORKER_TITLE in ('Manager');

-- Q-25. Write an SQL query to fetch duplicate records having matching data in some fields of a table
SELECT 
WORKER_TITLE, AFFECTED_FROM, COUNT(*)
FROM Title
GROUP BY WORKER_TITLE, AFFECTED_FROM
HAVING COUNT(*) > 1;

-- Q-26. Write an SQL query to show only odd rows from a table.

SELECT 
* FROM Worker 
WHERE MOD (WORKER_ID, 2) <> 0;

--  Q-27. Write an SQL query to show only even rows from a table.
SELECT 
* FROM Worker
 WHERE MOD (WORKER_ID, 2) = 0;
 
 -- Q-28. Write an SQL query to clone a new table from another table.

-- Q-29. Write an SQL query to fetch intersecting records of two tables.

-- Q-30. Write an SQL query to show records from one table that another table does not have.




