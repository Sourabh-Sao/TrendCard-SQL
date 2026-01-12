--* Question 10: Write Query to find the top earner in each department.

with cte as (
select department,salary,DENSE_RANK() OVER(PARTITION BY department ORDER BY salary desc) rno
from employees
)select department,salary
from cte 
where rno=1 ;
