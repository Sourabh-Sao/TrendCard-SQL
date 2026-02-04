with cte as (
select first_name,salary,department,AVG(salary) OVER(PARTITION BY department) as avg_dept_sal
from employees
)select *
from cte 
where salary>avg_dept_sal;
