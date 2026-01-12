--* Question 5: Write a query to fetch even and odd rows from employee's table

--? Even 
with cte as (
select *,ROW_NUMBER() OVER(ORDER BY employee_id) as rno
from employees 
)SELECT *
from cte
where rno % 2 !=0

--!  or
select *
from employees
where MOD(employee_id,2)=0

--? Odd 
with cte as (
select *,ROW_NUMBER() OVER(ORDER BY employee_id) as rno
from employees 
)SELECT *
from cte
where rno % 2 !=0

--! OR
select *
from employees
where MOD(employee_id,2)!=0
