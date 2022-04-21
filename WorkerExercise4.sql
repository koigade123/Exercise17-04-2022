-- Q-41. Write an SQL query to show all departments along with the number of people in there.
SELECT 
DEPARTMENT, 
COUNT(DEPARTMENT) as 'Number of Workers'
 FROM Worker GROUP BY DEPARTMENT;
 
 --  Q-42. Write an SQL query to show the last record from a table.
 Select
 * from Worker 
 where WORKER_ID = (SELECT max(WORKER_ID) 
 from Worker);
 
  
-- Q-43. Write an SQL query to fetch the first row of a table.
Select 
* from Worker 
where WORKER_ID = (SELECT min(WORKER_ID)
 from Worker);
 
 -- Q-44. Write an SQL query to fetch the last five records from a table.
SELECT 
* FROM 
Worker WHERE WORKER_ID <=5
UNION
SELECT * FROM (SELECT * FROM Worker W order by W.WORKER_ID DESC) AS W1 WHERE W1.WORKER_ID <=5;

-- Q-45. Write an SQL query to print the name of employees having the highest salary in each department.


--  Q-46. Write an SQL query to fetch three max salaries from a table.

SELECT 
distinct Salary from worker a WHERE 3 >= (SELECT count(distinct Salary)
 from worker b WHERE a.Salary <= b.Salary) 
 order by a.Salary desc;
 
 -- Q-47. Write an SQL query to fetch three min salaries from a table.
 SELECT 
 distinct Salary from worker a WHERE 3 >= (SELECT count(distinct Salary) 
 from worker b WHERE a.Salary >= b.Salary) 
 order by a.Salary desc;
 
 -- Q-48. Write an SQL query to fetch nth max salaries from a table.

 
-- Q-49. Write an SQL query to fetch departments along with the total salaries paid for each of them.

 SELECT 
 DEPARTMENT, 
 sum(Salary) 
 from worker 
 group by DEPARTMENT;
 
 -- Q-50. Write an SQL query to fetch the names of workers who earn the highest salary.
 SELECT 
 FIRST_NAME, 
 SALARY 
 from Worker 
 WHERE SALARY=(SELECT max(SALARY) from Worker);

 
