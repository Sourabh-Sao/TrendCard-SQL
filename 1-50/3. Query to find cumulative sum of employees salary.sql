--* Question 3: Write a query to find cumulative sum of employees salary 

SELECT employee_id,salary,
SUM(salary) OVER(ORDER BY employee_id)
from employees
