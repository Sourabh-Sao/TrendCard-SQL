-- Question 11: Find Nth highest salary from employee salary without using TOP/LIMIT

with cte as (
select salary,DENSE_RANK() OVER(ORDER BY salary DESC) drk
from employees
)select salary
from cte 
where drk=2;

--? subquery version
select salary
from (
    select salary,DENSE_RANK() OVER(ORDER BY salary DESC) drk
    from employees
) as subquery 
where drk=2
